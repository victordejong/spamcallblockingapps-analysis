package okio;
/* loaded from: classes2-dex2jar.jar:okio/Segment.class */
public final class Segment {
    static final int SHARE_MINIMUM = 1024;
    static final int SIZE = 8192;
    final byte[] data;
    int limit;
    Segment next;
    boolean owner;
    int pos;
    Segment prev;
    boolean shared;

    public Segment() {
        this.data = new byte[SIZE];
        this.owner = true;
        this.shared = false;
    }

    public Segment(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.shared = z;
        this.owner = z2;
    }

    public void compact() {
        Segment segment = this.prev;
        if (segment != this) {
            if (!segment.owner) {
                return;
            }
            int i = this.limit - this.pos;
            if (i > (SIZE - segment.limit) + (segment.shared ? 0 : segment.pos)) {
                return;
            }
            writeTo(segment, i);
            pop();
            SegmentPool.recycle(this);
            return;
        }
        throw new IllegalStateException();
    }

    public Segment pop() {
        Segment segment = this.next;
        Segment segment2 = segment != this ? segment : null;
        Segment segment3 = this.prev;
        segment3.next = segment;
        this.next.prev = segment3;
        this.next = null;
        this.prev = null;
        return segment2;
    }

    public Segment push(Segment segment) {
        segment.prev = this;
        segment.next = this.next;
        this.next.prev = segment;
        this.next = segment;
        return segment;
    }

    public Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true, false);
    }

    public Segment split(int i) {
        Segment segment;
        if (i <= 0 || i > this.limit - this.pos) {
            throw new IllegalArgumentException();
        }
        if (i >= SHARE_MINIMUM) {
            segment = sharedCopy();
        } else {
            segment = SegmentPool.take();
            System.arraycopy(this.data, this.pos, segment.data, 0, i);
        }
        segment.limit = segment.pos + i;
        this.pos += i;
        this.prev.push(segment);
        return segment;
    }

    public Segment unsharedCopy() {
        return new Segment((byte[]) this.data.clone(), this.pos, this.limit, false, true);
    }

    public void writeTo(Segment segment, int i) {
        if (segment.owner) {
            int i2 = segment.limit;
            if (i2 + i > SIZE) {
                if (segment.shared) {
                    throw new IllegalArgumentException();
                }
                int i3 = segment.pos;
                if ((i2 + i) - i3 > SIZE) {
                    throw new IllegalArgumentException();
                }
                byte[] bArr = segment.data;
                System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                segment.limit -= segment.pos;
                segment.pos = 0;
            }
            System.arraycopy(this.data, this.pos, segment.data, segment.limit, i);
            segment.limit += i;
            this.pos += i;
            return;
        }
        throw new IllegalArgumentException();
    }
}

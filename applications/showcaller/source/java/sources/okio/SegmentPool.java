package okio;
/* loaded from: classes2-dex2jar.jar:okio/SegmentPool.class */
public final class SegmentPool {
    static final long MAX_SIZE = 65536;
    static long byteCount;
    static Segment next;

    private SegmentPool() {
    }

    public static void recycle(Segment segment) {
        if (segment.next == null && segment.prev == null) {
            if (segment.shared) {
                return;
            }
            synchronized (SegmentPool.class) {
                try {
                    long j = byteCount;
                    if (j + 8192 > MAX_SIZE) {
                        return;
                    }
                    byteCount = j + 8192;
                    segment.next = next;
                    segment.limit = 0;
                    segment.pos = 0;
                    next = segment;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }

    public static Segment take() {
        synchronized (SegmentPool.class) {
            try {
                Segment segment = next;
                if (segment == null) {
                    return new Segment();
                }
                next = segment.next;
                segment.next = null;
                byteCount -= 8192;
                return segment;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

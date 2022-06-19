package okio;

import com.facebook.share.internal.MessengerShareContentUtility;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\b��\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u0004\u0018\u00010��J\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020��J\u0006\u0010\u0013\u001a\u00020��J\u000e\u0010\u0014\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020��J\u0016\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, m400d2 = {"Lokio/Segment;", "", "()V", "data", "", POBConstants.KEY_POSITION, "", "limit", "shared", "", "owner", "([BIIZZ)V", "next", "prev", MessengerShareContentUtility.WEBVIEW_RATIO_COMPACT, "", "pop", "push", "segment", "sharedCopy", "split", "byteCount", "unsharedCopy", "writeTo", "sink", "Companion", "okio"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/Segment.class */
public final class Segment {
    public static final Companion Companion = new Companion(null);
    public static final int SHARE_MINIMUM = 1024;
    public static final int SIZE = 8192;
    public final byte[] data;
    public int limit;
    public Segment next;
    public boolean owner;
    public int pos;
    public Segment prev;
    public boolean shared;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, m400d2 = {"Lokio/Segment$Companion;", "", "()V", "SHARE_MINIMUM", "", "SIZE", "okio"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okio/Segment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    public Segment(byte[] data, int i, int i2, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.pos = i;
        this.limit = i2;
        this.shared = z;
        this.owner = z2;
    }

    public final void compact() {
        int i;
        Segment segment = this.prev;
        if (segment != this) {
            Intrinsics.checkNotNull(segment);
            if (!segment.owner) {
                return;
            }
            int i2 = this.limit - this.pos;
            Segment segment2 = this.prev;
            Intrinsics.checkNotNull(segment2);
            int i3 = segment2.limit;
            Segment segment3 = this.prev;
            Intrinsics.checkNotNull(segment3);
            if (segment3.shared) {
                i = 0;
            } else {
                Segment segment4 = this.prev;
                Intrinsics.checkNotNull(segment4);
                i = segment4.pos;
            }
            if (i2 > (8192 - i3) + i) {
                return;
            }
            Segment segment5 = this.prev;
            Intrinsics.checkNotNull(segment5);
            writeTo(segment5, i2);
            pop();
            SegmentPool.recycle(this);
            return;
        }
        throw new IllegalStateException("cannot compact".toString());
    }

    public final Segment pop() {
        Segment segment = this.next;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.prev;
        Intrinsics.checkNotNull(segment2);
        segment2.next = this.next;
        Segment segment3 = this.next;
        Intrinsics.checkNotNull(segment3);
        segment3.prev = this.prev;
        Segment segment4 = null;
        this.next = segment4;
        this.prev = segment4;
        return segment;
    }

    public final Segment push(Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        Intrinsics.checkNotNull(segment2);
        segment2.prev = segment;
        this.next = segment;
        return segment;
    }

    public final Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true, false);
    }

    public final Segment split(int i) {
        Segment segment;
        if (i > 0 && i <= this.limit - this.pos) {
            if (i >= 1024) {
                segment = sharedCopy();
            } else {
                segment = SegmentPool.take();
                byte[] bArr = this.data;
                byte[] bArr2 = segment.data;
                int i2 = this.pos;
                ArraysKt.copyInto$default(bArr, bArr2, 0, i2, i2 + i, 2, (Object) null);
            }
            segment.limit = segment.pos + i;
            this.pos += i;
            Segment segment2 = this.prev;
            Intrinsics.checkNotNull(segment2);
            segment2.push(segment);
            return segment;
        }
        throw new IllegalArgumentException("byteCount out of range".toString());
    }

    public final Segment unsharedCopy() {
        byte[] bArr = this.data;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new Segment(copyOf, this.pos, this.limit, false, true);
    }

    public final void writeTo(Segment sink, int i) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink.owner) {
            int i2 = sink.limit;
            if (i2 + i > 8192) {
                if (sink.shared) {
                    throw new IllegalArgumentException();
                }
                int i3 = sink.pos;
                if ((i2 + i) - i3 > 8192) {
                    throw new IllegalArgumentException();
                }
                byte[] bArr = sink.data;
                ArraysKt.copyInto$default(bArr, bArr, 0, i3, i2, 2, (Object) null);
                sink.limit -= sink.pos;
                sink.pos = 0;
            }
            byte[] bArr2 = this.data;
            byte[] bArr3 = sink.data;
            int i4 = sink.limit;
            int i5 = this.pos;
            ArraysKt.copyInto(bArr2, bArr3, i4, i5, i5 + i);
            sink.limit += i;
            this.pos += i;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }
}

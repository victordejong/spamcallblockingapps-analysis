package c;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\b��\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u0004\u0018\u00010��J\u000e\u0010\u0011\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020��J\u0006\u0010\u0013\u001a\u00020��J\u000e\u0010\u0014\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020��J\u0016\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u0004\u0018\u00010��8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lokio/Segment;", "", "()V", "data", "", "pos", "", "limit", "shared", "", "owner", "([BIIZZ)V", "next", "prev", "compact", "", "pop", "push", "segment", "sharedCopy", "split", "byteCount", "unsharedCopy", "writeTo", "sink", "Companion", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/y.class */
public final class y {
    public static final a h = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f6339a;

    /* renamed from: b  reason: collision with root package name */
    public int f6340b;

    /* renamed from: c  reason: collision with root package name */
    public int f6341c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f6342d;
    public boolean e;
    public y f;
    public y g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lokio/Segment$Companion;", "", "()V", "SHARE_MINIMUM", "", "SIZE", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/y$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public y() {
        this.f6339a = new byte[PropertyFlags.UNSIGNED];
        this.e = true;
        this.f6342d = false;
    }

    public y(byte[] data, int i, int i2, boolean z, boolean z2) {
        p.d(data, "data");
        this.f6339a = data;
        this.f6340b = i;
        this.f6341c = i2;
        this.f6342d = z;
        this.e = z2;
    }

    public final y a() {
        this.f6342d = true;
        return new y(this.f6339a, this.f6340b, this.f6341c, true, false);
    }

    public final y a(y segment) {
        p.d(segment, "segment");
        segment.g = this;
        segment.f = this.f;
        y yVar = this.f;
        p.a(yVar);
        yVar.g = segment;
        this.f = segment;
        return segment;
    }

    public final void a(y sink, int i) {
        p.d(sink, "sink");
        if (sink.e) {
            int i2 = sink.f6341c;
            if (i2 + i > 8192) {
                if (!sink.f6342d) {
                    int i3 = sink.f6340b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = sink.f6339a;
                        i.a(bArr, bArr, 0, i3, i2);
                        sink.f6341c -= sink.f6340b;
                        sink.f6340b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.f6339a;
            byte[] bArr3 = sink.f6339a;
            int i4 = sink.f6341c;
            int i5 = this.f6340b;
            i.a(bArr2, bArr3, i4, i5, i5 + i);
            sink.f6341c += i;
            this.f6340b += i;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }

    public final y b() {
        byte[] bArr = this.f6339a;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        p.b(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new y(copyOf, this.f6340b, this.f6341c, false, true);
    }

    public final y c() {
        y yVar = this.f;
        if (yVar == this) {
            yVar = null;
        }
        y yVar2 = this.g;
        p.a(yVar2);
        yVar2.f = this.f;
        y yVar3 = this.f;
        p.a(yVar3);
        yVar3.g = this.g;
        this.f = null;
        this.g = null;
        return yVar;
    }
}

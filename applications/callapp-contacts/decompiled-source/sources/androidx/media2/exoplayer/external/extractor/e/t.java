package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.util.a;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/t.class */
final class t {

    /* renamed from: a  reason: collision with root package name */
    boolean f3258a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f3259b;

    /* renamed from: c  reason: collision with root package name */
    public int f3260c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3261d;
    private boolean e;

    public t(int i, int i2) {
        this.f3261d = i;
        byte[] bArr = new byte[i2 + 3];
        this.f3259b = bArr;
        bArr[2] = (byte) 1;
    }

    public final void a() {
        this.e = false;
        this.f3258a = false;
    }

    public final void a(int i) {
        boolean z = true;
        a.b(!this.e);
        if (i != this.f3261d) {
            z = false;
        }
        this.e = z;
        if (z) {
            this.f3260c = 3;
            this.f3258a = false;
        }
    }

    public final void a(byte[] bArr, int i, int i2) {
        if (this.e) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f3259b;
            int length = bArr2.length;
            int i4 = this.f3260c;
            if (length < i4 + i3) {
                this.f3259b = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f3259b, this.f3260c, i3);
            this.f3260c += i3;
        }
    }

    public final boolean b(int i) {
        if (!this.e) {
            return false;
        }
        this.f3260c -= i;
        this.e = false;
        this.f3258a = true;
        return true;
    }
}

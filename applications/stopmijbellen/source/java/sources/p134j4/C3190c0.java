package p134j4;

import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: j4.c0 */
/* loaded from: classes-dex2jar.jar:j4/c0.class */
public final class C3190c0 extends AbstractC3200e2 {

    /* renamed from: a */
    public final String f10740a;

    /* renamed from: b */
    public final long f10741b;

    /* renamed from: c */
    public final int f10742c;

    /* renamed from: d */
    public final boolean f10743d;

    /* renamed from: e */
    public final boolean f10744e;

    /* renamed from: f */
    public final byte[] f10745f;

    public C3190c0(String str, long j, int i, boolean z, boolean z2, byte[] bArr) {
        this.f10740a = str;
        this.f10741b = j;
        this.f10742c = i;
        this.f10743d = z;
        this.f10744e = z2;
        this.f10745f = bArr;
    }

    @Override // p134j4.AbstractC3200e2
    /* renamed from: a */
    public final int mo2552a() {
        return this.f10742c;
    }

    @Override // p134j4.AbstractC3200e2
    /* renamed from: b */
    public final long mo2551b() {
        return this.f10741b;
    }

    @Override // p134j4.AbstractC3200e2
    /* renamed from: c */
    public final String mo2550c() {
        return this.f10740a;
    }

    @Override // p134j4.AbstractC3200e2
    /* renamed from: d */
    public final boolean mo2549d() {
        return this.f10744e;
    }

    @Override // p134j4.AbstractC3200e2
    /* renamed from: e */
    public final boolean mo2548e() {
        return this.f10743d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3200e2)) {
            return false;
        }
        AbstractC3200e2 abstractC3200e2 = (AbstractC3200e2) obj;
        String str = this.f10740a;
        if (str == null) {
            if (abstractC3200e2.mo2550c() != null) {
                return false;
            }
        } else if (!str.equals(abstractC3200e2.mo2550c())) {
            return false;
        }
        if (this.f10741b != abstractC3200e2.mo2551b() || this.f10742c != abstractC3200e2.mo2552a() || this.f10743d != abstractC3200e2.mo2548e() || this.f10744e != abstractC3200e2.mo2549d()) {
            return false;
        }
        return Arrays.equals(this.f10745f, abstractC3200e2 instanceof C3190c0 ? ((C3190c0) abstractC3200e2).f10745f : abstractC3200e2.mo2547f());
    }

    @Override // p134j4.AbstractC3200e2
    /* renamed from: f */
    public final byte[] mo2547f() {
        return this.f10745f;
    }

    public final int hashCode() {
        String str = this.f10740a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f10741b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f10742c;
        int i3 = 1237;
        int i4 = true != this.f10743d ? 1237 : 1231;
        if (true == this.f10744e) {
            i3 = 1231;
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i4) * 1000003) ^ i3) * 1000003) ^ Arrays.hashCode(this.f10745f);
    }

    public final String toString() {
        String str = this.f10740a;
        long j = this.f10741b;
        int i = this.f10742c;
        boolean z = this.f10743d;
        boolean z2 = this.f10744e;
        String arrays = Arrays.toString(this.f10745f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + C3681R.styleable.AppCompatTheme_windowNoTitle + String.valueOf(arrays).length());
        sb.append("ZipEntry{name=");
        sb.append(str);
        sb.append(", size=");
        sb.append(j);
        sb.append(", compressionMethod=");
        sb.append(i);
        sb.append(", isPartial=");
        sb.append(z);
        sb.append(", isEndOfArchive=");
        sb.append(z2);
        return C0608b.m7625j(sb, ", headerBytes=", arrays, "}");
    }
}

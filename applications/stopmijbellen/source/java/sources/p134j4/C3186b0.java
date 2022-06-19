package p134j4;

import p007a6.C0028d;
/* renamed from: j4.b0 */
/* loaded from: classes-dex2jar.jar:j4/b0.class */
public final class C3186b0 extends AbstractC3267y1 {

    /* renamed from: a */
    public final int f10724a;

    /* renamed from: b */
    public final String f10725b;

    /* renamed from: c */
    public final long f10726c;

    /* renamed from: d */
    public final long f10727d;

    /* renamed from: e */
    public final int f10728e;

    public C3186b0(int i, String str, long j, long j2, int i2) {
        this.f10724a = i;
        this.f10725b = str;
        this.f10726c = j;
        this.f10727d = j2;
        this.f10728e = i2;
    }

    @Override // p134j4.AbstractC3267y1
    /* renamed from: a */
    public final int mo2474a() {
        return this.f10724a;
    }

    @Override // p134j4.AbstractC3267y1
    /* renamed from: b */
    public final int mo2473b() {
        return this.f10728e;
    }

    @Override // p134j4.AbstractC3267y1
    /* renamed from: c */
    public final long mo2472c() {
        return this.f10726c;
    }

    @Override // p134j4.AbstractC3267y1
    /* renamed from: d */
    public final long mo2471d() {
        return this.f10727d;
    }

    @Override // p134j4.AbstractC3267y1
    /* renamed from: e */
    public final String mo2470e() {
        return this.f10725b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3267y1)) {
            return false;
        }
        AbstractC3267y1 abstractC3267y1 = (AbstractC3267y1) obj;
        if (this.f10724a != abstractC3267y1.mo2474a()) {
            return false;
        }
        String str = this.f10725b;
        if (str == null) {
            if (abstractC3267y1.mo2470e() != null) {
                return false;
            }
        } else if (!str.equals(abstractC3267y1.mo2470e())) {
            return false;
        }
        return this.f10726c == abstractC3267y1.mo2472c() && this.f10727d == abstractC3267y1.mo2471d() && this.f10728e == abstractC3267y1.mo2473b();
    }

    public final int hashCode() {
        int i = this.f10724a;
        String str = this.f10725b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f10726c;
        long j2 = this.f10727d;
        return ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f10728e;
    }

    public final String toString() {
        int i = this.f10724a;
        String str = this.f10725b;
        long j = this.f10726c;
        long j2 = this.f10727d;
        int i2 = this.f10728e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 157);
        sb.append("SliceCheckpoint{fileExtractionStatus=");
        sb.append(i);
        sb.append(", filePath=");
        sb.append(str);
        C0028d.m8911i(sb, ", fileOffset=", j, ", remainingBytes=");
        sb.append(j2);
        sb.append(", previousChunk=");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }
}

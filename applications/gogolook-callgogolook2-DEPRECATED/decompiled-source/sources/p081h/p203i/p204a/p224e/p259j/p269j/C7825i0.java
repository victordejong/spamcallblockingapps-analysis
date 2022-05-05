package p081h.p203i.p204a.p224e.p259j.p269j;

import gogolook.callgogolook2.gson.UserProfile;
/* renamed from: h.i.a.e.j.j.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/i0.class */
public final class C7825i0 extends C7868n0 {

    /* renamed from: e */
    public final int f18345e;

    /* renamed from: f */
    public final int f18346f;

    public C7825i0(byte[] bArr, int i, int i2) {
        super(bArr);
        AbstractC7791e0.m19471b(i, i + i2, bArr.length);
        this.f18345e = i;
        this.f18346f = i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7868n0, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    /* renamed from: g */
    public final byte mo19164g(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.f18423d[this.f18345e + i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7868n0
    /* renamed from: r */
    public final int mo19163r() {
        return this.f18345e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7868n0, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
    public final int size() {
        return this.f18346f;
    }
}

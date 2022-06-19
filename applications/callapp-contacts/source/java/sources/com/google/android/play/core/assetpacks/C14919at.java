package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.at */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/at.class */
public final /* synthetic */ class C14919at implements AbstractC14927ba {

    /* renamed from: a */
    private final C14928bb f54471a;

    /* renamed from: b */
    private final int f54472b;

    /* renamed from: c */
    private final /* synthetic */ int f54473c = 0;

    public C14919at(C14928bb c14928bb, int i) {
        this.f54471a = c14928bb;
        this.f54472b = i;
    }

    public C14919at(C14928bb c14928bb, int i, byte[] bArr) {
        this.f54471a = c14928bb;
        this.f54472b = i;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14927ba
    /* renamed from: a */
    public final Object mo9764a() {
        if (this.f54473c != 0) {
            this.f54471a.m9759b(this.f54472b).f54487c.f54482c = 5;
            return null;
        }
        C14928bb c14928bb = this.f54471a;
        int i = this.f54472b;
        C14924ay m9759b = c14928bb.m9759b(i);
        if (!C14936bj.m9744b(m9759b.f54487c.f54482c)) {
            throw new C14911al(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i)), i);
        }
        C14996w c14996w = c14928bb.f54495b;
        C14923ax c14923ax = m9759b.f54487c;
        c14996w.m9644f(c14923ax.f54480a, m9759b.f54486b, c14923ax.f54481b);
        C14923ax c14923ax2 = m9759b.f54487c;
        int i2 = c14923ax2.f54482c;
        if (i2 != 5 && i2 != 6) {
            return null;
        }
        C14996w c14996w2 = c14928bb.f54495b;
        String str = c14923ax2.f54480a;
        int i3 = m9759b.f54486b;
        long j = c14923ax2.f54481b;
        if (!c14996w2.m9664a(str, i3, j).exists()) {
            return null;
        }
        C14996w.m9660b(c14996w2.m9664a(str, i3, j));
        return null;
    }
}

package com.google.android.play.core.splitinstall.p378a;

import com.google.android.play.core.splitinstall.AbstractC15152c;
/* renamed from: com.google.android.play.core.splitinstall.a.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/f.class */
public final /* synthetic */ class C15129f implements AbstractC15133j {

    /* renamed from: a */
    private final int f54898a;

    /* renamed from: b */
    private final /* synthetic */ int f54899b = 0;

    C15129f(int i) {
        this.f54898a = i;
    }

    public C15129f(int i, byte[] bArr) {
        this.f54898a = i;
    }

    @Override // com.google.android.play.core.splitinstall.p378a.AbstractC15133j
    /* renamed from: a */
    public final AbstractC15152c mo9406a(AbstractC15152c abstractC15152c) {
        if (this.f54899b != 0) {
            int i = this.f54898a;
            int i2 = C15124a.f54871h;
            if (abstractC15152c != null) {
                return AbstractC15152c.m9385a(abstractC15152c.mo9381a(), 6, i, abstractC15152c.mo9378d(), abstractC15152c.mo9377e(), abstractC15152c.m9383f(), abstractC15152c.m9382g());
            }
            return null;
        }
        return C15124a.m9420a(this.f54898a, abstractC15152c);
    }
}

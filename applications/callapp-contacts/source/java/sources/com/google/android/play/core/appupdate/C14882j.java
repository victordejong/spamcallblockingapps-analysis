package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15017ah;
import com.google.android.play.core.splitinstall.C15139ae;
/* renamed from: com.google.android.play.core.appupdate.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/j.class */
public final class C14882j implements AbstractC15041be<AbstractC14874c> {

    /* renamed from: a */
    private final AbstractC15041be f54314a;

    /* renamed from: b */
    private final /* synthetic */ int f54315b = 0;

    public C14882j(AbstractC15041be<C14879g> abstractC15041be) {
        this.f54314a = abstractC15041be;
    }

    public C14882j(AbstractC15041be<Context> abstractC15041be, byte[] bArr) {
        this.f54314a = abstractC15041be;
    }

    public C14882j(AbstractC15041be<Context> abstractC15041be, char[] cArr) {
        this.f54314a = abstractC15041be;
    }

    public C14882j(AbstractC15041be<Context> abstractC15041be, short[] sArr) {
        this.f54314a = abstractC15041be;
    }

    /* renamed from: a */
    public static C14882j m9822a(AbstractC15041be<Context> abstractC15041be) {
        return new C14882j(abstractC15041be, (short[]) null);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.play.core.appupdate.e, com.google.android.play.core.appupdate.c] */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.play.core.appupdate.t, com.google.android.play.core.appupdate.c] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.play.core.appupdate.c, com.google.android.play.core.splitinstall.ae] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ AbstractC14874c mo9335a() {
        int i = this.f54315b;
        if (i != 0) {
            return i != 1 ? i != 2 ? new C15139ae((Context) this.f54314a.mo9335a()) : new C14892t(((C14883k) this.f54314a).mo9335a()) : new C14877e(((C14883k) this.f54314a).mo9335a());
        }
        C14879g c14879g = (C14879g) this.f54314a.mo9335a();
        C15017ah.m9600a(c14879g);
        return c14879g;
    }
}

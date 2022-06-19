package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.C15072h;
/* renamed from: com.google.android.play.core.splitinstall.af */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/af.class */
final class C15140af implements AbstractC15169s {

    /* renamed from: a */
    final /* synthetic */ AbstractC15152c f54923a;

    /* renamed from: b */
    final /* synthetic */ Intent f54924b;

    /* renamed from: c */
    final /* synthetic */ Context f54925c;

    /* renamed from: d */
    final /* synthetic */ C15142ah f54926d;

    public C15140af(C15142ah c15142ah, AbstractC15152c abstractC15152c, Intent intent, Context context) {
        this.f54926d = c15142ah;
        this.f54923a = abstractC15152c;
        this.f54924b = intent;
        this.f54925c = context;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15169s
    /* renamed from: a */
    public final void mo9347a() {
        r0.f54932b.post(new RunnableC15141ag(this.f54926d, this.f54923a, 5, 0));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15169s
    /* renamed from: a */
    public final void mo9346a(int i) {
        r0.f54932b.post(new RunnableC15141ag(this.f54926d, this.f54923a, 6, i));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15169s
    /* renamed from: b */
    public final void mo9345b() {
        C15072h c15072h;
        if (!this.f54924b.getBooleanExtra("triggered_from_app_after_verification", false)) {
            this.f54924b.putExtra("triggered_from_app_after_verification", true);
            this.f54925c.sendBroadcast(this.f54924b);
            return;
        }
        c15072h = this.f54926d.f54301d;
        c15072h.m9509b("Splits copied and verified more than once.", new Object[0]);
    }
}

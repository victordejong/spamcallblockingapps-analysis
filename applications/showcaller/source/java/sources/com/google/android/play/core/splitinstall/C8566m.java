package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.Intent;
import com.google.android.play.core.internal.C8466a;
import p078c.p084c.p085a.p110c.p111a.p112a.AbstractC1967c;
/* renamed from: com.google.android.play.core.splitinstall.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/m.class */
final class C8566m implements AbstractC8557d {

    /* renamed from: a */
    final /* synthetic */ AbstractC8554a f38155a;

    /* renamed from: b */
    final /* synthetic */ Intent f38156b;

    /* renamed from: c */
    final /* synthetic */ Context f38157c;

    /* renamed from: d */
    final /* synthetic */ C8568o f38158d;

    public C8566m(C8568o c8568o, AbstractC8554a abstractC8554a, Intent intent, Context context) {
        this.f38158d = c8568o;
        this.f38155a = abstractC8554a;
        this.f38156b = intent;
        this.f38157c = context;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8557d
    /* renamed from: a */
    public final void mo3335a() {
        r0.f38164h.post(new RunnableC8567n(this.f38158d, this.f38155a, 5, 0));
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8557d
    /* renamed from: b */
    public final void mo3334b() {
        C8466a c8466a;
        if (!this.f38156b.getBooleanExtra("triggered_from_app_after_verification", false)) {
            this.f38156b.putExtra("triggered_from_app_after_verification", true);
            this.f38157c.sendBroadcast(this.f38156b);
            return;
        }
        c8466a = ((AbstractC1967c) this.f38158d).f7049a;
        c8466a.m3566b("Splits copied and verified more than once.", new Object[0]);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8557d
    /* renamed from: c */
    public final void mo3333c(int i) {
        r0.f38164h.post(new RunnableC8567n(this.f38158d, this.f38155a, 6, i));
    }
}

package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.common.api.GoogleApiActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.bb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bb.class */
public final class RunnableC2533bb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractDialogInterface$OnCancelListenerC2532ba f7140a;

    /* renamed from: b */
    private final C2534bc f7141b;

    public RunnableC2533bb(AbstractDialogInterface$OnCancelListenerC2532ba abstractDialogInterface$OnCancelListenerC2532ba, C2534bc c2534bc) {
        this.f7140a = abstractDialogInterface$OnCancelListenerC2532ba;
        this.f7141b = c2534bc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f7140a.f7136b) {
            return;
        }
        C2579b m14348b = this.f7141b.m14348b();
        if (m14348b.m14212a()) {
            this.f7140a.f7079a.startActivityForResult(GoogleApiActivity.m14464a(this.f7140a.m14404a(), m14348b.m14208d(), this.f7141b.m14349a(), false), 1);
        } else if (this.f7140a.f7138d.mo14171a(m14348b.m14209c())) {
            this.f7140a.f7138d.m14181a(this.f7140a.m14404a(), this.f7140a.f7079a, m14348b.m14209c(), 2, this.f7140a);
        } else if (m14348b.m14209c() != 18) {
            this.f7140a.mo14226a(m14348b, this.f7141b.m14349a());
        } else {
            this.f7140a.f7138d.m14177a(this.f7140a.m14404a().getApplicationContext(), new C2535bd(this, C2591e.m14182a(this.f7140a.m14404a(), this.f7140a)));
        }
    }
}

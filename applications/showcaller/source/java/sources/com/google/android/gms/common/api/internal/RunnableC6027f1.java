package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.api.internal.f1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f1.class */
public final class RunnableC6027f1 implements Runnable {

    /* renamed from: d */
    private final C6021d1 f19285d;

    /* renamed from: e */
    final /* synthetic */ AbstractDialogInterface$OnCancelListenerC6030g1 f19286e;

    public RunnableC6027f1(AbstractDialogInterface$OnCancelListenerC6030g1 abstractDialogInterface$OnCancelListenerC6030g1, C6021d1 c6021d1) {
        this.f19286e = abstractDialogInterface$OnCancelListenerC6030g1;
        this.f19285d = c6021d1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f19286e.f19289e) {
            return;
        }
        ConnectionResult m17378b = this.f19285d.m17378b();
        if (m17378b.m17503n0()) {
            AbstractDialogInterface$OnCancelListenerC6030g1 abstractDialogInterface$OnCancelListenerC6030g1 = this.f19286e;
            abstractDialogInterface$OnCancelListenerC6030g1.f19216d.startActivityForResult(GoogleApiActivity.m17494a(abstractDialogInterface$OnCancelListenerC6030g1.m17440b(), (PendingIntent) C6155o.m17018j(m17378b.m17504m0()), this.f19285d.m17379a(), false), 1);
            return;
        }
        AbstractDialogInterface$OnCancelListenerC6030g1 abstractDialogInterface$OnCancelListenerC6030g12 = this.f19286e;
        if (abstractDialogInterface$OnCancelListenerC6030g12.f19292h.mo17225b(abstractDialogInterface$OnCancelListenerC6030g12.m17440b(), m17378b.m17506k0(), null) != null) {
            AbstractDialogInterface$OnCancelListenerC6030g1 abstractDialogInterface$OnCancelListenerC6030g13 = this.f19286e;
            abstractDialogInterface$OnCancelListenerC6030g13.f19292h.m17234p(abstractDialogInterface$OnCancelListenerC6030g13.m17440b(), this.f19286e.f19216d, m17378b.m17506k0(), 2, this.f19286e);
        } else if (m17378b.m17506k0() != 18) {
            this.f19286e.m17328m(m17378b, this.f19285d.m17379a());
        } else {
            AbstractDialogInterface$OnCancelListenerC6030g1 abstractDialogInterface$OnCancelListenerC6030g14 = this.f19286e;
            Dialog m17231s = abstractDialogInterface$OnCancelListenerC6030g14.f19292h.m17231s(abstractDialogInterface$OnCancelListenerC6030g14.m17440b(), this.f19286e);
            AbstractDialogInterface$OnCancelListenerC6030g1 abstractDialogInterface$OnCancelListenerC6030g15 = this.f19286e;
            abstractDialogInterface$OnCancelListenerC6030g15.f19292h.m17230t(abstractDialogInterface$OnCancelListenerC6030g15.m17440b().getApplicationContext(), new C6024e1(this, m17231s));
        }
    }
}

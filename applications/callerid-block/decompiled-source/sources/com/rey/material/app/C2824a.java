package com.rey.material.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import androidx.fragment.app.b;
/* renamed from: com.rey.material.app.a */
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/a.class */
public class C2824a extends b {

    /* renamed from: k0 */
    protected AbstractC2826b f11748k0;

    /* renamed from: l0 */
    private View.OnClickListener f11749l0 = new View$OnClickListenerC2825a();

    /* renamed from: com.rey.material.app.a$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/a$a.class */
    class View$OnClickListenerC2825a implements View.OnClickListener {
        View$OnClickListenerC2825a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2824a.this.f11748k0 != null) {
                if (view.getId() == Dialog.f11673C) {
                    C2824a aVar = C2824a.this;
                    aVar.f11748k0.mo1460d(aVar);
                } else if (view.getId() == Dialog.f11674D) {
                    C2824a aVar2 = C2824a.this;
                    aVar2.f11748k0.mo1463a(aVar2);
                } else if (view.getId() == Dialog.f11675E) {
                    C2824a aVar3 = C2824a.this;
                    aVar3.f11748k0.mo1462b(aVar3);
                }
            }
        }
    }

    /* renamed from: com.rey.material.app.a$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/a$b.class */
    public interface AbstractC2826b {
        /* renamed from: a */
        void mo1463a(C2824a aVar);

        /* renamed from: b */
        void mo1462b(C2824a aVar);

        /* renamed from: c */
        Dialog mo1461c(Context context);

        /* renamed from: d */
        void mo1460d(C2824a aVar);
    }

    /* renamed from: K1 */
    public static C2824a m1467K1(AbstractC2826b bVar) {
        C2824a aVar = new C2824a();
        aVar.f11748k0 = bVar;
        return aVar;
    }

    /* renamed from: I0 */
    public void m1468I0(Bundle bundle) {
        C2824a.super.I0(bundle);
        AbstractC2826b bVar = this.f11748k0;
        if (bVar != null && (bVar instanceof Parcelable)) {
            bundle.putParcelable("arg_builder", (Parcelable) bVar);
        }
    }

    /* renamed from: L1 */
    public Dialog m1469H1(Bundle bundle) {
        AbstractC2826b bVar = this.f11748k0;
        Dialog dialog = bVar == null ? new Dialog(m()) : bVar.mo1461c(m());
        dialog.m1541m0(this.f11749l0);
        dialog.m1573S(this.f11749l0);
        dialog.m1562b0(this.f11749l0);
        return dialog;
    }

    /* renamed from: m0 */
    public void m1465m0(Bundle bundle) {
        C2824a.super.m0(bundle);
        if (bundle != null && this.f11748k0 == null) {
            this.f11748k0 = (AbstractC2826b) bundle.getParcelable("arg_builder");
        }
    }

    /* renamed from: t0 */
    public void m1464t0() {
        Dialog G1 = G1();
        if (G1 != null && (G1 instanceof Dialog)) {
            ((Dialog) G1).m1588D();
        }
        C2824a.super.t0();
    }
}

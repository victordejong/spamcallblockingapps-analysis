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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.rey.material.app.a$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/a$a.class */
    public class View$OnClickListenerC2825a implements View.OnClickListener {
        View$OnClickListenerC2825a() {
            C2824a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2824a.this.f11748k0 == null) {
                return;
            }
            if (view.getId() == Dialog.f11673C) {
                C2824a c2824a = C2824a.this;
                c2824a.f11748k0.mo1460d(c2824a);
            } else if (view.getId() == Dialog.f11674D) {
                C2824a c2824a2 = C2824a.this;
                c2824a2.f11748k0.mo1463a(c2824a2);
            } else if (view.getId() != Dialog.f11675E) {
            } else {
                C2824a c2824a3 = C2824a.this;
                c2824a3.f11748k0.mo1462b(c2824a3);
            }
        }
    }

    /* renamed from: com.rey.material.app.a$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/a$b.class */
    public interface AbstractC2826b {
        /* renamed from: a */
        void mo1463a(C2824a c2824a);

        /* renamed from: b */
        void mo1462b(C2824a c2824a);

        /* renamed from: c */
        Dialog mo1461c(Context context);

        /* renamed from: d */
        void mo1460d(C2824a c2824a);
    }

    /* renamed from: K1 */
    public static C2824a m1467K1(AbstractC2826b abstractC2826b) {
        C2824a c2824a = new C2824a();
        c2824a.f11748k0 = abstractC2826b;
        return c2824a;
    }

    /* renamed from: I0 */
    public void m1468I0(Bundle bundle) {
        C2824a.super.I0(bundle);
        AbstractC2826b abstractC2826b = this.f11748k0;
        if (abstractC2826b == null || !(abstractC2826b instanceof Parcelable)) {
            return;
        }
        bundle.putParcelable("arg_builder", (Parcelable) abstractC2826b);
    }

    /* renamed from: L1 */
    public Dialog m1469H1(Bundle bundle) {
        AbstractC2826b abstractC2826b = this.f11748k0;
        Dialog dialog = abstractC2826b == null ? new Dialog(m()) : abstractC2826b.mo1461c(m());
        dialog.m1541m0(this.f11749l0);
        dialog.m1573S(this.f11749l0);
        dialog.m1562b0(this.f11749l0);
        return dialog;
    }

    /* renamed from: m0 */
    public void m1465m0(Bundle bundle) {
        C2824a.super.m0(bundle);
        if (bundle == null || this.f11748k0 != null) {
            return;
        }
        this.f11748k0 = (AbstractC2826b) bundle.getParcelable("arg_builder");
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

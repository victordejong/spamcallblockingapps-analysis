package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.AbstractC0804n;
import androidx.lifecycle.C0820v;
import androidx.lifecycle.C0821w;
import androidx.savedstate.C1048d;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class DialogInterface$OnCancelListenerC0722c extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: e0 */
    private Handler f3463e0;

    /* renamed from: n0 */
    private boolean f3472n0;

    /* renamed from: p0 */
    private Dialog f3474p0;

    /* renamed from: q0 */
    private boolean f3475q0;

    /* renamed from: r0 */
    private boolean f3476r0;

    /* renamed from: s0 */
    private boolean f3477s0;

    /* renamed from: f0 */
    private Runnable f3464f0 = new RunnableC0723a();

    /* renamed from: g0 */
    private DialogInterface.OnCancelListener f3465g0 = new DialogInterface$OnCancelListenerC0724b();

    /* renamed from: h0 */
    private DialogInterface.OnDismissListener f3466h0 = new DialogInterface$OnDismissListenerC0725c();

    /* renamed from: i0 */
    private int f3467i0 = 0;

    /* renamed from: j0 */
    private int f3468j0 = 0;

    /* renamed from: k0 */
    private boolean f3469k0 = true;

    /* renamed from: l0 */
    private boolean f3470l0 = true;

    /* renamed from: m0 */
    private int f3471m0 = -1;

    /* renamed from: o0 */
    private AbstractC0804n<AbstractC0797h> f3473o0 = new C0726d();

    /* renamed from: t0 */
    private boolean f3478t0 = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$a.class */
    public class RunnableC0723a implements Runnable {
        RunnableC0723a() {
            DialogInterface$OnCancelListenerC0722c.this = r4;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            DialogInterface$OnCancelListenerC0722c.this.f3466h0.onDismiss(DialogInterface$OnCancelListenerC0722c.this.f3474p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$b.class */
    public class DialogInterface$OnCancelListenerC0724b implements DialogInterface.OnCancelListener {
        DialogInterface$OnCancelListenerC0724b() {
            DialogInterface$OnCancelListenerC0722c.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public void onCancel(DialogInterface dialogInterface) {
            if (DialogInterface$OnCancelListenerC0722c.this.f3474p0 != null) {
                DialogInterface$OnCancelListenerC0722c dialogInterface$OnCancelListenerC0722c = DialogInterface$OnCancelListenerC0722c.this;
                dialogInterface$OnCancelListenerC0722c.onCancel(dialogInterface$OnCancelListenerC0722c.f3474p0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$c.class */
    public class DialogInterface$OnDismissListenerC0725c implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC0725c() {
            DialogInterface$OnCancelListenerC0722c.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public void onDismiss(DialogInterface dialogInterface) {
            if (DialogInterface$OnCancelListenerC0722c.this.f3474p0 != null) {
                DialogInterface$OnCancelListenerC0722c dialogInterface$OnCancelListenerC0722c = DialogInterface$OnCancelListenerC0722c.this;
                dialogInterface$OnCancelListenerC0722c.onDismiss(dialogInterface$OnCancelListenerC0722c.f3474p0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$d.class */
    public class C0726d implements AbstractC0804n<AbstractC0797h> {
        C0726d() {
            DialogInterface$OnCancelListenerC0722c.this = r4;
        }

        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: b */
        public void mo28954a(AbstractC0797h abstractC0797h) {
            if (abstractC0797h == null || !DialogInterface$OnCancelListenerC0722c.this.f3470l0) {
                return;
            }
            View m32987E1 = DialogInterface$OnCancelListenerC0722c.this.m32987E1();
            if (m32987E1.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (DialogInterface$OnCancelListenerC0722c.this.f3474p0 == null) {
                return;
            }
            if (FragmentManager.m32848G0(3)) {
                Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + DialogInterface$OnCancelListenerC0722c.this.f3474p0);
            }
            DialogInterface$OnCancelListenerC0722c.this.f3474p0.setContentView(m32987E1);
        }
    }

    /* renamed from: androidx.fragment.app.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$e.class */
    class C0727e extends AbstractC0735e {

        /* renamed from: a */
        final /* synthetic */ AbstractC0735e f3483a;

        C0727e(AbstractC0735e abstractC0735e) {
            DialogInterface$OnCancelListenerC0722c.this = r4;
            this.f3483a = abstractC0735e;
        }

        @Override // androidx.fragment.app.AbstractC0735e
        /* renamed from: e */
        public View mo32596e(int i) {
            return this.f3483a.mo32595f() ? this.f3483a.mo32596e(i) : DialogInterface$OnCancelListenerC0722c.this.m32639i2(i);
        }

        @Override // androidx.fragment.app.AbstractC0735e
        /* renamed from: f */
        public boolean mo32595f() {
            return this.f3483a.mo32595f() || DialogInterface$OnCancelListenerC0722c.this.m32638j2();
        }
    }

    /* renamed from: e2 */
    private void m32642e2(boolean z, boolean z2) {
        if (this.f3476r0) {
            return;
        }
        this.f3476r0 = true;
        this.f3477s0 = false;
        Dialog dialog = this.f3474p0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f3474p0.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f3463e0.getLooper()) {
                    onDismiss(this.f3474p0);
                } else {
                    this.f3463e0.post(this.f3464f0);
                }
            }
        }
        this.f3475q0 = true;
        if (this.f3471m0 >= 0) {
            m32957R().m32818V0(this.f3471m0, 1);
            this.f3471m0 = -1;
            return;
        }
        AbstractC0754s m32776l = m32957R().m32776l();
        m32776l.mo32496o(this);
        if (z) {
            m32776l.mo32502i();
        } else {
            m32776l.mo32503h();
        }
    }

    /* renamed from: k2 */
    private void m32636k2(Bundle bundle) {
        if (this.f3470l0 && !this.f3478t0) {
            try {
                this.f3472n0 = true;
                Dialog mo4901h2 = mo4901h2(bundle);
                this.f3474p0 = mo4901h2;
                if (this.f3470l0) {
                    m32633n2(mo4901h2, this.f3467i0);
                    Context m32996B = m32996B();
                    if (m32996B instanceof Activity) {
                        this.f3474p0.setOwnerActivity((Activity) m32996B);
                    }
                    this.f3474p0.setCancelable(this.f3469k0);
                    this.f3474p0.setOnCancelListener(this.f3465g0);
                    this.f3474p0.setOnDismissListener(this.f3466h0);
                    this.f3478t0 = true;
                } else {
                    this.f3474p0 = null;
                }
            } finally {
                this.f3472n0 = false;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: B0 */
    public void mo4888B0(Bundle bundle) {
        super.mo4888B0(bundle);
        this.f3463e0 = new Handler();
        this.f3470l0 = this.f3191B == 0;
        if (bundle != null) {
            this.f3467i0 = bundle.getInt("android:style", 0);
            this.f3468j0 = bundle.getInt("android:theme", 0);
            this.f3469k0 = bundle.getBoolean("android:cancelable", true);
            this.f3470l0 = bundle.getBoolean("android:showsDialog", this.f3470l0);
            this.f3471m0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K0 */
    public void mo25114K0() {
        super.mo25114K0();
        Dialog dialog = this.f3474p0;
        if (dialog != null) {
            this.f3475q0 = true;
            dialog.setOnDismissListener(null);
            this.f3474p0.dismiss();
            if (!this.f3476r0) {
                onDismiss(this.f3474p0);
            }
            this.f3474p0 = null;
            this.f3478t0 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: L0 */
    public void mo22801L0() {
        super.mo22801L0();
        if (!this.f3477s0 && !this.f3476r0) {
            this.f3476r0 = true;
        }
        m32926g0().mo28961m(this.f3473o0);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: M0 */
    public LayoutInflater mo32648M0(Bundle bundle) {
        LayoutInflater mo32648M0 = super.mo32648M0(bundle);
        if (this.f3470l0 && !this.f3472n0) {
            m32636k2(bundle);
            if (FragmentManager.m32848G0(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.f3474p0;
            LayoutInflater layoutInflater = mo32648M0;
            if (dialog != null) {
                layoutInflater = mo32648M0.cloneInContext(dialog.getContext());
            }
            return layoutInflater;
        }
        if (FragmentManager.m32848G0(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.f3470l0) {
                Log.d("FragmentManager", "mShowsDialog = false: " + str);
            } else {
                Log.d("FragmentManager", "mCreatingDialog = true: " + str);
            }
        }
        return mo32648M0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Z0 */
    public void mo4886Z0(Bundle bundle) {
        super.mo4886Z0(bundle);
        Dialog dialog = this.f3474p0;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.f3467i0;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f3468j0;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f3469k0;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f3470l0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f3471m0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a1 */
    public void mo4903a1() {
        super.mo4903a1();
        Dialog dialog = this.f3474p0;
        if (dialog != null) {
            this.f3475q0 = false;
            dialog.show();
            View decorView = this.f3474p0.getWindow().getDecorView();
            C0820v.m32343a(decorView, this);
            C0821w.m32342a(decorView, this);
            C1048d.m31179a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: b1 */
    public void mo4902b1() {
        super.mo4902b1();
        Dialog dialog = this.f3474p0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: d1 */
    public void mo32644d1(Bundle bundle) {
        Bundle bundle2;
        super.mo32644d1(bundle);
        if (this.f3474p0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f3474p0.onRestoreInstanceState(bundle2);
    }

    /* renamed from: d2 */
    public void m32643d2() {
        m32642e2(false, false);
    }

    /* renamed from: f2 */
    public Dialog m32641f2() {
        return this.f3474p0;
    }

    /* renamed from: g2 */
    public int m32640g2() {
        return this.f3468j0;
    }

    /* renamed from: h2 */
    public Dialog mo4901h2(Bundle bundle) {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(m32990D1(), m32640g2());
    }

    /* renamed from: i2 */
    View m32639i2(int i) {
        Dialog dialog = this.f3474p0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    /* renamed from: j2 */
    boolean m32638j2() {
        return this.f3478t0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: k1 */
    public void mo32637k1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.mo32637k1(layoutInflater, viewGroup, bundle);
        if (this.f3201L != null || this.f3474p0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f3474p0.onRestoreInstanceState(bundle2);
    }

    /* renamed from: l2 */
    public final Dialog m32635l2() {
        Dialog m32641f2 = m32641f2();
        if (m32641f2 != null) {
            return m32641f2;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    /* renamed from: m2 */
    public void m32634m2(boolean z) {
        this.f3470l0 = z;
    }

    /* renamed from: n2 */
    public void m32633n2(Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: o */
    public AbstractC0735e mo32632o() {
        return new C0727e(super.mo32632o());
    }

    /* renamed from: o2 */
    public void mo17185o2(FragmentManager fragmentManager, String str) {
        this.f3476r0 = false;
        this.f3477s0 = true;
        AbstractC0754s m32776l = fragmentManager.m32776l();
        m32776l.m32506e(this, str);
        m32776l.mo32503h();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f3475q0) {
            if (FragmentManager.m32848G0(3)) {
                Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
            }
            m32642e2(true, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        m32926g0().m32430i(this.f3473o0);
        if (!this.f3477s0) {
            this.f3476r0 = false;
        }
    }
}

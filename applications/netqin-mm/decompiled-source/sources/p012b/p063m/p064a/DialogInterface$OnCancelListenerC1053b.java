package p012b.p063m.p064a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
/* renamed from: b.m.a.b */
/* loaded from: classes-dex2jar.jar:b/m/a/b.class */
public class DialogInterface$OnCancelListenerC1053b extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: Z */
    public Handler f4421Z;

    /* renamed from: a0 */
    public Runnable f4422a0 = new RunnableC1054a();

    /* renamed from: b0 */
    public int f4423b0 = 0;

    /* renamed from: c0 */
    public int f4424c0 = 0;

    /* renamed from: d0 */
    public boolean f4425d0 = true;

    /* renamed from: e0 */
    public boolean f4426e0 = true;

    /* renamed from: f0 */
    public int f4427f0 = -1;

    /* renamed from: g0 */
    public Dialog f4428g0;

    /* renamed from: h0 */
    public boolean f4429h0;

    /* renamed from: i0 */
    public boolean f4430i0;

    /* renamed from: j0 */
    public boolean f4431j0;

    /* renamed from: b.m.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/b$a.class */
    public class RunnableC1054a implements Runnable {
        public RunnableC1054a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogInterface$OnCancelListenerC1053b bVar = DialogInterface$OnCancelListenerC1053b.this;
            Dialog dialog = bVar.f4428g0;
            if (dialog != null) {
                bVar.onDismiss(dialog);
            }
        }
    }

    /* renamed from: a */
    public void m34955a(Dialog dialog, int i) {
        if (!(i == 1 || i == 2)) {
            if (i == 3) {
                dialog.getWindow().addFlags(24);
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo19630a(Context context) {
        super.mo19630a(context);
        if (!this.f4431j0) {
            this.f4430i0 = false;
        }
    }

    /* renamed from: a */
    public void mo17789a(AbstractC1059g gVar, String str) {
        this.f4430i0 = false;
        this.f4431j0 = true;
        AbstractC1079j a = gVar.mo34878a();
        a.m34746a(this, str);
        a.mo34750a();
    }

    /* renamed from: a */
    public void m34954a(boolean z, boolean z2) {
        if (!this.f4430i0) {
            this.f4430i0 = true;
            this.f4431j0 = false;
            Dialog dialog = this.f4428g0;
            if (dialog != null) {
                dialog.setOnDismissListener(null);
                this.f4428g0.dismiss();
                if (!z2) {
                    if (Looper.myLooper() == this.f4421Z.getLooper()) {
                        onDismiss(this.f4428g0);
                    } else {
                        this.f4421Z.post(this.f4422a0);
                    }
                }
            }
            this.f4429h0 = true;
            if (this.f4427f0 >= 0) {
                m38350u0().mo34874a(this.f4427f0, 1);
                this.f4427f0 = -1;
                return;
            }
            AbstractC1079j a = m38350u0().mo34878a();
            a.mo34741c(this);
            if (z) {
                a.mo34744b();
            } else {
                a.mo34750a();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: b */
    public void mo34953b(Bundle bundle) {
        Bundle bundle2;
        super.mo34953b(bundle);
        if (this.f4426e0) {
            View L = m38450L();
            if (L != null) {
                if (L.getParent() == null) {
                    this.f4428g0.setContentView(L);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            FragmentActivity h = m38386h();
            if (h != null) {
                this.f4428g0.setOwnerActivity(h);
            }
            this.f4428g0.setCancelable(this.f4425d0);
            this.f4428g0.setOnCancelListener(this);
            this.f4428g0.setOnDismissListener(this);
            if (bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
                this.f4428g0.onRestoreInstanceState(bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: c */
    public void mo17438c(Bundle bundle) {
        super.mo17438c(bundle);
        this.f4421Z = new Handler();
        this.f4426e0 = this.f1304w == 0;
        if (bundle != null) {
            this.f4423b0 = bundle.getInt("android:style", 0);
            this.f4424c0 = bundle.getInt("android:theme", 0);
            this.f4425d0 = bundle.getBoolean("android:cancelable", true);
            this.f4426e0 = bundle.getBoolean("android:showsDialog", this.f4426e0);
            this.f4427f0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: c0 */
    public void mo34952c0() {
        super.mo34952c0();
        Dialog dialog = this.f4428g0;
        if (dialog != null) {
            this.f4429h0 = true;
            dialog.setOnDismissListener(null);
            this.f4428g0.dismiss();
            if (!this.f4430i0) {
                onDismiss(this.f4428g0);
            }
            this.f4428g0 = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: d */
    public LayoutInflater mo34951d(Bundle bundle) {
        if (!this.f4426e0) {
            return super.mo34951d(bundle);
        }
        Dialog n = mo17788n(bundle);
        this.f4428g0 = n;
        if (n == null) {
            return (LayoutInflater) this.f1300s.m34910g().getSystemService("layout_inflater");
        }
        m34955a(n, this.f4423b0);
        return (LayoutInflater) this.f4428g0.getContext().getSystemService("layout_inflater");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: d0 */
    public void mo34950d0() {
        super.mo34950d0();
        if (!this.f4431j0 && !this.f4430i0) {
            this.f4430i0 = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo17437e(Bundle bundle) {
        Bundle onSaveInstanceState;
        super.mo17437e(bundle);
        Dialog dialog = this.f4428g0;
        if (!(dialog == null || (onSaveInstanceState = dialog.onSaveInstanceState()) == null)) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.f4423b0;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f4424c0;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f4425d0;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f4426e0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f4427f0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: g0 */
    public void mo17435g0() {
        super.mo17435g0();
        Dialog dialog = this.f4428g0;
        if (dialog != null) {
            this.f4429h0 = false;
            dialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: h0 */
    public void mo17434h0() {
        super.mo17434h0();
        Dialog dialog = this.f4428g0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    /* renamed from: l */
    public void m34949l(boolean z) {
        this.f4426e0 = z;
    }

    /* renamed from: n */
    public Dialog mo17788n(Bundle bundle) {
        throw null;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f4429h0) {
            m34954a(true, true);
        }
    }
}

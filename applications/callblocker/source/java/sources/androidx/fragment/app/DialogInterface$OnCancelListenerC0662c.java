package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class DialogInterface$OnCancelListenerC0662c extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: ae */
    private Handler f2345ae;

    /* renamed from: f */
    Dialog f2351f;

    /* renamed from: g */
    boolean f2352g;

    /* renamed from: h */
    boolean f2353h;

    /* renamed from: i */
    boolean f2354i;

    /* renamed from: af */
    private Runnable f2346af = new Runnable() { // from class: androidx.fragment.app.c.1
        @Override // java.lang.Runnable
        public void run() {
            if (DialogInterface$OnCancelListenerC0662c.this.f2351f != null) {
                DialogInterface$OnCancelListenerC0662c.this.onDismiss(DialogInterface$OnCancelListenerC0662c.this.f2351f);
            }
        }
    };

    /* renamed from: a */
    int f2344a = 0;

    /* renamed from: b */
    int f2347b = 0;

    /* renamed from: c */
    boolean f2348c = true;

    /* renamed from: d */
    boolean f2349d = true;

    /* renamed from: e */
    int f2350e = -1;

    /* renamed from: a */
    public void m19895a() {
        m19892a(false, false);
    }

    /* renamed from: a */
    public void m19894a(Dialog dialog, int i) {
        switch (i) {
            case 1:
            case 2:
                break;
            default:
                return;
            case 3:
                dialog.getWindow().addFlags(24);
                break;
        }
        dialog.requestWindowFeature(1);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo17250a(Context context) {
        super.mo17250a(context);
        if (!this.f2354i) {
            this.f2353h = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo3149a(Bundle bundle) {
        super.mo3149a(bundle);
        this.f2345ae = new Handler();
        this.f2349d = this.f2259F == 0;
        if (bundle != null) {
            this.f2344a = bundle.getInt("android:style", 0);
            this.f2347b = bundle.getInt("android:theme", 0);
            this.f2348c = bundle.getBoolean("android:cancelable", true);
            this.f2349d = bundle.getBoolean("android:showsDialog", this.f2349d);
            this.f2350e = bundle.getInt("android:backStackId", -1);
        }
    }

    /* renamed from: a */
    public void mo13906a(AbstractC0670i abstractC0670i, String str) {
        this.f2353h = false;
        this.f2354i = true;
        AbstractC0695o mo19803a = abstractC0670i.mo19803a();
        mo19803a.m19659a(this, str);
        mo19803a.mo19657b();
    }

    /* renamed from: a */
    public void m19893a(boolean z) {
        this.f2349d = z;
    }

    /* renamed from: a */
    void m19892a(boolean z, boolean z2) {
        if (this.f2353h) {
            return;
        }
        this.f2353h = true;
        this.f2354i = false;
        if (this.f2351f != null) {
            this.f2351f.setOnDismissListener(null);
            this.f2351f.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f2345ae.getLooper()) {
                    onDismiss(this.f2351f);
                } else {
                    this.f2345ae.post(this.f2346af);
                }
            }
        }
        this.f2352g = true;
        if (this.f2350e >= 0) {
            m19917w().mo19799a(this.f2350e, 1);
            this.f2350e = -1;
            return;
        }
        AbstractC0695o mo19803a = m19917w().mo19803a();
        mo19803a.mo19661a(this);
        if (z) {
            mo19803a.mo19653c();
        } else {
            mo19803a.mo19657b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: b */
    public LayoutInflater mo19891b(Bundle bundle) {
        LayoutInflater layoutInflater;
        if (!this.f2349d) {
            layoutInflater = super.mo19891b(bundle);
        } else {
            this.f2351f = mo3162c(bundle);
            if (this.f2351f != null) {
                m19894a(this.f2351f, this.f2344a);
                layoutInflater = (LayoutInflater) this.f2351f.getContext().getSystemService("layout_inflater");
            } else {
                layoutInflater = (LayoutInflater) this.f2255B.m19828l().getSystemService("layout_inflater");
            }
        }
        return layoutInflater;
    }

    /* renamed from: c */
    public Dialog mo3162c(Bundle bundle) {
        return new Dialog(m19923q(), m19887g());
    }

    /* renamed from: d */
    public Dialog m19890d() {
        return this.f2351f;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: d */
    public void mo19889d(Bundle bundle) {
        Bundle bundle2;
        super.mo19889d(bundle);
        if (!this.f2349d) {
            return;
        }
        View G = m20016G();
        if (G != null) {
            if (G.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            this.f2351f.setContentView(G);
        }
        ActivityC0664d r = m19922r();
        if (r != null) {
            this.f2351f.setOwnerActivity(r);
        }
        this.f2351f.setCancelable(this.f2348c);
        this.f2351f.setOnCancelListener(this);
        this.f2351f.setOnDismissListener(this);
        if (bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f2351f.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
        Bundle onSaveInstanceState;
        super.mo3147e(bundle);
        if (this.f2351f != null && (onSaveInstanceState = this.f2351f.onSaveInstanceState()) != null) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        if (this.f2344a != 0) {
            bundle.putInt("android:style", this.f2344a);
        }
        if (this.f2347b != 0) {
            bundle.putInt("android:theme", this.f2347b);
        }
        if (!this.f2348c) {
            bundle.putBoolean("android:cancelable", this.f2348c);
        }
        if (!this.f2349d) {
            bundle.putBoolean("android:showsDialog", this.f2349d);
        }
        if (this.f2350e != -1) {
            bundle.putInt("android:backStackId", this.f2350e);
        }
    }

    /* renamed from: f */
    public final Dialog m19888f() {
        Dialog m19890d = m19890d();
        if (m19890d == null) {
            throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
        }
        return m19890d;
    }

    /* renamed from: g */
    public int m19887g() {
        return this.f2347b;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: h */
    public void mo17240h() {
        super.mo17240h();
        if (this.f2354i || this.f2353h) {
            return;
        }
        this.f2353h = true;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: i */
    public void mo3152i() {
        super.mo3152i();
        if (this.f2351f != null) {
            this.f2352g = false;
            this.f2351f.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: j */
    public void mo3151j() {
        super.mo3151j();
        if (this.f2351f != null) {
            this.f2351f.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: k */
    public void mo15637k() {
        super.mo15637k();
        if (this.f2351f != null) {
            this.f2352g = true;
            this.f2351f.setOnDismissListener(null);
            this.f2351f.dismiss();
            if (!this.f2353h) {
                onDismiss(this.f2351f);
            }
            this.f2351f = null;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f2352g) {
            m19892a(true, true);
        }
    }
}

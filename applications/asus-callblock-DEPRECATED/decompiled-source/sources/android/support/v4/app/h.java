package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/h.class */
public class h extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    protected int f68a = 0;

    /* renamed from: b  reason: collision with root package name */
    protected int f69b = 0;
    boolean c = true;
    protected boolean d = true;
    int e = -1;
    protected Dialog f;
    boolean g;
    boolean h;
    boolean i;

    public Dialog a() {
        return new Dialog(getActivity(), this.f69b);
    }

    public void a(m mVar, String str) {
        this.h = false;
        this.i = true;
        q a2 = mVar.a();
        a2.a(this, str);
        a2.a();
    }

    public final void a(boolean z) {
        if (!this.h) {
            this.h = true;
            this.i = false;
            if (this.f != null) {
                this.f.dismiss();
                this.f = null;
            }
            this.g = true;
            if (this.e >= 0) {
                getFragmentManager().a(this.e);
                this.e = -1;
                return;
            }
            q a2 = getFragmentManager().a();
            a2.a(this);
            if (z) {
                a2.b();
            } else {
                a2.a();
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflater;
        if (!this.d) {
            layoutInflater = super.getLayoutInflater(bundle);
        } else {
            this.f = a();
            if (this.f != null) {
                Dialog dialog = this.f;
                switch (this.f68a) {
                    case 3:
                        dialog.getWindow().addFlags(24);
                    case 1:
                    case 2:
                        dialog.requestWindowFeature(1);
                        break;
                }
                layoutInflater = (LayoutInflater) this.f.getContext().getSystemService("layout_inflater");
            } else {
                layoutInflater = (LayoutInflater) this.C.c.getSystemService("layout_inflater");
            }
        }
        return layoutInflater;
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (this.d) {
            View view = getView();
            if (view != null) {
                if (view.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                this.f.setContentView(view);
            }
            this.f.setOwnerActivity(getActivity());
            this.f.setCancelable(this.c);
            this.f.setOnCancelListener(this);
            this.f.setOnDismissListener(this);
            if (bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
                this.f.onRestoreInstanceState(bundle2);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!this.i) {
            this.h = false;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = this.G == 0;
        if (bundle != null) {
            this.f68a = bundle.getInt("android:style", 0);
            this.f69b = bundle.getInt("android:theme", 0);
            this.c = bundle.getBoolean("android:cancelable", true);
            this.d = bundle.getBoolean("android:showsDialog", this.d);
            this.e = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f != null) {
            this.g = true;
            this.f.dismiss();
            this.f = null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.i && !this.h) {
            this.h = true;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.g) {
            a(true);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle onSaveInstanceState;
        super.onSaveInstanceState(bundle);
        if (!(this.f == null || (onSaveInstanceState = this.f.onSaveInstanceState()) == null)) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        if (this.f68a != 0) {
            bundle.putInt("android:style", this.f68a);
        }
        if (this.f69b != 0) {
            bundle.putInt("android:theme", this.f69b);
        }
        if (!this.c) {
            bundle.putBoolean("android:cancelable", this.c);
        }
        if (!this.d) {
            bundle.putBoolean("android:showsDialog", this.d);
        }
        if (this.e != -1) {
            bundle.putInt("android:backStackId", this.e);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.f != null) {
            this.g = false;
            this.f.show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.f != null) {
            this.f.hide();
        }
    }
}

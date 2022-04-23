package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ae;
import androidx.lifecycle.af;
import androidx.lifecycle.p;
import androidx.lifecycle.u;
import androidx.savedstate.e;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class c extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    Dialog f2262a;

    /* renamed from: c  reason: collision with root package name */
    private Handler f2264c;
    private boolean m;
    private boolean o;
    private boolean p;
    private boolean q;
    private Runnable e = new Runnable() { // from class: androidx.fragment.app.c.1
        @Override // java.lang.Runnable
        public final void run() {
            c.this.g.onDismiss(c.this.f2262a);
        }
    };
    private DialogInterface.OnCancelListener f = new DialogInterface.OnCancelListener() { // from class: androidx.fragment.app.c.2
        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            if (c.this.f2262a != null) {
                c cVar = c.this;
                cVar.onCancel(cVar.f2262a);
            }
        }
    };
    private DialogInterface.OnDismissListener g = new DialogInterface.OnDismissListener() { // from class: androidx.fragment.app.c.3
        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            if (c.this.f2262a != null) {
                c cVar = c.this;
                cVar.onDismiss(cVar.f2262a);
            }
        }
    };
    private int h = 0;
    private int i = 0;
    private boolean j = true;
    private boolean k = true;
    private int l = -1;
    private u<p> n = new u<p>() { // from class: androidx.fragment.app.c.4
        @Override // androidx.lifecycle.u
        public final /* synthetic */ void onChanged(p pVar) {
            if (pVar != null && c.this.k) {
                View requireView = c.this.requireView();
                if (requireView.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                } else if (c.this.f2262a != null) {
                    if (FragmentManager.a(3)) {
                        StringBuilder sb = new StringBuilder("DialogFragment ");
                        sb.append(this);
                        sb.append(" setting the content view on ");
                        sb.append(c.this.f2262a);
                    }
                    c.this.f2262a.setContentView(requireView);
                }
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    boolean f2263b = false;

    public c() {
    }

    public c(int i) {
        super(i);
    }

    private void a(boolean z, boolean z2) {
        if (!this.p) {
            this.p = true;
            this.q = false;
            Dialog dialog = this.f2262a;
            if (dialog != null) {
                dialog.setOnDismissListener(null);
                this.f2262a.dismiss();
                if (!z2) {
                    if (Looper.myLooper() == this.f2264c.getLooper()) {
                        onDismiss(this.f2262a);
                    } else {
                        this.f2264c.post(this.e);
                    }
                }
            }
            this.o = true;
            if (this.l >= 0) {
                getParentFragmentManager().b(this.l);
                this.l = -1;
                return;
            }
            s a2 = getParentFragmentManager().a();
            a2.a(this);
            if (z) {
                a2.c();
            } else {
                a2.b();
            }
        }
    }

    public Dialog a(Bundle bundle) {
        if (FragmentManager.a(3)) {
            new StringBuilder("onCreateDialog called for DialogFragment ").append(this);
        }
        return new Dialog(requireContext(), getTheme());
    }

    public void a() {
        a(false, false);
    }

    public void a(Dialog dialog, int i) {
        if (!(i == 1 || i == 2)) {
            if (i == 3) {
                Window window = dialog.getWindow();
                if (window != null) {
                    window.addFlags(24);
                }
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    public void a(FragmentManager fragmentManager, String str) {
        this.p = false;
        this.q = true;
        s a2 = fragmentManager.a();
        a2.a(this, str);
        a2.b();
    }

    public void b() {
        a(true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.Fragment
    public e createFragmentContainer() {
        final e createFragmentContainer = super.createFragmentContainer();
        return new e() { // from class: androidx.fragment.app.c.5
            @Override // androidx.fragment.app.e
            public final View a(int i) {
                if (createFragmentContainer.a()) {
                    return createFragmentContainer.a(i);
                }
                c cVar = c.this;
                if (cVar.f2262a != null) {
                    return cVar.f2262a.findViewById(i);
                }
                return null;
            }

            @Override // androidx.fragment.app.e
            public final boolean a() {
                return createFragmentContainer.a() || c.this.f2263b;
            }
        };
    }

    public Dialog getDialog() {
        return this.f2262a;
    }

    public int getTheme() {
        return this.i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        LiveData<p> viewLifecycleOwnerLiveData = getViewLifecycleOwnerLiveData();
        u<p> uVar = this.n;
        LiveData.a("observeForever");
        LiveData.a aVar = new LiveData.a(uVar);
        LiveData<p>.b a2 = viewLifecycleOwnerLiveData.f2537c.a(uVar, aVar);
        if (!(a2 instanceof LiveData.LifecycleBoundObserver)) {
            if (a2 == null) {
                aVar.a(true);
            }
            if (!this.q) {
                this.p = false;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2264c = new Handler();
        this.k = this.mContainerId == 0;
        if (bundle != null) {
            this.h = bundle.getInt("android:style", 0);
            this.i = bundle.getInt("android:theme", 0);
            this.j = bundle.getBoolean("android:cancelable", true);
            this.k = bundle.getBoolean("android:showsDialog", this.k);
            this.l = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f2262a;
        if (dialog != null) {
            this.o = true;
            dialog.setOnDismissListener(null);
            this.f2262a.dismiss();
            if (!this.p) {
                onDismiss(this.f2262a);
            }
            this.f2262a = null;
            this.f2263b = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.q && !this.p) {
            this.p = true;
        }
        getViewLifecycleOwnerLiveData().a(this.n);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.o) {
            if (FragmentManager.a(3)) {
                new StringBuilder("onDismiss called for DialogFragment ").append(this);
            }
            a(true, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.k;
        if (!z || this.m) {
            if (FragmentManager.a(2)) {
                "getting layout inflater for DialogFragment ".concat(String.valueOf(this));
                boolean z2 = this.k;
            }
            return onGetLayoutInflater;
        }
        if (z && !this.f2263b) {
            try {
                this.m = true;
                Dialog a2 = a(bundle);
                this.f2262a = a2;
                if (this.k) {
                    a(a2, this.h);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.f2262a.setOwnerActivity((Activity) context);
                    }
                    this.f2262a.setCancelable(this.j);
                    this.f2262a.setOnCancelListener(this.f);
                    this.f2262a.setOnDismissListener(this.g);
                    this.f2263b = true;
                } else {
                    this.f2262a = null;
                }
            } finally {
                this.m = false;
            }
        }
        if (FragmentManager.a(2)) {
            StringBuilder sb = new StringBuilder("get layout inflater for DialogFragment ");
            sb.append(this);
            sb.append(" from dialog context");
        }
        Dialog dialog = this.f2262a;
        LayoutInflater layoutInflater = onGetLayoutInflater;
        if (dialog != null) {
            layoutInflater = onGetLayoutInflater.cloneInContext(dialog.getContext());
        }
        return layoutInflater;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f2262a;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.h;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.i;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.j;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.k;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.l;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f2262a;
        if (dialog != null) {
            this.o = false;
            dialog.show();
            View decorView = this.f2262a.getWindow().getDecorView();
            ae.a(decorView, this);
            af.a(decorView, this);
            e.a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f2262a;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.f2262a != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.f2262a.onRestoreInstanceState(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.Fragment
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView == null && this.f2262a != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.f2262a.onRestoreInstanceState(bundle2);
        }
    }

    public void setCancelable(boolean z) {
        this.j = z;
        Dialog dialog = this.f2262a;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void setShowsDialog(boolean z) {
        this.k = z;
    }

    public final Dialog v_() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }
}

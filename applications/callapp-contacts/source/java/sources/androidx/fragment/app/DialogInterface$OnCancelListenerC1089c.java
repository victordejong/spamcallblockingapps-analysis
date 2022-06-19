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
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.AbstractC1268u;
import androidx.lifecycle.C1240ae;
import androidx.lifecycle.C1241af;
import androidx.lifecycle.LiveData;
import androidx.savedstate.C2775e;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c.class */
public class DialogInterface$OnCancelListenerC1089c extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a */
    Dialog f4316a;

    /* renamed from: c */
    private Handler f4318c;

    /* renamed from: m */
    private boolean f4327m;

    /* renamed from: o */
    private boolean f4329o;

    /* renamed from: p */
    private boolean f4330p;

    /* renamed from: q */
    private boolean f4331q;

    /* renamed from: e */
    private Runnable f4319e = new Runnable() { // from class: androidx.fragment.app.c.1
        @Override // java.lang.Runnable
        public final void run() {
            DialogInterface$OnCancelListenerC1089c.this.f4321g.onDismiss(DialogInterface$OnCancelListenerC1089c.this.f4316a);
        }
    };

    /* renamed from: f */
    private DialogInterface.OnCancelListener f4320f = new DialogInterface.OnCancelListener() { // from class: androidx.fragment.app.c.2
        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            if (DialogInterface$OnCancelListenerC1089c.this.f4316a != null) {
                DialogInterface$OnCancelListenerC1089c dialogInterface$OnCancelListenerC1089c = DialogInterface$OnCancelListenerC1089c.this;
                dialogInterface$OnCancelListenerC1089c.onCancel(dialogInterface$OnCancelListenerC1089c.f4316a);
            }
        }
    };

    /* renamed from: g */
    private DialogInterface.OnDismissListener f4321g = new DialogInterface.OnDismissListener() { // from class: androidx.fragment.app.c.3
        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            if (DialogInterface$OnCancelListenerC1089c.this.f4316a != null) {
                DialogInterface$OnCancelListenerC1089c dialogInterface$OnCancelListenerC1089c = DialogInterface$OnCancelListenerC1089c.this;
                dialogInterface$OnCancelListenerC1089c.onDismiss(dialogInterface$OnCancelListenerC1089c.f4316a);
            }
        }
    };

    /* renamed from: h */
    private int f4322h = 0;

    /* renamed from: i */
    private int f4323i = 0;

    /* renamed from: j */
    private boolean f4324j = true;

    /* renamed from: k */
    private boolean f4325k = true;

    /* renamed from: l */
    private int f4326l = -1;

    /* renamed from: n */
    private AbstractC1268u<AbstractC1263p> f4328n = new AbstractC1268u<AbstractC1263p>() { // from class: androidx.fragment.app.c.4
        @Override // androidx.lifecycle.AbstractC1268u
        public final /* synthetic */ void onChanged(AbstractC1263p abstractC1263p) {
            if (abstractC1263p == null || !DialogInterface$OnCancelListenerC1089c.this.f4325k) {
                return;
            }
            View requireView = DialogInterface$OnCancelListenerC1089c.this.requireView();
            if (requireView.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (DialogInterface$OnCancelListenerC1089c.this.f4316a == null) {
                return;
            }
            if (FragmentManager.m43764a(3)) {
                StringBuilder sb = new StringBuilder("DialogFragment ");
                sb.append(this);
                sb.append(" setting the content view on ");
                sb.append(DialogInterface$OnCancelListenerC1089c.this.f4316a);
            }
            DialogInterface$OnCancelListenerC1089c.this.f4316a.setContentView(requireView);
        }
    };

    /* renamed from: b */
    boolean f4317b = false;

    public DialogInterface$OnCancelListenerC1089c() {
    }

    public DialogInterface$OnCancelListenerC1089c(int i) {
        super(i);
    }

    /* renamed from: a */
    private void m43627a(boolean z, boolean z2) {
        if (this.f4330p) {
            return;
        }
        this.f4330p = true;
        this.f4331q = false;
        Dialog dialog = this.f4316a;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f4316a.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f4318c.getLooper()) {
                    onDismiss(this.f4316a);
                } else {
                    this.f4318c.post(this.f4319e);
                }
            }
        }
        this.f4329o = true;
        if (this.f4326l >= 0) {
            getParentFragmentManager().m43731b(this.f4326l);
            this.f4326l = -1;
            return;
        }
        AbstractC1121s m43765a = getParentFragmentManager().m43765a();
        m43765a.mo43539a(this);
        if (z) {
            m43765a.mo43532c();
        } else {
            m43765a.mo43536b();
        }
    }

    /* renamed from: a */
    public Dialog mo9884a(Bundle bundle) {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("onCreateDialog called for DialogFragment ").append(this);
        }
        return new Dialog(requireContext(), getTheme());
    }

    /* renamed from: a */
    public void mo11082a() {
        m43627a(false, false);
    }

    /* renamed from: a */
    public void mo43629a(Dialog dialog, int i) {
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

    /* renamed from: a */
    public void mo19242a(FragmentManager fragmentManager, String str) {
        this.f4330p = false;
        this.f4331q = true;
        AbstractC1121s m43765a = fragmentManager.m43765a();
        m43765a.m43537a(this, str);
        m43765a.mo43536b();
    }

    /* renamed from: b */
    public void mo11078b() {
        m43627a(true, false);
    }

    @Override // androidx.fragment.app.Fragment
    public AbstractC1102e createFragmentContainer() {
        final AbstractC1102e createFragmentContainer = super.createFragmentContainer();
        return new AbstractC1102e() { // from class: androidx.fragment.app.c.5
            @Override // androidx.fragment.app.AbstractC1102e
            /* renamed from: a */
            public final View mo43613a(int i) {
                if (createFragmentContainer.mo43614a()) {
                    return createFragmentContainer.mo43613a(i);
                }
                DialogInterface$OnCancelListenerC1089c dialogInterface$OnCancelListenerC1089c = DialogInterface$OnCancelListenerC1089c.this;
                if (dialogInterface$OnCancelListenerC1089c.f4316a == null) {
                    return null;
                }
                return dialogInterface$OnCancelListenerC1089c.f4316a.findViewById(i);
            }

            @Override // androidx.fragment.app.AbstractC1102e
            /* renamed from: a */
            public final boolean mo43614a() {
                return createFragmentContainer.mo43614a() || DialogInterface$OnCancelListenerC1089c.this.f4317b;
            }
        };
    }

    public Dialog getDialog() {
        return this.f4316a;
    }

    public int getTheme() {
        return this.f4323i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        LiveData<AbstractC1263p> viewLifecycleOwnerLiveData = getViewLifecycleOwnerLiveData();
        AbstractC1268u<AbstractC1263p> abstractC1268u = this.f4328n;
        LiveData.m43332a("observeForever");
        LiveData.C1221a c1221a = new LiveData.C1221a(abstractC1268u);
        LiveData<AbstractC1263p>.AbstractC1222b mo46402a = viewLifecycleOwnerLiveData.f4779c.mo46402a(abstractC1268u, c1221a);
        if (!(mo46402a instanceof LiveData.LifecycleBoundObserver)) {
            if (mo46402a == null) {
                c1221a.m43327a(true);
            }
            if (this.f4331q) {
                return;
            }
            this.f4330p = false;
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
        this.f4318c = new Handler();
        this.f4325k = this.mContainerId == 0;
        if (bundle != null) {
            this.f4322h = bundle.getInt("android:style", 0);
            this.f4323i = bundle.getInt("android:theme", 0);
            this.f4324j = bundle.getBoolean("android:cancelable", true);
            this.f4325k = bundle.getBoolean("android:showsDialog", this.f4325k);
            this.f4326l = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f4316a;
        if (dialog != null) {
            this.f4329o = true;
            dialog.setOnDismissListener(null);
            this.f4316a.dismiss();
            if (!this.f4330p) {
                onDismiss(this.f4316a);
            }
            this.f4316a = null;
            this.f4317b = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.f4331q && !this.f4330p) {
            this.f4330p = true;
        }
        getViewLifecycleOwnerLiveData().mo43333a(this.f4328n);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f4329o) {
            if (FragmentManager.m43764a(3)) {
                new StringBuilder("onDismiss called for DialogFragment ").append(this);
            }
            m43627a(true, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.f4325k;
        if (!z || this.f4327m) {
            if (FragmentManager.m43764a(2)) {
                "getting layout inflater for DialogFragment ".concat(String.valueOf(this));
                boolean z2 = this.f4325k;
            }
            return onGetLayoutInflater;
        }
        if (z && !this.f4317b) {
            try {
                this.f4327m = true;
                Dialog mo9884a = mo9884a(bundle);
                this.f4316a = mo9884a;
                if (this.f4325k) {
                    mo43629a(mo9884a, this.f4322h);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.f4316a.setOwnerActivity((Activity) context);
                    }
                    this.f4316a.setCancelable(this.f4324j);
                    this.f4316a.setOnCancelListener(this.f4320f);
                    this.f4316a.setOnDismissListener(this.f4321g);
                    this.f4317b = true;
                } else {
                    this.f4316a = null;
                }
            } finally {
                this.f4327m = false;
            }
        }
        if (FragmentManager.m43764a(2)) {
            StringBuilder sb = new StringBuilder("get layout inflater for DialogFragment ");
            sb.append(this);
            sb.append(" from dialog context");
        }
        Dialog dialog = this.f4316a;
        LayoutInflater layoutInflater = onGetLayoutInflater;
        if (dialog != null) {
            layoutInflater = onGetLayoutInflater.cloneInContext(dialog.getContext());
        }
        return layoutInflater;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f4316a;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.f4322h;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f4323i;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f4324j;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f4325k;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f4326l;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f4316a;
        if (dialog != null) {
            this.f4329o = false;
            dialog.show();
            View decorView = this.f4316a.getWindow().getDecorView();
            C1240ae.m43305a(decorView, this);
            C1241af.m43304a(decorView, this);
            C2775e.m39927a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f4316a;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.f4316a == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f4316a.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.f4316a == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f4316a.onRestoreInstanceState(bundle2);
    }

    public void setCancelable(boolean z) {
        this.f4324j = z;
        Dialog dialog = this.f4316a;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void setShowsDialog(boolean z) {
        this.f4325k = z;
    }

    /* renamed from: v_ */
    public final Dialog m43624v_() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }
}

package androidx.fragment.app;

import android.annotation.SuppressLint;
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
import androidx.fragment.app.AbstractC0397a0;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.AbstractC0531p;
import java.util.Objects;
import p007a6.C0033h;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public class DialogInterface$OnCancelListenerC0444l extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private static final String SAVED_BACK_STACK_ID = "android:backStackId";
    private static final String SAVED_CANCELABLE = "android:cancelable";
    private static final String SAVED_DIALOG_STATE_TAG = "android:savedDialogState";
    private static final String SAVED_INTERNAL_DIALOG_SHOWING = "android:dialogShowing";
    private static final String SAVED_SHOWS_DIALOG = "android:showsDialog";
    private static final String SAVED_STYLE = "android:style";
    private static final String SAVED_THEME = "android:theme";
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;
    private boolean mCreatingDialog;
    private Dialog mDialog;
    private boolean mDismissed;
    private Handler mHandler;
    private boolean mShownByMe;
    private boolean mViewDestroyed;
    private Runnable mDismissRunnable = new RunnableC0445a();
    private DialogInterface.OnCancelListener mOnCancelListener = new DialogInterface$OnCancelListenerC0446b();
    private DialogInterface.OnDismissListener mOnDismissListener = new DialogInterface$OnDismissListenerC0447c();
    private int mStyle = 0;
    private int mTheme = 0;
    private boolean mCancelable = true;
    private boolean mShowsDialog = true;
    private int mBackStackId = -1;
    private AbstractC0531p<AbstractC0524j> mObserver = new C0448d();
    private boolean mDialogCreated = false;

    /* renamed from: androidx.fragment.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$a.class */
    public class RunnableC0445a implements Runnable {
        public RunnableC0445a() {
            DialogInterface$OnCancelListenerC0444l.this = r4;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            DialogInterface$OnCancelListenerC0444l.this.mOnDismissListener.onDismiss(DialogInterface$OnCancelListenerC0444l.this.mDialog);
        }
    }

    /* renamed from: androidx.fragment.app.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$b.class */
    public class DialogInterface$OnCancelListenerC0446b implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC0446b() {
            DialogInterface$OnCancelListenerC0444l.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public void onCancel(DialogInterface dialogInterface) {
            if (DialogInterface$OnCancelListenerC0444l.this.mDialog != null) {
                DialogInterface$OnCancelListenerC0444l dialogInterface$OnCancelListenerC0444l = DialogInterface$OnCancelListenerC0444l.this;
                dialogInterface$OnCancelListenerC0444l.onCancel(dialogInterface$OnCancelListenerC0444l.mDialog);
            }
        }
    }

    /* renamed from: androidx.fragment.app.l$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$c.class */
    public class DialogInterface$OnDismissListenerC0447c implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC0447c() {
            DialogInterface$OnCancelListenerC0444l.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public void onDismiss(DialogInterface dialogInterface) {
            if (DialogInterface$OnCancelListenerC0444l.this.mDialog != null) {
                DialogInterface$OnCancelListenerC0444l dialogInterface$OnCancelListenerC0444l = DialogInterface$OnCancelListenerC0444l.this;
                dialogInterface$OnCancelListenerC0444l.onDismiss(dialogInterface$OnCancelListenerC0444l.mDialog);
            }
        }
    }

    /* renamed from: androidx.fragment.app.l$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$d.class */
    public class C0448d implements AbstractC0531p<AbstractC0524j> {
        public C0448d() {
            DialogInterface$OnCancelListenerC0444l.this = r4;
        }
    }

    /* renamed from: androidx.fragment.app.l$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$e.class */
    public class C0449e extends AbstractC0477t {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0477t f1856a;

        public C0449e(AbstractC0477t abstractC0477t) {
            DialogInterface$OnCancelListenerC0444l.this = r4;
            this.f1856a = abstractC0477t;
        }

        @Override // androidx.fragment.app.AbstractC0477t
        /* renamed from: c */
        public View mo8061c(int i) {
            return this.f1856a.mo8060d() ? this.f1856a.mo8061c(i) : DialogInterface$OnCancelListenerC0444l.this.onFindViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0477t
        /* renamed from: d */
        public boolean mo8060d() {
            return this.f1856a.mo8060d() || DialogInterface$OnCancelListenerC0444l.this.onHasView();
        }
    }

    public DialogInterface$OnCancelListenerC0444l() {
    }

    public DialogInterface$OnCancelListenerC0444l(int i) {
        super(i);
    }

    private void dismissInternal(boolean z, boolean z2) {
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.mHandler.getLooper()) {
                    onDismiss(this.mDialog);
                } else {
                    this.mHandler.post(this.mDismissRunnable);
                }
            }
        }
        this.mViewDestroyed = true;
        if (this.mBackStackId < 0) {
            C0396a c0396a = new C0396a(getParentFragmentManager());
            c0396a.m8206o(this);
            if (z) {
                c0396a.m8214g(true);
                return;
            } else {
                c0396a.mo8097c();
                return;
            }
        }
        AbstractC0397a0 parentFragmentManager = getParentFragmentManager();
        int i = this.mBackStackId;
        Objects.requireNonNull(parentFragmentManager);
        if (i < 0) {
            throw new IllegalArgumentException(C0033h.m8886k("Bad id: ", i));
        }
        parentFragmentManager.m8205A(new AbstractC0397a0.C0411m(null, i, 1), false);
        this.mBackStackId = -1;
    }

    private void prepareDialog(Bundle bundle) {
        if (this.mShowsDialog && !this.mDialogCreated) {
            try {
                this.mCreatingDialog = true;
                Dialog onCreateDialog = onCreateDialog(bundle);
                this.mDialog = onCreateDialog;
                if (this.mShowsDialog) {
                    setupDialog(onCreateDialog, this.mStyle);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.mDialog.setOwnerActivity((Activity) context);
                    }
                    this.mDialog.setCancelable(this.mCancelable);
                    this.mDialog.setOnCancelListener(this.mOnCancelListener);
                    this.mDialog.setOnDismissListener(this.mOnDismissListener);
                    this.mDialogCreated = true;
                } else {
                    this.mDialog = null;
                }
            } finally {
                this.mCreatingDialog = false;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public AbstractC0477t createFragmentContainer() {
        return new C0449e(super.createFragmentContainer());
    }

    public void dismiss() {
        dismissInternal(false, false);
    }

    public void dismissAllowingStateLoss() {
        dismissInternal(true, false);
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    public boolean getShowsDialog() {
        return this.mShowsDialog;
    }

    public int getTheme() {
        return this.mTheme;
    }

    public boolean isCancelable() {
        return this.mCancelable;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().m8013d(this.mObserver);
        if (!this.mShownByMe) {
            this.mDismissed = false;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler();
        this.mShowsDialog = this.mContainerId == 0;
        if (bundle != null) {
            this.mStyle = bundle.getInt(SAVED_STYLE, 0);
            this.mTheme = bundle.getInt(SAVED_THEME, 0);
            this.mCancelable = bundle.getBoolean(SAVED_CANCELABLE, true);
            this.mShowsDialog = bundle.getBoolean(SAVED_SHOWS_DIALOG, this.mShowsDialog);
            this.mBackStackId = bundle.getInt(SAVED_BACK_STACK_ID, -1);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (AbstractC0397a0.m8192N(3)) {
            toString();
        }
        return new Dialog(requireContext(), getTheme());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = true;
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!this.mDismissed) {
                onDismiss(this.mDialog);
            }
            this.mDialog = null;
            this.mDialogCreated = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        getViewLifecycleOwnerLiveData().mo7433g(this.mObserver);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.mViewDestroyed) {
            if (AbstractC0397a0.m8192N(3)) {
                toString();
            }
            dismissInternal(true, true);
        }
    }

    public View onFindViewById(int i) {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        if (!this.mShowsDialog || this.mCreatingDialog) {
            if (AbstractC0397a0.m8192N(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("getting layout inflater for DialogFragment ");
                sb.append(this);
            }
            return onGetLayoutInflater;
        }
        prepareDialog(bundle);
        if (AbstractC0397a0.m8192N(2)) {
            toString();
        }
        Dialog dialog = this.mDialog;
        LayoutInflater layoutInflater = onGetLayoutInflater;
        if (dialog != null) {
            layoutInflater = onGetLayoutInflater.cloneInContext(dialog.getContext());
        }
        return layoutInflater;
    }

    public boolean onHasView() {
        return this.mDialogCreated;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean(SAVED_INTERNAL_DIALOG_SHOWING, false);
            bundle.putBundle(SAVED_DIALOG_STATE_TAG, onSaveInstanceState);
        }
        int i = this.mStyle;
        if (i != 0) {
            bundle.putInt(SAVED_STYLE, i);
        }
        int i2 = this.mTheme;
        if (i2 != 0) {
            bundle.putInt(SAVED_THEME, i2);
        }
        boolean z = this.mCancelable;
        if (!z) {
            bundle.putBoolean(SAVED_CANCELABLE, z);
        }
        boolean z2 = this.mShowsDialog;
        if (!z2) {
            bundle.putBoolean(SAVED_SHOWS_DIALOG, z2);
        }
        int i3 = this.mBackStackId;
        if (i3 != -1) {
            bundle.putInt(SAVED_BACK_STACK_ID, i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = false;
            dialog.show();
            View decorView = this.mDialog.getWindow().getDecorView();
            decorView.setTag(2131297208, this);
            decorView.setTag(2131297210, this);
            decorView.setTag(2131297209, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle(SAVED_DIALOG_STATE_TAG)) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void setCancelable(boolean z) {
        this.mCancelable = z;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void setShowsDialog(boolean z) {
        this.mShowsDialog = z;
    }

    public void setStyle(int i, int i2) {
        if (AbstractC0397a0.m8192N(2)) {
            toString();
        }
        this.mStyle = i;
        if (i == 2 || i == 3) {
            this.mTheme = 16973913;
        }
        if (i2 != 0) {
            this.mTheme = i2;
        }
    }

    public void setupDialog(Dialog dialog, int i) {
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

    public int show(AbstractC0438i0 abstractC0438i0, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        abstractC0438i0.mo8096d(0, this, str, 1);
        this.mViewDestroyed = false;
        int mo8097c = abstractC0438i0.mo8097c();
        this.mBackStackId = mo8097c;
        return mo8097c;
    }

    public void show(AbstractC0397a0 abstractC0397a0, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        C0396a c0396a = new C0396a(abstractC0397a0);
        c0396a.mo8096d(0, this, str, 1);
        c0396a.mo8097c();
    }

    public void showNow(AbstractC0397a0 abstractC0397a0, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        C0396a c0396a = new C0396a(abstractC0397a0);
        c0396a.mo8096d(0, this, str, 1);
        c0396a.m8213h();
    }
}

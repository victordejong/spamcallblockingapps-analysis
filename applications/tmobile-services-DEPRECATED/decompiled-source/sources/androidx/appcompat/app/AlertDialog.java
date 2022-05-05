package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.app.AlertController;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertDialog.class */
public class AlertDialog extends AppCompatDialog implements DialogInterface {

    /* renamed from: h */
    final AlertController f154h = new AlertController(getContext(), this, getWindow());

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertDialog$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private final AlertController.AlertParams f155a;

        /* renamed from: b */
        private final int f156b;

        public Builder(@NonNull Context context) {
            this(context, AlertDialog.m22277g(context, 0));
        }

        public Builder(@NonNull Context context, @StyleRes int i) {
            this.f155a = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.m22277g(context, i)));
            this.f156b = i;
        }

        @NonNull
        /* renamed from: a */
        public AlertDialog mo9823a() {
            AlertDialog alertDialog = new AlertDialog(this.f155a.f113a, this.f156b);
            this.f155a.m22282a(alertDialog.f154h);
            alertDialog.setCancelable(this.f155a.f130r);
            if (this.f155a.f130r) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.f155a.f131s);
            alertDialog.setOnDismissListener(this.f155a.f132t);
            DialogInterface.OnKeyListener onKeyListener = this.f155a.f133u;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }

        @NonNull
        /* renamed from: b */
        public Context m22276b() {
            return this.f155a.f113a;
        }

        /* renamed from: c */
        public Builder mo9822c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f135w = listAdapter;
            alertParams.f136x = onClickListener;
            return this;
        }

        /* renamed from: d */
        public Builder mo9821d(@Nullable View view) {
            this.f155a.f119g = view;
            return this;
        }

        /* renamed from: e */
        public Builder mo9820e(@Nullable Drawable drawable) {
            this.f155a.f116d = drawable;
            return this;
        }

        /* renamed from: f */
        public Builder mo9819f(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f134v = charSequenceArr;
            alertParams.f107J = onMultiChoiceClickListener;
            alertParams.f103F = zArr;
            alertParams.f104G = true;
            return this;
        }

        /* renamed from: g */
        public Builder mo9818g(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f124l = alertParams.f113a.getText(i);
            this.f155a.f126n = onClickListener;
            return this;
        }

        /* renamed from: h */
        public Builder mo9817h(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f127o = alertParams.f113a.getText(i);
            this.f155a.f129q = onClickListener;
            return this;
        }

        /* renamed from: i */
        public Builder mo9816i(DialogInterface.OnKeyListener onKeyListener) {
            this.f155a.f133u = onKeyListener;
            return this;
        }

        /* renamed from: j */
        public Builder mo9815j(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f121i = alertParams.f113a.getText(i);
            this.f155a.f123k = onClickListener;
            return this;
        }

        /* renamed from: k */
        public Builder mo9814k(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f135w = listAdapter;
            alertParams.f136x = onClickListener;
            alertParams.f106I = i;
            alertParams.f105H = true;
            return this;
        }

        /* renamed from: l */
        public Builder mo9813l(@StringRes int i) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f118f = alertParams.f113a.getText(i);
            return this;
        }

        /* renamed from: m */
        public Builder mo9812m(@Nullable CharSequence charSequence) {
            this.f155a.f118f = charSequence;
            return this;
        }

        /* renamed from: n */
        public Builder mo9811n(View view) {
            AlertController.AlertParams alertParams = this.f155a;
            alertParams.f138z = view;
            alertParams.f137y = 0;
            alertParams.f102E = false;
            return this;
        }
    }

    protected AlertDialog(@NonNull Context context, @StyleRes int i) {
        super(context, m22277g(context, i));
    }

    /* renamed from: g */
    static int m22277g(@NonNull Context context, @StyleRes int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0042R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: e */
    public Button m22279e(int i) {
        return this.f154h.m22306c(i);
    }

    /* renamed from: f */
    public ListView m22278f() {
        return this.f154h.m22304e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f154h.m22303f();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f154h.m22301h(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f154h.m22300i(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f154h.m22291r(charSequence);
    }
}

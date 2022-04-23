package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.ActionMode;
import androidx.core.view.KeyEventDispatcher;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDialog.class */
public class AppCompatDialog extends Dialog implements AppCompatCallback {

    /* renamed from: f */
    private AppCompatDelegate f260f;

    /* renamed from: g */
    private final KeyEventDispatcher.Component f261g = new KeyEventDispatcher.Component() { // from class: androidx.appcompat.app.AppCompatDialog.1
        @Override // androidx.core.view.KeyEventDispatcher.Component
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDialog.this.m22156c(keyEvent);
        }
    };

    public AppCompatDialog(Context context, int i) {
        super(context, m22157b(context, i));
        AppCompatDelegate a = m22158a();
        a.mo22256G(m22157b(context, i));
        a.mo22199r(null);
    }

    /* renamed from: b */
    private static int m22157b(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0042R.attr.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    /* renamed from: a */
    public AppCompatDelegate m22158a() {
        if (this.f260f == null) {
            this.f260f = AppCompatDelegate.m22271h(this, this);
        }
        return this.f260f;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m22158a().mo22223d(view, layoutParams);
    }

    /* renamed from: c */
    boolean m22156c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* renamed from: d */
    public boolean m22155d(int i) {
        return m22158a().mo22267A(i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m22158a().mo22197s();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.m19299e(this.f261g, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    @Nullable
    public <T extends View> T findViewById(@IdRes int i) {
        return (T) m22158a().mo22216i(i);
    }

    @Override // android.app.Dialog
    @RestrictTo
    public void invalidateOptionsMenu() {
        m22158a().mo22203p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m22158a().mo22205o();
        super.onCreate(bundle);
        m22158a().mo22199r(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m22158a().mo22187x();
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeStarted(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    @Nullable
    public ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        m22158a().mo22264C(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m22158a().mo22262D(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m22158a().mo22260E(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m22158a().mo22254H(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m22158a().mo22254H(charSequence);
    }
}

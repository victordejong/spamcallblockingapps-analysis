package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0051a;
import androidx.appcompat.view.AbstractC0155b;
import androidx.core.p023g.C0534d;
/* renamed from: androidx.appcompat.app.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
public class DialogC0116i extends Dialog implements AbstractC0093f {
    private AbstractC0094g mDelegate;
    private final C0534d.AbstractC0535a mKeyDispatcher;

    public DialogC0116i(Context context) {
        this(context, 0);
    }

    public DialogC0116i(Context context, int i) {
        super(context, getThemeResId(context, i));
        this.mKeyDispatcher = new C0534d.AbstractC0535a() { // from class: androidx.appcompat.app.i.1
            @Override // androidx.core.p023g.C0534d.AbstractC0535a
            /* renamed from: a */
            public boolean mo6336a(KeyEvent keyEvent) {
                return DialogC0116i.this.superDispatchKeyEvent(keyEvent);
            }
        };
        AbstractC0094g delegate = getDelegate();
        delegate.mo7880a(getThemeResId(context, i));
        delegate.mo7874a((Bundle) null);
    }

    public DialogC0116i(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.mKeyDispatcher = new C0534d.AbstractC0535a() { // from class: androidx.appcompat.app.i.1
            @Override // androidx.core.p023g.C0534d.AbstractC0535a
            /* renamed from: a */
            public boolean mo6336a(KeyEvent keyEvent) {
                return DialogC0116i.this.superDispatchKeyEvent(keyEvent);
            }
        };
    }

    private static int getThemeResId(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0051a.C0052a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().mo7850b(view, layoutParams);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0534d.m6337a(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().mo7854b(i);
    }

    public AbstractC0094g getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = AbstractC0094g.m7895a(this, this);
        }
        return this.mDelegate;
    }

    public AbstractC0078a getSupportActionBar() {
        return getDelegate().mo7881a();
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().mo7835f();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        getDelegate().mo7829i();
        super.onCreate(bundle);
        getDelegate().mo7874a(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        getDelegate().mo7840d();
    }

    @Override // androidx.appcompat.app.AbstractC0093f
    public void onSupportActionModeFinished(AbstractC0155b abstractC0155b) {
    }

    @Override // androidx.appcompat.app.AbstractC0093f
    public void onSupportActionModeStarted(AbstractC0155b abstractC0155b) {
    }

    @Override // androidx.appcompat.app.AbstractC0093f
    public AbstractC0155b onWindowStartingSupportActionMode(AbstractC0155b.AbstractC0156a abstractC0156a) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        getDelegate().mo7845c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        getDelegate().mo7871a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().mo7870a(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        getDelegate().mo7857a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().mo7857a(charSequence);
    }

    boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().mo7839d(i);
    }
}

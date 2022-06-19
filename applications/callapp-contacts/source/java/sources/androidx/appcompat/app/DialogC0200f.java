package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.AbstractC0241b;
import androidx.core.view.C0909f;
/* renamed from: androidx.appcompat.app.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f.class */
public class DialogC0200f extends Dialog implements AbstractC0198d {

    /* renamed from: a */
    private AbstractC0199e f520a;

    /* renamed from: b */
    private final C0909f.AbstractC0910a f521b;

    public DialogC0200f(Context context) {
        this(context, 0);
    }

    public DialogC0200f(Context context, int i) {
        super(context, m46268a(context, i));
        this.f521b = new C0909f.AbstractC0910a() { // from class: androidx.appcompat.app.f.1
            @Override // androidx.core.view.C0909f.AbstractC0910a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return DialogC0200f.this.m46267a(keyEvent);
            }
        };
        AbstractC0199e m46266b = m46266b();
        m46266b.mo46298a(m46268a(context, i));
        m46266b.mo46283c();
    }

    public DialogC0200f(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.f521b = new C0909f.AbstractC0910a() { // from class: androidx.appcompat.app.f.1
            @Override // androidx.core.view.C0909f.AbstractC0910a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return DialogC0200f.this.m46267a(keyEvent);
            }
        };
    }

    /* renamed from: a */
    private static int m46268a(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0142a.C0143a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    /* renamed from: b */
    private AbstractC0199e m46266b() {
        if (this.f520a == null) {
            this.f520a = AbstractC0199e.m46296a(this, this);
        }
        return this.f520a;
    }

    /* renamed from: a */
    public final boolean m46269a() {
        return m46266b().mo46279d(1);
    }

    /* renamed from: a */
    final boolean m46267a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m46266b().mo46285b(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m46266b().mo46274i();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0909f.m44190a(this.f521b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m46266b().mo46286b(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m46266b().mo46275h();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m46266b().mo46272k();
        super.onCreate(bundle);
        m46266b().mo46283c();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m46266b().mo46277f();
    }

    @Override // androidx.appcompat.app.AbstractC0198d
    public void onSupportActionModeFinished(AbstractC0241b abstractC0241b) {
    }

    @Override // androidx.appcompat.app.AbstractC0198d
    public void onSupportActionModeStarted(AbstractC0241b abstractC0241b) {
    }

    @Override // androidx.appcompat.app.AbstractC0198d
    public AbstractC0241b onWindowStartingSupportActionMode(AbstractC0241b.AbstractC0242a abstractC0242a) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m46266b().mo46282c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m46266b().mo46293a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m46266b().mo46292a(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m46266b().mo46288a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m46266b().mo46288a(charSequence);
    }
}

package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p020b.p021a.C1423a;
import p020b.p021a.p028o.AbstractC1455b;
import p020b.p041h.p050l.C1630f;
/* renamed from: androidx.appcompat.app.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/d.class */
public class DialogC0150d extends Dialog implements AbstractC0148b {

    /* renamed from: d */
    private AbstractC0149c f434d;

    /* renamed from: e */
    private final C1630f.AbstractC1631a f435e = new C0151a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/d$a.class */
    public class C0151a implements C1630f.AbstractC1631a {
        C0151a() {
            DialogC0150d.this = r4;
        }

        @Override // p020b.p041h.p050l.C1630f.AbstractC1631a
        /* renamed from: s */
        public boolean mo29531s(KeyEvent keyEvent) {
            return DialogC0150d.this.m35521c(keyEvent);
        }
    }

    public DialogC0150d(Context context, int i) {
        super(context, m35522b(context, i));
        AbstractC0149c m35523a = m35523a();
        m35523a.mo35549G(m35522b(context, i));
        m35523a.mo35531s(null);
    }

    /* renamed from: b */
    private static int m35522b(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C1423a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    /* renamed from: a */
    public AbstractC0149c m35523a() {
        if (this.f434d == null) {
            this.f434d = AbstractC0149c.m35540j(this, this);
        }
        return this.f434d;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m35523a().mo35546d(view, layoutParams);
    }

    /* renamed from: c */
    boolean m35521c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.appcompat.app.AbstractC0148b
    /* renamed from: d */
    public void mo35520d(AbstractC1455b abstractC1455b) {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m35523a().mo35530t();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C1630f.m29533e(this.f435e, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // androidx.appcompat.app.AbstractC0148b
    /* renamed from: e */
    public void mo35519e(AbstractC1455b abstractC1455b) {
    }

    /* renamed from: f */
    public boolean m35518f(int i) {
        return m35523a().mo35554B(i);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m35523a().mo35539k(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m35523a().mo35533q();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m35523a().mo35534p();
        super.onCreate(bundle);
        m35523a().mo35531s(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m35523a().mo35525y();
    }

    @Override // androidx.appcompat.app.AbstractC0148b
    /* renamed from: q */
    public AbstractC1455b mo35517q(AbstractC1455b.AbstractC1456a abstractC1456a) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m35523a().mo35553C(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m35523a().mo35552D(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m35523a().mo35551E(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m35523a().mo35548H(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m35523a().mo35548H(charSequence);
    }
}

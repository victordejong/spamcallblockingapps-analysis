package p012b.p016b.p017k;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p012b.p016b.C0574a;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p042i.p054p.C0985e;
/* renamed from: b.b.k.d */
/* loaded from: classes-dex2jar.jar:b/b/k/d.class */
public class DialogC0588d extends Dialog implements AbstractC0586b {

    /* renamed from: a */
    public AbstractC0587c f2928a;

    /* renamed from: b */
    public final C0985e.AbstractC0986a f2929b = new C0589a();

    /* renamed from: b.b.k.d$a */
    /* loaded from: classes-dex2jar.jar:b/b/k/d$a.class */
    public class C0589a implements C0985e.AbstractC0986a {
        public C0589a() {
        }

        @Override // p012b.p042i.p054p.C0985e.AbstractC0986a
        /* renamed from: a */
        public boolean mo35301a(KeyEvent keyEvent) {
            return DialogC0588d.this.m36854a(keyEvent);
        }
    }

    public DialogC0588d(Context context, int i) {
        super(context, m36855a(context, i));
        AbstractC0587c a = m36857a();
        a.mo36864d(m36855a(context, i));
        a.mo36880a((Bundle) null);
    }

    /* renamed from: a */
    public static int m36855a(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0574a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    /* renamed from: a */
    public AbstractC0587c m36857a() {
        if (this.f2928a == null) {
            this.f2928a = AbstractC0587c.m36883a(this, this);
        }
        return this.f2928a;
    }

    @Override // p012b.p016b.p017k.AbstractC0586b
    /* renamed from: a */
    public AbstractC0622b mo36853a(AbstractC0622b.AbstractC0623a aVar) {
        return null;
    }

    @Override // p012b.p016b.p017k.AbstractC0586b
    /* renamed from: a */
    public void mo36852a(AbstractC0622b bVar) {
    }

    /* renamed from: a */
    public boolean m36856a(int i) {
        return m36857a().mo36874b(i);
    }

    /* renamed from: a */
    public boolean m36854a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m36857a().mo36878a(view, layoutParams);
    }

    @Override // p012b.p016b.p017k.AbstractC0586b
    /* renamed from: b */
    public void mo36851b(AbstractC0622b bVar) {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m36857a().mo36862f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0985e.m35302a(this.f2929b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m36857a().mo36885a(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m36857a().mo36863e();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m36857a().mo36865d();
        super.onCreate(bundle);
        m36857a().mo36880a(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        m36857a().mo36859i();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m36857a().mo36868c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m36857a().mo36879a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m36857a().mo36871b(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m36857a().mo36876a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m36857a().mo36876a(charSequence);
    }
}

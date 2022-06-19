package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.AbstractC0172b;
import androidx.core.p026h.C0577d;
/* renamed from: androidx.appcompat.app.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
public class DialogC0139g extends Dialog implements AbstractC0117d {

    /* renamed from: a */
    private AbstractC0118e f431a;

    /* renamed from: b */
    private final C0577d.AbstractC0578a f432b = new C0577d.AbstractC0578a() { // from class: androidx.appcompat.app.g.1
        @Override // androidx.core.p026h.C0577d.AbstractC0578a
        /* renamed from: a */
        public boolean mo20413a(KeyEvent keyEvent) {
            return DialogC0139g.this.m22115a(keyEvent);
        }
    };

    public DialogC0139g(Context context, int i) {
        super(context, m22116a(context, i));
        AbstractC0118e m22112b = m22112b();
        m22112b.mo22201a(m22116a(context, i));
        m22112b.mo22195a((Bundle) null);
    }

    /* renamed from: a */
    private static int m22116a(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0083a.C0084a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    @Override // androidx.appcompat.app.AbstractC0117d
    /* renamed from: a */
    public AbstractC0172b mo22114a(AbstractC0172b.AbstractC0173a abstractC0173a) {
        return null;
    }

    @Override // androidx.appcompat.app.AbstractC0117d
    /* renamed from: a */
    public void mo22113a(AbstractC0172b abstractC0172b) {
    }

    /* renamed from: a */
    public boolean m22117a(int i) {
        return m22112b().mo22161d(i);
    }

    /* renamed from: a */
    boolean m22115a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m22112b().mo22173b(view, layoutParams);
    }

    /* renamed from: b */
    public AbstractC0118e m22112b() {
        if (this.f431a == null) {
            this.f431a = AbstractC0118e.m22213a(this, this);
        }
        return this.f431a;
    }

    @Override // androidx.appcompat.app.AbstractC0117d
    /* renamed from: b */
    public void mo22111b(AbstractC0172b abstractC0172b) {
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0577d.m20414a(this.f432b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m22112b().mo22177b(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m22112b().mo22156f();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m22112b().mo22152h();
        super.onCreate(bundle);
        m22112b().mo22195a(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m22112b().mo22162d();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m22112b().mo22167c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m22112b().mo22192a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m22112b().mo22191a(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m22112b().mo22180a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m22112b().mo22180a(charSequence);
    }
}

package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.p023g.C0534d;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.C0904l;
import androidx.lifecycle.FragmentC0917t;
import androidx.p014c.C0387g;
/* renamed from: androidx.core.app.d */
/* loaded from: classes-dex2jar.jar:androidx/core/app/d.class */
public class ActivityC0438d extends Activity implements C0534d.AbstractC0535a, AbstractC0903k {

    /* renamed from: a */
    private C0387g<Class<? extends Object>, Object> f1598a = new C0387g<>();

    /* renamed from: b */
    private C0904l f1599b = new C0904l(this);

    @Override // androidx.core.p023g.C0534d.AbstractC0535a
    /* renamed from: a */
    public boolean mo6336a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0534d.m6338a(decorView, keyEvent)) {
            return C0534d.m6337a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0534d.m6338a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    public AbstractC0896g getLifecycle() {
        return this.f1599b;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC0917t.m5074a(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f1599b.m5110a(AbstractC0896g.EnumC0898b.CREATED);
        super.onSaveInstanceState(bundle);
    }
}

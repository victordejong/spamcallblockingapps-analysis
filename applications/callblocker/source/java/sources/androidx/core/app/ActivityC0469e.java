package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.p026h.C0577d;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0869h;
import androidx.lifecycle.C0870i;
import androidx.lifecycle.FragmentC0880q;
import androidx.p013b.C0386g;
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public class ActivityC0469e extends Activity implements C0577d.AbstractC0578a, AbstractC0869h {

    /* renamed from: a */
    private C0386g<Class<? extends Object>, Object> f1782a = new C0386g<>();

    /* renamed from: b */
    private C0870i f1783b = new C0870i(this);

    @Override // androidx.core.p026h.C0577d.AbstractC0578a
    /* renamed from: a */
    public boolean mo20413a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* renamed from: b */
    public AbstractC0864e mo19203b() {
        return this.f1783b;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        return (decorView == null || !C0577d.m20415a(decorView, keyEvent)) ? C0577d.m20414a(this, decorView, this, keyEvent) : true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        return (decorView == null || !C0577d.m20415a(decorView, keyEvent)) ? super.dispatchKeyShortcutEvent(keyEvent) : true;
    }

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC0880q.m19191a(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f1783b.m19221a(AbstractC0864e.EnumC0866b.CREATED);
        super.onSaveInstanceState(bundle);
    }
}

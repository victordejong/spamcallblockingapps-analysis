package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.C0798i;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;
import p020b.p036e.C1502g;
import p020b.p041h.p050l.C1630f;
/* loaded from: classes-dex2jar.jar:androidx/core/app/ComponentActivity.class */
public class ComponentActivity extends Activity implements AbstractC0797h, C1630f.AbstractC1631a {

    /* renamed from: d */
    private C1502g<Class<?>, ?> f2787d = new C1502g<>();

    /* renamed from: e */
    private C0798i f2788e = new C0798i(this);

    /* renamed from: a */
    public Lifecycle mo32372a() {
        return this.f2788e;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C1630f.m29534d(decorView, keyEvent)) {
            return C1630f.m29533e(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C1630f.m29534d(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.m32419g(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f2788e.m32389j(Lifecycle.State.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @Override // p020b.p041h.p050l.C1630f.AbstractC1631a
    /* renamed from: s */
    public boolean mo29531s(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}

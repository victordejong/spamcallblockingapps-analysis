package p026c0;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0525k;
import androidx.lifecycle.FragmentC0538t;
import p163m0.C3571e;
/* renamed from: c0.g */
/* loaded from: classes-dex2jar.jar:c0/g.class */
public class ActivityC0787g extends Activity implements AbstractC0524j, C3571e.AbstractC3572a {

    /* renamed from: a */
    public C0525k f2917a = new C0525k(this);

    @Override // p163m0.C3571e.AbstractC3572a
    /* renamed from: d */
    public boolean mo2141d(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C3571e.m2143a(decorView, keyEvent)) {
            return C3571e.m2142b(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C3571e.m2143a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    public AbstractC0516f getLifecycle() {
        return this.f2917a;
    }

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC0538t.m7975c(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C0525k c0525k = this.f2917a;
        AbstractC0516f.EnumC0519c enumC0519c = AbstractC0516f.EnumC0519c.CREATED;
        c0525k.m7989d("markState");
        c0525k.m7989d("setCurrentState");
        c0525k.m7986g(enumC0519c);
        super.onSaveInstanceState(bundle);
    }
}

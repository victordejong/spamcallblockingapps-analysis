package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.view.C0909f;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.p023b.C0441g;
/* loaded from: classes-dex2jar.jar:androidx/core/app/ComponentActivity.class */
public class ComponentActivity extends Activity implements C0909f.AbstractC0910a, AbstractC1263p {
    private C0441g<Class<? extends C0715a>, C0715a> mExtraDataMap = new C0441g<>();
    private LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);

    @Deprecated
    /* renamed from: androidx.core.app.ComponentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/ComponentActivity$a.class */
    public static final class C0715a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0909f.m44191a(decorView, keyEvent)) {
            return C0909f.m44190a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0909f.m44191a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Deprecated
    public <T extends C0715a> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }

    public AbstractC1253j getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.m43325a(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.markState(AbstractC1253j.EnumC1256b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void putExtraData(C0715a c0715a) {
        this.mExtraDataMap.put(c0715a.getClass(), c0715a);
    }

    @Override // androidx.core.view.C0909f.AbstractC0910a
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}

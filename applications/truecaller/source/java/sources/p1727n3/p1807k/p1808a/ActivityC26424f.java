package p1727n3.p1807k.p1808a;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1821i.C26581f;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
import p1727n3.p1868v.FragmentC27021r0;
/* renamed from: n3.k.a.f */
/* loaded from: classes-dex2jar.jar:n3/k/a/f.class */
public class ActivityC26424f extends Activity implements AbstractC26992b0, C26581f.AbstractC26582a {
    private C26187h<Class<? extends C26425a>, C26425a> mExtraDataMap = new C26187h<>();
    private C26994c0 mLifecycleRegistry = new C26994c0(this);

    @Deprecated
    /* renamed from: n3.k.a.f$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/f$a.class */
    public static class C26425a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C26581f.m1632a(decorView, keyEvent)) {
            return C26581f.m1631b(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C26581f.m1632a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Deprecated
    public <T extends C26425a> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.getOrDefault(cls, null);
    }

    @Override // p1727n3.p1868v.AbstractC26992b0
    public AbstractC27028u getLifecycle() {
        throw null;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC27021r0.m991c(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C26994c0 c26994c0 = this.mLifecycleRegistry;
        AbstractC27028u.EnumC27030b enumC27030b = AbstractC27028u.EnumC27030b.CREATED;
        c26994c0.m1020d("markState");
        c26994c0.m1020d("setCurrentState");
        c26994c0.m1017g(enumC27030b);
        super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void putExtraData(C26425a c26425a) {
        this.mExtraDataMap.put(c26425a.getClass(), c26425a);
    }

    @Override // p1727n3.p1807k.p1821i.C26581f.AbstractC26582a
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}

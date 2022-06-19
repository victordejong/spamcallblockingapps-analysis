package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.p006a.AbstractC0014b;
/* renamed from: androidx.browser.customtabs.e */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/e.class */
public abstract class AbstractServiceConnectionC0460e implements ServiceConnection {

    /* renamed from: b */
    Context f1807b;

    /* renamed from: a */
    public abstract void mo15754a(C0450c c0450c);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f1807b != null) {
            mo15754a(new C0450c(AbstractC0014b.AbstractBinderC0015a.m46597a(iBinder), componentName, this.f1807b) { // from class: androidx.browser.customtabs.e.1
            });
            return;
        }
        throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
    }
}

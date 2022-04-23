package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.a.b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/e.class */
public abstract class e implements ServiceConnection {

    /* renamed from: b  reason: collision with root package name */
    Context f1239b;

    public abstract void a(c cVar);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f1239b != null) {
            a(new c(b.a.a(iBinder), componentName, this.f1239b) { // from class: androidx.browser.customtabs.e.1
            });
            return;
        }
        throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
    }
}

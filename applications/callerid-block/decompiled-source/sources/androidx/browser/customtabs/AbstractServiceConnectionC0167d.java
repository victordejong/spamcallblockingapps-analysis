package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import p011c.p014b.p015a.AbstractC0616b;
/* renamed from: androidx.browser.customtabs.d */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d.class */
public abstract class AbstractServiceConnectionC0167d implements ServiceConnection {
    /* renamed from: a */
    public abstract void m14381a(ComponentName componentName, C0164b bVar);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        m14381a(componentName, new a(this, AbstractC0616b.a.h0(iBinder), componentName));
    }
}

package p195p;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import p000a.AbstractC0002b;
/* renamed from: p.d */
/* loaded from: classes-dex2jar.jar:p/d.class */
public abstract class AbstractServiceConnectionC3978d implements ServiceConnection {

    /* renamed from: p.d$a */
    /* loaded from: classes-dex2jar.jar:p/d$a.class */
    public class C3979a extends C3976b {
        public C3979a(AbstractServiceConnectionC3978d abstractServiceConnectionC3978d, AbstractC0002b abstractC0002b, ComponentName componentName) {
            super(abstractC0002b, componentName);
        }
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, C3976b c3976b);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        AbstractC0002b.AbstractBinderC0003a.C0004a c0004a;
        int i = AbstractC0002b.AbstractBinderC0003a.f0a;
        if (iBinder == null) {
            c0004a = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            c0004a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0002b)) ? new AbstractC0002b.AbstractBinderC0003a.C0004a(iBinder) : (AbstractC0002b) queryLocalInterface;
        }
        onCustomTabsServiceConnected(componentName, new C3979a(this, c0004a, componentName));
    }
}

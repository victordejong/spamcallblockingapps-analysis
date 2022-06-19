package p1727n3.p1755d.p1756a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import p1719m3.p1720a.p1721a.AbstractC25354b;
/* renamed from: n3.d.a.g */
/* loaded from: classes-dex2jar.jar:n3/d/a/g.class */
public abstract class AbstractServiceConnectionC25697g implements ServiceConnection {
    private Context mApplicationContext;

    /* renamed from: n3.d.a.g$a */
    /* loaded from: classes-dex2jar.jar:n3/d/a/g$a.class */
    public class C25698a extends C25695e {
        public C25698a(AbstractServiceConnectionC25697g abstractServiceConnectionC25697g, AbstractC25354b abstractC25354b, ComponentName componentName, Context context) {
            super(abstractC25354b, componentName, context);
        }
    }

    public Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, C25695e c25695e);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        AbstractC25354b.AbstractBinderC25355a.C25356a c25356a;
        if (this.mApplicationContext != null) {
            int i = AbstractC25354b.AbstractBinderC25355a.f70771a;
            if (iBinder == null) {
                c25356a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
                c25356a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC25354b)) ? new AbstractC25354b.AbstractBinderC25355a.C25356a(iBinder) : (AbstractC25354b) queryLocalInterface;
            }
            onCustomTabsServiceConnected(componentName, new C25698a(this, c25356a, componentName, this.mApplicationContext));
            return;
        }
        throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
    }

    public void setApplicationContext(Context context) {
        this.mApplicationContext = context;
    }
}

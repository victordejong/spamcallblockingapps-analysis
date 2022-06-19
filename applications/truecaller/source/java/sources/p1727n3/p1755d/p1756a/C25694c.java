package p1727n3.p1755d.p1756a;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: n3.d.a.c */
/* loaded from: classes-dex2jar.jar:n3/d/a/c.class */
public class C25694c extends AbstractServiceConnectionC25697g {

    /* renamed from: a */
    public final /* synthetic */ Context f71980a;

    public C25694c(Context context) {
        this.f71980a = context;
    }

    @Override // p1727n3.p1755d.p1756a.AbstractServiceConnectionC25697g
    public final void onCustomTabsServiceConnected(ComponentName componentName, C25695e c25695e) {
        c25695e.m3049c(0L);
        this.f71980a.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}

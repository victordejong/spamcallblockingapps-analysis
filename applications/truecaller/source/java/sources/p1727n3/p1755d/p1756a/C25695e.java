package p1727n3.p1755d.p1756a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.text.TextUtils;
import p1719m3.p1720a.p1721a.AbstractC25352a;
import p1719m3.p1720a.p1721a.AbstractC25354b;
/* renamed from: n3.d.a.e */
/* loaded from: classes-dex2jar.jar:n3/d/a/e.class */
public class C25695e {

    /* renamed from: a */
    public final AbstractC25354b f71981a;

    /* renamed from: b */
    public final ComponentName f71982b;

    public C25695e(AbstractC25354b abstractC25354b, ComponentName componentName, Context context) {
        this.f71981a = abstractC25354b;
        this.f71982b = componentName;
    }

    /* renamed from: a */
    public static boolean m3051a(Context context, String str, AbstractServiceConnectionC25697g abstractServiceConnectionC25697g) {
        abstractServiceConnectionC25697g.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, abstractServiceConnectionC25697g, 33);
    }

    /* renamed from: b */
    public C25699h m3050b(C25693b c25693b) {
        AbstractC25352a dVar = new d(this);
        C25699h c25699h = null;
        try {
            if (this.f71981a.mo3698i0(dVar)) {
                c25699h = new C25699h(this.f71981a, dVar, this.f71982b, null);
            }
        } catch (RemoteException e) {
        }
        return c25699h;
    }

    /* renamed from: c */
    public boolean m3049c(long j) {
        try {
            return this.f71981a.mo3699Y(j);
        } catch (RemoteException e) {
            return false;
        }
    }
}

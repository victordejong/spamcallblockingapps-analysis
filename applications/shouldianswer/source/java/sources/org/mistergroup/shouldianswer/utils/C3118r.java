package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import com.google.android.gms.iid.InstanceID;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.r */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/r.class */
public final class C3118r {

    /* renamed from: a */
    public static final C3118r f9187a = new C3118r();

    private C3118r() {
    }

    /* renamed from: a */
    public final boolean m99a() {
        Thread currentThread = Thread.currentThread();
        Looper mainLooper = Looper.getMainLooper();
        C1694h.m3122a((Object) mainLooper, "Looper.getMainLooper()");
        return currentThread == mainLooper.getThread();
    }

    /* renamed from: a */
    public final boolean m98a(String str, Context context) {
        C1694h.m3117b(str, "packagename");
        C1694h.m3117b(context, "context");
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final String m97b() {
        InstanceID instanceID = InstanceID.getInstance(MyApp.f5480c.m1802a());
        C1694h.m3122a((Object) instanceID, "InstanceID.getInstance(MyApp.instance)");
        String id = instanceID.getId();
        C1694h.m3122a((Object) id, "InstanceID.getInstance(MyApp.instance).id");
        return id;
    }

    /* renamed from: c */
    public final int m96c() {
        int i;
        try {
            i = C3135y.f9272b.m22b().getPackageInfo(MyApp.f5480c.m1802a().getPackageName(), 0).versionCode;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            i = 0;
        }
        return i;
    }

    /* renamed from: d */
    public final String m95d() {
        String str;
        try {
            str = C3135y.f9272b.m22b().getPackageInfo(MyApp.f5480c.m1802a().getPackageName(), 0).versionName;
            C1694h.m3122a((Object) str, "pm.getPackageInfo(MyApp.…ckageName, 0).versionName");
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            str = "";
        }
        return str;
    }
}

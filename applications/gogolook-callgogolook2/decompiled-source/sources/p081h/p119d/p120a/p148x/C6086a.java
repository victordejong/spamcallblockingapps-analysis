package p081h.p119d.p120a.p148x;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p119d.p120a.p124s.AbstractC5806c;
/* renamed from: h.d.a.x.a */
/* loaded from: classes-dex2jar.jar:h/d/a/x/a.class */
public final class C6086a {

    /* renamed from: a */
    public static final ConcurrentHashMap<String, AbstractC5806c> f15137a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static AbstractC5806c m23892a(Context context) {
        String packageName = context.getPackageName();
        AbstractC5806c cVar = f15137a.get(packageName);
        AbstractC5806c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = m23891b(context);
            AbstractC5806c putIfAbsent = f15137a.putIfAbsent(packageName, cVar2);
            if (putIfAbsent != null) {
                cVar2 = putIfAbsent;
            }
        }
        return cVar2;
    }

    /* renamed from: b */
    public static AbstractC5806c m23891b(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return new C6088c(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
    }
}

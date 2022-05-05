package p081h.p203i.p204a.p224e.p258i;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.collection.ArrayMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
@Deprecated
/* renamed from: h.i.a.e.i.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/a.class */
public class C7145a {

    /* renamed from: b */
    public static Map<String, C7145a> f17247b = new ArrayMap();

    /* renamed from: c */
    public static C7152h f17248c;

    /* renamed from: a */
    public String f17249a;

    static {
        TimeUnit.DAYS.toSeconds(7L);
    }

    public C7145a(Context context, String str) {
        this.f17249a = "";
        context.getApplicationContext();
        this.f17249a = str;
    }

    /* renamed from: a */
    public static int m21032a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 38);
            sb.append("Never happens: can't find own package ");
            sb.append(valueOf);
            sb.toString();
            return 0;
        }
    }

    /* renamed from: a */
    public static C7145a m21031a(Context context, Bundle bundle) {
        String string;
        C7145a aVar;
        synchronized (C7145a.class) {
            if (bundle == null) {
                string = "";
            } else {
                try {
                    string = bundle.getString("subtype");
                } catch (Throwable th) {
                    throw th;
                }
            }
            String str = string;
            if (string == null) {
                str = "";
            }
            Context applicationContext = context.getApplicationContext();
            if (f17248c == null) {
                String packageName = applicationContext.getPackageName();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 73);
                sb.append("Instance ID SDK is deprecated, ");
                sb.append(packageName);
                sb.append(" should update to use Firebase Instance ID");
                sb.toString();
                f17248c = new C7152h(applicationContext);
                new C7149e(applicationContext);
            }
            Integer.toString(m21032a(applicationContext));
            C7145a aVar2 = f17247b.get(str);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = new C7145a(applicationContext, str);
                f17247b.put(str, aVar);
            }
        }
        return aVar;
    }

    /* renamed from: b */
    public static C7152h m21030b() {
        return f17248c;
    }

    /* renamed from: a */
    public final void m21033a() {
        f17248c.m21024b(this.f17249a);
    }
}

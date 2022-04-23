package p131c.p161d.p170b.p173b.p176i.p179u;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.b.b.i.u.j */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/j.class */
public class C2593j implements AbstractC2587e {

    /* renamed from: a */
    public final C2594a f9655a;

    /* renamed from: b */
    public final C2591h f9656b;

    /* renamed from: c */
    public final Map<String, AbstractC2596l> f9657c;

    /* renamed from: c.d.b.b.i.u.j$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/j$a.class */
    public static class C2594a {

        /* renamed from: a */
        public final Context f9658a;

        /* renamed from: b */
        public Map<String, String> f9659b = null;

        public C2594a(Context context) {
            this.f9658a = context;
        }

        /* renamed from: b */
        public static Bundle m29461b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("BackendRegistry", "Application info not found.");
                return null;
            }
        }

        /* renamed from: a */
        public AbstractC2586d m29462a(String str) {
            String str2 = m29464a().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (AbstractC2586d) Class.forName(str2).asSubclass(AbstractC2586d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e2);
                return null;
            } catch (InstantiationException e3) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e4);
                return null;
            } catch (InvocationTargetException e5) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e5);
                return null;
            }
        }

        /* renamed from: a */
        public final Map<String, String> m29464a() {
            if (this.f9659b == null) {
                this.f9659b = m29463a(this.f9658a);
            }
            return this.f9659b;
        }

        /* renamed from: a */
        public final Map<String, String> m29463a(Context context) {
            Bundle b = m29461b(context);
            if (b == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : b.keySet()) {
                Object obj = b.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }
    }

    public C2593j(Context context, C2591h hVar) {
        this(new C2594a(context), hVar);
    }

    public C2593j(C2594a aVar, C2591h hVar) {
        this.f9657c = new HashMap();
        this.f9655a = aVar;
        this.f9656b = hVar;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2587e
    public AbstractC2596l get(String str) {
        synchronized (this) {
            if (this.f9657c.containsKey(str)) {
                return this.f9657c.get(str);
            }
            AbstractC2586d a = this.f9655a.m29462a(str);
            if (a == null) {
                return null;
            }
            AbstractC2596l create = a.create(this.f9656b.m29467a(str));
            this.f9657c.put(str, create);
            return create;
        }
    }
}

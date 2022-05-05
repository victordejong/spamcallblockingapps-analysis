package p081h.p203i.p204a.p206b.p209j.p212u;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
@Singleton
/* renamed from: h.i.a.b.j.u.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/k.class */
public class C6604k implements AbstractC6596e {

    /* renamed from: a */
    public final C6605a f16416a;

    /* renamed from: b */
    public final C6602i f16417b;

    /* renamed from: c */
    public final Map<String, AbstractC6607m> f16418c;

    /* renamed from: h.i.a.b.j.u.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/k$a.class */
    public static class C6605a {

        /* renamed from: a */
        public final Context f16419a;

        /* renamed from: b */
        public Map<String, String> f16420b = null;

        public C6605a(Context context) {
            this.f16419a = context;
        }

        /* renamed from: b */
        public static Bundle m22248b(Context context) {
            ServiceInfo serviceInfo;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128)) == null) {
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        @Nullable
        /* renamed from: a */
        public AbstractC6595d m22249a(String str) {
            String str2 = m22251a().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (AbstractC6595d) Class.forName(str2).asSubclass(AbstractC6595d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                String.format("Class %s is not found.", str2);
                return null;
            } catch (IllegalAccessException e2) {
                String.format("Could not instantiate %s.", str2);
                return null;
            } catch (InstantiationException e3) {
                String.format("Could not instantiate %s.", str2);
                return null;
            } catch (NoSuchMethodException e4) {
                String.format("Could not instantiate %s", str2);
                return null;
            } catch (InvocationTargetException e5) {
                String.format("Could not instantiate %s", str2);
                return null;
            }
        }

        /* renamed from: a */
        public final Map<String, String> m22251a() {
            if (this.f16420b == null) {
                this.f16420b = m22250a(this.f16419a);
            }
            return this.f16420b;
        }

        /* renamed from: a */
        public final Map<String, String> m22250a(Context context) {
            Bundle b = m22248b(context);
            if (b == null) {
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

    @Inject
    public C6604k(Context context, C6602i iVar) {
        this(new C6605a(context), iVar);
    }

    public C6604k(C6605a aVar, C6602i iVar) {
        this.f16418c = new HashMap();
        this.f16416a = aVar;
        this.f16417b = iVar;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6596e
    @Nullable
    public AbstractC6607m get(String str) {
        synchronized (this) {
            if (this.f16418c.containsKey(str)) {
                return this.f16418c.get(str);
            }
            AbstractC6595d a = this.f16416a.m22249a(str);
            if (a == null) {
                return null;
            }
            AbstractC6607m create = a.create(this.f16417b.m22254a(str));
            this.f16418c.put(str, create);
            return create;
        }
    }
}

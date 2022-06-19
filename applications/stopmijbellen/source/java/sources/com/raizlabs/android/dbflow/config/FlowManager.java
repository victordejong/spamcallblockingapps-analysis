package com.raizlabs.android.dbflow.config;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.raizlabs.android.dbflow.structure.InvalidDBConfiguration;
import java.util.HashSet;
import p024b9.AbstractC0742b;
import p024b9.AbstractC0744d;
import p024b9.AbstractC0745e;
import p024b9.AbstractC0746f;
import p034c9.AbstractC0859f;
import p256u8.AbstractC4552d;
import p256u8.C4546a;
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/FlowManager.class */
public class FlowManager {

    /* renamed from: a */
    public static C2118e f7674a;

    /* renamed from: b */
    public static GlobalDatabaseHolder f7675b = new GlobalDatabaseHolder();

    /* renamed from: c */
    public static HashSet<Class<? extends AbstractC2117d>> f7676c = new HashSet<>();

    /* renamed from: d */
    public static final String f7677d = C0082b.m8755g(FlowManager.class.getPackage().getName(), ".", "GeneratedDatabaseHolder");

    /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder.class */
    public static class GlobalDatabaseHolder extends AbstractC2117d {
        private boolean initialized;

        private GlobalDatabaseHolder() {
            this.initialized = false;
        }

        public void add(AbstractC2117d abstractC2117d) {
            this.databaseDefinitionMap.putAll(abstractC2117d.databaseDefinitionMap);
            this.databaseNameMap.putAll(abstractC2117d.databaseNameMap);
            this.typeConverters.putAll(abstractC2117d.typeConverters);
            this.databaseClassLookupMap.putAll(abstractC2117d.databaseClassLookupMap);
            this.initialized = true;
        }

        public boolean isInitialized() {
            return this.initialized;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException.class */
    public static class ModuleNotFoundException extends RuntimeException {
        public ModuleNotFoundException() {
        }

        public ModuleNotFoundException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: a */
    public static void m3912a() {
        if (f7675b.isInitialized()) {
            return;
        }
        throw new IllegalStateException("The global database holder is not initialized. Ensure you call FlowManager.init() before accessing the database.");
    }

    /* renamed from: b */
    public static C2118e m3911b() {
        C2118e c2118e = f7674a;
        if (c2118e != null) {
            return c2118e;
        }
        throw new IllegalStateException("Configuration is not initialized. Please call init(FlowConfig) in your application class.");
    }

    /* renamed from: c */
    public static Context m3910c() {
        C2118e c2118e = f7674a;
        if (c2118e != null) {
            return c2118e.f7689c;
        }
        throw new IllegalStateException("You must provide a valid FlowConfig instance. We recommend calling init() in your application class.");
    }

    /* renamed from: d */
    public static AbstractC2116c m3909d(Class<?> cls) {
        m3912a();
        AbstractC2116c database = f7675b.getDatabase(cls);
        if (database != null) {
            return database;
        }
        StringBuilder m8752j = C0082b.m8752j("Database: ");
        m8752j.append(cls.getName());
        m8752j.append(" is not a registered Database. Did you forget the @Database annotation?");
        throw new InvalidDBConfiguration(m8752j.toString());
    }

    /* renamed from: e */
    public static AbstractC2116c m3908e(Class<?> cls) {
        m3912a();
        AbstractC2116c databaseForTable = f7675b.getDatabaseForTable(cls);
        if (databaseForTable != null) {
            return databaseForTable;
        }
        StringBuilder m8752j = C0082b.m8752j("Model object: ");
        m8752j.append(cls.getName());
        m8752j.append(" is not registered with a Database. Did you forget an annotation?");
        throw new InvalidDBConfiguration(m8752j.toString());
    }

    /* renamed from: f */
    public static <TModel> AbstractC0742b<TModel> m3907f(Class<TModel> cls) {
        AbstractC0742b m3906g = m3906g(cls);
        AbstractC0742b abstractC0742b = m3906g;
        if (m3906g == null) {
            AbstractC0742b abstractC0742b2 = (AbstractC0745e) m3908e(cls).f7681d.get(cls);
            abstractC0742b = abstractC0742b2;
            if (abstractC0742b2 == null) {
                abstractC0742b = (AbstractC0746f) m3908e(cls).f7682e.get(cls);
            }
        }
        if (abstractC0742b != null) {
            return abstractC0742b;
        }
        m3901l("InstanceAdapter", cls);
        throw null;
    }

    /* renamed from: g */
    public static <T> AbstractC0744d<T> m3906g(Class<T> cls) {
        return m3908e(cls).f7679b.get(cls);
    }

    /* renamed from: h */
    public static AbstractC4552d m3905h(Class<?> cls) {
        AbstractC2116c m3908e = m3908e(cls);
        if (m3908e.f7686i == null) {
            m3911b().f7688b.get(m3908e.mo3895f());
            m3908e.f7686i = new C4546a("com.dbflow.authority");
        }
        return m3908e.f7686i;
    }

    /* renamed from: i */
    public static String m3904i(Class<?> cls) {
        String str;
        AbstractC0744d m3906g = m3906g(cls);
        if (m3906g == null) {
            AbstractC0745e abstractC0745e = m3908e(cls).f7681d.get(cls);
            if (abstractC0745e == null) {
                m3901l("ModelAdapter/ModelViewAdapter", cls);
                throw null;
            }
            str = abstractC0745e.m7411g();
        } else {
            str = m3906g.mo2678n();
        }
        return str;
    }

    /* renamed from: j */
    public static AbstractC0859f m3903j(Class<?> cls) {
        return m3908e(cls).m3891j();
    }

    /* renamed from: k */
    public static void m3902k(Class<? extends AbstractC2117d> cls) {
        if (f7676c.contains(cls)) {
            return;
        }
        try {
            AbstractC2117d newInstance = cls.newInstance();
            if (newInstance == null) {
                return;
            }
            f7675b.add(newInstance);
            f7676c.add(cls);
        } catch (Throwable th) {
            th.printStackTrace();
            throw new ModuleNotFoundException("Cannot load " + cls, th);
        }
    }

    /* renamed from: l */
    public static void m3901l(String str, Class<?> cls) {
        throw new IllegalArgumentException("Cannot find " + str + " for " + cls + ". Ensure the class is annotated with proper annotation.");
    }
}

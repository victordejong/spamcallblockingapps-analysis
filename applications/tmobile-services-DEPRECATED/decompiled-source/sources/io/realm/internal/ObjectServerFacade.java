package io.realm.internal;

import android.content.Context;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ObjectServerFacade.class */
public class ObjectServerFacade {

    /* renamed from: a */
    private static final ObjectServerFacade f20105a = new ObjectServerFacade();

    /* renamed from: b */
    private static ObjectServerFacade f20106b;

    static {
        try {
            f20106b = (ObjectServerFacade) Class.forName("io.realm.internal.SyncObjectServerFacade").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
        } catch (IllegalAccessException e2) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e3);
        } catch (NoSuchMethodException e4) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e4);
        } catch (InvocationTargetException e5) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e5.getTargetException());
        }
    }

    /* renamed from: c */
    public static ObjectServerFacade m2819c(boolean z) {
        return z ? f20106b : f20105a;
    }

    /* renamed from: e */
    public static ObjectServerFacade m2817e() {
        ObjectServerFacade objectServerFacade = f20106b;
        return objectServerFacade != null ? objectServerFacade : f20105a;
    }

    /* renamed from: a */
    public void m2821a(RealmConfiguration realmConfiguration) {
    }

    /* renamed from: b */
    public void m2820b(Realm realm) {
    }

    /* renamed from: d */
    public Object[] m2818d(RealmConfiguration realmConfiguration) {
        return new Object[12];
    }

    /* renamed from: f */
    public String m2816f(RealmConfiguration realmConfiguration) {
        return null;
    }

    /* renamed from: g */
    public String m2815g(RealmConfiguration realmConfiguration) {
        return null;
    }

    /* renamed from: h */
    public void m2814h(Context context, String str) {
    }

    /* renamed from: i */
    public boolean m2813i(RealmConfiguration realmConfiguration) {
        return false;
    }

    /* renamed from: j */
    public void m2812j(RealmConfiguration realmConfiguration) {
    }

    /* renamed from: k */
    public boolean m2811k(Throwable th) {
        return false;
    }

    /* renamed from: l */
    public void m2810l(OsRealmConfig osRealmConfig) {
    }
}

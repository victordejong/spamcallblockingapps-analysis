package io.realm.internal;

import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.exceptions.RealmException;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/RealmProxyMediator.class */
public abstract class RealmProxyMediator {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m2684a(Class<? extends RealmModel> cls) {
        if (cls == null) {
            throw new NullPointerException("A class extending RealmObject must be provided");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public static RealmException m2683e(Class<? extends RealmModel> cls) {
        return new RealmException(String.format("'%s' is not part of the schema for this Realm.", cls.toString()));
    }

    /* renamed from: b */
    public abstract <E extends RealmModel> E mo2564b(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set);

    /* renamed from: c */
    public abstract ColumnInfo mo2563c(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo);

    /* renamed from: d */
    public abstract Map<Class<? extends RealmModel>, OsObjectSchemaInfo> mo2562d();

    public boolean equals(Object obj) {
        if (!(obj instanceof RealmProxyMediator)) {
            return false;
        }
        return mo2561f().equals(((RealmProxyMediator) obj).mo2561f());
    }

    /* renamed from: f */
    public abstract Set<Class<? extends RealmModel>> mo2561f();

    /* renamed from: g */
    public final String m2682g(Class<? extends RealmModel> cls) {
        return mo2560h(Util.m2598b(cls));
    }

    /* renamed from: h */
    protected abstract String mo2560h(Class<? extends RealmModel> cls);

    public int hashCode() {
        return mo2561f().hashCode();
    }

    /* renamed from: i */
    public abstract void mo2559i(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map);

    /* renamed from: j */
    public abstract void mo2558j(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map);

    /* renamed from: k */
    public abstract <E extends RealmModel> E mo2557k(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list);

    /* renamed from: l */
    public boolean mo2556l() {
        return false;
    }
}

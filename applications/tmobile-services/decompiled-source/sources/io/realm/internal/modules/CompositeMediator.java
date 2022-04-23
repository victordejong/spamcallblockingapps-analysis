package io.realm.internal.modules;

import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.internal.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/modules/CompositeMediator.class */
public class CompositeMediator extends RealmProxyMediator {

    /* renamed from: a */
    private final Map<Class<? extends RealmModel>, RealmProxyMediator> f20234a;

    /* renamed from: b */
    private final Map<String, Class<? extends RealmModel>> f20235b = new HashMap();

    public CompositeMediator(RealmProxyMediator... realmProxyMediatorArr) {
        HashMap hashMap = new HashMap();
        if (realmProxyMediatorArr != null) {
            for (RealmProxyMediator realmProxyMediator : realmProxyMediatorArr) {
                for (Class<? extends RealmModel> cls : realmProxyMediator.mo2561f()) {
                    String g = realmProxyMediator.m2682g(cls);
                    Class<? extends RealmModel> cls2 = this.f20235b.get(g);
                    if (cls2 == null || cls2.equals(cls)) {
                        hashMap.put(cls, realmProxyMediator);
                        this.f20235b.put(g, cls);
                    } else {
                        throw new IllegalStateException(String.format("It is not allowed for two different model classes to share the same internal name in Realm. The classes %s and %s are being included from the modules '%s' and '%s' and they share the same internal name '%s'.", cls2, cls, hashMap.get(cls2), realmProxyMediator, g));
                    }
                }
            }
        }
        this.f20234a = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: m */
    private RealmProxyMediator m2565m(Class<? extends RealmModel> cls) {
        RealmProxyMediator realmProxyMediator = this.f20234a.get(cls);
        if (realmProxyMediator != null) {
            return realmProxyMediator;
        }
        throw new RealmException(cls.getSimpleName() + " is not part of the schema for this Realm");
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: b */
    public <E extends RealmModel> E mo2564b(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        return (E) m2565m(Util.m2598b(e.getClass())).mo2564b(realm, e, z, map, set);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: c */
    public ColumnInfo mo2563c(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        return m2565m(cls).mo2563c(cls, osSchemaInfo);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: d */
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> mo2562d() {
        HashMap hashMap = new HashMap();
        for (RealmProxyMediator realmProxyMediator : this.f20234a.values()) {
            hashMap.putAll(realmProxyMediator.mo2562d());
        }
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: f */
    public Set<Class<? extends RealmModel>> mo2561f() {
        return this.f20234a.keySet();
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: h */
    protected String mo2560h(Class<? extends RealmModel> cls) {
        return m2565m(cls).m2682g(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: i */
    public void mo2559i(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        m2565m(Util.m2598b(realmModel.getClass())).mo2559i(realm, realmModel, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: j */
    public void mo2558j(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        m2565m(Util.m2598b(realmModel.getClass())).mo2558j(realm, realmModel, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: k */
    public <E extends RealmModel> E mo2557k(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        return (E) m2565m(cls).mo2557k(cls, obj, row, columnInfo, z, list);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: l */
    public boolean mo2556l() {
        for (Map.Entry<Class<? extends RealmModel>, RealmProxyMediator> entry : this.f20234a.entrySet()) {
            if (!entry.getValue().mo2556l()) {
                return false;
            }
        }
        return true;
    }
}

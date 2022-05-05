package io.realm.internal.modules;

import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.internal.Util;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/modules/FilterableMediator.class */
public class FilterableMediator extends RealmProxyMediator {

    /* renamed from: a */
    private final RealmProxyMediator f20236a;

    /* renamed from: b */
    private final Set<Class<? extends RealmModel>> f20237b;

    public FilterableMediator(RealmProxyMediator realmProxyMediator, Collection<Class<? extends RealmModel>> collection) {
        this.f20236a = realmProxyMediator;
        HashSet hashSet = new HashSet();
        if (realmProxyMediator != null) {
            Set<Class<? extends RealmModel>> f = realmProxyMediator.mo2561f();
            for (Class<? extends RealmModel> cls : collection) {
                if (f.contains(cls)) {
                    hashSet.add(cls);
                }
            }
        }
        this.f20237b = Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: m */
    private void m2555m(Class<? extends RealmModel> cls) {
        if (!this.f20237b.contains(cls)) {
            throw new IllegalArgumentException(cls.getSimpleName() + " is not part of the schema for this Realm");
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: b */
    public <E extends RealmModel> E mo2564b(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        m2555m(Util.m2598b(e.getClass()));
        return (E) this.f20236a.mo2564b(realm, e, z, map, set);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: c */
    public ColumnInfo mo2563c(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        m2555m(cls);
        return this.f20236a.mo2563c(cls, osSchemaInfo);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: d */
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> mo2562d() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Class<? extends RealmModel>, OsObjectSchemaInfo> entry : this.f20236a.mo2562d().entrySet()) {
            if (this.f20237b.contains(entry.getKey())) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: f */
    public Set<Class<? extends RealmModel>> mo2561f() {
        return this.f20237b;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: h */
    protected String mo2560h(Class<? extends RealmModel> cls) {
        m2555m(cls);
        return this.f20236a.m2682g(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: i */
    public void mo2559i(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        m2555m(Util.m2598b(realmModel.getClass()));
        this.f20236a.mo2559i(realm, realmModel, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: j */
    public void mo2558j(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        m2555m(Util.m2598b(realmModel.getClass()));
        this.f20236a.mo2558j(realm, realmModel, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: k */
    public <E extends RealmModel> E mo2557k(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        m2555m(cls);
        return (E) this.f20236a.mo2557k(cls, obj, row, columnInfo, z, list);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: l */
    public boolean mo2556l() {
        RealmProxyMediator realmProxyMediator = this.f20236a;
        if (realmProxyMediator == null) {
            return true;
        }
        return realmProxyMediator.mo2556l();
    }
}

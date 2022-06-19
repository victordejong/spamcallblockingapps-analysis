package io.realm;

import android.util.JsonReader;
import com.telguarder.features.numberLookup.C2210d;
import io.realm.BaseRealm;
import io.realm.annotations.RealmModule;
import io.realm.com_telguarder_features_numberLookup_dRealmProxy;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
@RealmModule
/* loaded from: classes2-dex2jar.jar:io/realm/InitialModuleMediator.class */
class InitialModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(1);
        hashSet.add(C2210d.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    InitialModuleMediator() {
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(C2210d.class)) {
            return (E) superclass.cast(com_telguarder_features_numberLookup_dRealmProxy.copyOrUpdate(realm, (com_telguarder_features_numberLookup_dRealmProxy.dColumnInfo) realm.getSchema().getColumnInfo(C2210d.class), (C2210d) e, z, map, set));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return com_telguarder_features_numberLookup_dRealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(C2210d.class)) {
            return (E) superclass.cast(com_telguarder_features_numberLookup_dRealmProxy.createDetachedCopy((C2210d) e, 0, i, map));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return cls.cast(com_telguarder_features_numberLookup_dRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return cls.cast(com_telguarder_features_numberLookup_dRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(1);
        hashMap.put(C2210d.class, com_telguarder_features_numberLookup_dRealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return com_telguarder_features_numberLookup_dRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<? super Object> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(C2210d.class)) {
            com_telguarder_features_numberLookup_dRealmProxy.insert(realm, (C2210d) realmModel, map);
            return;
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel next = it.next();
            Class<? super Object> superclass = next instanceof RealmObjectProxy ? next.getClass().getSuperclass() : next.getClass();
            if (!superclass.equals(C2210d.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            com_telguarder_features_numberLookup_dRealmProxy.insert(realm, (C2210d) next, hashMap);
            if (!it.hasNext()) {
                return;
            }
            if (!superclass.equals(C2210d.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            com_telguarder_features_numberLookup_dRealmProxy.insert(realm, it, hashMap);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<? super Object> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(C2210d.class)) {
            com_telguarder_features_numberLookup_dRealmProxy.insertOrUpdate(realm, (C2210d) realmModel, map);
            return;
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel next = it.next();
            Class<? super Object> superclass = next instanceof RealmObjectProxy ? next.getClass().getSuperclass() : next.getClass();
            if (!superclass.equals(C2210d.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            com_telguarder_features_numberLookup_dRealmProxy.insertOrUpdate(realm, (C2210d) next, hashMap);
            if (!it.hasNext()) {
                return;
            }
            if (!superclass.equals(C2210d.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            com_telguarder_features_numberLookup_dRealmProxy.insertOrUpdate(realm, it, hashMap);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> boolean isEmbedded(Class<E> cls) {
        if (cls.equals(C2210d.class)) {
            return false;
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            checkClass(cls);
            if (!cls.equals(C2210d.class)) {
                throw getMissingProxyClassException(cls);
            }
            return cls.cast(new com_telguarder_features_numberLookup_dRealmProxy());
        } finally {
            realmObjectContext.clear();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> void updateEmbeddedObject(Realm realm, E e, E e2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<? super Object> superclass = e2.getClass().getSuperclass();
        if (superclass.equals(C2210d.class)) {
            throw getNotEmbeddedClassException("com.telguarder.features.numberLookup.d");
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }
}

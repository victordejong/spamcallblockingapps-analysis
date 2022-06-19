package io.realm;

import android.util.JsonReader;
import com.telguarder.features.numberLookup.C2210d;
import com.telguarder.features.numberLookup.CachedHistoryListItem;
import com.telguarder.features.postCallStatistics.CallHistoryItem;
import io.realm.BaseRealm;
import io.realm.C2391xb02eee5e;
import io.realm.C2393x91591da2;
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
/* loaded from: classes2-dex2jar.jar:io/realm/DefaultRealmModuleMediator.class */
class DefaultRealmModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(3);
        hashSet.add(C2210d.class);
        hashSet.add(CachedHistoryListItem.class);
        hashSet.add(CallHistoryItem.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    DefaultRealmModuleMediator() {
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(C2210d.class)) {
            return (E) superclass.cast(com_telguarder_features_numberLookup_dRealmProxy.copyOrUpdate(realm, (com_telguarder_features_numberLookup_dRealmProxy.dColumnInfo) realm.getSchema().getColumnInfo(C2210d.class), (C2210d) e, z, map, set));
        }
        if (superclass.equals(CachedHistoryListItem.class)) {
            return (E) superclass.cast(C2391xb02eee5e.copyOrUpdate(realm, (C2391xb02eee5e.CachedHistoryListItemColumnInfo) realm.getSchema().getColumnInfo(CachedHistoryListItem.class), (CachedHistoryListItem) e, z, map, set));
        }
        if (!superclass.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
        return (E) superclass.cast(C2393x91591da2.copyOrUpdate(realm, (C2393x91591da2.CallHistoryItemColumnInfo) realm.getSchema().getColumnInfo(CallHistoryItem.class), (CallHistoryItem) e, z, map, set));
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return com_telguarder_features_numberLookup_dRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CachedHistoryListItem.class)) {
            return C2391xb02eee5e.createColumnInfo(osSchemaInfo);
        }
        if (!cls.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException(cls);
        }
        return C2393x91591da2.createColumnInfo(osSchemaInfo);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(C2210d.class)) {
            return (E) superclass.cast(com_telguarder_features_numberLookup_dRealmProxy.createDetachedCopy((C2210d) e, 0, i, map));
        }
        if (superclass.equals(CachedHistoryListItem.class)) {
            return (E) superclass.cast(C2391xb02eee5e.createDetachedCopy((CachedHistoryListItem) e, 0, i, map));
        }
        if (!superclass.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
        return (E) superclass.cast(C2393x91591da2.createDetachedCopy((CallHistoryItem) e, 0, i, map));
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return cls.cast(com_telguarder_features_numberLookup_dRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CachedHistoryListItem.class)) {
            return cls.cast(C2391xb02eee5e.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (!cls.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException(cls);
        }
        return cls.cast(C2393x91591da2.createOrUpdateUsingJsonObject(realm, jSONObject, z));
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        checkClass(cls);
        if (cls.equals(C2210d.class)) {
            return cls.cast(com_telguarder_features_numberLookup_dRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CachedHistoryListItem.class)) {
            return cls.cast(C2391xb02eee5e.createUsingJsonStream(realm, jsonReader));
        }
        if (!cls.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException(cls);
        }
        return cls.cast(C2393x91591da2.createUsingJsonStream(realm, jsonReader));
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(3);
        hashMap.put(C2210d.class, com_telguarder_features_numberLookup_dRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CachedHistoryListItem.class, C2391xb02eee5e.getExpectedObjectSchemaInfo());
        hashMap.put(CallHistoryItem.class, C2393x91591da2.getExpectedObjectSchemaInfo());
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
        if (cls.equals(CachedHistoryListItem.class)) {
            return C2391xb02eee5e.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (!cls.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException(cls);
        }
        return C2393x91591da2.ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<? super Object> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(C2210d.class)) {
            com_telguarder_features_numberLookup_dRealmProxy.insert(realm, (C2210d) realmModel, map);
        } else if (superclass.equals(CachedHistoryListItem.class)) {
            C2391xb02eee5e.insert(realm, (CachedHistoryListItem) realmModel, map);
        } else if (!superclass.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        } else {
            C2393x91591da2.insert(realm, (CallHistoryItem) realmModel, map);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel next = it.next();
            Class<? super Object> superclass = next instanceof RealmObjectProxy ? next.getClass().getSuperclass() : next.getClass();
            if (superclass.equals(C2210d.class)) {
                com_telguarder_features_numberLookup_dRealmProxy.insert(realm, (C2210d) next, hashMap);
            } else if (superclass.equals(CachedHistoryListItem.class)) {
                C2391xb02eee5e.insert(realm, (CachedHistoryListItem) next, hashMap);
            } else if (!superclass.equals(CallHistoryItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            } else {
                C2393x91591da2.insert(realm, (CallHistoryItem) next, hashMap);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(C2210d.class)) {
                com_telguarder_features_numberLookup_dRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(CachedHistoryListItem.class)) {
                C2391xb02eee5e.insert(realm, it, hashMap);
            } else if (!superclass.equals(CallHistoryItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            } else {
                C2393x91591da2.insert(realm, it, hashMap);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<? super Object> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(C2210d.class)) {
            com_telguarder_features_numberLookup_dRealmProxy.insertOrUpdate(realm, (C2210d) realmModel, map);
        } else if (superclass.equals(CachedHistoryListItem.class)) {
            C2391xb02eee5e.insertOrUpdate(realm, (CachedHistoryListItem) realmModel, map);
        } else if (!superclass.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        } else {
            C2393x91591da2.insertOrUpdate(realm, (CallHistoryItem) realmModel, map);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel next = it.next();
            Class<? super Object> superclass = next instanceof RealmObjectProxy ? next.getClass().getSuperclass() : next.getClass();
            if (superclass.equals(C2210d.class)) {
                com_telguarder_features_numberLookup_dRealmProxy.insertOrUpdate(realm, (C2210d) next, hashMap);
            } else if (superclass.equals(CachedHistoryListItem.class)) {
                C2391xb02eee5e.insertOrUpdate(realm, (CachedHistoryListItem) next, hashMap);
            } else if (!superclass.equals(CallHistoryItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            } else {
                C2393x91591da2.insertOrUpdate(realm, (CallHistoryItem) next, hashMap);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(C2210d.class)) {
                com_telguarder_features_numberLookup_dRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CachedHistoryListItem.class)) {
                C2391xb02eee5e.insertOrUpdate(realm, it, hashMap);
            } else if (!superclass.equals(CallHistoryItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            } else {
                C2393x91591da2.insertOrUpdate(realm, it, hashMap);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> boolean isEmbedded(Class<E> cls) {
        if (!cls.equals(C2210d.class) && !cls.equals(CachedHistoryListItem.class) && !cls.equals(CallHistoryItem.class)) {
            throw getMissingProxyClassException(cls);
        }
        return false;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            checkClass(cls);
            if (cls.equals(C2210d.class)) {
                return cls.cast(new com_telguarder_features_numberLookup_dRealmProxy());
            }
            if (cls.equals(CachedHistoryListItem.class)) {
                return cls.cast(new C2391xb02eee5e());
            }
            if (!cls.equals(CallHistoryItem.class)) {
                throw getMissingProxyClassException(cls);
            }
            return cls.cast(new C2393x91591da2());
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
        if (!superclass.equals(C2210d.class)) {
            if (superclass.equals(CachedHistoryListItem.class)) {
                throw getNotEmbeddedClassException("com.telguarder.features.numberLookup.CachedHistoryListItem");
            }
            if (!superclass.equals(CallHistoryItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            throw getNotEmbeddedClassException("com.telguarder.features.postCallStatistics.CallHistoryItem");
        }
        throw getNotEmbeddedClassException("com.telguarder.features.numberLookup.d");
    }
}

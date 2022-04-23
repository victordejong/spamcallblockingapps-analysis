package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.offline.offlinedb.CategMap;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV83;
import gogolook.callgogolook2.offline.offlinedb.SourceMap;
import io.realm.BaseRealm;
import io.realm.annotations.RealmModule;
import io.realm.gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy;
import io.realm.gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy;
import io.realm.gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy;
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
/* loaded from: classes3-dex2jar.jar:io/realm/OfflineDbV83ModuleMediator.class */
public class OfflineDbV83ModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(3);
        hashSet.add(SourceMap.class);
        hashSet.add(OfflineDbV83.class);
        hashSet.add(CategMap.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(SourceMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.SourceMapColumnInfo) realm.getSchema().getColumnInfo(SourceMap.class), (SourceMap) e, z, map, set)));
        }
        if (superclass.equals(OfflineDbV83.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.OfflineDbV83ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV83.class), (OfflineDbV83) e, z, map, set)));
        }
        if (superclass.equals(CategMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.CategMapColumnInfo) realm.getSchema().getColumnInfo(CategMap.class), (CategMap) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SourceMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(OfflineDbV83.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CategMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(SourceMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createDetachedCopy((SourceMap) e, 0, i, map)));
        }
        if (superclass.equals(OfflineDbV83.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createDetachedCopy((OfflineDbV83) e, 0, i, map)));
        }
        if (superclass.equals(CategMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createDetachedCopy((CategMap) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SourceMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(OfflineDbV83.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CategMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SourceMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(OfflineDbV83.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CategMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(3);
        hashMap.put(SourceMap.class, gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(OfflineDbV83.class, gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CategMap.class, gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SourceMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(OfflineDbV83.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(CategMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(SourceMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insert(realm, (SourceMap) realmModel, map);
        } else if (superclass.equals(OfflineDbV83.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insert(realm, (OfflineDbV83) realmModel, map);
        } else if (superclass.equals(CategMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insert(realm, (CategMap) realmModel, map);
        } else {
            throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel realmModel = (RealmModel) it.next();
            Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
            if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insert(realm, (SourceMap) realmModel, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insert(realm, (OfflineDbV83) realmModel, hashMap);
            } else if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insert(realm, (CategMap) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(SourceMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insertOrUpdate(realm, (SourceMap) realmModel, map);
        } else if (superclass.equals(OfflineDbV83.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insertOrUpdate(realm, (OfflineDbV83) realmModel, map);
        } else if (superclass.equals(CategMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insertOrUpdate(realm, (CategMap) realmModel, map);
        } else {
            throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel realmModel = (RealmModel) it.next();
            Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
            if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insertOrUpdate(realm, (SourceMap) realmModel, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insertOrUpdate(realm, (OfflineDbV83) realmModel, hashMap);
            } else if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insertOrUpdate(realm, (CategMap) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            RealmProxyMediator.checkClass(cls);
            if (cls.equals(SourceMap.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy());
            }
            if (cls.equals(OfflineDbV83.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy());
            }
            if (cls.equals(CategMap.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy());
            }
            throw RealmProxyMediator.getMissingProxyClassException(cls);
        } finally {
            realmObjectContext.clear();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }
}

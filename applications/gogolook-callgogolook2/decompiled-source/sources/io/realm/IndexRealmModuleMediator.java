package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.SearchIndexRealmObject;
import io.realm.BaseRealm;
import io.realm.C10923xb8f4344e;
import io.realm.C10925xffa95e67;
import io.realm.C10927xb76e5e93;
import io.realm.C10929x7feca032;
import io.realm.annotations.RealmModule;
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
/* loaded from: classes3-dex2jar.jar:io/realm/IndexRealmModuleMediator.class */
public class IndexRealmModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(4);
        hashSet.add(DialerIndexRealmObject.class);
        hashSet.add(SearchIndexRealmObject.class);
        hashSet.add(CacheIndexRealmObject.class);
        hashSet.add(NumberIndexRealmObject.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(DialerIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10925xffa95e67.copyOrUpdate(realm, (C10925xffa95e67.DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class), (DialerIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(SearchIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10929x7feca032.copyOrUpdate(realm, (C10929x7feca032.SearchIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SearchIndexRealmObject.class), (SearchIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(CacheIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10923xb8f4344e.copyOrUpdate(realm, (C10923xb8f4344e.CacheIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(CacheIndexRealmObject.class), (CacheIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(NumberIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10927xb76e5e93.copyOrUpdate(realm, (C10927xb76e5e93.NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class), (NumberIndexRealmObject) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(DialerIndexRealmObject.class)) {
            return C10925xffa95e67.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return C10929x7feca032.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return C10923xb8f4344e.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return C10927xb76e5e93.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(DialerIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10925xffa95e67.createDetachedCopy((DialerIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(SearchIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10929x7feca032.createDetachedCopy((SearchIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(CacheIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10923xb8f4344e.createDetachedCopy((CacheIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(NumberIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10927xb76e5e93.createDetachedCopy((NumberIndexRealmObject) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(DialerIndexRealmObject.class)) {
            return cls.cast(C10925xffa95e67.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return cls.cast(C10929x7feca032.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return cls.cast(C10923xb8f4344e.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return cls.cast(C10927xb76e5e93.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(DialerIndexRealmObject.class)) {
            return cls.cast(C10925xffa95e67.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return cls.cast(C10929x7feca032.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return cls.cast(C10923xb8f4344e.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return cls.cast(C10927xb76e5e93.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(4);
        hashMap.put(DialerIndexRealmObject.class, C10925xffa95e67.getExpectedObjectSchemaInfo());
        hashMap.put(SearchIndexRealmObject.class, C10929x7feca032.getExpectedObjectSchemaInfo());
        hashMap.put(CacheIndexRealmObject.class, C10923xb8f4344e.getExpectedObjectSchemaInfo());
        hashMap.put(NumberIndexRealmObject.class, C10927xb76e5e93.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(DialerIndexRealmObject.class)) {
            return C10925xffa95e67.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return C10929x7feca032.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return C10923xb8f4344e.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return C10927xb76e5e93.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(DialerIndexRealmObject.class)) {
            C10925xffa95e67.insert(realm, (DialerIndexRealmObject) realmModel, map);
        } else if (superclass.equals(SearchIndexRealmObject.class)) {
            C10929x7feca032.insert(realm, (SearchIndexRealmObject) realmModel, map);
        } else if (superclass.equals(CacheIndexRealmObject.class)) {
            C10923xb8f4344e.insert(realm, (CacheIndexRealmObject) realmModel, map);
        } else if (superclass.equals(NumberIndexRealmObject.class)) {
            C10927xb76e5e93.insert(realm, (NumberIndexRealmObject) realmModel, map);
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
            if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insert(realm, (DialerIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insert(realm, (SearchIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insert(realm, (CacheIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insert(realm, (NumberIndexRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insert(realm, it, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insert(realm, it, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insert(realm, it, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(DialerIndexRealmObject.class)) {
            C10925xffa95e67.insertOrUpdate(realm, (DialerIndexRealmObject) realmModel, map);
        } else if (superclass.equals(SearchIndexRealmObject.class)) {
            C10929x7feca032.insertOrUpdate(realm, (SearchIndexRealmObject) realmModel, map);
        } else if (superclass.equals(CacheIndexRealmObject.class)) {
            C10923xb8f4344e.insertOrUpdate(realm, (CacheIndexRealmObject) realmModel, map);
        } else if (superclass.equals(NumberIndexRealmObject.class)) {
            C10927xb76e5e93.insertOrUpdate(realm, (NumberIndexRealmObject) realmModel, map);
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
            if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insertOrUpdate(realm, (DialerIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insertOrUpdate(realm, (SearchIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insertOrUpdate(realm, (CacheIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insertOrUpdate(realm, (NumberIndexRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insertOrUpdate(realm, it, hashMap);
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
            if (cls.equals(DialerIndexRealmObject.class)) {
                return cls.cast(new C10925xffa95e67());
            }
            if (cls.equals(SearchIndexRealmObject.class)) {
                return cls.cast(new C10929x7feca032());
            }
            if (cls.equals(CacheIndexRealmObject.class)) {
                return cls.cast(new C10923xb8f4344e());
            }
            if (cls.equals(NumberIndexRealmObject.class)) {
                return cls.cast(new C10927xb76e5e93());
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

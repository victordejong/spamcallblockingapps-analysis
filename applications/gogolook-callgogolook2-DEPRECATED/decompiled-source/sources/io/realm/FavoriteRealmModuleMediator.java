package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import io.realm.BaseRealm;
import io.realm.C10907x9779850b;
import io.realm.C10909x2e9544f2;
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
/* loaded from: classes3-dex2jar.jar:io/realm/FavoriteRealmModuleMediator.class */
public class FavoriteRealmModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(2);
        hashSet.add(FavoriteGroupRealmObject.class);
        hashSet.add(FavoriteListRealmObject.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(FavoriteGroupRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10907x9779850b.copyOrUpdate(realm, (C10907x9779850b.FavoriteGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class), (FavoriteGroupRealmObject) e, z, map, set)));
        }
        if (superclass.equals(FavoriteListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10909x2e9544f2.copyOrUpdate(realm, (C10909x2e9544f2.FavoriteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteListRealmObject.class), (FavoriteListRealmObject) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return C10907x9779850b.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return C10909x2e9544f2.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(FavoriteGroupRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10907x9779850b.createDetachedCopy((FavoriteGroupRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(FavoriteListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10909x2e9544f2.createDetachedCopy((FavoriteListRealmObject) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return cls.cast(C10907x9779850b.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return cls.cast(C10909x2e9544f2.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return cls.cast(C10907x9779850b.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return cls.cast(C10909x2e9544f2.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(2);
        hashMap.put(FavoriteGroupRealmObject.class, C10907x9779850b.getExpectedObjectSchemaInfo());
        hashMap.put(FavoriteListRealmObject.class, C10909x2e9544f2.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return C10907x9779850b.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return C10909x2e9544f2.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(FavoriteGroupRealmObject.class)) {
            C10907x9779850b.insert(realm, (FavoriteGroupRealmObject) realmModel, map);
        } else if (superclass.equals(FavoriteListRealmObject.class)) {
            C10909x2e9544f2.insert(realm, (FavoriteListRealmObject) realmModel, map);
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
            if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insert(realm, (FavoriteGroupRealmObject) realmModel, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insert(realm, (FavoriteListRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insert(realm, it, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(FavoriteGroupRealmObject.class)) {
            C10907x9779850b.insertOrUpdate(realm, (FavoriteGroupRealmObject) realmModel, map);
        } else if (superclass.equals(FavoriteListRealmObject.class)) {
            C10909x2e9544f2.insertOrUpdate(realm, (FavoriteListRealmObject) realmModel, map);
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
            if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insertOrUpdate(realm, (FavoriteGroupRealmObject) realmModel, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insertOrUpdate(realm, (FavoriteListRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insertOrUpdate(realm, it, hashMap);
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
            if (cls.equals(FavoriteGroupRealmObject.class)) {
                return cls.cast(new C10907x9779850b());
            }
            if (cls.equals(FavoriteListRealmObject.class)) {
                return cls.cast(new C10909x2e9544f2());
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

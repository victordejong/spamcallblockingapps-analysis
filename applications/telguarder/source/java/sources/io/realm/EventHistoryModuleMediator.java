package io.realm;

import android.util.JsonReader;
import com.telguarder.features.numberLookup.CachedHistoryListItem;
import io.realm.BaseRealm;
import io.realm.C2391xb02eee5e;
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
/* loaded from: classes2-dex2jar.jar:io/realm/EventHistoryModuleMediator.class */
class EventHistoryModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(1);
        hashSet.add(CachedHistoryListItem.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    EventHistoryModuleMediator() {
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(CachedHistoryListItem.class)) {
            return (E) superclass.cast(C2391xb02eee5e.copyOrUpdate(realm, (C2391xb02eee5e.CachedHistoryListItemColumnInfo) realm.getSchema().getColumnInfo(CachedHistoryListItem.class), (CachedHistoryListItem) e, z, map, set));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        checkClass(cls);
        if (cls.equals(CachedHistoryListItem.class)) {
            return C2391xb02eee5e.createColumnInfo(osSchemaInfo);
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(CachedHistoryListItem.class)) {
            return (E) superclass.cast(C2391xb02eee5e.createDetachedCopy((CachedHistoryListItem) e, 0, i, map));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        checkClass(cls);
        if (cls.equals(CachedHistoryListItem.class)) {
            return cls.cast(C2391xb02eee5e.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        checkClass(cls);
        if (cls.equals(CachedHistoryListItem.class)) {
            return cls.cast(C2391xb02eee5e.createUsingJsonStream(realm, jsonReader));
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(1);
        hashMap.put(CachedHistoryListItem.class, C2391xb02eee5e.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        checkClass(cls);
        if (cls.equals(CachedHistoryListItem.class)) {
            return C2391xb02eee5e.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<? super Object> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(CachedHistoryListItem.class)) {
            C2391xb02eee5e.insert(realm, (CachedHistoryListItem) realmModel, map);
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
            if (!superclass.equals(CachedHistoryListItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            C2391xb02eee5e.insert(realm, (CachedHistoryListItem) next, hashMap);
            if (!it.hasNext()) {
                return;
            }
            if (!superclass.equals(CachedHistoryListItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            C2391xb02eee5e.insert(realm, it, hashMap);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<? super Object> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(CachedHistoryListItem.class)) {
            C2391xb02eee5e.insertOrUpdate(realm, (CachedHistoryListItem) realmModel, map);
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
            if (!superclass.equals(CachedHistoryListItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            C2391xb02eee5e.insertOrUpdate(realm, (CachedHistoryListItem) next, hashMap);
            if (!it.hasNext()) {
                return;
            }
            if (!superclass.equals(CachedHistoryListItem.class)) {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            C2391xb02eee5e.insertOrUpdate(realm, it, hashMap);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> boolean isEmbedded(Class<E> cls) {
        if (cls.equals(CachedHistoryListItem.class)) {
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
            if (!cls.equals(CachedHistoryListItem.class)) {
                throw getMissingProxyClassException(cls);
            }
            return cls.cast(new C2391xb02eee5e());
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
        if (superclass.equals(CachedHistoryListItem.class)) {
            throw getNotEmbeddedClassException("com.telguarder.features.numberLookup.CachedHistoryListItem");
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }
}

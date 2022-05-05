package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import io.realm.BaseRealm;
import io.realm.C10911xd111c735;
import io.realm.C10915x74222849;
import io.realm.C10917x2535fbf0;
import io.realm.C10919xe17e147f;
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
/* loaded from: classes3-dex2jar.jar:io/realm/IapPlanRealmModuleMediator.class */
public class IapPlanRealmModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(4);
        hashSet.add(SkuDetailsRealmObject.class);
        hashSet.add(PlanFeatureRealmObject.class);
        hashSet.add(IapPlanRealmObject.class);
        hashSet.add(PlanProductRealmObject.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(SkuDetailsRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10919xe17e147f.copyOrUpdate(realm, (C10919xe17e147f.SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class), (SkuDetailsRealmObject) e, z, map, set)));
        }
        if (superclass.equals(PlanFeatureRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10915x74222849.copyOrUpdate(realm, (C10915x74222849.PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class), (PlanFeatureRealmObject) e, z, map, set)));
        }
        if (superclass.equals(IapPlanRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10911xd111c735.copyOrUpdate(realm, (C10911xd111c735.IapPlanRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapPlanRealmObject.class), (IapPlanRealmObject) e, z, map, set)));
        }
        if (superclass.equals(PlanProductRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10917x2535fbf0.copyOrUpdate(realm, (C10917x2535fbf0.PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class), (PlanProductRealmObject) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return C10919xe17e147f.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return C10915x74222849.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return C10911xd111c735.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return C10917x2535fbf0.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(SkuDetailsRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10919xe17e147f.createDetachedCopy((SkuDetailsRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(PlanFeatureRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10915x74222849.createDetachedCopy((PlanFeatureRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(IapPlanRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10911xd111c735.createDetachedCopy((IapPlanRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(PlanProductRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10917x2535fbf0.createDetachedCopy((PlanProductRealmObject) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return cls.cast(C10919xe17e147f.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return cls.cast(C10915x74222849.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return cls.cast(C10911xd111c735.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return cls.cast(C10917x2535fbf0.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return cls.cast(C10919xe17e147f.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return cls.cast(C10915x74222849.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return cls.cast(C10911xd111c735.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return cls.cast(C10917x2535fbf0.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(4);
        hashMap.put(SkuDetailsRealmObject.class, C10919xe17e147f.getExpectedObjectSchemaInfo());
        hashMap.put(PlanFeatureRealmObject.class, C10915x74222849.getExpectedObjectSchemaInfo());
        hashMap.put(IapPlanRealmObject.class, C10911xd111c735.getExpectedObjectSchemaInfo());
        hashMap.put(PlanProductRealmObject.class, C10917x2535fbf0.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return C10919xe17e147f.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return C10915x74222849.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return C10911xd111c735.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return C10917x2535fbf0.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(SkuDetailsRealmObject.class)) {
            C10919xe17e147f.insert(realm, (SkuDetailsRealmObject) realmModel, map);
        } else if (superclass.equals(PlanFeatureRealmObject.class)) {
            C10915x74222849.insert(realm, (PlanFeatureRealmObject) realmModel, map);
        } else if (superclass.equals(IapPlanRealmObject.class)) {
            C10911xd111c735.insert(realm, (IapPlanRealmObject) realmModel, map);
        } else if (superclass.equals(PlanProductRealmObject.class)) {
            C10917x2535fbf0.insert(realm, (PlanProductRealmObject) realmModel, map);
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
            if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insert(realm, (SkuDetailsRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insert(realm, (PlanFeatureRealmObject) realmModel, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insert(realm, (IapPlanRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insert(realm, (PlanProductRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insert(realm, it, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insert(realm, it, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insert(realm, it, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(SkuDetailsRealmObject.class)) {
            C10919xe17e147f.insertOrUpdate(realm, (SkuDetailsRealmObject) realmModel, map);
        } else if (superclass.equals(PlanFeatureRealmObject.class)) {
            C10915x74222849.insertOrUpdate(realm, (PlanFeatureRealmObject) realmModel, map);
        } else if (superclass.equals(IapPlanRealmObject.class)) {
            C10911xd111c735.insertOrUpdate(realm, (IapPlanRealmObject) realmModel, map);
        } else if (superclass.equals(PlanProductRealmObject.class)) {
            C10917x2535fbf0.insertOrUpdate(realm, (PlanProductRealmObject) realmModel, map);
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
            if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insertOrUpdate(realm, (SkuDetailsRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insertOrUpdate(realm, (PlanFeatureRealmObject) realmModel, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insertOrUpdate(realm, (IapPlanRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insertOrUpdate(realm, (PlanProductRealmObject) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insertOrUpdate(realm, it, hashMap);
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
            if (cls.equals(SkuDetailsRealmObject.class)) {
                return cls.cast(new C10919xe17e147f());
            }
            if (cls.equals(PlanFeatureRealmObject.class)) {
                return cls.cast(new C10915x74222849());
            }
            if (cls.equals(IapPlanRealmObject.class)) {
                return cls.cast(new C10911xd111c735());
            }
            if (cls.equals(PlanProductRealmObject.class)) {
                return cls.cast(new C10917x2535fbf0());
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

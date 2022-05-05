package io.realm;

import android.util.JsonReader;
import gogolook.callgogolook2.offline.offlinedb.CategMap;
import gogolook.callgogolook2.offline.offlinedb.OfflineDb;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV82;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV83;
import gogolook.callgogolook2.offline.offlinedb.SourceMap;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.SearchIndexRealmObject;
import gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject;
import gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
import gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import io.realm.BaseRealm;
import io.realm.C10899x377120b6;
import io.realm.C10901xf412e462;
import io.realm.C10903x8c0d1877;
import io.realm.C10905x7eab584e;
import io.realm.C10907x9779850b;
import io.realm.C10909x2e9544f2;
import io.realm.C10911xd111c735;
import io.realm.C10913xac2e9aad;
import io.realm.C10915x74222849;
import io.realm.C10917x2535fbf0;
import io.realm.C10919xe17e147f;
import io.realm.C10921x4fd3ceb5;
import io.realm.C10923xb8f4344e;
import io.realm.C10925xffa95e67;
import io.realm.C10927xb76e5e93;
import io.realm.C10929x7feca032;
import io.realm.C10931x96fcdba7;
import io.realm.C10933x35c35e1a;
import io.realm.C10935x3a81ab8e;
import io.realm.C10937xd77908c0;
import io.realm.C10939x685baeb0;
import io.realm.C10942x426b3945;
import io.realm.C10946xebf73ca0;
import io.realm.annotations.RealmModule;
import io.realm.gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy;
import io.realm.gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy;
import io.realm.gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy;
import io.realm.gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy;
import io.realm.gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy;
import io.realm.gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy;
import io.realm.gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy;
import io.realm.gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy;
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
/* loaded from: classes3-dex2jar.jar:io/realm/DefaultRealmModuleMediator.class */
public class DefaultRealmModuleMediator extends RealmProxyMediator {
    public static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    static {
        HashSet hashSet = new HashSet(31);
        hashSet.add(CategMap.class);
        hashSet.add(SourceMap.class);
        hashSet.add(OfflineBadgeRecordObj.class);
        hashSet.add(IapPlanRealmObject.class);
        hashSet.add(IapProductRealmObject.class);
        hashSet.add(PlanFeatureRealmObject.class);
        hashSet.add(PlanProductRealmObject.class);
        hashSet.add(SkuDetailsRealmObject.class);
        hashSet.add(SubscriptionStatusRealmObject.class);
        hashSet.add(PurchaseLogRealmObject.class);
        hashSet.add(ReportLogRealmObject.class);
        hashSet.add(BlockListRealmObject.class);
        hashSet.add(BlockLogRealmObject.class);
        hashSet.add(MmsBlockLogRealmObject.class);
        hashSet.add(FavoriteGroupRealmObject.class);
        hashSet.add(FavoriteListRealmObject.class);
        hashSet.add(VasMessageRealm.class);
        hashSet.add(NoteRealmObject.class);
        hashSet.add(MySpamRealmObject.class);
        hashSet.add(WhiteListRealmObject.class);
        hashSet.add(SmsUrlScanResultRealmObject.class);
        hashSet.add(TagRealmObject.class);
        hashSet.add(LogsGroupRealmObject.class);
        hashSet.add(ContactRealmObject.class);
        hashSet.add(CacheIndexRealmObject.class);
        hashSet.add(DialerIndexRealmObject.class);
        hashSet.add(NumberIndexRealmObject.class);
        hashSet.add(SearchIndexRealmObject.class);
        hashSet.add(OfflineDb.class);
        hashSet.add(OfflineDbV82.class);
        hashSet.add(OfflineDbV83.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(CategMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.CategMapColumnInfo) realm.getSchema().getColumnInfo(CategMap.class), (CategMap) e, z, map, set)));
        }
        if (superclass.equals(SourceMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.SourceMapColumnInfo) realm.getSchema().getColumnInfo(SourceMap.class), (SourceMap) e, z, map, set)));
        }
        if (superclass.equals(OfflineBadgeRecordObj.class)) {
            return (E) ((RealmModel) superclass.cast(C10942x426b3945.copyOrUpdate(realm, (C10942x426b3945.OfflineBadgeRecordObjColumnInfo) realm.getSchema().getColumnInfo(OfflineBadgeRecordObj.class), (OfflineBadgeRecordObj) e, z, map, set)));
        }
        if (superclass.equals(IapPlanRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10911xd111c735.copyOrUpdate(realm, (C10911xd111c735.IapPlanRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapPlanRealmObject.class), (IapPlanRealmObject) e, z, map, set)));
        }
        if (superclass.equals(IapProductRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10913xac2e9aad.copyOrUpdate(realm, (C10913xac2e9aad.IapProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapProductRealmObject.class), (IapProductRealmObject) e, z, map, set)));
        }
        if (superclass.equals(PlanFeatureRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10915x74222849.copyOrUpdate(realm, (C10915x74222849.PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class), (PlanFeatureRealmObject) e, z, map, set)));
        }
        if (superclass.equals(PlanProductRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10917x2535fbf0.copyOrUpdate(realm, (C10917x2535fbf0.PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class), (PlanProductRealmObject) e, z, map, set)));
        }
        if (superclass.equals(SkuDetailsRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10919xe17e147f.copyOrUpdate(realm, (C10919xe17e147f.SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class), (SkuDetailsRealmObject) e, z, map, set)));
        }
        if (superclass.equals(SubscriptionStatusRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10921x4fd3ceb5.copyOrUpdate(realm, (C10921x4fd3ceb5.SubscriptionStatusRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SubscriptionStatusRealmObject.class), (SubscriptionStatusRealmObject) e, z, map, set)));
        }
        if (superclass.equals(PurchaseLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10931x96fcdba7.copyOrUpdate(realm, (C10931x96fcdba7.PurchaseLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PurchaseLogRealmObject.class), (PurchaseLogRealmObject) e, z, map, set)));
        }
        if (superclass.equals(ReportLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10933x35c35e1a.copyOrUpdate(realm, (C10933x35c35e1a.ReportLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ReportLogRealmObject.class), (ReportLogRealmObject) e, z, map, set)));
        }
        if (superclass.equals(BlockListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10899x377120b6.copyOrUpdate(realm, (C10899x377120b6.BlockListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockListRealmObject.class), (BlockListRealmObject) e, z, map, set)));
        }
        if (superclass.equals(BlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10901xf412e462.copyOrUpdate(realm, (C10901xf412e462.BlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockLogRealmObject.class), (BlockLogRealmObject) e, z, map, set)));
        }
        if (superclass.equals(MmsBlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10903x8c0d1877.copyOrUpdate(realm, (C10903x8c0d1877.MmsBlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MmsBlockLogRealmObject.class), (MmsBlockLogRealmObject) e, z, map, set)));
        }
        if (superclass.equals(FavoriteGroupRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10907x9779850b.copyOrUpdate(realm, (C10907x9779850b.FavoriteGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class), (FavoriteGroupRealmObject) e, z, map, set)));
        }
        if (superclass.equals(FavoriteListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10909x2e9544f2.copyOrUpdate(realm, (C10909x2e9544f2.FavoriteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteListRealmObject.class), (FavoriteListRealmObject) e, z, map, set)));
        }
        if (superclass.equals(VasMessageRealm.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.VasMessageRealmColumnInfo) realm.getSchema().getColumnInfo(VasMessageRealm.class), (VasMessageRealm) e, z, map, set)));
        }
        if (superclass.equals(NoteRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.NoteRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NoteRealmObject.class), (NoteRealmObject) e, z, map, set)));
        }
        if (superclass.equals(MySpamRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10939x685baeb0.copyOrUpdate(realm, (C10939x685baeb0.MySpamRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MySpamRealmObject.class), (MySpamRealmObject) e, z, map, set)));
        }
        if (superclass.equals(WhiteListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10946xebf73ca0.copyOrUpdate(realm, (C10946xebf73ca0.WhiteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(WhiteListRealmObject.class), (WhiteListRealmObject) e, z, map, set)));
        }
        if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10937xd77908c0.copyOrUpdate(realm, (C10937xd77908c0.SmsUrlScanResultRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SmsUrlScanResultRealmObject.class), (SmsUrlScanResultRealmObject) e, z, map, set)));
        }
        if (superclass.equals(TagRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.TagRealmObjectColumnInfo) realm.getSchema().getColumnInfo(TagRealmObject.class), (TagRealmObject) e, z, map, set)));
        }
        if (superclass.equals(LogsGroupRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10935x3a81ab8e.copyOrUpdate(realm, (C10935x3a81ab8e.LogsGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(LogsGroupRealmObject.class), (LogsGroupRealmObject) e, z, map, set)));
        }
        if (superclass.equals(ContactRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10905x7eab584e.copyOrUpdate(realm, (C10905x7eab584e.ContactRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ContactRealmObject.class), (ContactRealmObject) e, z, map, set)));
        }
        if (superclass.equals(CacheIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10923xb8f4344e.copyOrUpdate(realm, (C10923xb8f4344e.CacheIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(CacheIndexRealmObject.class), (CacheIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(DialerIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10925xffa95e67.copyOrUpdate(realm, (C10925xffa95e67.DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class), (DialerIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(NumberIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10927xb76e5e93.copyOrUpdate(realm, (C10927xb76e5e93.NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class), (NumberIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(SearchIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10929x7feca032.copyOrUpdate(realm, (C10929x7feca032.SearchIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SearchIndexRealmObject.class), (SearchIndexRealmObject) e, z, map, set)));
        }
        if (superclass.equals(OfflineDb.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.OfflineDbColumnInfo) realm.getSchema().getColumnInfo(OfflineDb.class), (OfflineDb) e, z, map, set)));
        }
        if (superclass.equals(OfflineDbV82.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.OfflineDbV82ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV82.class), (OfflineDbV82) e, z, map, set)));
        }
        if (superclass.equals(OfflineDbV83.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.copyOrUpdate(realm, (gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.OfflineDbV83ColumnInfo) realm.getSchema().getColumnInfo(OfflineDbV83.class), (OfflineDbV83) e, z, map, set)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(CategMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SourceMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(OfflineBadgeRecordObj.class)) {
            return C10942x426b3945.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return C10911xd111c735.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(IapProductRealmObject.class)) {
            return C10913xac2e9aad.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return C10915x74222849.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return C10917x2535fbf0.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return C10919xe17e147f.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SubscriptionStatusRealmObject.class)) {
            return C10921x4fd3ceb5.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return C10931x96fcdba7.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ReportLogRealmObject.class)) {
            return C10933x35c35e1a.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BlockListRealmObject.class)) {
            return C10899x377120b6.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return C10901xf412e462.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return C10903x8c0d1877.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return C10907x9779850b.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return C10909x2e9544f2.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(VasMessageRealm.class)) {
            return gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(NoteRealmObject.class)) {
            return gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(MySpamRealmObject.class)) {
            return C10939x685baeb0.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(WhiteListRealmObject.class)) {
            return C10946xebf73ca0.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SmsUrlScanResultRealmObject.class)) {
            return C10937xd77908c0.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(TagRealmObject.class)) {
            return gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LogsGroupRealmObject.class)) {
            return C10935x3a81ab8e.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ContactRealmObject.class)) {
            return C10905x7eab584e.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return C10923xb8f4344e.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(DialerIndexRealmObject.class)) {
            return C10925xffa95e67.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return C10927xb76e5e93.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return C10929x7feca032.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(OfflineDb.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(OfflineDbV82.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(OfflineDbV83.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(CategMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createDetachedCopy((CategMap) e, 0, i, map)));
        }
        if (superclass.equals(SourceMap.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createDetachedCopy((SourceMap) e, 0, i, map)));
        }
        if (superclass.equals(OfflineBadgeRecordObj.class)) {
            return (E) ((RealmModel) superclass.cast(C10942x426b3945.createDetachedCopy((OfflineBadgeRecordObj) e, 0, i, map)));
        }
        if (superclass.equals(IapPlanRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10911xd111c735.createDetachedCopy((IapPlanRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(IapProductRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10913xac2e9aad.createDetachedCopy((IapProductRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(PlanFeatureRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10915x74222849.createDetachedCopy((PlanFeatureRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(PlanProductRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10917x2535fbf0.createDetachedCopy((PlanProductRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(SkuDetailsRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10919xe17e147f.createDetachedCopy((SkuDetailsRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(SubscriptionStatusRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10921x4fd3ceb5.createDetachedCopy((SubscriptionStatusRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(PurchaseLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10931x96fcdba7.createDetachedCopy((PurchaseLogRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(ReportLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10933x35c35e1a.createDetachedCopy((ReportLogRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(BlockListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10899x377120b6.createDetachedCopy((BlockListRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(BlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10901xf412e462.createDetachedCopy((BlockLogRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(MmsBlockLogRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10903x8c0d1877.createDetachedCopy((MmsBlockLogRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(FavoriteGroupRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10907x9779850b.createDetachedCopy((FavoriteGroupRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(FavoriteListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10909x2e9544f2.createDetachedCopy((FavoriteListRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(VasMessageRealm.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.createDetachedCopy((VasMessageRealm) e, 0, i, map)));
        }
        if (superclass.equals(NoteRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.createDetachedCopy((NoteRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(MySpamRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10939x685baeb0.createDetachedCopy((MySpamRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(WhiteListRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10946xebf73ca0.createDetachedCopy((WhiteListRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10937xd77908c0.createDetachedCopy((SmsUrlScanResultRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(TagRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.createDetachedCopy((TagRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(LogsGroupRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10935x3a81ab8e.createDetachedCopy((LogsGroupRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(ContactRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10905x7eab584e.createDetachedCopy((ContactRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(CacheIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10923xb8f4344e.createDetachedCopy((CacheIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(DialerIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10925xffa95e67.createDetachedCopy((DialerIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(NumberIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10927xb76e5e93.createDetachedCopy((NumberIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(SearchIndexRealmObject.class)) {
            return (E) ((RealmModel) superclass.cast(C10929x7feca032.createDetachedCopy((SearchIndexRealmObject) e, 0, i, map)));
        }
        if (superclass.equals(OfflineDb.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.createDetachedCopy((OfflineDb) e, 0, i, map)));
        }
        if (superclass.equals(OfflineDbV82.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.createDetachedCopy((OfflineDbV82) e, 0, i, map)));
        }
        if (superclass.equals(OfflineDbV83.class)) {
            return (E) ((RealmModel) superclass.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createDetachedCopy((OfflineDbV83) e, 0, i, map)));
        }
        throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(CategMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SourceMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(OfflineBadgeRecordObj.class)) {
            return cls.cast(C10942x426b3945.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return cls.cast(C10911xd111c735.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(IapProductRealmObject.class)) {
            return cls.cast(C10913xac2e9aad.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return cls.cast(C10915x74222849.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return cls.cast(C10917x2535fbf0.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return cls.cast(C10919xe17e147f.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SubscriptionStatusRealmObject.class)) {
            return cls.cast(C10921x4fd3ceb5.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return cls.cast(C10931x96fcdba7.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(ReportLogRealmObject.class)) {
            return cls.cast(C10933x35c35e1a.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(BlockListRealmObject.class)) {
            return cls.cast(C10899x377120b6.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return cls.cast(C10901xf412e462.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return cls.cast(C10903x8c0d1877.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return cls.cast(C10907x9779850b.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return cls.cast(C10909x2e9544f2.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(VasMessageRealm.class)) {
            return cls.cast(gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(NoteRealmObject.class)) {
            return cls.cast(gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(MySpamRealmObject.class)) {
            return cls.cast(C10939x685baeb0.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(WhiteListRealmObject.class)) {
            return cls.cast(C10946xebf73ca0.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SmsUrlScanResultRealmObject.class)) {
            return cls.cast(C10937xd77908c0.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(TagRealmObject.class)) {
            return cls.cast(gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(LogsGroupRealmObject.class)) {
            return cls.cast(C10935x3a81ab8e.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(ContactRealmObject.class)) {
            return cls.cast(C10905x7eab584e.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return cls.cast(C10923xb8f4344e.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(DialerIndexRealmObject.class)) {
            return cls.cast(C10925xffa95e67.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return cls.cast(C10927xb76e5e93.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return cls.cast(C10929x7feca032.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(OfflineDb.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(OfflineDbV82.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(OfflineDbV83.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(CategMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SourceMap.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(OfflineBadgeRecordObj.class)) {
            return cls.cast(C10942x426b3945.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return cls.cast(C10911xd111c735.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(IapProductRealmObject.class)) {
            return cls.cast(C10913xac2e9aad.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return cls.cast(C10915x74222849.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return cls.cast(C10917x2535fbf0.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return cls.cast(C10919xe17e147f.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SubscriptionStatusRealmObject.class)) {
            return cls.cast(C10921x4fd3ceb5.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return cls.cast(C10931x96fcdba7.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(ReportLogRealmObject.class)) {
            return cls.cast(C10933x35c35e1a.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(BlockListRealmObject.class)) {
            return cls.cast(C10899x377120b6.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return cls.cast(C10901xf412e462.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return cls.cast(C10903x8c0d1877.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return cls.cast(C10907x9779850b.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return cls.cast(C10909x2e9544f2.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(VasMessageRealm.class)) {
            return cls.cast(gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(NoteRealmObject.class)) {
            return cls.cast(gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(MySpamRealmObject.class)) {
            return cls.cast(C10939x685baeb0.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(WhiteListRealmObject.class)) {
            return cls.cast(C10946xebf73ca0.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SmsUrlScanResultRealmObject.class)) {
            return cls.cast(C10937xd77908c0.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(TagRealmObject.class)) {
            return cls.cast(gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(LogsGroupRealmObject.class)) {
            return cls.cast(C10935x3a81ab8e.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(ContactRealmObject.class)) {
            return cls.cast(C10905x7eab584e.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return cls.cast(C10923xb8f4344e.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(DialerIndexRealmObject.class)) {
            return cls.cast(C10925xffa95e67.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return cls.cast(C10927xb76e5e93.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return cls.cast(C10929x7feca032.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(OfflineDb.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(OfflineDbV82.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(OfflineDbV83.class)) {
            return cls.cast(gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(31);
        hashMap.put(CategMap.class, gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(SourceMap.class, gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(OfflineBadgeRecordObj.class, C10942x426b3945.getExpectedObjectSchemaInfo());
        hashMap.put(IapPlanRealmObject.class, C10911xd111c735.getExpectedObjectSchemaInfo());
        hashMap.put(IapProductRealmObject.class, C10913xac2e9aad.getExpectedObjectSchemaInfo());
        hashMap.put(PlanFeatureRealmObject.class, C10915x74222849.getExpectedObjectSchemaInfo());
        hashMap.put(PlanProductRealmObject.class, C10917x2535fbf0.getExpectedObjectSchemaInfo());
        hashMap.put(SkuDetailsRealmObject.class, C10919xe17e147f.getExpectedObjectSchemaInfo());
        hashMap.put(SubscriptionStatusRealmObject.class, C10921x4fd3ceb5.getExpectedObjectSchemaInfo());
        hashMap.put(PurchaseLogRealmObject.class, C10931x96fcdba7.getExpectedObjectSchemaInfo());
        hashMap.put(ReportLogRealmObject.class, C10933x35c35e1a.getExpectedObjectSchemaInfo());
        hashMap.put(BlockListRealmObject.class, C10899x377120b6.getExpectedObjectSchemaInfo());
        hashMap.put(BlockLogRealmObject.class, C10901xf412e462.getExpectedObjectSchemaInfo());
        hashMap.put(MmsBlockLogRealmObject.class, C10903x8c0d1877.getExpectedObjectSchemaInfo());
        hashMap.put(FavoriteGroupRealmObject.class, C10907x9779850b.getExpectedObjectSchemaInfo());
        hashMap.put(FavoriteListRealmObject.class, C10909x2e9544f2.getExpectedObjectSchemaInfo());
        hashMap.put(VasMessageRealm.class, gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(NoteRealmObject.class, gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(MySpamRealmObject.class, C10939x685baeb0.getExpectedObjectSchemaInfo());
        hashMap.put(WhiteListRealmObject.class, C10946xebf73ca0.getExpectedObjectSchemaInfo());
        hashMap.put(SmsUrlScanResultRealmObject.class, C10937xd77908c0.getExpectedObjectSchemaInfo());
        hashMap.put(TagRealmObject.class, gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LogsGroupRealmObject.class, C10935x3a81ab8e.getExpectedObjectSchemaInfo());
        hashMap.put(ContactRealmObject.class, C10905x7eab584e.getExpectedObjectSchemaInfo());
        hashMap.put(CacheIndexRealmObject.class, C10923xb8f4344e.getExpectedObjectSchemaInfo());
        hashMap.put(DialerIndexRealmObject.class, C10925xffa95e67.getExpectedObjectSchemaInfo());
        hashMap.put(NumberIndexRealmObject.class, C10927xb76e5e93.getExpectedObjectSchemaInfo());
        hashMap.put(SearchIndexRealmObject.class, C10929x7feca032.getExpectedObjectSchemaInfo());
        hashMap.put(OfflineDb.class, gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(OfflineDbV82.class, gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(OfflineDbV83.class, gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        RealmProxyMediator.checkClass(cls);
        if (cls.equals(CategMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SourceMap.class)) {
            return gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(OfflineBadgeRecordObj.class)) {
            return C10942x426b3945.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(IapPlanRealmObject.class)) {
            return C10911xd111c735.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(IapProductRealmObject.class)) {
            return C10913xac2e9aad.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PlanFeatureRealmObject.class)) {
            return C10915x74222849.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PlanProductRealmObject.class)) {
            return C10917x2535fbf0.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SkuDetailsRealmObject.class)) {
            return C10919xe17e147f.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SubscriptionStatusRealmObject.class)) {
            return C10921x4fd3ceb5.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PurchaseLogRealmObject.class)) {
            return C10931x96fcdba7.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(ReportLogRealmObject.class)) {
            return C10933x35c35e1a.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(BlockListRealmObject.class)) {
            return C10899x377120b6.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(BlockLogRealmObject.class)) {
            return C10901xf412e462.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(MmsBlockLogRealmObject.class)) {
            return C10903x8c0d1877.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(FavoriteGroupRealmObject.class)) {
            return C10907x9779850b.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(FavoriteListRealmObject.class)) {
            return C10909x2e9544f2.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(VasMessageRealm.class)) {
            return gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(NoteRealmObject.class)) {
            return gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(MySpamRealmObject.class)) {
            return C10939x685baeb0.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(WhiteListRealmObject.class)) {
            return C10946xebf73ca0.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SmsUrlScanResultRealmObject.class)) {
            return C10937xd77908c0.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(TagRealmObject.class)) {
            return gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(LogsGroupRealmObject.class)) {
            return C10935x3a81ab8e.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(ContactRealmObject.class)) {
            return C10905x7eab584e.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(CacheIndexRealmObject.class)) {
            return C10923xb8f4344e.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(DialerIndexRealmObject.class)) {
            return C10925xffa95e67.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(NumberIndexRealmObject.class)) {
            return C10927xb76e5e93.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SearchIndexRealmObject.class)) {
            return C10929x7feca032.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(OfflineDb.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(OfflineDbV82.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(OfflineDbV83.class)) {
            return gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw RealmProxyMediator.getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(CategMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insert(realm, (CategMap) realmModel, map);
        } else if (superclass.equals(SourceMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insert(realm, (SourceMap) realmModel, map);
        } else if (superclass.equals(OfflineBadgeRecordObj.class)) {
            C10942x426b3945.insert(realm, (OfflineBadgeRecordObj) realmModel, map);
        } else if (superclass.equals(IapPlanRealmObject.class)) {
            C10911xd111c735.insert(realm, (IapPlanRealmObject) realmModel, map);
        } else if (superclass.equals(IapProductRealmObject.class)) {
            C10913xac2e9aad.insert(realm, (IapProductRealmObject) realmModel, map);
        } else if (superclass.equals(PlanFeatureRealmObject.class)) {
            C10915x74222849.insert(realm, (PlanFeatureRealmObject) realmModel, map);
        } else if (superclass.equals(PlanProductRealmObject.class)) {
            C10917x2535fbf0.insert(realm, (PlanProductRealmObject) realmModel, map);
        } else if (superclass.equals(SkuDetailsRealmObject.class)) {
            C10919xe17e147f.insert(realm, (SkuDetailsRealmObject) realmModel, map);
        } else if (superclass.equals(SubscriptionStatusRealmObject.class)) {
            C10921x4fd3ceb5.insert(realm, (SubscriptionStatusRealmObject) realmModel, map);
        } else if (superclass.equals(PurchaseLogRealmObject.class)) {
            C10931x96fcdba7.insert(realm, (PurchaseLogRealmObject) realmModel, map);
        } else if (superclass.equals(ReportLogRealmObject.class)) {
            C10933x35c35e1a.insert(realm, (ReportLogRealmObject) realmModel, map);
        } else if (superclass.equals(BlockListRealmObject.class)) {
            C10899x377120b6.insert(realm, (BlockListRealmObject) realmModel, map);
        } else if (superclass.equals(BlockLogRealmObject.class)) {
            C10901xf412e462.insert(realm, (BlockLogRealmObject) realmModel, map);
        } else if (superclass.equals(MmsBlockLogRealmObject.class)) {
            C10903x8c0d1877.insert(realm, (MmsBlockLogRealmObject) realmModel, map);
        } else if (superclass.equals(FavoriteGroupRealmObject.class)) {
            C10907x9779850b.insert(realm, (FavoriteGroupRealmObject) realmModel, map);
        } else if (superclass.equals(FavoriteListRealmObject.class)) {
            C10909x2e9544f2.insert(realm, (FavoriteListRealmObject) realmModel, map);
        } else if (superclass.equals(VasMessageRealm.class)) {
            gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insert(realm, (VasMessageRealm) realmModel, map);
        } else if (superclass.equals(NoteRealmObject.class)) {
            gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insert(realm, (NoteRealmObject) realmModel, map);
        } else if (superclass.equals(MySpamRealmObject.class)) {
            C10939x685baeb0.insert(realm, (MySpamRealmObject) realmModel, map);
        } else if (superclass.equals(WhiteListRealmObject.class)) {
            C10946xebf73ca0.insert(realm, (WhiteListRealmObject) realmModel, map);
        } else if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
            C10937xd77908c0.insert(realm, (SmsUrlScanResultRealmObject) realmModel, map);
        } else if (superclass.equals(TagRealmObject.class)) {
            gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insert(realm, (TagRealmObject) realmModel, map);
        } else if (superclass.equals(LogsGroupRealmObject.class)) {
            C10935x3a81ab8e.insert(realm, (LogsGroupRealmObject) realmModel, map);
        } else if (superclass.equals(ContactRealmObject.class)) {
            C10905x7eab584e.insert(realm, (ContactRealmObject) realmModel, map);
        } else if (superclass.equals(CacheIndexRealmObject.class)) {
            C10923xb8f4344e.insert(realm, (CacheIndexRealmObject) realmModel, map);
        } else if (superclass.equals(DialerIndexRealmObject.class)) {
            C10925xffa95e67.insert(realm, (DialerIndexRealmObject) realmModel, map);
        } else if (superclass.equals(NumberIndexRealmObject.class)) {
            C10927xb76e5e93.insert(realm, (NumberIndexRealmObject) realmModel, map);
        } else if (superclass.equals(SearchIndexRealmObject.class)) {
            C10929x7feca032.insert(realm, (SearchIndexRealmObject) realmModel, map);
        } else if (superclass.equals(OfflineDb.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.insert(realm, (OfflineDb) realmModel, map);
        } else if (superclass.equals(OfflineDbV82.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.insert(realm, (OfflineDbV82) realmModel, map);
        } else if (superclass.equals(OfflineDbV83.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insert(realm, (OfflineDbV83) realmModel, map);
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
            if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insert(realm, (CategMap) realmModel, hashMap);
            } else if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insert(realm, (SourceMap) realmModel, hashMap);
            } else if (superclass.equals(OfflineBadgeRecordObj.class)) {
                C10942x426b3945.insert(realm, (OfflineBadgeRecordObj) realmModel, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insert(realm, (IapPlanRealmObject) realmModel, hashMap);
            } else if (superclass.equals(IapProductRealmObject.class)) {
                C10913xac2e9aad.insert(realm, (IapProductRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insert(realm, (PlanFeatureRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insert(realm, (PlanProductRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insert(realm, (SkuDetailsRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SubscriptionStatusRealmObject.class)) {
                C10921x4fd3ceb5.insert(realm, (SubscriptionStatusRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insert(realm, (PurchaseLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insert(realm, (ReportLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(BlockListRealmObject.class)) {
                C10899x377120b6.insert(realm, (BlockListRealmObject) realmModel, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insert(realm, (BlockLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insert(realm, (MmsBlockLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insert(realm, (FavoriteGroupRealmObject) realmModel, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insert(realm, (FavoriteListRealmObject) realmModel, hashMap);
            } else if (superclass.equals(VasMessageRealm.class)) {
                gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insert(realm, (VasMessageRealm) realmModel, hashMap);
            } else if (superclass.equals(NoteRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insert(realm, (NoteRealmObject) realmModel, hashMap);
            } else if (superclass.equals(MySpamRealmObject.class)) {
                C10939x685baeb0.insert(realm, (MySpamRealmObject) realmModel, hashMap);
            } else if (superclass.equals(WhiteListRealmObject.class)) {
                C10946xebf73ca0.insert(realm, (WhiteListRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
                C10937xd77908c0.insert(realm, (SmsUrlScanResultRealmObject) realmModel, hashMap);
            } else if (superclass.equals(TagRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insert(realm, (TagRealmObject) realmModel, hashMap);
            } else if (superclass.equals(LogsGroupRealmObject.class)) {
                C10935x3a81ab8e.insert(realm, (LogsGroupRealmObject) realmModel, hashMap);
            } else if (superclass.equals(ContactRealmObject.class)) {
                C10905x7eab584e.insert(realm, (ContactRealmObject) realmModel, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insert(realm, (CacheIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insert(realm, (DialerIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insert(realm, (NumberIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insert(realm, (SearchIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(OfflineDb.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.insert(realm, (OfflineDb) realmModel, hashMap);
            } else if (superclass.equals(OfflineDbV82.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.insert(realm, (OfflineDbV82) realmModel, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insert(realm, (OfflineDbV83) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(OfflineBadgeRecordObj.class)) {
                C10942x426b3945.insert(realm, it, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insert(realm, it, hashMap);
            } else if (superclass.equals(IapProductRealmObject.class)) {
                C10913xac2e9aad.insert(realm, it, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insert(realm, it, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insert(realm, it, hashMap);
            } else if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insert(realm, it, hashMap);
            } else if (superclass.equals(SubscriptionStatusRealmObject.class)) {
                C10921x4fd3ceb5.insert(realm, it, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insert(realm, it, hashMap);
            } else if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insert(realm, it, hashMap);
            } else if (superclass.equals(BlockListRealmObject.class)) {
                C10899x377120b6.insert(realm, it, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insert(realm, it, hashMap);
            } else if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insert(realm, it, hashMap);
            } else if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insert(realm, it, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insert(realm, it, hashMap);
            } else if (superclass.equals(VasMessageRealm.class)) {
                gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(NoteRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(MySpamRealmObject.class)) {
                C10939x685baeb0.insert(realm, it, hashMap);
            } else if (superclass.equals(WhiteListRealmObject.class)) {
                C10946xebf73ca0.insert(realm, it, hashMap);
            } else if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
                C10937xd77908c0.insert(realm, it, hashMap);
            } else if (superclass.equals(TagRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(LogsGroupRealmObject.class)) {
                C10935x3a81ab8e.insert(realm, it, hashMap);
            } else if (superclass.equals(ContactRealmObject.class)) {
                C10905x7eab584e.insert(realm, it, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insert(realm, it, hashMap);
            } else if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insert(realm, it, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insert(realm, it, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insert(realm, it, hashMap);
            } else if (superclass.equals(OfflineDb.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(OfflineDbV82.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insert(realm, it, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(CategMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insertOrUpdate(realm, (CategMap) realmModel, map);
        } else if (superclass.equals(SourceMap.class)) {
            gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insertOrUpdate(realm, (SourceMap) realmModel, map);
        } else if (superclass.equals(OfflineBadgeRecordObj.class)) {
            C10942x426b3945.insertOrUpdate(realm, (OfflineBadgeRecordObj) realmModel, map);
        } else if (superclass.equals(IapPlanRealmObject.class)) {
            C10911xd111c735.insertOrUpdate(realm, (IapPlanRealmObject) realmModel, map);
        } else if (superclass.equals(IapProductRealmObject.class)) {
            C10913xac2e9aad.insertOrUpdate(realm, (IapProductRealmObject) realmModel, map);
        } else if (superclass.equals(PlanFeatureRealmObject.class)) {
            C10915x74222849.insertOrUpdate(realm, (PlanFeatureRealmObject) realmModel, map);
        } else if (superclass.equals(PlanProductRealmObject.class)) {
            C10917x2535fbf0.insertOrUpdate(realm, (PlanProductRealmObject) realmModel, map);
        } else if (superclass.equals(SkuDetailsRealmObject.class)) {
            C10919xe17e147f.insertOrUpdate(realm, (SkuDetailsRealmObject) realmModel, map);
        } else if (superclass.equals(SubscriptionStatusRealmObject.class)) {
            C10921x4fd3ceb5.insertOrUpdate(realm, (SubscriptionStatusRealmObject) realmModel, map);
        } else if (superclass.equals(PurchaseLogRealmObject.class)) {
            C10931x96fcdba7.insertOrUpdate(realm, (PurchaseLogRealmObject) realmModel, map);
        } else if (superclass.equals(ReportLogRealmObject.class)) {
            C10933x35c35e1a.insertOrUpdate(realm, (ReportLogRealmObject) realmModel, map);
        } else if (superclass.equals(BlockListRealmObject.class)) {
            C10899x377120b6.insertOrUpdate(realm, (BlockListRealmObject) realmModel, map);
        } else if (superclass.equals(BlockLogRealmObject.class)) {
            C10901xf412e462.insertOrUpdate(realm, (BlockLogRealmObject) realmModel, map);
        } else if (superclass.equals(MmsBlockLogRealmObject.class)) {
            C10903x8c0d1877.insertOrUpdate(realm, (MmsBlockLogRealmObject) realmModel, map);
        } else if (superclass.equals(FavoriteGroupRealmObject.class)) {
            C10907x9779850b.insertOrUpdate(realm, (FavoriteGroupRealmObject) realmModel, map);
        } else if (superclass.equals(FavoriteListRealmObject.class)) {
            C10909x2e9544f2.insertOrUpdate(realm, (FavoriteListRealmObject) realmModel, map);
        } else if (superclass.equals(VasMessageRealm.class)) {
            gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insertOrUpdate(realm, (VasMessageRealm) realmModel, map);
        } else if (superclass.equals(NoteRealmObject.class)) {
            gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insertOrUpdate(realm, (NoteRealmObject) realmModel, map);
        } else if (superclass.equals(MySpamRealmObject.class)) {
            C10939x685baeb0.insertOrUpdate(realm, (MySpamRealmObject) realmModel, map);
        } else if (superclass.equals(WhiteListRealmObject.class)) {
            C10946xebf73ca0.insertOrUpdate(realm, (WhiteListRealmObject) realmModel, map);
        } else if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
            C10937xd77908c0.insertOrUpdate(realm, (SmsUrlScanResultRealmObject) realmModel, map);
        } else if (superclass.equals(TagRealmObject.class)) {
            gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insertOrUpdate(realm, (TagRealmObject) realmModel, map);
        } else if (superclass.equals(LogsGroupRealmObject.class)) {
            C10935x3a81ab8e.insertOrUpdate(realm, (LogsGroupRealmObject) realmModel, map);
        } else if (superclass.equals(ContactRealmObject.class)) {
            C10905x7eab584e.insertOrUpdate(realm, (ContactRealmObject) realmModel, map);
        } else if (superclass.equals(CacheIndexRealmObject.class)) {
            C10923xb8f4344e.insertOrUpdate(realm, (CacheIndexRealmObject) realmModel, map);
        } else if (superclass.equals(DialerIndexRealmObject.class)) {
            C10925xffa95e67.insertOrUpdate(realm, (DialerIndexRealmObject) realmModel, map);
        } else if (superclass.equals(NumberIndexRealmObject.class)) {
            C10927xb76e5e93.insertOrUpdate(realm, (NumberIndexRealmObject) realmModel, map);
        } else if (superclass.equals(SearchIndexRealmObject.class)) {
            C10929x7feca032.insertOrUpdate(realm, (SearchIndexRealmObject) realmModel, map);
        } else if (superclass.equals(OfflineDb.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.insertOrUpdate(realm, (OfflineDb) realmModel, map);
        } else if (superclass.equals(OfflineDbV82.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.insertOrUpdate(realm, (OfflineDbV82) realmModel, map);
        } else if (superclass.equals(OfflineDbV83.class)) {
            gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insertOrUpdate(realm, (OfflineDbV83) realmModel, map);
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
            if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insertOrUpdate(realm, (CategMap) realmModel, hashMap);
            } else if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insertOrUpdate(realm, (SourceMap) realmModel, hashMap);
            } else if (superclass.equals(OfflineBadgeRecordObj.class)) {
                C10942x426b3945.insertOrUpdate(realm, (OfflineBadgeRecordObj) realmModel, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insertOrUpdate(realm, (IapPlanRealmObject) realmModel, hashMap);
            } else if (superclass.equals(IapProductRealmObject.class)) {
                C10913xac2e9aad.insertOrUpdate(realm, (IapProductRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insertOrUpdate(realm, (PlanFeatureRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insertOrUpdate(realm, (PlanProductRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insertOrUpdate(realm, (SkuDetailsRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SubscriptionStatusRealmObject.class)) {
                C10921x4fd3ceb5.insertOrUpdate(realm, (SubscriptionStatusRealmObject) realmModel, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insertOrUpdate(realm, (PurchaseLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insertOrUpdate(realm, (ReportLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(BlockListRealmObject.class)) {
                C10899x377120b6.insertOrUpdate(realm, (BlockListRealmObject) realmModel, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insertOrUpdate(realm, (BlockLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insertOrUpdate(realm, (MmsBlockLogRealmObject) realmModel, hashMap);
            } else if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insertOrUpdate(realm, (FavoriteGroupRealmObject) realmModel, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insertOrUpdate(realm, (FavoriteListRealmObject) realmModel, hashMap);
            } else if (superclass.equals(VasMessageRealm.class)) {
                gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insertOrUpdate(realm, (VasMessageRealm) realmModel, hashMap);
            } else if (superclass.equals(NoteRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insertOrUpdate(realm, (NoteRealmObject) realmModel, hashMap);
            } else if (superclass.equals(MySpamRealmObject.class)) {
                C10939x685baeb0.insertOrUpdate(realm, (MySpamRealmObject) realmModel, hashMap);
            } else if (superclass.equals(WhiteListRealmObject.class)) {
                C10946xebf73ca0.insertOrUpdate(realm, (WhiteListRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
                C10937xd77908c0.insertOrUpdate(realm, (SmsUrlScanResultRealmObject) realmModel, hashMap);
            } else if (superclass.equals(TagRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insertOrUpdate(realm, (TagRealmObject) realmModel, hashMap);
            } else if (superclass.equals(LogsGroupRealmObject.class)) {
                C10935x3a81ab8e.insertOrUpdate(realm, (LogsGroupRealmObject) realmModel, hashMap);
            } else if (superclass.equals(ContactRealmObject.class)) {
                C10905x7eab584e.insertOrUpdate(realm, (ContactRealmObject) realmModel, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insertOrUpdate(realm, (CacheIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insertOrUpdate(realm, (DialerIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insertOrUpdate(realm, (NumberIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insertOrUpdate(realm, (SearchIndexRealmObject) realmModel, hashMap);
            } else if (superclass.equals(OfflineDb.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.insertOrUpdate(realm, (OfflineDb) realmModel, hashMap);
            } else if (superclass.equals(OfflineDbV82.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.insertOrUpdate(realm, (OfflineDbV82) realmModel, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insertOrUpdate(realm, (OfflineDbV83) realmModel, hashMap);
            } else {
                throw RealmProxyMediator.getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(CategMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SourceMap.class)) {
                gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(OfflineBadgeRecordObj.class)) {
                C10942x426b3945.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(IapPlanRealmObject.class)) {
                C10911xd111c735.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(IapProductRealmObject.class)) {
                C10913xac2e9aad.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PlanFeatureRealmObject.class)) {
                C10915x74222849.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PlanProductRealmObject.class)) {
                C10917x2535fbf0.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SkuDetailsRealmObject.class)) {
                C10919xe17e147f.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SubscriptionStatusRealmObject.class)) {
                C10921x4fd3ceb5.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PurchaseLogRealmObject.class)) {
                C10931x96fcdba7.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(ReportLogRealmObject.class)) {
                C10933x35c35e1a.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(BlockListRealmObject.class)) {
                C10899x377120b6.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(BlockLogRealmObject.class)) {
                C10901xf412e462.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(MmsBlockLogRealmObject.class)) {
                C10903x8c0d1877.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(FavoriteGroupRealmObject.class)) {
                C10907x9779850b.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(FavoriteListRealmObject.class)) {
                C10909x2e9544f2.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(VasMessageRealm.class)) {
                gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(NoteRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(MySpamRealmObject.class)) {
                C10939x685baeb0.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(WhiteListRealmObject.class)) {
                C10946xebf73ca0.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SmsUrlScanResultRealmObject.class)) {
                C10937xd77908c0.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(TagRealmObject.class)) {
                gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(LogsGroupRealmObject.class)) {
                C10935x3a81ab8e.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(ContactRealmObject.class)) {
                C10905x7eab584e.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CacheIndexRealmObject.class)) {
                C10923xb8f4344e.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(DialerIndexRealmObject.class)) {
                C10925xffa95e67.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(NumberIndexRealmObject.class)) {
                C10927xb76e5e93.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SearchIndexRealmObject.class)) {
                C10929x7feca032.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(OfflineDb.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(OfflineDbV82.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(OfflineDbV83.class)) {
                gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy.insertOrUpdate(realm, it, hashMap);
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
            if (cls.equals(CategMap.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_CategMapRealmProxy());
            }
            if (cls.equals(SourceMap.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy());
            }
            if (cls.equals(OfflineBadgeRecordObj.class)) {
                return cls.cast(new C10942x426b3945());
            }
            if (cls.equals(IapPlanRealmObject.class)) {
                return cls.cast(new C10911xd111c735());
            }
            if (cls.equals(IapProductRealmObject.class)) {
                return cls.cast(new C10913xac2e9aad());
            }
            if (cls.equals(PlanFeatureRealmObject.class)) {
                return cls.cast(new C10915x74222849());
            }
            if (cls.equals(PlanProductRealmObject.class)) {
                return cls.cast(new C10917x2535fbf0());
            }
            if (cls.equals(SkuDetailsRealmObject.class)) {
                return cls.cast(new C10919xe17e147f());
            }
            if (cls.equals(SubscriptionStatusRealmObject.class)) {
                return cls.cast(new C10921x4fd3ceb5());
            }
            if (cls.equals(PurchaseLogRealmObject.class)) {
                return cls.cast(new C10931x96fcdba7());
            }
            if (cls.equals(ReportLogRealmObject.class)) {
                return cls.cast(new C10933x35c35e1a());
            }
            if (cls.equals(BlockListRealmObject.class)) {
                return cls.cast(new C10899x377120b6());
            }
            if (cls.equals(BlockLogRealmObject.class)) {
                return cls.cast(new C10901xf412e462());
            }
            if (cls.equals(MmsBlockLogRealmObject.class)) {
                return cls.cast(new C10903x8c0d1877());
            }
            if (cls.equals(FavoriteGroupRealmObject.class)) {
                return cls.cast(new C10907x9779850b());
            }
            if (cls.equals(FavoriteListRealmObject.class)) {
                return cls.cast(new C10909x2e9544f2());
            }
            if (cls.equals(VasMessageRealm.class)) {
                return cls.cast(new gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy());
            }
            if (cls.equals(NoteRealmObject.class)) {
                return cls.cast(new gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy());
            }
            if (cls.equals(MySpamRealmObject.class)) {
                return cls.cast(new C10939x685baeb0());
            }
            if (cls.equals(WhiteListRealmObject.class)) {
                return cls.cast(new C10946xebf73ca0());
            }
            if (cls.equals(SmsUrlScanResultRealmObject.class)) {
                return cls.cast(new C10937xd77908c0());
            }
            if (cls.equals(TagRealmObject.class)) {
                return cls.cast(new gogolook_callgogolook2_realm_obj_tag_TagRealmObjectRealmProxy());
            }
            if (cls.equals(LogsGroupRealmObject.class)) {
                return cls.cast(new C10935x3a81ab8e());
            }
            if (cls.equals(ContactRealmObject.class)) {
                return cls.cast(new C10905x7eab584e());
            }
            if (cls.equals(CacheIndexRealmObject.class)) {
                return cls.cast(new C10923xb8f4344e());
            }
            if (cls.equals(DialerIndexRealmObject.class)) {
                return cls.cast(new C10925xffa95e67());
            }
            if (cls.equals(NumberIndexRealmObject.class)) {
                return cls.cast(new C10927xb76e5e93());
            }
            if (cls.equals(SearchIndexRealmObject.class)) {
                return cls.cast(new C10929x7feca032());
            }
            if (cls.equals(OfflineDb.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy());
            }
            if (cls.equals(OfflineDbV82.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_OfflineDbV82RealmProxy());
            }
            if (cls.equals(OfflineDbV83.class)) {
                return cls.cast(new gogolook_callgogolook2_offline_offlinedb_OfflineDbV83RealmProxy());
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

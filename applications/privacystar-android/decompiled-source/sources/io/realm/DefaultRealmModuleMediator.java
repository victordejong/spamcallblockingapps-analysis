package io.realm;

import android.util.JsonReader;
import com.privacystar.core.data.model.AFAnalyticConfiguration;
import com.privacystar.core.data.model.AnalyticsEvent;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.BlockingOption;
import com.privacystar.core.data.model.CallStats;
import com.privacystar.core.data.model.CallerId;
import com.privacystar.core.data.model.CategoryQuestionnaire;
import com.privacystar.core.data.model.ConnectivityLog;
import com.privacystar.core.data.model.DeviceExclusion;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.LicenseFeature;
import com.privacystar.core.data.model.LogItem;
import com.privacystar.core.data.model.LookupHistory;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.OffenderCategory;
import com.privacystar.core.data.model.Operation;
import com.privacystar.core.data.model.PendingBulkLookup;
import com.privacystar.core.data.model.PendingBulkLookupNumber;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.PlayStoreReceipt;
import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.RequestQueue;
import com.privacystar.core.data.model.SimpleOffender;
import com.privacystar.core.data.model.Subscription;
import io.realm.BaseRealm;
import io.realm.C1908x66da3495;
import io.realm.C1917x8e2c557d;
import io.realm.annotations.RealmModule;
import io.realm.com_privacystar_core_data_model_AnalyticsEventRealmProxy;
import io.realm.com_privacystar_core_data_model_ApprovedListRealmProxy;
import io.realm.com_privacystar_core_data_model_BlockHistoryRealmProxy;
import io.realm.com_privacystar_core_data_model_BlockListRealmProxy;
import io.realm.com_privacystar_core_data_model_BlockingOptionRealmProxy;
import io.realm.com_privacystar_core_data_model_CallStatsRealmProxy;
import io.realm.com_privacystar_core_data_model_CallerIdRealmProxy;
import io.realm.com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy;
import io.realm.com_privacystar_core_data_model_ConnectivityLogRealmProxy;
import io.realm.com_privacystar_core_data_model_DeviceExclusionRealmProxy;
import io.realm.com_privacystar_core_data_model_GroupBlockRealmProxy;
import io.realm.com_privacystar_core_data_model_LicenseFeatureRealmProxy;
import io.realm.com_privacystar_core_data_model_LogItemRealmProxy;
import io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxy;
import io.realm.com_privacystar_core_data_model_MessageRealmProxy;
import io.realm.com_privacystar_core_data_model_OffenderCategoryRealmProxy;
import io.realm.com_privacystar_core_data_model_OffenderRealmProxy;
import io.realm.com_privacystar_core_data_model_OperationRealmProxy;
import io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy;
import io.realm.com_privacystar_core_data_model_PlayStorePurchaseRealmProxy;
import io.realm.com_privacystar_core_data_model_PlayStoreReceiptRealmProxy;
import io.realm.com_privacystar_core_data_model_RegistrationDataRealmProxy;
import io.realm.com_privacystar_core_data_model_RequestQueueRealmProxy;
import io.realm.com_privacystar_core_data_model_SimpleOffenderRealmProxy;
import io.realm.com_privacystar_core_data_model_SubscriptionRealmProxy;
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
        HashSet hashSet = new HashSet(27);
        hashSet.add(AFAnalyticConfiguration.class);
        hashSet.add(LogItem.class);
        hashSet.add(ApprovedList.class);
        hashSet.add(CallStats.class);
        hashSet.add(BlockHistory.class);
        hashSet.add(Offender.class);
        hashSet.add(Subscription.class);
        hashSet.add(PendingBulkLookup.class);
        hashSet.add(GroupBlock.class);
        hashSet.add(OffenderCategory.class);
        hashSet.add(LookupHistory.class);
        hashSet.add(BlockingOption.class);
        hashSet.add(CategoryQuestionnaire.class);
        hashSet.add(AnalyticsEvent.class);
        hashSet.add(CallerId.class);
        hashSet.add(PlayStorePurchase.class);
        hashSet.add(LicenseFeature.class);
        hashSet.add(RequestQueue.class);
        hashSet.add(Operation.class);
        hashSet.add(BlockList.class);
        hashSet.add(ConnectivityLog.class);
        hashSet.add(RegistrationData.class);
        hashSet.add(SimpleOffender.class);
        hashSet.add(PendingBulkLookupNumber.class);
        hashSet.add(DeviceExclusion.class);
        hashSet.add(Message.class);
        hashSet.add(PlayStoreReceipt.class);
        MODEL_CLASSES = Collections.unmodifiableSet(hashSet);
    }

    DefaultRealmModuleMediator() {
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(AFAnalyticConfiguration.class)) {
            return (E) ((RealmModel) superclass.cast(C1908x66da3495.copyOrUpdate(realm, (C1908x66da3495.AFAnalyticConfigurationColumnInfo) realm.getSchema().getColumnInfo(AFAnalyticConfiguration.class), (AFAnalyticConfiguration) e, z, map, set)));
        }
        if (superclass.equals(LogItem.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_LogItemRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_LogItemRealmProxy.LogItemColumnInfo) realm.getSchema().getColumnInfo(LogItem.class), (LogItem) e, z, map, set)));
        }
        if (superclass.equals(ApprovedList.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_ApprovedListRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_ApprovedListRealmProxy.ApprovedListColumnInfo) realm.getSchema().getColumnInfo(ApprovedList.class), (ApprovedList) e, z, map, set)));
        }
        if (superclass.equals(CallStats.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_CallStatsRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_CallStatsRealmProxy.CallStatsColumnInfo) realm.getSchema().getColumnInfo(CallStats.class), (CallStats) e, z, map, set)));
        }
        if (superclass.equals(BlockHistory.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_BlockHistoryRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_BlockHistoryRealmProxy.BlockHistoryColumnInfo) realm.getSchema().getColumnInfo(BlockHistory.class), (BlockHistory) e, z, map, set)));
        }
        if (superclass.equals(Offender.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_OffenderRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OffenderRealmProxy.OffenderColumnInfo) realm.getSchema().getColumnInfo(Offender.class), (Offender) e, z, map, set)));
        }
        if (superclass.equals(Subscription.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_SubscriptionRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_SubscriptionRealmProxy.SubscriptionColumnInfo) realm.getSchema().getColumnInfo(Subscription.class), (Subscription) e, z, map, set)));
        }
        if (superclass.equals(PendingBulkLookup.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_PendingBulkLookupRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_PendingBulkLookupRealmProxy.PendingBulkLookupColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookup.class), (PendingBulkLookup) e, z, map, set)));
        }
        if (superclass.equals(GroupBlock.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_GroupBlockRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_GroupBlockRealmProxy.GroupBlockColumnInfo) realm.getSchema().getColumnInfo(GroupBlock.class), (GroupBlock) e, z, map, set)));
        }
        if (superclass.equals(OffenderCategory.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_OffenderCategoryRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OffenderCategoryRealmProxy.OffenderCategoryColumnInfo) realm.getSchema().getColumnInfo(OffenderCategory.class), (OffenderCategory) e, z, map, set)));
        }
        if (superclass.equals(LookupHistory.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_LookupHistoryRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_LookupHistoryRealmProxy.LookupHistoryColumnInfo) realm.getSchema().getColumnInfo(LookupHistory.class), (LookupHistory) e, z, map, set)));
        }
        if (superclass.equals(BlockingOption.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_BlockingOptionRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_BlockingOptionRealmProxy.BlockingOptionColumnInfo) realm.getSchema().getColumnInfo(BlockingOption.class), (BlockingOption) e, z, map, set)));
        }
        if (superclass.equals(CategoryQuestionnaire.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.CategoryQuestionnaireColumnInfo) realm.getSchema().getColumnInfo(CategoryQuestionnaire.class), (CategoryQuestionnaire) e, z, map, set)));
        }
        if (superclass.equals(AnalyticsEvent.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_AnalyticsEventRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_AnalyticsEventRealmProxy.AnalyticsEventColumnInfo) realm.getSchema().getColumnInfo(AnalyticsEvent.class), (AnalyticsEvent) e, z, map, set)));
        }
        if (superclass.equals(CallerId.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_CallerIdRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_CallerIdRealmProxy.CallerIdColumnInfo) realm.getSchema().getColumnInfo(CallerId.class), (CallerId) e, z, map, set)));
        }
        if (superclass.equals(PlayStorePurchase.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class), (PlayStorePurchase) e, z, map, set)));
        }
        if (superclass.equals(LicenseFeature.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_LicenseFeatureRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_LicenseFeatureRealmProxy.LicenseFeatureColumnInfo) realm.getSchema().getColumnInfo(LicenseFeature.class), (LicenseFeature) e, z, map, set)));
        }
        if (superclass.equals(RequestQueue.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_RequestQueueRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_RequestQueueRealmProxy.RequestQueueColumnInfo) realm.getSchema().getColumnInfo(RequestQueue.class), (RequestQueue) e, z, map, set)));
        }
        if (superclass.equals(Operation.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_OperationRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OperationRealmProxy.OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class), (Operation) e, z, map, set)));
        }
        if (superclass.equals(BlockList.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_BlockListRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_BlockListRealmProxy.BlockListColumnInfo) realm.getSchema().getColumnInfo(BlockList.class), (BlockList) e, z, map, set)));
        }
        if (superclass.equals(ConnectivityLog.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_ConnectivityLogRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_ConnectivityLogRealmProxy.ConnectivityLogColumnInfo) realm.getSchema().getColumnInfo(ConnectivityLog.class), (ConnectivityLog) e, z, map, set)));
        }
        if (superclass.equals(RegistrationData.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_RegistrationDataRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_RegistrationDataRealmProxy.RegistrationDataColumnInfo) realm.getSchema().getColumnInfo(RegistrationData.class), (RegistrationData) e, z, map, set)));
        }
        if (superclass.equals(SimpleOffender.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_SimpleOffenderRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_SimpleOffenderRealmProxy.SimpleOffenderColumnInfo) realm.getSchema().getColumnInfo(SimpleOffender.class), (SimpleOffender) e, z, map, set)));
        }
        if (superclass.equals(PendingBulkLookupNumber.class)) {
            return (E) ((RealmModel) superclass.cast(C1917x8e2c557d.copyOrUpdate(realm, (C1917x8e2c557d.PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class), (PendingBulkLookupNumber) e, z, map, set)));
        }
        if (superclass.equals(DeviceExclusion.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_DeviceExclusionRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_DeviceExclusionRealmProxy.DeviceExclusionColumnInfo) realm.getSchema().getColumnInfo(DeviceExclusion.class), (DeviceExclusion) e, z, map, set)));
        }
        if (superclass.equals(Message.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_MessageRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_MessageRealmProxy.MessageColumnInfo) realm.getSchema().getColumnInfo(Message.class), (Message) e, z, map, set)));
        }
        if (superclass.equals(PlayStoreReceipt.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.PlayStoreReceiptColumnInfo) realm.getSchema().getColumnInfo(PlayStoreReceipt.class), (PlayStoreReceipt) e, z, map, set)));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        checkClass(cls);
        if (cls.equals(AFAnalyticConfiguration.class)) {
            return C1908x66da3495.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LogItem.class)) {
            return com_privacystar_core_data_model_LogItemRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ApprovedList.class)) {
            return com_privacystar_core_data_model_ApprovedListRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CallStats.class)) {
            return com_privacystar_core_data_model_CallStatsRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BlockHistory.class)) {
            return com_privacystar_core_data_model_BlockHistoryRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Offender.class)) {
            return com_privacystar_core_data_model_OffenderRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Subscription.class)) {
            return com_privacystar_core_data_model_SubscriptionRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PendingBulkLookup.class)) {
            return com_privacystar_core_data_model_PendingBulkLookupRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(GroupBlock.class)) {
            return com_privacystar_core_data_model_GroupBlockRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(OffenderCategory.class)) {
            return com_privacystar_core_data_model_OffenderCategoryRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LookupHistory.class)) {
            return com_privacystar_core_data_model_LookupHistoryRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BlockingOption.class)) {
            return com_privacystar_core_data_model_BlockingOptionRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CategoryQuestionnaire.class)) {
            return com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(AnalyticsEvent.class)) {
            return com_privacystar_core_data_model_AnalyticsEventRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CallerId.class)) {
            return com_privacystar_core_data_model_CallerIdRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PlayStorePurchase.class)) {
            return com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LicenseFeature.class)) {
            return com_privacystar_core_data_model_LicenseFeatureRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(RequestQueue.class)) {
            return com_privacystar_core_data_model_RequestQueueRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Operation.class)) {
            return com_privacystar_core_data_model_OperationRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(BlockList.class)) {
            return com_privacystar_core_data_model_BlockListRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ConnectivityLog.class)) {
            return com_privacystar_core_data_model_ConnectivityLogRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(RegistrationData.class)) {
            return com_privacystar_core_data_model_RegistrationDataRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SimpleOffender.class)) {
            return com_privacystar_core_data_model_SimpleOffenderRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PendingBulkLookupNumber.class)) {
            return C1917x8e2c557d.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(DeviceExclusion.class)) {
            return com_privacystar_core_data_model_DeviceExclusionRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Message.class)) {
            return com_privacystar_core_data_model_MessageRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(PlayStoreReceipt.class)) {
            return com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Class<? super Object> superclass = e.getClass().getSuperclass();
        if (superclass.equals(AFAnalyticConfiguration.class)) {
            return (E) ((RealmModel) superclass.cast(C1908x66da3495.createDetachedCopy((AFAnalyticConfiguration) e, 0, i, map)));
        }
        if (superclass.equals(LogItem.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_LogItemRealmProxy.createDetachedCopy((LogItem) e, 0, i, map)));
        }
        if (superclass.equals(ApprovedList.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_ApprovedListRealmProxy.createDetachedCopy((ApprovedList) e, 0, i, map)));
        }
        if (superclass.equals(CallStats.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_CallStatsRealmProxy.createDetachedCopy((CallStats) e, 0, i, map)));
        }
        if (superclass.equals(BlockHistory.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_BlockHistoryRealmProxy.createDetachedCopy((BlockHistory) e, 0, i, map)));
        }
        if (superclass.equals(Offender.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_OffenderRealmProxy.createDetachedCopy((Offender) e, 0, i, map)));
        }
        if (superclass.equals(Subscription.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_SubscriptionRealmProxy.createDetachedCopy((Subscription) e, 0, i, map)));
        }
        if (superclass.equals(PendingBulkLookup.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_PendingBulkLookupRealmProxy.createDetachedCopy((PendingBulkLookup) e, 0, i, map)));
        }
        if (superclass.equals(GroupBlock.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_GroupBlockRealmProxy.createDetachedCopy((GroupBlock) e, 0, i, map)));
        }
        if (superclass.equals(OffenderCategory.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_OffenderCategoryRealmProxy.createDetachedCopy((OffenderCategory) e, 0, i, map)));
        }
        if (superclass.equals(LookupHistory.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_LookupHistoryRealmProxy.createDetachedCopy((LookupHistory) e, 0, i, map)));
        }
        if (superclass.equals(BlockingOption.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_BlockingOptionRealmProxy.createDetachedCopy((BlockingOption) e, 0, i, map)));
        }
        if (superclass.equals(CategoryQuestionnaire.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.createDetachedCopy((CategoryQuestionnaire) e, 0, i, map)));
        }
        if (superclass.equals(AnalyticsEvent.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_AnalyticsEventRealmProxy.createDetachedCopy((AnalyticsEvent) e, 0, i, map)));
        }
        if (superclass.equals(CallerId.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_CallerIdRealmProxy.createDetachedCopy((CallerId) e, 0, i, map)));
        }
        if (superclass.equals(PlayStorePurchase.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.createDetachedCopy((PlayStorePurchase) e, 0, i, map)));
        }
        if (superclass.equals(LicenseFeature.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_LicenseFeatureRealmProxy.createDetachedCopy((LicenseFeature) e, 0, i, map)));
        }
        if (superclass.equals(RequestQueue.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_RequestQueueRealmProxy.createDetachedCopy((RequestQueue) e, 0, i, map)));
        }
        if (superclass.equals(Operation.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_OperationRealmProxy.createDetachedCopy((Operation) e, 0, i, map)));
        }
        if (superclass.equals(BlockList.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_BlockListRealmProxy.createDetachedCopy((BlockList) e, 0, i, map)));
        }
        if (superclass.equals(ConnectivityLog.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_ConnectivityLogRealmProxy.createDetachedCopy((ConnectivityLog) e, 0, i, map)));
        }
        if (superclass.equals(RegistrationData.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_RegistrationDataRealmProxy.createDetachedCopy((RegistrationData) e, 0, i, map)));
        }
        if (superclass.equals(SimpleOffender.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_SimpleOffenderRealmProxy.createDetachedCopy((SimpleOffender) e, 0, i, map)));
        }
        if (superclass.equals(PendingBulkLookupNumber.class)) {
            return (E) ((RealmModel) superclass.cast(C1917x8e2c557d.createDetachedCopy((PendingBulkLookupNumber) e, 0, i, map)));
        }
        if (superclass.equals(DeviceExclusion.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_DeviceExclusionRealmProxy.createDetachedCopy((DeviceExclusion) e, 0, i, map)));
        }
        if (superclass.equals(Message.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_MessageRealmProxy.createDetachedCopy((Message) e, 0, i, map)));
        }
        if (superclass.equals(PlayStoreReceipt.class)) {
            return (E) ((RealmModel) superclass.cast(com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.createDetachedCopy((PlayStoreReceipt) e, 0, i, map)));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        checkClass(cls);
        if (cls.equals(AFAnalyticConfiguration.class)) {
            return cls.cast(C1908x66da3495.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(LogItem.class)) {
            return cls.cast(com_privacystar_core_data_model_LogItemRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(ApprovedList.class)) {
            return cls.cast(com_privacystar_core_data_model_ApprovedListRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CallStats.class)) {
            return cls.cast(com_privacystar_core_data_model_CallStatsRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(BlockHistory.class)) {
            return cls.cast(com_privacystar_core_data_model_BlockHistoryRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(Offender.class)) {
            return cls.cast(com_privacystar_core_data_model_OffenderRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(Subscription.class)) {
            return cls.cast(com_privacystar_core_data_model_SubscriptionRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PendingBulkLookup.class)) {
            return cls.cast(com_privacystar_core_data_model_PendingBulkLookupRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(GroupBlock.class)) {
            return cls.cast(com_privacystar_core_data_model_GroupBlockRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(OffenderCategory.class)) {
            return cls.cast(com_privacystar_core_data_model_OffenderCategoryRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(LookupHistory.class)) {
            return cls.cast(com_privacystar_core_data_model_LookupHistoryRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(BlockingOption.class)) {
            return cls.cast(com_privacystar_core_data_model_BlockingOptionRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CategoryQuestionnaire.class)) {
            return cls.cast(com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(AnalyticsEvent.class)) {
            return cls.cast(com_privacystar_core_data_model_AnalyticsEventRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(CallerId.class)) {
            return cls.cast(com_privacystar_core_data_model_CallerIdRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PlayStorePurchase.class)) {
            return cls.cast(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(LicenseFeature.class)) {
            return cls.cast(com_privacystar_core_data_model_LicenseFeatureRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(RequestQueue.class)) {
            return cls.cast(com_privacystar_core_data_model_RequestQueueRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(Operation.class)) {
            return cls.cast(com_privacystar_core_data_model_OperationRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(BlockList.class)) {
            return cls.cast(com_privacystar_core_data_model_BlockListRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(ConnectivityLog.class)) {
            return cls.cast(com_privacystar_core_data_model_ConnectivityLogRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(RegistrationData.class)) {
            return cls.cast(com_privacystar_core_data_model_RegistrationDataRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(SimpleOffender.class)) {
            return cls.cast(com_privacystar_core_data_model_SimpleOffenderRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PendingBulkLookupNumber.class)) {
            return cls.cast(C1917x8e2c557d.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(DeviceExclusion.class)) {
            return cls.cast(com_privacystar_core_data_model_DeviceExclusionRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(Message.class)) {
            return cls.cast(com_privacystar_core_data_model_MessageRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        if (cls.equals(PlayStoreReceipt.class)) {
            return cls.cast(com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.createOrUpdateUsingJsonObject(realm, jSONObject, z));
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        checkClass(cls);
        if (cls.equals(AFAnalyticConfiguration.class)) {
            return cls.cast(C1908x66da3495.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(LogItem.class)) {
            return cls.cast(com_privacystar_core_data_model_LogItemRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(ApprovedList.class)) {
            return cls.cast(com_privacystar_core_data_model_ApprovedListRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CallStats.class)) {
            return cls.cast(com_privacystar_core_data_model_CallStatsRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(BlockHistory.class)) {
            return cls.cast(com_privacystar_core_data_model_BlockHistoryRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(Offender.class)) {
            return cls.cast(com_privacystar_core_data_model_OffenderRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(Subscription.class)) {
            return cls.cast(com_privacystar_core_data_model_SubscriptionRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PendingBulkLookup.class)) {
            return cls.cast(com_privacystar_core_data_model_PendingBulkLookupRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(GroupBlock.class)) {
            return cls.cast(com_privacystar_core_data_model_GroupBlockRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(OffenderCategory.class)) {
            return cls.cast(com_privacystar_core_data_model_OffenderCategoryRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(LookupHistory.class)) {
            return cls.cast(com_privacystar_core_data_model_LookupHistoryRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(BlockingOption.class)) {
            return cls.cast(com_privacystar_core_data_model_BlockingOptionRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CategoryQuestionnaire.class)) {
            return cls.cast(com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(AnalyticsEvent.class)) {
            return cls.cast(com_privacystar_core_data_model_AnalyticsEventRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(CallerId.class)) {
            return cls.cast(com_privacystar_core_data_model_CallerIdRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PlayStorePurchase.class)) {
            return cls.cast(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(LicenseFeature.class)) {
            return cls.cast(com_privacystar_core_data_model_LicenseFeatureRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(RequestQueue.class)) {
            return cls.cast(com_privacystar_core_data_model_RequestQueueRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(Operation.class)) {
            return cls.cast(com_privacystar_core_data_model_OperationRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(BlockList.class)) {
            return cls.cast(com_privacystar_core_data_model_BlockListRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(ConnectivityLog.class)) {
            return cls.cast(com_privacystar_core_data_model_ConnectivityLogRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(RegistrationData.class)) {
            return cls.cast(com_privacystar_core_data_model_RegistrationDataRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(SimpleOffender.class)) {
            return cls.cast(com_privacystar_core_data_model_SimpleOffenderRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PendingBulkLookupNumber.class)) {
            return cls.cast(C1917x8e2c557d.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(DeviceExclusion.class)) {
            return cls.cast(com_privacystar_core_data_model_DeviceExclusionRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(Message.class)) {
            return cls.cast(com_privacystar_core_data_model_MessageRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        if (cls.equals(PlayStoreReceipt.class)) {
            return cls.cast(com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.createUsingJsonStream(realm, jsonReader));
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        HashMap hashMap = new HashMap(27);
        hashMap.put(AFAnalyticConfiguration.class, C1908x66da3495.getExpectedObjectSchemaInfo());
        hashMap.put(LogItem.class, com_privacystar_core_data_model_LogItemRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(ApprovedList.class, com_privacystar_core_data_model_ApprovedListRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CallStats.class, com_privacystar_core_data_model_CallStatsRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(BlockHistory.class, com_privacystar_core_data_model_BlockHistoryRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Offender.class, com_privacystar_core_data_model_OffenderRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Subscription.class, com_privacystar_core_data_model_SubscriptionRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(PendingBulkLookup.class, com_privacystar_core_data_model_PendingBulkLookupRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(GroupBlock.class, com_privacystar_core_data_model_GroupBlockRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(OffenderCategory.class, com_privacystar_core_data_model_OffenderCategoryRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LookupHistory.class, com_privacystar_core_data_model_LookupHistoryRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(BlockingOption.class, com_privacystar_core_data_model_BlockingOptionRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CategoryQuestionnaire.class, com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(AnalyticsEvent.class, com_privacystar_core_data_model_AnalyticsEventRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CallerId.class, com_privacystar_core_data_model_CallerIdRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(PlayStorePurchase.class, com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LicenseFeature.class, com_privacystar_core_data_model_LicenseFeatureRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(RequestQueue.class, com_privacystar_core_data_model_RequestQueueRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Operation.class, com_privacystar_core_data_model_OperationRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(BlockList.class, com_privacystar_core_data_model_BlockListRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(ConnectivityLog.class, com_privacystar_core_data_model_ConnectivityLogRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(RegistrationData.class, com_privacystar_core_data_model_RegistrationDataRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(SimpleOffender.class, com_privacystar_core_data_model_SimpleOffenderRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(PendingBulkLookupNumber.class, C1917x8e2c557d.getExpectedObjectSchemaInfo());
        hashMap.put(DeviceExclusion.class, com_privacystar_core_data_model_DeviceExclusionRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Message.class, com_privacystar_core_data_model_MessageRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(PlayStoreReceipt.class, com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> cls) {
        checkClass(cls);
        if (cls.equals(AFAnalyticConfiguration.class)) {
            return C1908x66da3495.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(LogItem.class)) {
            return com_privacystar_core_data_model_LogItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(ApprovedList.class)) {
            return com_privacystar_core_data_model_ApprovedListRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(CallStats.class)) {
            return com_privacystar_core_data_model_CallStatsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(BlockHistory.class)) {
            return com_privacystar_core_data_model_BlockHistoryRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(Offender.class)) {
            return com_privacystar_core_data_model_OffenderRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(Subscription.class)) {
            return com_privacystar_core_data_model_SubscriptionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PendingBulkLookup.class)) {
            return com_privacystar_core_data_model_PendingBulkLookupRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(GroupBlock.class)) {
            return com_privacystar_core_data_model_GroupBlockRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(OffenderCategory.class)) {
            return com_privacystar_core_data_model_OffenderCategoryRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(LookupHistory.class)) {
            return com_privacystar_core_data_model_LookupHistoryRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(BlockingOption.class)) {
            return com_privacystar_core_data_model_BlockingOptionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(CategoryQuestionnaire.class)) {
            return com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(AnalyticsEvent.class)) {
            return com_privacystar_core_data_model_AnalyticsEventRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(CallerId.class)) {
            return com_privacystar_core_data_model_CallerIdRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PlayStorePurchase.class)) {
            return com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(LicenseFeature.class)) {
            return com_privacystar_core_data_model_LicenseFeatureRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(RequestQueue.class)) {
            return com_privacystar_core_data_model_RequestQueueRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(Operation.class)) {
            return com_privacystar_core_data_model_OperationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(BlockList.class)) {
            return com_privacystar_core_data_model_BlockListRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(ConnectivityLog.class)) {
            return com_privacystar_core_data_model_ConnectivityLogRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(RegistrationData.class)) {
            return com_privacystar_core_data_model_RegistrationDataRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(SimpleOffender.class)) {
            return com_privacystar_core_data_model_SimpleOffenderRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(PendingBulkLookupNumber.class)) {
            return C1917x8e2c557d.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(DeviceExclusion.class)) {
            return com_privacystar_core_data_model_DeviceExclusionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (cls.equals(Message.class)) {
            return "Message";
        }
        if (cls.equals(PlayStoreReceipt.class)) {
            return com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(AFAnalyticConfiguration.class)) {
            C1908x66da3495.insert(realm, (AFAnalyticConfiguration) realmModel, map);
        } else if (superclass.equals(LogItem.class)) {
            com_privacystar_core_data_model_LogItemRealmProxy.insert(realm, (LogItem) realmModel, map);
        } else if (superclass.equals(ApprovedList.class)) {
            com_privacystar_core_data_model_ApprovedListRealmProxy.insert(realm, (ApprovedList) realmModel, map);
        } else if (superclass.equals(CallStats.class)) {
            com_privacystar_core_data_model_CallStatsRealmProxy.insert(realm, (CallStats) realmModel, map);
        } else if (superclass.equals(BlockHistory.class)) {
            com_privacystar_core_data_model_BlockHistoryRealmProxy.insert(realm, (BlockHistory) realmModel, map);
        } else if (superclass.equals(Offender.class)) {
            com_privacystar_core_data_model_OffenderRealmProxy.insert(realm, (Offender) realmModel, map);
        } else if (superclass.equals(Subscription.class)) {
            com_privacystar_core_data_model_SubscriptionRealmProxy.insert(realm, (Subscription) realmModel, map);
        } else if (superclass.equals(PendingBulkLookup.class)) {
            com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insert(realm, (PendingBulkLookup) realmModel, map);
        } else if (superclass.equals(GroupBlock.class)) {
            com_privacystar_core_data_model_GroupBlockRealmProxy.insert(realm, (GroupBlock) realmModel, map);
        } else if (superclass.equals(OffenderCategory.class)) {
            com_privacystar_core_data_model_OffenderCategoryRealmProxy.insert(realm, (OffenderCategory) realmModel, map);
        } else if (superclass.equals(LookupHistory.class)) {
            com_privacystar_core_data_model_LookupHistoryRealmProxy.insert(realm, (LookupHistory) realmModel, map);
        } else if (superclass.equals(BlockingOption.class)) {
            com_privacystar_core_data_model_BlockingOptionRealmProxy.insert(realm, (BlockingOption) realmModel, map);
        } else if (superclass.equals(CategoryQuestionnaire.class)) {
            com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.insert(realm, (CategoryQuestionnaire) realmModel, map);
        } else if (superclass.equals(AnalyticsEvent.class)) {
            com_privacystar_core_data_model_AnalyticsEventRealmProxy.insert(realm, (AnalyticsEvent) realmModel, map);
        } else if (superclass.equals(CallerId.class)) {
            com_privacystar_core_data_model_CallerIdRealmProxy.insert(realm, (CallerId) realmModel, map);
        } else if (superclass.equals(PlayStorePurchase.class)) {
            com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insert(realm, (PlayStorePurchase) realmModel, map);
        } else if (superclass.equals(LicenseFeature.class)) {
            com_privacystar_core_data_model_LicenseFeatureRealmProxy.insert(realm, (LicenseFeature) realmModel, map);
        } else if (superclass.equals(RequestQueue.class)) {
            com_privacystar_core_data_model_RequestQueueRealmProxy.insert(realm, (RequestQueue) realmModel, map);
        } else if (superclass.equals(Operation.class)) {
            com_privacystar_core_data_model_OperationRealmProxy.insert(realm, (Operation) realmModel, map);
        } else if (superclass.equals(BlockList.class)) {
            com_privacystar_core_data_model_BlockListRealmProxy.insert(realm, (BlockList) realmModel, map);
        } else if (superclass.equals(ConnectivityLog.class)) {
            com_privacystar_core_data_model_ConnectivityLogRealmProxy.insert(realm, (ConnectivityLog) realmModel, map);
        } else if (superclass.equals(RegistrationData.class)) {
            com_privacystar_core_data_model_RegistrationDataRealmProxy.insert(realm, (RegistrationData) realmModel, map);
        } else if (superclass.equals(SimpleOffender.class)) {
            com_privacystar_core_data_model_SimpleOffenderRealmProxy.insert(realm, (SimpleOffender) realmModel, map);
        } else if (superclass.equals(PendingBulkLookupNumber.class)) {
            C1917x8e2c557d.insert(realm, (PendingBulkLookupNumber) realmModel, map);
        } else if (superclass.equals(DeviceExclusion.class)) {
            com_privacystar_core_data_model_DeviceExclusionRealmProxy.insert(realm, (DeviceExclusion) realmModel, map);
        } else if (superclass.equals(Message.class)) {
            com_privacystar_core_data_model_MessageRealmProxy.insert(realm, (Message) realmModel, map);
        } else if (superclass.equals(PlayStoreReceipt.class)) {
            com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.insert(realm, (PlayStoreReceipt) realmModel, map);
        } else {
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel realmModel = (RealmModel) it.next();
            Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
            if (superclass.equals(AFAnalyticConfiguration.class)) {
                C1908x66da3495.insert(realm, (AFAnalyticConfiguration) realmModel, hashMap);
            } else if (superclass.equals(LogItem.class)) {
                com_privacystar_core_data_model_LogItemRealmProxy.insert(realm, (LogItem) realmModel, hashMap);
            } else if (superclass.equals(ApprovedList.class)) {
                com_privacystar_core_data_model_ApprovedListRealmProxy.insert(realm, (ApprovedList) realmModel, hashMap);
            } else if (superclass.equals(CallStats.class)) {
                com_privacystar_core_data_model_CallStatsRealmProxy.insert(realm, (CallStats) realmModel, hashMap);
            } else if (superclass.equals(BlockHistory.class)) {
                com_privacystar_core_data_model_BlockHistoryRealmProxy.insert(realm, (BlockHistory) realmModel, hashMap);
            } else if (superclass.equals(Offender.class)) {
                com_privacystar_core_data_model_OffenderRealmProxy.insert(realm, (Offender) realmModel, hashMap);
            } else if (superclass.equals(Subscription.class)) {
                com_privacystar_core_data_model_SubscriptionRealmProxy.insert(realm, (Subscription) realmModel, hashMap);
            } else if (superclass.equals(PendingBulkLookup.class)) {
                com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insert(realm, (PendingBulkLookup) realmModel, hashMap);
            } else if (superclass.equals(GroupBlock.class)) {
                com_privacystar_core_data_model_GroupBlockRealmProxy.insert(realm, (GroupBlock) realmModel, hashMap);
            } else if (superclass.equals(OffenderCategory.class)) {
                com_privacystar_core_data_model_OffenderCategoryRealmProxy.insert(realm, (OffenderCategory) realmModel, hashMap);
            } else if (superclass.equals(LookupHistory.class)) {
                com_privacystar_core_data_model_LookupHistoryRealmProxy.insert(realm, (LookupHistory) realmModel, hashMap);
            } else if (superclass.equals(BlockingOption.class)) {
                com_privacystar_core_data_model_BlockingOptionRealmProxy.insert(realm, (BlockingOption) realmModel, hashMap);
            } else if (superclass.equals(CategoryQuestionnaire.class)) {
                com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.insert(realm, (CategoryQuestionnaire) realmModel, hashMap);
            } else if (superclass.equals(AnalyticsEvent.class)) {
                com_privacystar_core_data_model_AnalyticsEventRealmProxy.insert(realm, (AnalyticsEvent) realmModel, hashMap);
            } else if (superclass.equals(CallerId.class)) {
                com_privacystar_core_data_model_CallerIdRealmProxy.insert(realm, (CallerId) realmModel, hashMap);
            } else if (superclass.equals(PlayStorePurchase.class)) {
                com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insert(realm, (PlayStorePurchase) realmModel, hashMap);
            } else if (superclass.equals(LicenseFeature.class)) {
                com_privacystar_core_data_model_LicenseFeatureRealmProxy.insert(realm, (LicenseFeature) realmModel, hashMap);
            } else if (superclass.equals(RequestQueue.class)) {
                com_privacystar_core_data_model_RequestQueueRealmProxy.insert(realm, (RequestQueue) realmModel, hashMap);
            } else if (superclass.equals(Operation.class)) {
                com_privacystar_core_data_model_OperationRealmProxy.insert(realm, (Operation) realmModel, hashMap);
            } else if (superclass.equals(BlockList.class)) {
                com_privacystar_core_data_model_BlockListRealmProxy.insert(realm, (BlockList) realmModel, hashMap);
            } else if (superclass.equals(ConnectivityLog.class)) {
                com_privacystar_core_data_model_ConnectivityLogRealmProxy.insert(realm, (ConnectivityLog) realmModel, hashMap);
            } else if (superclass.equals(RegistrationData.class)) {
                com_privacystar_core_data_model_RegistrationDataRealmProxy.insert(realm, (RegistrationData) realmModel, hashMap);
            } else if (superclass.equals(SimpleOffender.class)) {
                com_privacystar_core_data_model_SimpleOffenderRealmProxy.insert(realm, (SimpleOffender) realmModel, hashMap);
            } else if (superclass.equals(PendingBulkLookupNumber.class)) {
                C1917x8e2c557d.insert(realm, (PendingBulkLookupNumber) realmModel, hashMap);
            } else if (superclass.equals(DeviceExclusion.class)) {
                com_privacystar_core_data_model_DeviceExclusionRealmProxy.insert(realm, (DeviceExclusion) realmModel, hashMap);
            } else if (superclass.equals(Message.class)) {
                com_privacystar_core_data_model_MessageRealmProxy.insert(realm, (Message) realmModel, hashMap);
            } else if (superclass.equals(PlayStoreReceipt.class)) {
                com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.insert(realm, (PlayStoreReceipt) realmModel, hashMap);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(AFAnalyticConfiguration.class)) {
                C1908x66da3495.insert(realm, it, hashMap);
            } else if (superclass.equals(LogItem.class)) {
                com_privacystar_core_data_model_LogItemRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(ApprovedList.class)) {
                com_privacystar_core_data_model_ApprovedListRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(CallStats.class)) {
                com_privacystar_core_data_model_CallStatsRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(BlockHistory.class)) {
                com_privacystar_core_data_model_BlockHistoryRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(Offender.class)) {
                com_privacystar_core_data_model_OffenderRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(Subscription.class)) {
                com_privacystar_core_data_model_SubscriptionRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(PendingBulkLookup.class)) {
                com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(GroupBlock.class)) {
                com_privacystar_core_data_model_GroupBlockRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(OffenderCategory.class)) {
                com_privacystar_core_data_model_OffenderCategoryRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(LookupHistory.class)) {
                com_privacystar_core_data_model_LookupHistoryRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(BlockingOption.class)) {
                com_privacystar_core_data_model_BlockingOptionRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(CategoryQuestionnaire.class)) {
                com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(AnalyticsEvent.class)) {
                com_privacystar_core_data_model_AnalyticsEventRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(CallerId.class)) {
                com_privacystar_core_data_model_CallerIdRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(PlayStorePurchase.class)) {
                com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(LicenseFeature.class)) {
                com_privacystar_core_data_model_LicenseFeatureRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(RequestQueue.class)) {
                com_privacystar_core_data_model_RequestQueueRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(Operation.class)) {
                com_privacystar_core_data_model_OperationRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(BlockList.class)) {
                com_privacystar_core_data_model_BlockListRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(ConnectivityLog.class)) {
                com_privacystar_core_data_model_ConnectivityLogRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(RegistrationData.class)) {
                com_privacystar_core_data_model_RegistrationDataRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(SimpleOffender.class)) {
                com_privacystar_core_data_model_SimpleOffenderRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(PendingBulkLookupNumber.class)) {
                C1917x8e2c557d.insert(realm, it, hashMap);
            } else if (superclass.equals(DeviceExclusion.class)) {
                com_privacystar_core_data_model_DeviceExclusionRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(Message.class)) {
                com_privacystar_core_data_model_MessageRealmProxy.insert(realm, it, hashMap);
            } else if (superclass.equals(PlayStoreReceipt.class)) {
                com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.insert(realm, it, hashMap);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(AFAnalyticConfiguration.class)) {
            C1908x66da3495.insertOrUpdate(realm, (AFAnalyticConfiguration) realmModel, map);
        } else if (superclass.equals(LogItem.class)) {
            com_privacystar_core_data_model_LogItemRealmProxy.insertOrUpdate(realm, (LogItem) realmModel, map);
        } else if (superclass.equals(ApprovedList.class)) {
            com_privacystar_core_data_model_ApprovedListRealmProxy.insertOrUpdate(realm, (ApprovedList) realmModel, map);
        } else if (superclass.equals(CallStats.class)) {
            com_privacystar_core_data_model_CallStatsRealmProxy.insertOrUpdate(realm, (CallStats) realmModel, map);
        } else if (superclass.equals(BlockHistory.class)) {
            com_privacystar_core_data_model_BlockHistoryRealmProxy.insertOrUpdate(realm, (BlockHistory) realmModel, map);
        } else if (superclass.equals(Offender.class)) {
            com_privacystar_core_data_model_OffenderRealmProxy.insertOrUpdate(realm, (Offender) realmModel, map);
        } else if (superclass.equals(Subscription.class)) {
            com_privacystar_core_data_model_SubscriptionRealmProxy.insertOrUpdate(realm, (Subscription) realmModel, map);
        } else if (superclass.equals(PendingBulkLookup.class)) {
            com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insertOrUpdate(realm, (PendingBulkLookup) realmModel, map);
        } else if (superclass.equals(GroupBlock.class)) {
            com_privacystar_core_data_model_GroupBlockRealmProxy.insertOrUpdate(realm, (GroupBlock) realmModel, map);
        } else if (superclass.equals(OffenderCategory.class)) {
            com_privacystar_core_data_model_OffenderCategoryRealmProxy.insertOrUpdate(realm, (OffenderCategory) realmModel, map);
        } else if (superclass.equals(LookupHistory.class)) {
            com_privacystar_core_data_model_LookupHistoryRealmProxy.insertOrUpdate(realm, (LookupHistory) realmModel, map);
        } else if (superclass.equals(BlockingOption.class)) {
            com_privacystar_core_data_model_BlockingOptionRealmProxy.insertOrUpdate(realm, (BlockingOption) realmModel, map);
        } else if (superclass.equals(CategoryQuestionnaire.class)) {
            com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.insertOrUpdate(realm, (CategoryQuestionnaire) realmModel, map);
        } else if (superclass.equals(AnalyticsEvent.class)) {
            com_privacystar_core_data_model_AnalyticsEventRealmProxy.insertOrUpdate(realm, (AnalyticsEvent) realmModel, map);
        } else if (superclass.equals(CallerId.class)) {
            com_privacystar_core_data_model_CallerIdRealmProxy.insertOrUpdate(realm, (CallerId) realmModel, map);
        } else if (superclass.equals(PlayStorePurchase.class)) {
            com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, (PlayStorePurchase) realmModel, map);
        } else if (superclass.equals(LicenseFeature.class)) {
            com_privacystar_core_data_model_LicenseFeatureRealmProxy.insertOrUpdate(realm, (LicenseFeature) realmModel, map);
        } else if (superclass.equals(RequestQueue.class)) {
            com_privacystar_core_data_model_RequestQueueRealmProxy.insertOrUpdate(realm, (RequestQueue) realmModel, map);
        } else if (superclass.equals(Operation.class)) {
            com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, (Operation) realmModel, map);
        } else if (superclass.equals(BlockList.class)) {
            com_privacystar_core_data_model_BlockListRealmProxy.insertOrUpdate(realm, (BlockList) realmModel, map);
        } else if (superclass.equals(ConnectivityLog.class)) {
            com_privacystar_core_data_model_ConnectivityLogRealmProxy.insertOrUpdate(realm, (ConnectivityLog) realmModel, map);
        } else if (superclass.equals(RegistrationData.class)) {
            com_privacystar_core_data_model_RegistrationDataRealmProxy.insertOrUpdate(realm, (RegistrationData) realmModel, map);
        } else if (superclass.equals(SimpleOffender.class)) {
            com_privacystar_core_data_model_SimpleOffenderRealmProxy.insertOrUpdate(realm, (SimpleOffender) realmModel, map);
        } else if (superclass.equals(PendingBulkLookupNumber.class)) {
            C1917x8e2c557d.insertOrUpdate(realm, (PendingBulkLookupNumber) realmModel, map);
        } else if (superclass.equals(DeviceExclusion.class)) {
            com_privacystar_core_data_model_DeviceExclusionRealmProxy.insertOrUpdate(realm, (DeviceExclusion) realmModel, map);
        } else if (superclass.equals(Message.class)) {
            com_privacystar_core_data_model_MessageRealmProxy.insertOrUpdate(realm, (Message) realmModel, map);
        } else if (superclass.equals(PlayStoreReceipt.class)) {
            com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.insertOrUpdate(realm, (PlayStoreReceipt) realmModel, map);
        } else {
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> collection) {
        Iterator<? extends RealmModel> it = collection.iterator();
        HashMap hashMap = new HashMap(collection.size());
        if (it.hasNext()) {
            RealmModel realmModel = (RealmModel) it.next();
            Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
            if (superclass.equals(AFAnalyticConfiguration.class)) {
                C1908x66da3495.insertOrUpdate(realm, (AFAnalyticConfiguration) realmModel, hashMap);
            } else if (superclass.equals(LogItem.class)) {
                com_privacystar_core_data_model_LogItemRealmProxy.insertOrUpdate(realm, (LogItem) realmModel, hashMap);
            } else if (superclass.equals(ApprovedList.class)) {
                com_privacystar_core_data_model_ApprovedListRealmProxy.insertOrUpdate(realm, (ApprovedList) realmModel, hashMap);
            } else if (superclass.equals(CallStats.class)) {
                com_privacystar_core_data_model_CallStatsRealmProxy.insertOrUpdate(realm, (CallStats) realmModel, hashMap);
            } else if (superclass.equals(BlockHistory.class)) {
                com_privacystar_core_data_model_BlockHistoryRealmProxy.insertOrUpdate(realm, (BlockHistory) realmModel, hashMap);
            } else if (superclass.equals(Offender.class)) {
                com_privacystar_core_data_model_OffenderRealmProxy.insertOrUpdate(realm, (Offender) realmModel, hashMap);
            } else if (superclass.equals(Subscription.class)) {
                com_privacystar_core_data_model_SubscriptionRealmProxy.insertOrUpdate(realm, (Subscription) realmModel, hashMap);
            } else if (superclass.equals(PendingBulkLookup.class)) {
                com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insertOrUpdate(realm, (PendingBulkLookup) realmModel, hashMap);
            } else if (superclass.equals(GroupBlock.class)) {
                com_privacystar_core_data_model_GroupBlockRealmProxy.insertOrUpdate(realm, (GroupBlock) realmModel, hashMap);
            } else if (superclass.equals(OffenderCategory.class)) {
                com_privacystar_core_data_model_OffenderCategoryRealmProxy.insertOrUpdate(realm, (OffenderCategory) realmModel, hashMap);
            } else if (superclass.equals(LookupHistory.class)) {
                com_privacystar_core_data_model_LookupHistoryRealmProxy.insertOrUpdate(realm, (LookupHistory) realmModel, hashMap);
            } else if (superclass.equals(BlockingOption.class)) {
                com_privacystar_core_data_model_BlockingOptionRealmProxy.insertOrUpdate(realm, (BlockingOption) realmModel, hashMap);
            } else if (superclass.equals(CategoryQuestionnaire.class)) {
                com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.insertOrUpdate(realm, (CategoryQuestionnaire) realmModel, hashMap);
            } else if (superclass.equals(AnalyticsEvent.class)) {
                com_privacystar_core_data_model_AnalyticsEventRealmProxy.insertOrUpdate(realm, (AnalyticsEvent) realmModel, hashMap);
            } else if (superclass.equals(CallerId.class)) {
                com_privacystar_core_data_model_CallerIdRealmProxy.insertOrUpdate(realm, (CallerId) realmModel, hashMap);
            } else if (superclass.equals(PlayStorePurchase.class)) {
                com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, (PlayStorePurchase) realmModel, hashMap);
            } else if (superclass.equals(LicenseFeature.class)) {
                com_privacystar_core_data_model_LicenseFeatureRealmProxy.insertOrUpdate(realm, (LicenseFeature) realmModel, hashMap);
            } else if (superclass.equals(RequestQueue.class)) {
                com_privacystar_core_data_model_RequestQueueRealmProxy.insertOrUpdate(realm, (RequestQueue) realmModel, hashMap);
            } else if (superclass.equals(Operation.class)) {
                com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, (Operation) realmModel, hashMap);
            } else if (superclass.equals(BlockList.class)) {
                com_privacystar_core_data_model_BlockListRealmProxy.insertOrUpdate(realm, (BlockList) realmModel, hashMap);
            } else if (superclass.equals(ConnectivityLog.class)) {
                com_privacystar_core_data_model_ConnectivityLogRealmProxy.insertOrUpdate(realm, (ConnectivityLog) realmModel, hashMap);
            } else if (superclass.equals(RegistrationData.class)) {
                com_privacystar_core_data_model_RegistrationDataRealmProxy.insertOrUpdate(realm, (RegistrationData) realmModel, hashMap);
            } else if (superclass.equals(SimpleOffender.class)) {
                com_privacystar_core_data_model_SimpleOffenderRealmProxy.insertOrUpdate(realm, (SimpleOffender) realmModel, hashMap);
            } else if (superclass.equals(PendingBulkLookupNumber.class)) {
                C1917x8e2c557d.insertOrUpdate(realm, (PendingBulkLookupNumber) realmModel, hashMap);
            } else if (superclass.equals(DeviceExclusion.class)) {
                com_privacystar_core_data_model_DeviceExclusionRealmProxy.insertOrUpdate(realm, (DeviceExclusion) realmModel, hashMap);
            } else if (superclass.equals(Message.class)) {
                com_privacystar_core_data_model_MessageRealmProxy.insertOrUpdate(realm, (Message) realmModel, hashMap);
            } else if (superclass.equals(PlayStoreReceipt.class)) {
                com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.insertOrUpdate(realm, (PlayStoreReceipt) realmModel, hashMap);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (!it.hasNext()) {
                return;
            }
            if (superclass.equals(AFAnalyticConfiguration.class)) {
                C1908x66da3495.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(LogItem.class)) {
                com_privacystar_core_data_model_LogItemRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(ApprovedList.class)) {
                com_privacystar_core_data_model_ApprovedListRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CallStats.class)) {
                com_privacystar_core_data_model_CallStatsRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(BlockHistory.class)) {
                com_privacystar_core_data_model_BlockHistoryRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(Offender.class)) {
                com_privacystar_core_data_model_OffenderRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(Subscription.class)) {
                com_privacystar_core_data_model_SubscriptionRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PendingBulkLookup.class)) {
                com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(GroupBlock.class)) {
                com_privacystar_core_data_model_GroupBlockRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(OffenderCategory.class)) {
                com_privacystar_core_data_model_OffenderCategoryRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(LookupHistory.class)) {
                com_privacystar_core_data_model_LookupHistoryRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(BlockingOption.class)) {
                com_privacystar_core_data_model_BlockingOptionRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CategoryQuestionnaire.class)) {
                com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(AnalyticsEvent.class)) {
                com_privacystar_core_data_model_AnalyticsEventRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(CallerId.class)) {
                com_privacystar_core_data_model_CallerIdRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PlayStorePurchase.class)) {
                com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(LicenseFeature.class)) {
                com_privacystar_core_data_model_LicenseFeatureRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(RequestQueue.class)) {
                com_privacystar_core_data_model_RequestQueueRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(Operation.class)) {
                com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(BlockList.class)) {
                com_privacystar_core_data_model_BlockListRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(ConnectivityLog.class)) {
                com_privacystar_core_data_model_ConnectivityLogRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(RegistrationData.class)) {
                com_privacystar_core_data_model_RegistrationDataRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(SimpleOffender.class)) {
                com_privacystar_core_data_model_SimpleOffenderRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PendingBulkLookupNumber.class)) {
                C1917x8e2c557d.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(DeviceExclusion.class)) {
                com_privacystar_core_data_model_DeviceExclusionRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(Message.class)) {
                com_privacystar_core_data_model_MessageRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else if (superclass.equals(PlayStoreReceipt.class)) {
                com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.insertOrUpdate(realm, it, hashMap);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        try {
            realmObjectContext.set((BaseRealm) obj, row, columnInfo, z, list);
            checkClass(cls);
            if (cls.equals(AFAnalyticConfiguration.class)) {
                return cls.cast(new C1908x66da3495());
            }
            if (cls.equals(LogItem.class)) {
                return cls.cast(new com_privacystar_core_data_model_LogItemRealmProxy());
            }
            if (cls.equals(ApprovedList.class)) {
                return cls.cast(new com_privacystar_core_data_model_ApprovedListRealmProxy());
            }
            if (cls.equals(CallStats.class)) {
                return cls.cast(new com_privacystar_core_data_model_CallStatsRealmProxy());
            }
            if (cls.equals(BlockHistory.class)) {
                return cls.cast(new com_privacystar_core_data_model_BlockHistoryRealmProxy());
            }
            if (cls.equals(Offender.class)) {
                return cls.cast(new com_privacystar_core_data_model_OffenderRealmProxy());
            }
            if (cls.equals(Subscription.class)) {
                return cls.cast(new com_privacystar_core_data_model_SubscriptionRealmProxy());
            }
            if (cls.equals(PendingBulkLookup.class)) {
                return cls.cast(new com_privacystar_core_data_model_PendingBulkLookupRealmProxy());
            }
            if (cls.equals(GroupBlock.class)) {
                return cls.cast(new com_privacystar_core_data_model_GroupBlockRealmProxy());
            }
            if (cls.equals(OffenderCategory.class)) {
                return cls.cast(new com_privacystar_core_data_model_OffenderCategoryRealmProxy());
            }
            if (cls.equals(LookupHistory.class)) {
                return cls.cast(new com_privacystar_core_data_model_LookupHistoryRealmProxy());
            }
            if (cls.equals(BlockingOption.class)) {
                return cls.cast(new com_privacystar_core_data_model_BlockingOptionRealmProxy());
            }
            if (cls.equals(CategoryQuestionnaire.class)) {
                return cls.cast(new com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy());
            }
            if (cls.equals(AnalyticsEvent.class)) {
                return cls.cast(new com_privacystar_core_data_model_AnalyticsEventRealmProxy());
            }
            if (cls.equals(CallerId.class)) {
                return cls.cast(new com_privacystar_core_data_model_CallerIdRealmProxy());
            }
            if (cls.equals(PlayStorePurchase.class)) {
                return cls.cast(new com_privacystar_core_data_model_PlayStorePurchaseRealmProxy());
            }
            if (cls.equals(LicenseFeature.class)) {
                return cls.cast(new com_privacystar_core_data_model_LicenseFeatureRealmProxy());
            }
            if (cls.equals(RequestQueue.class)) {
                return cls.cast(new com_privacystar_core_data_model_RequestQueueRealmProxy());
            }
            if (cls.equals(Operation.class)) {
                return cls.cast(new com_privacystar_core_data_model_OperationRealmProxy());
            }
            if (cls.equals(BlockList.class)) {
                return cls.cast(new com_privacystar_core_data_model_BlockListRealmProxy());
            }
            if (cls.equals(ConnectivityLog.class)) {
                return cls.cast(new com_privacystar_core_data_model_ConnectivityLogRealmProxy());
            }
            if (cls.equals(RegistrationData.class)) {
                return cls.cast(new com_privacystar_core_data_model_RegistrationDataRealmProxy());
            }
            if (cls.equals(SimpleOffender.class)) {
                return cls.cast(new com_privacystar_core_data_model_SimpleOffenderRealmProxy());
            }
            if (cls.equals(PendingBulkLookupNumber.class)) {
                return cls.cast(new C1917x8e2c557d());
            }
            if (cls.equals(DeviceExclusion.class)) {
                return cls.cast(new com_privacystar_core_data_model_DeviceExclusionRealmProxy());
            }
            if (cls.equals(Message.class)) {
                return cls.cast(new com_privacystar_core_data_model_MessageRealmProxy());
            }
            if (cls.equals(PlayStoreReceipt.class)) {
                return cls.cast(new com_privacystar_core_data_model_PlayStoreReceiptRealmProxy());
            }
            throw getMissingProxyClassException(cls);
        } finally {
            realmObjectContext.clear();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }
}

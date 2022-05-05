package io.realm;

import com.tmobile.services.nameid.model.AnalyticsEvent;
import com.tmobile.services.nameid.model.CallEvent;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.CheckName;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.LogUtilItem;
import com.tmobile.services.nameid.model.MessageItem;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchedNumber;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.utility.LogItem;
import io.realm.BaseRealm;
import io.realm.C2161x5b90b7;
import io.realm.C2165x726fb5bc;
import io.realm.C2167x26c2e219;
import io.realm.annotations.RealmModule;
import io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy;
import io.realm.com_tmobile_services_nameid_model_CallEventRealmProxy;
import io.realm.com_tmobile_services_nameid_model_CallerRealmProxy;
import io.realm.com_tmobile_services_nameid_model_CallerSettingRealmProxy;
import io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy;
import io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxy;
import io.realm.com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy;
import io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxy;
import io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxy;
import io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy;
import io.realm.com_tmobile_services_nameid_model_TmoUserStatusRealmProxy;
import io.realm.com_tmobile_services_nameid_utility_LogItemRealmProxy;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
@RealmModule
/* loaded from: classes2-dex2jar.jar:io/realm/DefaultRealmModuleMediator.class */
class DefaultRealmModuleMediator extends RealmProxyMediator {

    /* renamed from: a */
    private static final Set<Class<? extends RealmModel>> f19826a;

    static {
        HashSet hashSet = new HashSet(15);
        hashSet.add(CheckName.class);
        hashSet.add(TmoUserStatus.class);
        hashSet.add(SearchedNumber.class);
        hashSet.add(LicenseResponseItem.class);
        hashSet.add(LogUtilItem.class);
        hashSet.add(MessageItem.class);
        hashSet.add(AnalyticsEvent.class);
        hashSet.add(Caller.class);
        hashSet.add(EventSummaryItem.class);
        hashSet.add(ActivityItem.class);
        hashSet.add(CallerSetting.class);
        hashSet.add(CallEvent.class);
        hashSet.add(CategorySetting.class);
        hashSet.add(MessageUserPreference.class);
        hashSet.add(LogItem.class);
        f19826a = Collections.unmodifiableSet(hashSet);
    }

    DefaultRealmModuleMediator() {
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: b */
    public <E extends RealmModel> E mo2564b(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Class<?> superclass = e instanceof RealmObjectProxy ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(CheckName.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_CheckNameRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_CheckNameRealmProxy.CheckNameColumnInfo) realm.mo3059L().m2854g(CheckName.class), (CheckName) e, z, map, set)));
        }
        if (superclass.equals(TmoUserStatus.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.TmoUserStatusColumnInfo) realm.mo3059L().m2854g(TmoUserStatus.class), (TmoUserStatus) e, z, map, set)));
        }
        if (superclass.equals(SearchedNumber.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_SearchedNumberRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_SearchedNumberRealmProxy.SearchedNumberColumnInfo) realm.mo3059L().m2854g(SearchedNumber.class), (SearchedNumber) e, z, map, set)));
        }
        if (superclass.equals(LicenseResponseItem.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.LicenseResponseItemColumnInfo) realm.mo3059L().m2854g(LicenseResponseItem.class), (LicenseResponseItem) e, z, map, set)));
        }
        if (superclass.equals(LogUtilItem.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_LogUtilItemRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_LogUtilItemRealmProxy.LogUtilItemColumnInfo) realm.mo3059L().m2854g(LogUtilItem.class), (LogUtilItem) e, z, map, set)));
        }
        if (superclass.equals(MessageItem.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_MessageItemRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_MessageItemRealmProxy.MessageItemColumnInfo) realm.mo3059L().m2854g(MessageItem.class), (MessageItem) e, z, map, set)));
        }
        if (superclass.equals(AnalyticsEvent.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.AnalyticsEventColumnInfo) realm.mo3059L().m2854g(AnalyticsEvent.class), (AnalyticsEvent) e, z, map, set)));
        }
        if (superclass.equals(Caller.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_CallerRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_CallerRealmProxy.CallerColumnInfo) realm.mo3059L().m2854g(Caller.class), (Caller) e, z, map, set)));
        }
        if (superclass.equals(EventSummaryItem.class)) {
            return (E) ((RealmModel) superclass.cast(C2167x26c2e219.copyOrUpdate(realm, (C2167x26c2e219.EventSummaryItemColumnInfo) realm.mo3059L().m2854g(EventSummaryItem.class), (EventSummaryItem) e, z, map, set)));
        }
        if (superclass.equals(ActivityItem.class)) {
            return (E) ((RealmModel) superclass.cast(C2165x726fb5bc.copyOrUpdate(realm, (C2165x726fb5bc.ActivityItemColumnInfo) realm.mo3059L().m2854g(ActivityItem.class), (ActivityItem) e, z, map, set)));
        }
        if (superclass.equals(CallerSetting.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_CallerSettingRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_CallerSettingRealmProxy.CallerSettingColumnInfo) realm.mo3059L().m2854g(CallerSetting.class), (CallerSetting) e, z, map, set)));
        }
        if (superclass.equals(CallEvent.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_CallEventRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_CallEventRealmProxy.CallEventColumnInfo) realm.mo3059L().m2854g(CallEvent.class), (CallEvent) e, z, map, set)));
        }
        if (superclass.equals(CategorySetting.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_model_CategorySettingRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_model_CategorySettingRealmProxy.CategorySettingColumnInfo) realm.mo3059L().m2854g(CategorySetting.class), (CategorySetting) e, z, map, set)));
        }
        if (superclass.equals(MessageUserPreference.class)) {
            return (E) ((RealmModel) superclass.cast(C2161x5b90b7.copyOrUpdate(realm, (C2161x5b90b7.MessageUserPreferenceColumnInfo) realm.mo3059L().m2854g(MessageUserPreference.class), (MessageUserPreference) e, z, map, set)));
        }
        if (superclass.equals(LogItem.class)) {
            return (E) ((RealmModel) superclass.cast(com_tmobile_services_nameid_utility_LogItemRealmProxy.copyOrUpdate(realm, (com_tmobile_services_nameid_utility_LogItemRealmProxy.LogItemColumnInfo) realm.mo3059L().m2854g(LogItem.class), (LogItem) e, z, map, set)));
        }
        throw RealmProxyMediator.m2683e(superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: c */
    public ColumnInfo mo2563c(Class<? extends RealmModel> cls, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator.m2684a(cls);
        if (cls.equals(CheckName.class)) {
            return com_tmobile_services_nameid_model_CheckNameRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(TmoUserStatus.class)) {
            return com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(SearchedNumber.class)) {
            return com_tmobile_services_nameid_model_SearchedNumberRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LicenseResponseItem.class)) {
            return com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LogUtilItem.class)) {
            return com_tmobile_services_nameid_model_LogUtilItemRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(MessageItem.class)) {
            return com_tmobile_services_nameid_model_MessageItemRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(AnalyticsEvent.class)) {
            return com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(Caller.class)) {
            return com_tmobile_services_nameid_model_CallerRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(EventSummaryItem.class)) {
            return C2167x26c2e219.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(ActivityItem.class)) {
            return C2165x726fb5bc.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CallerSetting.class)) {
            return com_tmobile_services_nameid_model_CallerSettingRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CallEvent.class)) {
            return com_tmobile_services_nameid_model_CallEventRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(CategorySetting.class)) {
            return com_tmobile_services_nameid_model_CategorySettingRealmProxy.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(MessageUserPreference.class)) {
            return C2161x5b90b7.createColumnInfo(osSchemaInfo);
        }
        if (cls.equals(LogItem.class)) {
            return com_tmobile_services_nameid_utility_LogItemRealmProxy.createColumnInfo(osSchemaInfo);
        }
        throw RealmProxyMediator.m2683e(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: d */
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> mo2562d() {
        HashMap hashMap = new HashMap(15);
        hashMap.put(CheckName.class, com_tmobile_services_nameid_model_CheckNameRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(TmoUserStatus.class, com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(SearchedNumber.class, com_tmobile_services_nameid_model_SearchedNumberRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LicenseResponseItem.class, com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(LogUtilItem.class, com_tmobile_services_nameid_model_LogUtilItemRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(MessageItem.class, com_tmobile_services_nameid_model_MessageItemRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(AnalyticsEvent.class, com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(Caller.class, com_tmobile_services_nameid_model_CallerRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(EventSummaryItem.class, C2167x26c2e219.getExpectedObjectSchemaInfo());
        hashMap.put(ActivityItem.class, C2165x726fb5bc.getExpectedObjectSchemaInfo());
        hashMap.put(CallerSetting.class, com_tmobile_services_nameid_model_CallerSettingRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CallEvent.class, com_tmobile_services_nameid_model_CallEventRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(CategorySetting.class, com_tmobile_services_nameid_model_CategorySettingRealmProxy.getExpectedObjectSchemaInfo());
        hashMap.put(MessageUserPreference.class, C2161x5b90b7.getExpectedObjectSchemaInfo());
        hashMap.put(LogItem.class, com_tmobile_services_nameid_utility_LogItemRealmProxy.getExpectedObjectSchemaInfo());
        return hashMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: f */
    public Set<Class<? extends RealmModel>> mo2561f() {
        return f19826a;
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: h */
    public String mo2560h(Class<? extends RealmModel> cls) {
        RealmProxyMediator.m2684a(cls);
        if (cls.equals(CheckName.class)) {
            return "CheckName";
        }
        if (cls.equals(TmoUserStatus.class)) {
            return "TmoUserStatus";
        }
        if (cls.equals(SearchedNumber.class)) {
            return "SearchedNumber";
        }
        if (cls.equals(LicenseResponseItem.class)) {
            return "LicenseResponseItem";
        }
        if (cls.equals(LogUtilItem.class)) {
            return "LogUtilItem";
        }
        if (cls.equals(MessageItem.class)) {
            return "MessageItem";
        }
        if (cls.equals(AnalyticsEvent.class)) {
            return "AnalyticsEvent";
        }
        if (cls.equals(Caller.class)) {
            return "Caller";
        }
        if (cls.equals(EventSummaryItem.class)) {
            return "EventSummaryItem";
        }
        if (cls.equals(ActivityItem.class)) {
            return "ActivityItem";
        }
        if (cls.equals(CallerSetting.class)) {
            return "CallerSetting";
        }
        if (cls.equals(CallEvent.class)) {
            return "CallEvent";
        }
        if (cls.equals(CategorySetting.class)) {
            return "CategorySetting";
        }
        if (cls.equals(MessageUserPreference.class)) {
            return "MessageUserPreference";
        }
        if (cls.equals(LogItem.class)) {
            return "LogItem";
        }
        throw RealmProxyMediator.m2683e(cls);
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: i */
    public void mo2559i(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(CheckName.class)) {
            com_tmobile_services_nameid_model_CheckNameRealmProxy.insert(realm, (CheckName) realmModel, map);
        } else if (superclass.equals(TmoUserStatus.class)) {
            com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.insert(realm, (TmoUserStatus) realmModel, map);
        } else if (superclass.equals(SearchedNumber.class)) {
            com_tmobile_services_nameid_model_SearchedNumberRealmProxy.insert(realm, (SearchedNumber) realmModel, map);
        } else if (superclass.equals(LicenseResponseItem.class)) {
            com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.insert(realm, (LicenseResponseItem) realmModel, map);
        } else if (superclass.equals(LogUtilItem.class)) {
            com_tmobile_services_nameid_model_LogUtilItemRealmProxy.insert(realm, (LogUtilItem) realmModel, map);
        } else if (superclass.equals(MessageItem.class)) {
            com_tmobile_services_nameid_model_MessageItemRealmProxy.insert(realm, (MessageItem) realmModel, map);
        } else if (superclass.equals(AnalyticsEvent.class)) {
            com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.insert(realm, (AnalyticsEvent) realmModel, map);
        } else if (superclass.equals(Caller.class)) {
            com_tmobile_services_nameid_model_CallerRealmProxy.insert(realm, (Caller) realmModel, map);
        } else if (superclass.equals(EventSummaryItem.class)) {
            C2167x26c2e219.insert(realm, (EventSummaryItem) realmModel, map);
        } else if (superclass.equals(ActivityItem.class)) {
            C2165x726fb5bc.insert(realm, (ActivityItem) realmModel, map);
        } else if (superclass.equals(CallerSetting.class)) {
            com_tmobile_services_nameid_model_CallerSettingRealmProxy.insert(realm, (CallerSetting) realmModel, map);
        } else if (superclass.equals(CallEvent.class)) {
            com_tmobile_services_nameid_model_CallEventRealmProxy.insert(realm, (CallEvent) realmModel, map);
        } else if (superclass.equals(CategorySetting.class)) {
            com_tmobile_services_nameid_model_CategorySettingRealmProxy.insert(realm, (CategorySetting) realmModel, map);
        } else if (superclass.equals(MessageUserPreference.class)) {
            C2161x5b90b7.insert(realm, (MessageUserPreference) realmModel, map);
        } else if (superclass.equals(LogItem.class)) {
            com_tmobile_services_nameid_utility_LogItemRealmProxy.insert(realm, (LogItem) realmModel, map);
        } else {
            throw RealmProxyMediator.m2683e(superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: j */
    public void mo2558j(Realm realm, RealmModel realmModel, Map<RealmModel, Long> map) {
        Class<?> superclass = realmModel instanceof RealmObjectProxy ? realmModel.getClass().getSuperclass() : realmModel.getClass();
        if (superclass.equals(CheckName.class)) {
            com_tmobile_services_nameid_model_CheckNameRealmProxy.insertOrUpdate(realm, (CheckName) realmModel, map);
        } else if (superclass.equals(TmoUserStatus.class)) {
            com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.insertOrUpdate(realm, (TmoUserStatus) realmModel, map);
        } else if (superclass.equals(SearchedNumber.class)) {
            com_tmobile_services_nameid_model_SearchedNumberRealmProxy.insertOrUpdate(realm, (SearchedNumber) realmModel, map);
        } else if (superclass.equals(LicenseResponseItem.class)) {
            com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy.insertOrUpdate(realm, (LicenseResponseItem) realmModel, map);
        } else if (superclass.equals(LogUtilItem.class)) {
            com_tmobile_services_nameid_model_LogUtilItemRealmProxy.insertOrUpdate(realm, (LogUtilItem) realmModel, map);
        } else if (superclass.equals(MessageItem.class)) {
            com_tmobile_services_nameid_model_MessageItemRealmProxy.insertOrUpdate(realm, (MessageItem) realmModel, map);
        } else if (superclass.equals(AnalyticsEvent.class)) {
            com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.insertOrUpdate(realm, (AnalyticsEvent) realmModel, map);
        } else if (superclass.equals(Caller.class)) {
            com_tmobile_services_nameid_model_CallerRealmProxy.insertOrUpdate(realm, (Caller) realmModel, map);
        } else if (superclass.equals(EventSummaryItem.class)) {
            C2167x26c2e219.insertOrUpdate(realm, (EventSummaryItem) realmModel, map);
        } else if (superclass.equals(ActivityItem.class)) {
            C2165x726fb5bc.insertOrUpdate(realm, (ActivityItem) realmModel, map);
        } else if (superclass.equals(CallerSetting.class)) {
            com_tmobile_services_nameid_model_CallerSettingRealmProxy.insertOrUpdate(realm, (CallerSetting) realmModel, map);
        } else if (superclass.equals(CallEvent.class)) {
            com_tmobile_services_nameid_model_CallEventRealmProxy.insertOrUpdate(realm, (CallEvent) realmModel, map);
        } else if (superclass.equals(CategorySetting.class)) {
            com_tmobile_services_nameid_model_CategorySettingRealmProxy.insertOrUpdate(realm, (CategorySetting) realmModel, map);
        } else if (superclass.equals(MessageUserPreference.class)) {
            C2161x5b90b7.insertOrUpdate(realm, (MessageUserPreference) realmModel, map);
        } else if (superclass.equals(LogItem.class)) {
            com_tmobile_services_nameid_utility_LogItemRealmProxy.insertOrUpdate(realm, (LogItem) realmModel, map);
        } else {
            throw RealmProxyMediator.m2683e(superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: k */
    public <E extends RealmModel> E mo2557k(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        try {
            realmObjectContext.m3137g((BaseRealm) obj, row, columnInfo, z, list);
            RealmProxyMediator.m2684a(cls);
            if (cls.equals(CheckName.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_CheckNameRealmProxy());
            }
            if (cls.equals(TmoUserStatus.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_TmoUserStatusRealmProxy());
            }
            if (cls.equals(SearchedNumber.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_SearchedNumberRealmProxy());
            }
            if (cls.equals(LicenseResponseItem.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_LicenseResponseItemRealmProxy());
            }
            if (cls.equals(LogUtilItem.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_LogUtilItemRealmProxy());
            }
            if (cls.equals(MessageItem.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_MessageItemRealmProxy());
            }
            if (cls.equals(AnalyticsEvent.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_AnalyticsEventRealmProxy());
            }
            if (cls.equals(Caller.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_CallerRealmProxy());
            }
            if (cls.equals(EventSummaryItem.class)) {
                return cls.cast(new C2167x26c2e219());
            }
            if (cls.equals(ActivityItem.class)) {
                return cls.cast(new C2165x726fb5bc());
            }
            if (cls.equals(CallerSetting.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_CallerSettingRealmProxy());
            }
            if (cls.equals(CallEvent.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_CallEventRealmProxy());
            }
            if (cls.equals(CategorySetting.class)) {
                return cls.cast(new com_tmobile_services_nameid_model_CategorySettingRealmProxy());
            }
            if (cls.equals(MessageUserPreference.class)) {
                return cls.cast(new C2161x5b90b7());
            }
            if (cls.equals(LogItem.class)) {
                return cls.cast(new com_tmobile_services_nameid_utility_LogItemRealmProxy());
            }
            throw RealmProxyMediator.m2683e(cls);
        } finally {
            realmObjectContext.m3143a();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    /* renamed from: l */
    public boolean mo2556l() {
        return true;
    }
}

package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
import kotlin.p530f.C18363d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;", "", "()V", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin.class */
public final class AnalyticsDataManagerKotlin {

    /* renamed from: a */
    public static final Companion f19920a = new Companion(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\b\u001a\u00020\tJ\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\tJ&\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\b\u001a\u00020\tJ&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00142\u0006\u0010\b\u001a\u00020\tJ*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u0016j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0007`\u00172\u0006\u0010\b\u001a\u00020\t¨\u0006\u0018"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;", "", "()V", "getAllCallsByDayType", "", "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;", "Landroid/util/Pair;", "", "datePeriod", "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;", "getAllNumberOfCallsByType", "getDataForCallAppForYouCardIdentification", "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;", "getDataForUnansweredCard", "", "getDataMostCallsCard", "getLongestCallByPhoneNumber", "", "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;", "getQuery", "Lio/objectbox/query/QueryBuilder;", "getTotalDurationByPhoneNumber", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static LinkedHashMap<String, Integer> m31619a(AnalyticsDataManager.DatePeriod datePeriod) {
            int i;
            C18524p.m3840d(datePeriod, "datePeriod");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<AnalyticsCallsData> m4628c = m31617c(datePeriod).m4609a(AnalyticsCallsData_.isIncognito, false).m4609a(AnalyticsCallsData_.isExclude, false).m4603c().m4615a(AnalyticsCallsData_.isExclude).m4618a().m4628c();
            C18524p.m3843b(m4628c, "getQuery(datePeriod).equ…isExclude).build().find()");
            List<AnalyticsCallsData> list = m4628c;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj : list) {
                AnalyticsCallsData it2 = (AnalyticsCallsData) obj;
                C18524p.m3843b(it2, "it");
                String phoneAsGlobal = it2.getPhoneAsGlobal();
                Object obj2 = linkedHashMap2.get(phoneAsGlobal);
                ArrayList arrayList = obj2;
                if (obj2 == null) {
                    arrayList = new ArrayList();
                    linkedHashMap2.put(phoneAsGlobal, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                Iterator it3 = ((Iterable) entry.getValue()).iterator();
                int i2 = 0;
                while (true) {
                    i = i2;
                    if (!it3.hasNext()) {
                        break;
                    }
                    AnalyticsCallsData it4 = (AnalyticsCallsData) it3.next();
                    C18524p.m3843b(it4, "it");
                    i2 = i + ((int) it4.getDuration());
                }
                if (i > 0) {
                    linkedHashMap.put(entry.getKey(), Integer.valueOf(i));
                }
            }
            List<C18538n> b = C18282n.m4141b((Iterable) C18282n.m4145a((Iterable) C18247ai.m4246d(linkedHashMap), new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.data.AnalyticsDataManagerKotlin$Companion$getTotalDurationByPhoneNumber$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return C18299a.m4103a((Integer) ((C18538n) t2).f63625b, (Integer) ((C18538n) t).f63625b);
                }
            }), 3);
            LinkedHashMap<String, Integer> linkedHashMap3 = new LinkedHashMap<>(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) b, 10)), 16));
            for (C18538n c18538n : b) {
                linkedHashMap3.put((String) c18538n.f63624a, Integer.valueOf(((Number) c18538n.f63625b).intValue()));
            }
            return linkedHashMap3;
        }

        /* renamed from: b */
        public static AnalyticsDataManager.AnalyticsIdentifiedCardData m31618b(AnalyticsDataManager.DatePeriod datePeriod) {
            QueryBuilder queryBuilder;
            C18524p.m3840d(datePeriod, "datePeriod");
            AnalyticsDatePickerManager.DatePicker datePicker = (AnalyticsDatePickerManager.DatePicker) Prefs.f26548gG.get();
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            C17944a m4727d = callAppApplication.getObjectBoxStore().m4727d(AnalyticsCallsData.class);
            if (datePicker == AnalyticsDatePickerManager.DatePicker.WEEK || datePicker == AnalyticsDatePickerManager.DatePicker.MONTH) {
                QueryBuilder m4700e = m4727d.m4700e();
                C17978g<AnalyticsCallsData> c17978g = AnalyticsCallsData_.date;
                Object obj = AnalyticsDataManager.m31631a(datePicker, datePeriod).first;
                C18524p.m3843b(obj, "AnalyticsDataManager.get…e(date, datePeriod).first");
                long longValue = ((Number) obj).longValue();
                Object obj2 = AnalyticsDataManager.m31631a(datePicker, datePeriod).second;
                C18524p.m3843b(obj2, "AnalyticsDataManager.get…(date, datePeriod).second");
                queryBuilder = m4700e.m4612a(c17978g, longValue, ((Number) obj2).longValue());
            } else {
                queryBuilder = m4727d.m4700e();
            }
            List m4628c = queryBuilder.m4618a().m4628c();
            C18524p.m3843b(m4628c, "builder.build().find()");
            List list = m4628c;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj3 : list) {
                AnalyticsCallsData it2 = (AnalyticsCallsData) obj3;
                C18524p.m3843b(it2, "it");
                String phoneAsGlobal = it2.getPhoneAsGlobal();
                Object obj4 = linkedHashMap.get(phoneAsGlobal);
                ArrayList arrayList = obj4;
                if (obj4 == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(phoneAsGlobal, arrayList);
                }
                ((List) arrayList).add(obj3);
            }
            int i = 0;
            float f = 0.0f;
            int i2 = 0;
            for (List<AnalyticsCallsData> list2 : linkedHashMap.values()) {
                int size = i + list2.size();
                boolean z = false;
                float f2 = f;
                for (AnalyticsCallsData analyticsCallData : list2) {
                    C18524p.m3843b(analyticsCallData, "analyticsCallData");
                    if (analyticsCallData.isIdentified()) {
                        f2 += 1.0f;
                        z = true;
                    }
                }
                i = size;
                f = f2;
                if (z) {
                    i2++;
                    i = size;
                    f = f2;
                }
            }
            float f3 = 0.0f;
            if (i > 0) {
                f3 = (f / i) * 100.0f;
            }
            return new AnalyticsDataManager.AnalyticsIdentifiedCardData(i, i2, f3);
        }

        /* renamed from: c */
        public static QueryBuilder<AnalyticsCallsData> m31617c(AnalyticsDataManager.DatePeriod datePeriod) {
            QueryBuilder<AnalyticsCallsData> queryBuilder;
            C18524p.m3840d(datePeriod, "datePeriod");
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            C17944a m4727d = callAppApplication.getObjectBoxStore().m4727d(AnalyticsCallsData.class);
            AnalyticsDatePickerManager.DatePicker datePicker = (AnalyticsDatePickerManager.DatePicker) Prefs.f26548gG.get();
            if (datePicker == AnalyticsDatePickerManager.DatePicker.WEEK || datePicker == AnalyticsDatePickerManager.DatePicker.MONTH) {
                QueryBuilder m4700e = m4727d.m4700e();
                C17978g<AnalyticsCallsData> c17978g = AnalyticsCallsData_.date;
                Object obj = AnalyticsDataManager.m31631a(datePicker, datePeriod).first;
                C18524p.m3843b(obj, "AnalyticsDataManager.get…e(date, datePeriod).first");
                long longValue = ((Number) obj).longValue();
                Object obj2 = AnalyticsDataManager.m31631a(datePicker, datePeriod).second;
                C18524p.m3843b(obj2, "AnalyticsDataManager.get…(date, datePeriod).second");
                queryBuilder = m4700e.m4612a(c17978g, longValue, ((Number) obj2).longValue());
            } else {
                queryBuilder = m4727d.m4700e();
            }
            QueryBuilder<AnalyticsCallsData> builder = queryBuilder;
            C18524p.m3843b(builder, "builder");
            return queryBuilder;
        }
    }
}

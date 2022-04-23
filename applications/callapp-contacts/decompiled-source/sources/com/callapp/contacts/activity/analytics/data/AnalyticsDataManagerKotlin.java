package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.b.a;
import kotlin.f.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin.class */
public final class AnalyticsDataManagerKotlin {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f10896a = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\b\u001a\u00020\tJ\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\tJ&\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\b\u001a\u00020\tJ&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\b\u001a\u00020\tJ\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00142\u0006\u0010\b\u001a\u00020\tJ*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u0016j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0007`\u00172\u0006\u0010\b\u001a\u00020\t¨\u0006\u0018"}, d2 = {"Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;", "", "()V", "getAllCallsByDayType", "", "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;", "Landroid/util/Pair;", "", "datePeriod", "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;", "getAllNumberOfCallsByType", "getDataForCallAppForYouCardIdentification", "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;", "getDataForUnansweredCard", "", "getDataMostCallsCard", "getLongestCallByPhoneNumber", "", "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;", "getQuery", "Lio/objectbox/query/QueryBuilder;", "getTotalDurationByPhoneNumber", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static LinkedHashMap<String, Integer> a(AnalyticsDataManager.DatePeriod datePeriod) {
            p.d(datePeriod, "datePeriod");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<AnalyticsCallsData> c2 = c(datePeriod).a(AnalyticsCallsData_.isIncognito, false).a(AnalyticsCallsData_.isExclude, false).c().a(AnalyticsCallsData_.isExclude).a().c();
            p.b(c2, "getQuery(datePeriod).equ…isExclude).build().find()");
            List<AnalyticsCallsData> list = c2;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj : list) {
                AnalyticsCallsData it2 = (AnalyticsCallsData) obj;
                p.b(it2, "it");
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
                int i = 0;
                for (AnalyticsCallsData it3 : (Iterable) entry.getValue()) {
                    p.b(it3, "it");
                    i += (int) it3.getDuration();
                }
                if (i > 0) {
                    linkedHashMap.put(entry.getKey(), Integer.valueOf(i));
                }
            }
            List<n> b2 = kotlin.a.n.b((Iterable) kotlin.a.n.a((Iterable) ai.d(linkedHashMap), new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.data.AnalyticsDataManagerKotlin$Companion$getTotalDurationByPhoneNumber$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return a.a((Integer) ((n) t2).f36811b, (Integer) ((n) t).f36811b);
                }
            }), 3);
            LinkedHashMap<String, Integer> linkedHashMap3 = new LinkedHashMap<>(d.c(ai.a(kotlin.a.n.a((Iterable) b2, 10)), 16));
            for (n nVar : b2) {
                linkedHashMap3.put((String) nVar.f36810a, Integer.valueOf(((Number) nVar.f36811b).intValue()));
            }
            return linkedHashMap3;
        }

        public static AnalyticsDataManager.AnalyticsIdentifiedCardData b(AnalyticsDataManager.DatePeriod datePeriod) {
            QueryBuilder queryBuilder;
            p.d(datePeriod, "datePeriod");
            AnalyticsDatePickerManager.DatePicker datePicker = (AnalyticsDatePickerManager.DatePicker) Prefs.gG.get();
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            io.objectbox.a d2 = callAppApplication.getObjectBoxStore().d(AnalyticsCallsData.class);
            if (datePicker == AnalyticsDatePickerManager.DatePicker.WEEK || datePicker == AnalyticsDatePickerManager.DatePicker.MONTH) {
                QueryBuilder e = d2.e();
                g<AnalyticsCallsData> gVar = AnalyticsCallsData_.date;
                Object obj = AnalyticsDataManager.a(datePicker, datePeriod).first;
                p.b(obj, "AnalyticsDataManager.get…e(date, datePeriod).first");
                long longValue = ((Number) obj).longValue();
                Object obj2 = AnalyticsDataManager.a(datePicker, datePeriod).second;
                p.b(obj2, "AnalyticsDataManager.get…(date, datePeriod).second");
                queryBuilder = e.a(gVar, longValue, ((Number) obj2).longValue());
            } else {
                queryBuilder = d2.e();
            }
            List c2 = queryBuilder.a().c();
            p.b(c2, "builder.build().find()");
            List list = c2;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj3 : list) {
                AnalyticsCallsData it2 = (AnalyticsCallsData) obj3;
                p.b(it2, "it");
                String phoneAsGlobal = it2.getPhoneAsGlobal();
                Object obj4 = linkedHashMap.get(phoneAsGlobal);
                ArrayList arrayList = obj4;
                if (obj4 == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(phoneAsGlobal, arrayList);
                }
                ((List) arrayList).add(obj3);
            }
            float f = BitmapDescriptorFactory.HUE_RED;
            int i = 0;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            int i2 = 0;
            for (List<AnalyticsCallsData> list2 : linkedHashMap.values()) {
                int size = i + list2.size();
                boolean z = false;
                float f3 = f2;
                for (AnalyticsCallsData analyticsCallData : list2) {
                    p.b(analyticsCallData, "analyticsCallData");
                    if (analyticsCallData.isIdentified()) {
                        f3 += 1.0f;
                        z = true;
                    }
                }
                i = size;
                f2 = f3;
                if (z) {
                    i2++;
                    i = size;
                    f2 = f3;
                }
            }
            if (i > 0) {
                f = (f2 / i) * 100.0f;
            }
            return new AnalyticsDataManager.AnalyticsIdentifiedCardData(i, i2, f);
        }

        public static QueryBuilder<AnalyticsCallsData> c(AnalyticsDataManager.DatePeriod datePeriod) {
            QueryBuilder<AnalyticsCallsData> builder;
            p.d(datePeriod, "datePeriod");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            io.objectbox.a d2 = callAppApplication.getObjectBoxStore().d(AnalyticsCallsData.class);
            AnalyticsDatePickerManager.DatePicker datePicker = (AnalyticsDatePickerManager.DatePicker) Prefs.gG.get();
            if (datePicker == AnalyticsDatePickerManager.DatePicker.WEEK || datePicker == AnalyticsDatePickerManager.DatePicker.MONTH) {
                QueryBuilder e = d2.e();
                g<AnalyticsCallsData> gVar = AnalyticsCallsData_.date;
                Object obj = AnalyticsDataManager.a(datePicker, datePeriod).first;
                p.b(obj, "AnalyticsDataManager.get…e(date, datePeriod).first");
                long longValue = ((Number) obj).longValue();
                Object obj2 = AnalyticsDataManager.a(datePicker, datePeriod).second;
                p.b(obj2, "AnalyticsDataManager.get…(date, datePeriod).second");
                builder = e.a(gVar, longValue, ((Number) obj2).longValue());
            } else {
                builder = d2.e();
            }
            p.b(builder, "builder");
            return builder;
        }
    }
}

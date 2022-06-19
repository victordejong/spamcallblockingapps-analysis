package com.callapp.contacts.activity.whoViewedMyProfile;

import android.util.Pair;
import com.callapp.common.model.json.JSONProfileViewed;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.model.objectbox.ProfileViewedData_;
import com.callapp.contacts.model.objectbox.TYPE;
import com.callapp.contacts.sync.syncer.upload.UploadSyncer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018�� \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;", "", "()V", "Companion", "NotificationWhoViewedMyProfile", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager.class */
public final class WhoViewedMyProfileDataManager {

    /* renamed from: b */
    private static int f24644b;

    /* renamed from: d */
    private static final C17944a<ProfileViewedData> f24646d;

    /* renamed from: a */
    public static final Companion f24643a = new Companion(null);

    /* renamed from: c */
    private static final ReentrantLock f24645c = new ReentrantLock();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0010!\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\rH\u0007J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J \u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010!\u001a\u00020\"H\u0007J\u0010\u0010#\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010$H\u0007J4\u0010%\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u001c\u0012\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0&\u0012\u0004\u0012\u00020\u00040'0&2\u0006\u0010(\u001a\u00020)H\u0007J\u000e\u0010*\u001a\b\u0012\u0004\u0012\u00020\r0+H\u0007J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0-2\u0006\u0010(\u001a\u00020)H\u0002J\u001c\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)H\u0002J(\u0010/\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0&\u0012\u0004\u0012\u00020\u0004002\u0006\u0010(\u001a\u00020)H\u0002J \u00101\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u00102\u001a\u00020\u0017H\u0007J\b\u00103\u001a\u00020\u0017H\u0007J\u0010\u00104\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u001bH\u0007J\b\u00105\u001a\u00020\u0017H\u0007J\b\u00106\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R:\u0010\u000b\u001a&\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r \u000e*\u0012\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r\u0018\u00010\f0\f8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u000f\u0010\u0002R$\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u00067"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;", "", "()V", "ONE_DAY", "", "SEVEN_DAYS", "THREE_MONTH", "TWELVE_MONTH", "WHO_VIEWED_DATA_MAX_ROWS", "insertLock", "Ljava/util/concurrent/locks/ReentrantLock;", "profileViewedDataBox", "Lio/objectbox/Box;", "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;", "kotlin.jvm.PlatformType", "getProfileViewedDataBox$annotations", "viewerNotificationCount", "getViewerNotificationCount$annotations", "getViewerNotificationCount", "()I", "setViewerNotificationCount", "(I)V", "addDataFromServer", "", "data", "addMyView", "viewedPhoneNumber", "", Constants.EXTRA_ENTRY_POINT, "Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;", "addViewMe", "viewerPhone", "viewerName", "checkIfWhoViewedMyProfileDataExist", "", "getAllViewers", "", "getDataMapForWhoViewedMyProfile", "Landroid/util/Pair;", "Ljava/util/HashMap;", "period", "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;", "getNotificationDataByDate", "", "getQuery", "Lio/objectbox/query/QueryBuilder;", "getStartEndDate", "initMapWithDate", "Ljava/util/LinkedHashMap;", "onProfileViewed", "onSeenProfileViewer", "onShowProfileViewerNotification", "remove", "removeAll", "trimOldestRows", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* renamed from: a */
        static Pair<Long, Long> m29347a(AnalyticsDataManager.DatePeriod datePeriod) {
            char c;
            Calendar cal = Calendar.getInstance();
            if (datePeriod == AnalyticsDataManager.DatePeriod.CURRENT) {
                C18524p.m3843b(cal, "cal");
                Date time = cal.getTime();
                C18524p.m3843b(time, "cal.time");
                c = time.getTime();
            } else {
                cal.add(2, -3);
                C18524p.m3843b(cal, "cal");
                Date time2 = cal.getTime();
                C18524p.m3843b(time2, "cal.time");
                c = time2.getTime();
            }
            cal.add(2, -3);
            Date time3 = cal.getTime();
            C18524p.m3843b(time3, "cal.time");
            Pair<Long, Long> create = Pair.create(Long.valueOf(c), Long.valueOf(time3.getTime()));
            C18524p.m3843b(create, "Pair.create(start, end)");
            return create;
        }

        /* renamed from: a */
        public static void m29348a() {
            WhoViewedMyProfileDataManager.f24646d.m4701d();
        }

        /* renamed from: a */
        public static void m29346a(ProfileViewedData data) {
            C18524p.m3840d(data, "data");
            try {
                WhoViewedMyProfileDataManager.f24645c.lock();
                ProfileViewedData profileViewedData = (ProfileViewedData) WhoViewedMyProfileDataManager.f24646d.m4700e().m4611a(ProfileViewedData_.phoneNumber, data.getPhoneNumber()).m4600d().m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).m4618a().m4641a();
                if (profileViewedData == null) {
                    WhoViewedMyProfileDataManager.f24646d.m4711a((C17944a) new ProfileViewedData(0L, data.getPhoneNumber(), data.getEntrypoint(), data.getLastViewed(), data.getName(), 0, data.getType(), 33, null));
                } else {
                    profileViewedData.setCounter(profileViewedData.getCounter() + 1);
                    profileViewedData.setLastViewed(data.getLastViewed());
                    WhoViewedMyProfileDataManager.f24646d.m4711a((C17944a) profileViewedData);
                }
                WhoViewedMyProfileDataManager.f24645c.unlock();
                new Task() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$Companion$addDataFromServer$1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        WhoViewedMyProfileDataManager.Companion companion = WhoViewedMyProfileDataManager.f24643a;
                        WhoViewedMyProfileDataManager.Companion.m29340c();
                    }
                }.execute();
            } catch (Throwable th) {
                WhoViewedMyProfileDataManager.f24645c.unlock();
                throw th;
            }
        }

        /* renamed from: a */
        public static void m29345a(String viewerPhone) {
            C18524p.m3840d(viewerPhone, "viewerPhone");
            ProfileViewedData profileViewedData = (ProfileViewedData) WhoViewedMyProfileDataManager.f24646d.m4700e().m4611a(ProfileViewedData_.phoneNumber, viewerPhone).m4600d().m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).m4618a().m4641a();
            if (profileViewedData != null) {
                WhoViewedMyProfileDataManager.f24646d.m4708b(profileViewedData.getId());
            }
        }

        /* renamed from: a */
        public static void m29344a(final String viewedPhoneNumber, final String viewerName, final ENTRYPOINT entryPoint) {
            C18524p.m3840d(viewedPhoneNumber, "viewedPhoneNumber");
            C18524p.m3840d(viewerName, "viewerName");
            C18524p.m3840d(entryPoint, "entryPoint");
            new Task() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$Companion$onProfileViewed$1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    HttpUtils.m26982a(new HttpRequestParams.HttpRequestParamsBuilder(((((((((HttpUtils.getCallappServerPrefix() + "pv") + "?") + "myp") + "=") + UrlUtils.m31878a(Prefs.f26241aR.get())) + "&") + "tk") + "=") + Prefs.f26245aV.get()).m26994a(), UploadSyncer.getJsonObjectMapper().writeValueAsString(new JSONProfileViewed(viewedPhoneNumber, viewerName, String.valueOf(entryPoint.ordinal()))));
                }
            }.execute();
        }

        /* renamed from: b */
        public static long m29343b() {
            return WhoViewedMyProfileDataManager.f24646d.m4700e().m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).m4618a().m4625e();
        }

        /* renamed from: b */
        static LinkedHashMap<Pair<Long, Long>, Integer> m29342b(AnalyticsDataManager.DatePeriod datePeriod) {
            LinkedHashMap<Pair<Long, Long>, Integer> linkedHashMap = new LinkedHashMap<>();
            Pair<Long, Long> m29347a = m29347a(datePeriod);
            long longValue = ((Number) m29347a.first).longValue();
            Object obj = m29347a.second;
            C18524p.m3843b(obj, "startEndDate.second");
            long longValue2 = (longValue - ((Number) obj).longValue()) / 12;
            for (int i = 0; i <= 11; i++) {
                long longValue3 = ((Number) m29347a.second).longValue();
                long j = i * longValue2;
                linkedHashMap.put(Pair.create(Long.valueOf(longValue3 + j), Long.valueOf(((Number) m29347a.second).longValue() + j + longValue2)), 0);
            }
            return linkedHashMap;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00fa A[Catch: all -> 0x0114, TryCatch #0 {all -> 0x0114, blocks: (B:3:0x0012, B:5:0x004a, B:8:0x0073, B:9:0x008f, B:10:0x00b8, B:10:0x00b8, B:11:0x00bb, B:13:0x00d3, B:15:0x00e2, B:17:0x00fa, B:18:0x0102), top: B:24:0x0012 }] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m29341b(java.lang.String r13, java.lang.String r14, com.callapp.contacts.model.objectbox.ENTRYPOINT r15) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.Companion.m29341b(java.lang.String, java.lang.String, com.callapp.contacts.model.objectbox.ENTRYPOINT):void");
        }

        /* renamed from: c */
        public static final /* synthetic */ long m29340c() {
            if (WhoViewedMyProfileDataManager.f24646d.m4709b() > 1000) {
                List m4640a = WhoViewedMyProfileDataManager.f24646d.m4700e().m4614a((C17978g) ProfileViewedData_.lastViewed, 1).m4618a().m4640a(1000L);
                C18524p.m3843b(m4640a, "profileViewedDataBox.que…D_DATA_MAX_ROWS.toLong())");
                Object obj = m4640a.get(m4640a.size() - 1);
                C18524p.m3843b(obj, "whoViewed.get(whoViewed.size - 1)");
                return WhoViewedMyProfileDataManager.f24646d.m4700e().m4602c(ProfileViewedData_.lastViewed, ((ProfileViewedData) obj).getLastViewed()).m4618a().m4624f();
            }
            return 0L;
        }

        public final List<ProfileViewedData> getAllViewers() {
            return WhoViewedMyProfileDataManager.f24646d.m4700e().m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).m4614a((C17978g) ProfileViewedData_.lastViewed, 1).m4618a().m4628c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v34, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        public final List<ProfileViewedData> getNotificationDataByDate() {
            char c;
            Calendar calendar = Calendar.getInstance();
            C18524p.m3843b(calendar, "calendar");
            Date time = calendar.getTime();
            C18524p.m3843b(time, "calendar.time");
            ?? time2 = time.getTime();
            if (((NotificationWhoViewedMyProfile) Prefs.f26645hy.get()) == NotificationWhoViewedMyProfile.DAILY) {
                calendar.add(5, -1);
                Date time3 = calendar.getTime();
                C18524p.m3843b(time3, "calendar.time");
                c = time3.getTime();
            } else if (((NotificationWhoViewedMyProfile) Prefs.f26645hy.get()) == NotificationWhoViewedMyProfile.WEEKLY) {
                calendar.add(5, -7);
                Date time4 = calendar.getTime();
                C18524p.m3843b(time4, "calendar.time");
                c = time4.getTime();
            } else {
                c = time2;
            }
            List<ProfileViewedData> m4628c = WhoViewedMyProfileDataManager.f24646d.m4700e().m4612a(ProfileViewedData_.lastViewed, c, time2).m4600d().m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).m4618a().m4628c();
            C18524p.m3843b(m4628c, "profileViewedDataBox.que….toLong()).build().find()");
            return m4628c;
        }

        public final int getViewerNotificationCount() {
            return WhoViewedMyProfileDataManager.f24644b;
        }

        public final void setViewerNotificationCount(int i) {
            WhoViewedMyProfileDataManager.f24644b = i;
        }
    }

    /* JADX WARN: Init of enum DAILY can be incorrect */
    /* JADX WARN: Init of enum INSTANT can be incorrect */
    /* JADX WARN: Init of enum WEEKLY can be incorrect */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "INSTANT", "DAILY", "WEEKLY", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile.class */
    public enum NotificationWhoViewedMyProfile {
        INSTANT(r0),
        DAILY(r0),
        WEEKLY(r0);
        
        private final String type;

        static {
            C18524p.m3843b(Activities.getString(2131888224), "Activities.getString(R.s…iew_notification_instant)");
            C18524p.m3843b(Activities.getString(2131888223), "Activities.getString(R.s…_view_notification_daily)");
            C18524p.m3843b(Activities.getString(2131888225), "Activities.getString(R.s…view_notification_weekly)");
        }

        NotificationWhoViewedMyProfile(String str) {
            this.type = str;
        }

        public final String getType() {
            return this.type;
        }
    }

    static {
        CallAppApplication callAppApplication = CallAppApplication.get();
        C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
        f24646d = callAppApplication.getObjectBoxStore().m4727d(ProfileViewedData.class);
    }

    /* renamed from: a */
    public static final Pair<Integer, HashMap<Pair<Long, Long>, Integer>> m29359a(AnalyticsDataManager.DatePeriod period) {
        Pair<Long, Long> pair;
        C18524p.m3840d(period, "period");
        CallAppApplication callAppApplication = CallAppApplication.get();
        C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
        QueryBuilder m4700e = callAppApplication.getObjectBoxStore().m4727d(ProfileViewedData.class).m4700e();
        C17978g<ProfileViewedData> c17978g = ProfileViewedData_.lastViewed;
        Object obj = Companion.m29347a(period).first;
        C18524p.m3843b(obj, "getStartEndDate(period).first");
        long longValue = ((Number) obj).longValue();
        Object obj2 = Companion.m29347a(period).second;
        C18524p.m3843b(obj2, "getStartEndDate(period).second");
        QueryBuilder m4613a = m4700e.m4612a(c17978g, longValue, ((Number) obj2).longValue()).m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue());
        C18524p.m3843b(m4613a, "box.query().between(Prof…PE.VIEWME.value.toLong())");
        int i = 0;
        List m4628c = m4613a.m4614a((C17978g) ProfileViewedData_.lastViewed, 0).m4618a().m4628c();
        C18524p.m3843b(m4628c, "getQuery(period).order(P…astViewed).build().find()");
        List list = m4628c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj3 : list) {
            Long valueOf = Long.valueOf(((ProfileViewedData) obj3).getLastViewed());
            Object obj4 = linkedHashMap.get(valueOf);
            ArrayList arrayList = obj4;
            if (obj4 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj3);
        }
        LinkedHashMap<Pair<Long, Long>, Integer> m29342b = Companion.m29342b(period);
        Iterator<Pair<Long, Long>> it2 = m29342b.keySet().iterator();
        Pair<Long, Long> next = it2.next();
        C18524p.m3843b(next, "keysIter.next()");
        Pair<Long, Long> pair2 = next;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            int size = ((Collection) entry.getValue()).size();
            int i2 = i + size;
            Pair<Long, Long> pair3 = pair2;
            while (true) {
                pair = pair3;
                if (!it2.hasNext()) {
                    break;
                }
                long longValue2 = ((Number) entry.getKey()).longValue();
                Object obj5 = pair.second;
                C18524p.m3843b(obj5, "key.second");
                if (longValue2 < ((Number) obj5).longValue()) {
                    break;
                }
                Pair<Long, Long> next2 = it2.next();
                C18524p.m3843b(next2, "keysIter.next()");
                pair3 = next2;
            }
            Integer num = m29342b.get(pair);
            Integer valueOf2 = num != null ? Integer.valueOf(num.intValue() + size) : null;
            i = i2;
            pair2 = pair;
            if (valueOf2 != null) {
                m29342b.put(pair, Integer.valueOf(valueOf2.intValue()));
                i = i2;
                pair2 = pair;
            }
        }
        Pair<Integer, HashMap<Pair<Long, Long>, Integer>> create = Pair.create(Integer.valueOf(i), m29342b);
        C18524p.m3843b(create, "Pair.create(total, map)");
        return create;
    }

    /* renamed from: a */
    public static final void m29358a(ProfileViewedData profileViewedData) {
        Companion.m29346a(profileViewedData);
    }

    /* renamed from: a */
    public static final void m29357a(String str) {
        Companion.m29345a(str);
    }

    /* renamed from: a */
    public static final void m29356a(String viewedPhoneNumber, ENTRYPOINT entryPoint) {
        C18524p.m3840d(viewedPhoneNumber, "viewedPhoneNumber");
        C18524p.m3840d(entryPoint, "entryPoint");
        try {
            ReentrantLock reentrantLock = f24645c;
            reentrantLock.lock();
            C17944a<ProfileViewedData> c17944a = f24646d;
            ProfileViewedData m4641a = c17944a.m4700e().m4611a(ProfileViewedData_.phoneNumber, viewedPhoneNumber).m4600d().m4613a(ProfileViewedData_.type, TYPE.MYVIEW.getValue()).m4614a(ProfileViewedData_.lastViewed, 1).m4618a().m4641a();
            UserProfileManager userProfileManager = UserProfileManager.get();
            C18524p.m3843b(userProfileManager, "UserProfileManager.get()");
            String name = userProfileManager.getUserFullName();
            if (m4641a == null) {
                long currentTimeMillis = System.currentTimeMillis();
                TYPE type = TYPE.MYVIEW;
                C18524p.m3843b(name, "name");
                c17944a.m4711a((C17944a<ProfileViewedData>) new ProfileViewedData(0L, viewedPhoneNumber, entryPoint, currentTimeMillis, name, 0, type, 33, null));
                Companion.m29344a(viewedPhoneNumber, name, entryPoint);
            } else {
                if (DateUtils.m27118b(new Date(m4641a.getLastViewed()), new Date()) >= 7) {
                    C18524p.m3843b(name, "name");
                    Companion.m29344a(viewedPhoneNumber, name, entryPoint);
                    m4641a.setLastViewed(System.currentTimeMillis());
                }
                m4641a.setCounter(m4641a.getCounter() + 1);
                c17944a.m4711a((C17944a<ProfileViewedData>) m4641a);
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            f24645c.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    public static final void m29355a(String str, String str2, ENTRYPOINT entrypoint) {
        Companion.m29341b(str, str2, entrypoint);
    }

    /* renamed from: d */
    public static final void m29352d() {
        f24643a.setViewerNotificationCount(0);
    }

    /* renamed from: e */
    public static final void m29351e() {
        Companion companion = f24643a;
        companion.setViewerNotificationCount(companion.getViewerNotificationCount() + 1);
    }

    /* renamed from: f */
    public static final void m29350f() {
        Companion.m29348a();
    }

    /* renamed from: g */
    public static final long m29349g() {
        return Companion.m29343b();
    }

    public static final List<ProfileViewedData> getAllViewers() {
        return f24643a.getAllViewers();
    }

    public static final int getViewerNotificationCount() {
        return f24644b;
    }
}

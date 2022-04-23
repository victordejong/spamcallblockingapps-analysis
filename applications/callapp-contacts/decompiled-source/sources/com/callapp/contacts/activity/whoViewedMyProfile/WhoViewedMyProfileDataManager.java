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
import io.objectbox.a;
import io.objectbox.g;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018�� \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;", "", "()V", "Companion", "NotificationWhoViewedMyProfile", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager.class */
public final class WhoViewedMyProfileDataManager {

    /* renamed from: b  reason: collision with root package name */
    private static int f14019b;

    /* renamed from: d  reason: collision with root package name */
    private static final a<ProfileViewedData> f14021d;

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f14018a = new Companion(null);

    /* renamed from: c  reason: collision with root package name */
    private static final ReentrantLock f14020c = new ReentrantLock();

    @Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0010!\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\rH\u0007J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J \u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010!\u001a\u00020\"H\u0007J\u0010\u0010#\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010$H\u0007J4\u0010%\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u001c\u0012\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0&\u0012\u0004\u0012\u00020\u00040'0&2\u0006\u0010(\u001a\u00020)H\u0007J\u000e\u0010*\u001a\b\u0012\u0004\u0012\u00020\r0+H\u0007J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0-2\u0006\u0010(\u001a\u00020)H\u0002J\u001c\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)H\u0002J(\u0010/\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0&\u0012\u0004\u0012\u00020\u0004002\u0006\u0010(\u001a\u00020)H\u0002J \u00101\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u00102\u001a\u00020\u0017H\u0007J\b\u00103\u001a\u00020\u0017H\u0007J\u0010\u00104\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u001bH\u0007J\b\u00105\u001a\u00020\u0017H\u0007J\b\u00106\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R:\u0010\u000b\u001a&\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r \u000e*\u0012\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r\u0018\u00010\f0\f8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u000f\u0010\u0002R$\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u00067"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;", "", "()V", "ONE_DAY", "", "SEVEN_DAYS", "THREE_MONTH", "TWELVE_MONTH", "WHO_VIEWED_DATA_MAX_ROWS", "insertLock", "Ljava/util/concurrent/locks/ReentrantLock;", "profileViewedDataBox", "Lio/objectbox/Box;", "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;", "kotlin.jvm.PlatformType", "getProfileViewedDataBox$annotations", "viewerNotificationCount", "getViewerNotificationCount$annotations", "getViewerNotificationCount", "()I", "setViewerNotificationCount", "(I)V", "addDataFromServer", "", "data", "addMyView", "viewedPhoneNumber", "", Constants.EXTRA_ENTRY_POINT, "Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;", "addViewMe", "viewerPhone", "viewerName", "checkIfWhoViewedMyProfileDataExist", "", "getAllViewers", "", "getDataMapForWhoViewedMyProfile", "Landroid/util/Pair;", "Ljava/util/HashMap;", "period", "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;", "getNotificationDataByDate", "", "getQuery", "Lio/objectbox/query/QueryBuilder;", "getStartEndDate", "initMapWithDate", "Ljava/util/LinkedHashMap;", "onProfileViewed", "onSeenProfileViewer", "onShowProfileViewerNotification", "remove", "removeAll", "trimOldestRows", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        static Pair<Long, Long> a(AnalyticsDataManager.DatePeriod datePeriod) {
            long j;
            Calendar cal = Calendar.getInstance();
            if (datePeriod == AnalyticsDataManager.DatePeriod.CURRENT) {
                p.b(cal, "cal");
                Date time = cal.getTime();
                p.b(time, "cal.time");
                j = time.getTime();
            } else {
                cal.add(2, -3);
                p.b(cal, "cal");
                Date time2 = cal.getTime();
                p.b(time2, "cal.time");
                j = time2.getTime();
            }
            cal.add(2, -3);
            Date time3 = cal.getTime();
            p.b(time3, "cal.time");
            Pair<Long, Long> create = Pair.create(Long.valueOf(j), Long.valueOf(time3.getTime()));
            p.b(create, "Pair.create(start, end)");
            return create;
        }

        public static void a() {
            WhoViewedMyProfileDataManager.f14021d.d();
        }

        public static void a(ProfileViewedData data) {
            p.d(data, "data");
            try {
                WhoViewedMyProfileDataManager.f14020c.lock();
                ProfileViewedData profileViewedData = (ProfileViewedData) WhoViewedMyProfileDataManager.f14021d.e().a(ProfileViewedData_.phoneNumber, data.getPhoneNumber()).d().a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).a().a();
                if (profileViewedData == null) {
                    WhoViewedMyProfileDataManager.f14021d.a((a) new ProfileViewedData(0L, data.getPhoneNumber(), data.getEntrypoint(), data.getLastViewed(), data.getName(), 0, data.getType(), 33, null));
                } else {
                    profileViewedData.setCounter(profileViewedData.getCounter() + 1);
                    profileViewedData.setLastViewed(data.getLastViewed());
                    WhoViewedMyProfileDataManager.f14021d.a((a) profileViewedData);
                }
                WhoViewedMyProfileDataManager.f14020c.unlock();
                new Task() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$Companion$addDataFromServer$1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        WhoViewedMyProfileDataManager.Companion companion = WhoViewedMyProfileDataManager.f14018a;
                        WhoViewedMyProfileDataManager.Companion.c();
                    }
                }.execute();
            } catch (Throwable th) {
                WhoViewedMyProfileDataManager.f14020c.unlock();
                throw th;
            }
        }

        public static void a(String viewerPhone) {
            p.d(viewerPhone, "viewerPhone");
            ProfileViewedData profileViewedData = (ProfileViewedData) WhoViewedMyProfileDataManager.f14021d.e().a(ProfileViewedData_.phoneNumber, viewerPhone).d().a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).a().a();
            if (profileViewedData != null) {
                WhoViewedMyProfileDataManager.f14021d.b(profileViewedData.getId());
            }
        }

        public static void a(final String viewedPhoneNumber, final String viewerName, final ENTRYPOINT entryPoint) {
            p.d(viewedPhoneNumber, "viewedPhoneNumber");
            p.d(viewerName, "viewerName");
            p.d(entryPoint, "entryPoint");
            new Task() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$Companion$onProfileViewed$1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    HttpUtils.a(new HttpRequestParams.HttpRequestParamsBuilder(((((((((HttpUtils.getCallappServerPrefix() + "pv") + "?") + "myp") + "=") + UrlUtils.a(Prefs.aR.get())) + "&") + "tk") + "=") + Prefs.aV.get()).a(), UploadSyncer.getJsonObjectMapper().writeValueAsString(new JSONProfileViewed(viewedPhoneNumber, viewerName, String.valueOf(entryPoint.ordinal()))));
                }
            }.execute();
        }

        public static long b() {
            return WhoViewedMyProfileDataManager.f14021d.e().a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).a().e();
        }

        static LinkedHashMap<Pair<Long, Long>, Integer> b(AnalyticsDataManager.DatePeriod datePeriod) {
            LinkedHashMap<Pair<Long, Long>, Integer> linkedHashMap = new LinkedHashMap<>();
            Pair<Long, Long> a2 = a(datePeriod);
            long longValue = ((Number) a2.first).longValue();
            Object obj = a2.second;
            p.b(obj, "startEndDate.second");
            long longValue2 = (longValue - ((Number) obj).longValue()) / 12;
            for (int i = 0; i <= 11; i++) {
                long longValue3 = ((Number) a2.second).longValue();
                long j = i * longValue2;
                linkedHashMap.put(Pair.create(Long.valueOf(longValue3 + j), Long.valueOf(((Number) a2.second).longValue() + j + longValue2)), 0);
            }
            return linkedHashMap;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00fa A[Catch: all -> 0x0114, TryCatch #0 {all -> 0x0114, blocks: (B:3:0x0012, B:5:0x004a, B:8:0x0073, B:9:0x008f, B:10:0x00b8, B:10:0x00b8, B:11:0x00bb, B:13:0x00d3, B:15:0x00e2, B:17:0x00fa, B:18:0x0102), top: B:24:0x0012 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void b(java.lang.String r13, java.lang.String r14, com.callapp.contacts.model.objectbox.ENTRYPOINT r15) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.Companion.b(java.lang.String, java.lang.String, com.callapp.contacts.model.objectbox.ENTRYPOINT):void");
        }

        public static final /* synthetic */ long c() {
            if (WhoViewedMyProfileDataManager.f14021d.b() <= 1000) {
                return 0L;
            }
            List a2 = WhoViewedMyProfileDataManager.f14021d.e().a((g) ProfileViewedData_.lastViewed, 1).a().a(1000L);
            p.b(a2, "profileViewedDataBox.que…D_DATA_MAX_ROWS.toLong())");
            Object obj = a2.get(a2.size() - 1);
            p.b(obj, "whoViewed.get(whoViewed.size - 1)");
            return WhoViewedMyProfileDataManager.f14021d.e().c(ProfileViewedData_.lastViewed, ((ProfileViewedData) obj).getLastViewed()).a().f();
        }

        public final List<ProfileViewedData> getAllViewers() {
            return WhoViewedMyProfileDataManager.f14021d.e().a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).a((g) ProfileViewedData_.lastViewed, 1).a().c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [io.objectbox.query.QueryBuilder] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<com.callapp.contacts.model.objectbox.ProfileViewedData> getNotificationDataByDate() {
            /*
                r7 = this;
                java.util.Calendar r0 = java.util.Calendar.getInstance()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "calendar"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                java.util.Date r0 = r0.getTime()
                r9 = r0
                r0 = r9
                java.lang.String r1 = "calendar.time"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r9
                long r0 = r0.getTime()
                r10 = r0
                com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile> r0 = com.callapp.contacts.manager.preferences.Prefs.hy
                java.lang.Object r0 = r0.get()
                com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile r0 = (com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) r0
                com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile r1 = com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.DAILY
                if (r0 != r1) goto L_0x0046
                r0 = r8
                r1 = 5
                r2 = -1
                r0.add(r1, r2)
                r0 = r8
                java.util.Date r0 = r0.getTime()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "calendar.time"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                long r0 = r0.getTime()
                r12 = r0
            L_0x0043:
                goto L_0x0074
            L_0x0046:
                com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile> r0 = com.callapp.contacts.manager.preferences.Prefs.hy
                java.lang.Object r0 = r0.get()
                com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile r0 = (com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) r0
                com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile r1 = com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.WEEKLY
                if (r0 != r1) goto L_0x0071
                r0 = r8
                r1 = 5
                r2 = -7
                r0.add(r1, r2)
                r0 = r8
                java.util.Date r0 = r0.getTime()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "calendar.time"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                long r0 = r0.getTime()
                r12 = r0
                goto L_0x0043
            L_0x0071:
                r0 = r10
                r12 = r0
            L_0x0074:
                io.objectbox.a r0 = com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.c()
                io.objectbox.query.QueryBuilder r0 = r0.e()
                io.objectbox.g<com.callapp.contacts.model.objectbox.ProfileViewedData> r1 = com.callapp.contacts.model.objectbox.ProfileViewedData_.lastViewed
                r2 = r12
                r3 = r10
                io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2, r3)
                io.objectbox.query.QueryBuilder r0 = r0.d()
                io.objectbox.g<com.callapp.contacts.model.objectbox.ProfileViewedData> r1 = com.callapp.contacts.model.objectbox.ProfileViewedData_.type
                com.callapp.contacts.model.objectbox.TYPE r2 = com.callapp.contacts.model.objectbox.TYPE.VIEWME
                int r2 = r2.getValue()
                long r2 = (long) r2
                io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2)
                io.objectbox.query.Query r0 = r0.a()
                java.util.List r0 = r0.c()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "profileViewedDataBox.que….toLong()).build().find()"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager.Companion.getNotificationDataByDate():java.util.List");
        }

        public final int getViewerNotificationCount() {
            return WhoViewedMyProfileDataManager.f14019b;
        }

        public final void setViewerNotificationCount(int i) {
            WhoViewedMyProfileDataManager.f14019b = i;
        }
    }

    /* JADX WARN: Init of enum DAILY can be incorrect */
    /* JADX WARN: Init of enum INSTANT can be incorrect */
    /* JADX WARN: Init of enum WEEKLY can be incorrect */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "INSTANT", "DAILY", "WEEKLY", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile.class */
    public enum NotificationWhoViewedMyProfile {
        INSTANT(r0),
        DAILY(r0),
        WEEKLY(r0);
        
        private final String type;

        static {
            p.b(Activities.getString(2131888224), "Activities.getString(R.s…iew_notification_instant)");
            p.b(Activities.getString(2131888223), "Activities.getString(R.s…_view_notification_daily)");
            p.b(Activities.getString(2131888225), "Activities.getString(R.s…view_notification_weekly)");
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
        p.b(callAppApplication, "CallAppApplication.get()");
        f14021d = callAppApplication.getObjectBoxStore().d(ProfileViewedData.class);
    }

    public static final Pair<Integer, HashMap<Pair<Long, Long>, Integer>> a(AnalyticsDataManager.DatePeriod period) {
        p.d(period, "period");
        CallAppApplication callAppApplication = CallAppApplication.get();
        p.b(callAppApplication, "CallAppApplication.get()");
        QueryBuilder e = callAppApplication.getObjectBoxStore().d(ProfileViewedData.class).e();
        g<ProfileViewedData> gVar = ProfileViewedData_.lastViewed;
        Object obj = Companion.a(period).first;
        p.b(obj, "getStartEndDate(period).first");
        long longValue = ((Number) obj).longValue();
        Object obj2 = Companion.a(period).second;
        p.b(obj2, "getStartEndDate(period).second");
        QueryBuilder a2 = e.a(gVar, longValue, ((Number) obj2).longValue()).a(ProfileViewedData_.type, TYPE.VIEWME.getValue());
        p.b(a2, "box.query().between(Prof…PE.VIEWME.value.toLong())");
        int i = 0;
        List c2 = a2.a((g) ProfileViewedData_.lastViewed, 0).a().c();
        p.b(c2, "getQuery(period).order(P…astViewed).build().find()");
        List list = c2;
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
        LinkedHashMap<Pair<Long, Long>, Integer> b2 = Companion.b(period);
        Iterator<Pair<Long, Long>> it2 = b2.keySet().iterator();
        Pair<Long, Long> next = it2.next();
        p.b(next, "keysIter.next()");
        Pair<Long, Long> pair = next;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            int size = ((Collection) entry.getValue()).size();
            int i2 = i + size;
            while (it2.hasNext()) {
                long longValue2 = ((Number) entry.getKey()).longValue();
                Object obj5 = pair.second;
                p.b(obj5, "key.second");
                if (longValue2 < ((Number) obj5).longValue()) {
                    break;
                }
                Pair<Long, Long> next2 = it2.next();
                p.b(next2, "keysIter.next()");
                pair = next2;
            }
            Integer num = b2.get(pair);
            Integer valueOf2 = num != null ? Integer.valueOf(num.intValue() + size) : null;
            i = i2;
            pair = pair;
            if (valueOf2 != null) {
                b2.put(pair, Integer.valueOf(valueOf2.intValue()));
                i = i2;
                pair = pair;
            }
        }
        Pair<Integer, HashMap<Pair<Long, Long>, Integer>> create = Pair.create(Integer.valueOf(i), b2);
        p.b(create, "Pair.create(total, map)");
        return create;
    }

    public static final void a(ProfileViewedData profileViewedData) {
        Companion.a(profileViewedData);
    }

    public static final void a(String str) {
        Companion.a(str);
    }

    public static final void a(String viewedPhoneNumber, ENTRYPOINT entryPoint) {
        p.d(viewedPhoneNumber, "viewedPhoneNumber");
        p.d(entryPoint, "entryPoint");
        try {
            ReentrantLock reentrantLock = f14020c;
            reentrantLock.lock();
            a<ProfileViewedData> aVar = f14021d;
            ProfileViewedData a2 = aVar.e().a(ProfileViewedData_.phoneNumber, viewedPhoneNumber).d().a(ProfileViewedData_.type, TYPE.MYVIEW.getValue()).a(ProfileViewedData_.lastViewed, 1).a().a();
            UserProfileManager userProfileManager = UserProfileManager.get();
            p.b(userProfileManager, "UserProfileManager.get()");
            String name = userProfileManager.getUserFullName();
            if (a2 == null) {
                long currentTimeMillis = System.currentTimeMillis();
                TYPE type = TYPE.MYVIEW;
                p.b(name, "name");
                aVar.a((a<ProfileViewedData>) new ProfileViewedData(0L, viewedPhoneNumber, entryPoint, currentTimeMillis, name, 0, type, 33, null));
                Companion.a(viewedPhoneNumber, name, entryPoint);
            } else {
                if (DateUtils.b(new Date(a2.getLastViewed()), new Date()) >= 7) {
                    p.b(name, "name");
                    Companion.a(viewedPhoneNumber, name, entryPoint);
                    a2.setLastViewed(System.currentTimeMillis());
                }
                a2.setCounter(a2.getCounter() + 1);
                aVar.a((a<ProfileViewedData>) a2);
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            f14020c.unlock();
            throw th;
        }
    }

    public static final void a(String str, String str2, ENTRYPOINT entrypoint) {
        Companion.b(str, str2, entrypoint);
    }

    public static final void d() {
        f14018a.setViewerNotificationCount(0);
    }

    public static final void e() {
        Companion companion = f14018a;
        companion.setViewerNotificationCount(companion.getViewerNotificationCount() + 1);
    }

    public static final void f() {
        Companion.a();
    }

    public static final long g() {
        return Companion.b();
    }

    public static final List<ProfileViewedData> getAllViewers() {
        return f14018a.getAllViewers();
    }

    public static final int getViewerNotificationCount() {
        return f14019b;
    }
}

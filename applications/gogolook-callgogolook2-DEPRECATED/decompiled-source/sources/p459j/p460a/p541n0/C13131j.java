package p459j.p460a.p541n0;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.LogsGroupRealmModule;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p463b0.C11142n;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.p542u.p544b.C13224a;
import p459j.p460a.p582w0.C13955d1;
import p459j.p460a.p582w0.C14037j3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p632u.C15025q;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0015\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J7\u0010\u0013\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00010\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0007¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0007J\u0010\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0007J%\u0010 \u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0002\u0010\"JI\u0010#\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\b\u0010$\u001a\u0004\u0018\u00010\u00042\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u001b2\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0015H\u0007¢\u0006\u0002\u0010)J\u0018\u0010*\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u0010+\u001a\u00020\bH\u0007J%\u0010,\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0002\u0010\"J\b\u0010-\u001a\u00020.H\u0007J\u0018\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u0004H\u0007J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010+\u001a\u00020\bH\u0007J \u00102\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u0006H\u0007J\u0010\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u0004H\u0007J\u0010\u00107\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0007J\n\u00108\u001a\u0004\u0018\u00010\u001eH\u0007J\u0012\u00109\u001a\u0004\u0018\u00010\u001e2\u0006\u0010:\u001a\u00020;H\u0007J \u0010<\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010\u001d2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u001dH\u0007J\b\u0010?\u001a\u00020\u0006H\u0007J \u0010@\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u0010A\u001a\u00020\b2\u0006\u0010B\u001a\u00020\bH\u0007J\u0018\u0010C\u001a\u00020\u00062\u0006\u00100\u001a\u00020\b2\u0006\u0010D\u001a\u00020\bH\u0007J*\u0010E\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u00100\u001a\u00020\b2\u0006\u0010F\u001a\u00020\b2\b\u0010G\u001a\u0004\u0018\u00010HH\u0007J\u0018\u0010I\u001a\u00020\u00062\u0006\u00100\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u0004H\u0007J\u0018\u0010J\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u0010%\u001a\u00020\u0004H\u0007J%\u0010K\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0002\u0010\"J\b\u0010L\u001a\u00020\u0006H\u0007J\u0010\u0010M\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0006H\u0007J\u0012\u0010O\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010P\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\bH\u0007J\u0010\u0010R\u001a\u00020\u001b2\u0006\u0010S\u001a\u00020\u001eH\u0007J\u0016\u0010R\u001a\u00020\u00122\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0007J8\u0010U\u001a\u0004\u0018\u0001HV\"\u0004\b��\u0010V2!\u0010W\u001a\u001d\u0012\u0013\u0012\u00110Y¢\u0006\f\bZ\u0012\b\b[\u0012\u0004\b\b(\\\u0012\u0004\u0012\u0002HV0XH\u0007¢\u0006\u0002\u0010]J\u0016\u0010^\u001a\u00020\u00122\f\u00104\u001a\b\u0012\u0004\u0012\u00020\b0_H\u0007J\u0016\u0010`\u001a\u00020\u00122\f\u00104\u001a\b\u0012\u0004\u0012\u00020\b0_H\u0007J\u0016\u0010a\u001a\u00020\u00122\f\u00104\u001a\b\u0012\u0004\u0012\u00020\b0_H\u0007J\u0016\u0010b\u001a\u00020\u00122\f\u00104\u001a\b\u0012\u0004\u0012\u00020\b0_H\u0007J.\u0010c\u001a\u00020\u00122\b\u0010$\u001a\u0004\u0018\u00010\u00042\b\u0010d\u001a\u0004\u0018\u00010\u00042\u0006\u00100\u001a\u00020\b2\b\u0010G\u001a\u0004\u0018\u00010HH\u0007J*\u0010e\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010f\u001a\u00020\b2\b\u0010[\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\f0\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006g"}, m815d2 = {"Lgogolook/callgogolook2/realm/LogsGroupRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "FAVORITE_RECOMMEND_LOGS_PAST_DAYS", "", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "deleteLogsGroupDatas", "fieldNames", "", "fields", "querys", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)I", "dropLogsGroupTable", "", "getAllCallLogs", "", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "getAllLogsForLogSelection", "getBlockedLogsForLogSelection", "excludeNumberArray", "([Ljava/lang/String;)Ljava/util/List;", "getCallLogs", "number", "e164", "limit", "isAggregated", "excludedTypes", "(Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/Integer;)Ljava/util/List;", "getCallLogsByDate", "startDate", "getCallLogsForLogSelection", "getDbFile", "Ljava/io/File;", "getDialCount", "starDate", "getDialerRecommendationLogs", "getExistLogs", "type", "refId", "getFieldMaxValue", "field", "getGroupedCallLogs", "getLastCallLog", "getLastNotHideCallLog", "sortOrder", "Lio/realm/Sort;", "getLogsGroupForFavoriteRecommend", "Lgogolook/callgogolook2/realm/obj/logsgroup/ComparedByCountLogsObject;", "Lgogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject;", "getLogsGroupMaxId", "getLogsGroupsNeedSyncToIndex", "lastSyncId", "lastSyncTime", "getMissCallCountBetweenDate", "lastMissedIdleDate", "getNewCallLog", "lastMissedCallIdleDate", "logTypes", "", "getPickUpCount", "getSmsLog", "getSmsLogsForLogSelection", "hideAllBlockedCallLog", "hideCallLogByCallLogsFilterType", "filters", "hideCallLogByE164", "hideCallLogByMessageDate", "messgeDate", "insertOrUpdateLogsGroupData", "logsGroupRealmObject", "logsGroupRealmObjects", "readLogs", ExifInterface.GPS_DIRECTION_TRUE, "read", "Lkotlin/Function1;", "Lio/realm/Realm;", "Lkotlin/ParameterName;", "name", "realm", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "removeLogsGroupFromBlockLog", "Ljava/util/HashSet;", "removeLogsGroupFromNativeCallLog", "removeLogsGroupFromNativeMms", "removeLogsGroupFromNativeSms", "updateLogAsNonNew", "id", "updateLogsWithNewName", ContactRealmObject.CONTACT_ID, "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.j */
/* loaded from: classes3-dex2jar.jar:j/a/n0/j.class */
public final class C13131j {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29631a;

    /* renamed from: c */
    public static final C13131j f29633c = new C13131j();

    /* renamed from: b */
    public static final AbstractC14974f f29632b = C14975g.m662a(C13132a.f29634a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$a.class */
    public static final class C13132a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13132a f29634a = new C13132a();

        /* renamed from: j.a.n0.j$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/j$a$a.class */
        public static final class C13133a implements RealmMigration {

            /* renamed from: a */
            public static final C13133a f29635a = new C13133a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        /* renamed from: j.a.n0.j$a$b */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/j$a$b.class */
        public static final class C13134b implements Realm.Transaction {

            /* renamed from: a */
            public static final C13134b f29636a = new C13134b();

            @Override // io.realm.Realm.Transaction
            public final void execute(Realm realm) {
            }
        }

        public C13132a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("logs_group").schemaVersion(1L).modules(new LogsGroupRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13133a.f29635a).initialData(C13134b.f29636a).build();
        }
    }

    /* renamed from: j.a.n0.j$a0 */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$a0.class */
    public static final class C13135a0 extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ HashSet f29637a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13135a0(HashSet hashSet) {
            super(1);
            this.f29637a = hashSet;
        }

        /* renamed from: a */
        public final void m4519a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.GROUP_ID_1, -1).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 1).findAll();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                Integer ref_id = logsGroupRealmObject.getRef_id();
                if (ref_id != null) {
                    if (!this.f29637a.contains(Long.valueOf(ref_id.intValue()))) {
                        logsGroupRealmObject.setGroup_id_1(0);
                        logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
                    }
                }
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4519a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.j$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$b.class */
    public static final class C13136b extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29638a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29639b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29640c;

        /* renamed from: d */
        public final /* synthetic */ C15162x f29641d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13136b(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, C15162x xVar) {
            super(1);
            this.f29638a = strArr;
            this.f29639b = objArr;
            this.f29640c = aVarArr;
            this.f29641d = xVar;
        }

        /* renamed from: a */
        public final void m4518a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(LogsGroupRealmObject.class);
            C15149k.m383a((Object) where, "where(LogsGroupRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29638a, this.f29639b, this.f29640c);
            if (a != null) {
                C15162x xVar = this.f29641d;
                RealmResults<? extends RealmObject> findAll = a.findAll();
                int i = -1;
                if (findAll != null) {
                    i = -1;
                    if (findAll.deleteAllFromRealm()) {
                        i = findAll.size();
                    }
                }
                xVar.f33150a = i;
                return;
            }
            throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject>");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4518a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.j$b0 */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$b0.class */
    public static final class C13137b0 extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ HashSet f29642a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13137b0(HashSet hashSet) {
            super(1);
            this.f29642a = hashSet;
        }

        /* renamed from: a */
        public final void m4517a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).beginGroup().greaterThan(LogsGroupRealmObject.GROUP_ID_1, -1).notEqualTo(LogsGroupRealmObject.BLOCKED, (Integer) 1).endGroup().beginGroup().equalTo("type", (Integer) 19).m10371or().equalTo("type", (Integer) 17).m10371or().equalTo("type", (Integer) 18).endGroup().findAll();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                Integer ref_id = logsGroupRealmObject.getRef_id();
                if (ref_id != null) {
                    if (!this.f29642a.contains(Long.valueOf(ref_id.intValue()))) {
                        logsGroupRealmObject.setGroup_id_1(-1);
                        logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
                    }
                }
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4517a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.j$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$c.class */
    public static final class C13138c extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public static final C13138c f29643a = new C13138c();

        public C13138c() {
            super(1);
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).findAll());
        }
    }

    /* renamed from: j.a.n0.j$c0 */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$c0.class */
    public static final class C13139c0 extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ HashSet f29644a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13139c0(HashSet hashSet) {
            super(1);
            this.f29644a = hashSet;
        }

        /* renamed from: a */
        public final void m4515a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).beginGroup().greaterThan(LogsGroupRealmObject.GROUP_ID_1, -1).notEqualTo(LogsGroupRealmObject.BLOCKED, (Integer) 1).endGroup().beginGroup().equalTo("type", (Integer) 65).m10371or().equalTo("type", (Integer) 66).endGroup().findAll();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                Integer ref_id = logsGroupRealmObject.getRef_id();
                if (ref_id != null) {
                    if (!this.f29644a.contains(Long.valueOf(ref_id.intValue()))) {
                        logsGroupRealmObject.setGroup_id_1(-1);
                        logsGroupRealmObject.setUpdate_time(Long.valueOf(System.currentTimeMillis()));
                    }
                }
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4515a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.j$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$d.class */
    public static final class C13140d extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public static final C13140d f29645a = new C13140d();

        public C13140d() {
            super(1);
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).isNotNull("e164").isNotEmpty("e164").equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).sort("date", Sort.DESCENDING).distinct(LogsGroupRealmObject.GROUP_ID_1).findAll());
        }
    }

    /* renamed from: j.a.n0.j$d0 */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$d0.class */
    public static final class C13141d0 extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ HashSet f29646a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13141d0(HashSet hashSet) {
            super(1);
            this.f29646a = hashSet;
        }

        /* renamed from: a */
        public final void m4513a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).beginGroup().greaterThan(LogsGroupRealmObject.GROUP_ID_1, -1).notEqualTo(LogsGroupRealmObject.BLOCKED, (Integer) 1).endGroup().beginGroup().equalTo("type", (Integer) 34).m10371or().equalTo("type", (Integer) 33).endGroup().findAll();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                Integer ref_id = logsGroupRealmObject.getRef_id();
                if (ref_id != null) {
                    if (!this.f29646a.contains(Long.valueOf(ref_id.intValue()))) {
                        logsGroupRealmObject.setGroup_id_1(-1);
                        logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
                    }
                }
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4513a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.j$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$e.class */
    public static final class C13142e extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29647a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13142e(String[] strArr) {
            super(1);
            this.f29647a = strArr;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            int i = 0;
            RealmQuery where = realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).isNotEmpty("e164").isNotNull("e164").greaterThan(LogsGroupRealmObject.BLOCKED, 0).sort("date", Sort.DESCENDING).distinct(LogsGroupRealmObject.GROUP_ID_1).findAll().where();
            C15149k.m383a((Object) where, "allResult.where()");
            String[] strArr = this.f29647a;
            RealmQuery realmQuery = where;
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                int length = strArr.length;
                while (true) {
                    realmQuery = where;
                    if (i >= length) {
                        break;
                    }
                    where = where.notEqualTo("e164", strArr[i]);
                    C15149k.m383a((Object) where, "furtherQuery.notEqualTo(…roupRealmObject.E164, it)");
                    arrayList.add(C14989s.f33022a);
                    i++;
                }
            }
            return realm.copyFromRealm(realmQuery.findAll());
        }
    }

    /* renamed from: j.a.n0.j$e0 */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$e0.class */
    public static final class C13143e0 extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f29648a;

        /* renamed from: b */
        public final /* synthetic */ String f29649b;

        /* renamed from: c */
        public final /* synthetic */ long f29650c;

        /* renamed from: d */
        public final /* synthetic */ String f29651d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13143e0(String str, String str2, long j, String str3) {
            super(1);
            this.f29648a = str;
            this.f29649b = str2;
            this.f29650c = j;
            this.f29651d = str3;
        }

        /* renamed from: a */
        public final void m4511a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).beginGroup().equalTo("e164", this.f29648a).m10371or().equalTo("number", this.f29649b).endGroup().beginGroup().notEqualTo("contact_id", Integer.valueOf((int) this.f29650c)).notEqualTo(LogsGroupRealmObject.DISPLAY_NAME, this.f29651d).endGroup().findAll();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                long j = this.f29650c;
                if (j > 0) {
                    logsGroupRealmObject.setContact_id((int) j);
                    logsGroupRealmObject.setDisplayName(this.f29651d);
                } else {
                    logsGroupRealmObject.setContact_id(0);
                    logsGroupRealmObject.setDisplayName(null);
                }
                logsGroupRealmObject.setUpdate_time(Long.valueOf(System.currentTimeMillis()));
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4511a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.j$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$f.class */
    public static final class C13144f extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String f29652a;

        /* renamed from: b */
        public final /* synthetic */ String f29653b;

        /* renamed from: c */
        public final /* synthetic */ Integer[] f29654c;

        /* renamed from: d */
        public final /* synthetic */ boolean f29655d;

        /* renamed from: e */
        public final /* synthetic */ int f29656e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13144f(String str, String str2, Integer[] numArr, boolean z, int i) {
            super(1);
            this.f29652a = str;
            this.f29653b = str2;
            this.f29654c = numArr;
            this.f29655d = z;
            this.f29656e = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
            if ((r0 == null || r0.length() == 0) == false) goto L_0x0061;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v4, types: [java.util.List, java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject> invoke(io.realm.Realm r6) {
            /*
                Method dump skipped, instructions count: 385
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13131j.C13144f.invoke(io.realm.Realm):java.util.List");
        }
    }

    /* renamed from: j.a.n0.j$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$g.class */
    public static final class C13145g extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29657a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13145g(long j) {
            super(1);
            this.f29657a = j;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).beginGroup().greaterThan("date", this.f29657a).endGroup().beginGroup().equalTo("type", (Integer) 17).m10371or().equalTo("type", (Integer) 18).m10371or().equalTo("type", (Integer) 19).endGroup().sort("date", Sort.ASCENDING).findAll());
        }
    }

    /* renamed from: j.a.n0.j$h */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$h.class */
    public static final class C13146h extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29658a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13146h(String[] strArr) {
            super(1);
            this.f29658a = strArr;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            int i = 0;
            RealmQuery where = realm.where(LogsGroupRealmObject.class).beginGroup().greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).isNotNull("e164").isNotEmpty("e164").equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).endGroup().beginGroup().equalTo("type", (Integer) 18).m10371or().equalTo("type", (Integer) 17).m10371or().equalTo("type", (Integer) 19).endGroup().sort("date", Sort.DESCENDING).distinct(LogsGroupRealmObject.GROUP_ID_1).findAll().where();
            C15149k.m383a((Object) where, "allResult.where()");
            String[] strArr = this.f29658a;
            RealmQuery realmQuery = where;
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                int length = strArr.length;
                while (true) {
                    realmQuery = where;
                    if (i >= length) {
                        break;
                    }
                    where = where.notEqualTo("e164", strArr[i]);
                    C15149k.m383a((Object) where, "furtherQuery.notEqualTo(…roupRealmObject.E164, it)");
                    arrayList.add(C14989s.f33022a);
                    i++;
                }
            }
            return realm.copyFromRealm(realmQuery.findAll());
        }
    }

    /* renamed from: j.a.n0.j$i */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$i.class */
    public static final class C13147i extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public final /* synthetic */ String f29659a;

        /* renamed from: b */
        public final /* synthetic */ long f29660b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13147i(String str, long j) {
            super(1);
            this.f29659a = str;
            this.f29660b = j;
        }

        /* renamed from: a */
        public final int m4507a(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.where(LogsGroupRealmObject.class).equalTo("e164", this.f29659a).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).greaterThan("date", this.f29660b).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).equalTo("type", (Integer) 18).findAll().size();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4507a(realm));
        }
    }

    /* renamed from: j.a.n0.j$j */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$j.class */
    public static final class C13148j extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29661a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13148j(long j) {
            super(1);
            this.f29661a = j;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).equalTo("type", (Integer) 18).greaterThan("date", this.f29661a * 1000).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).distinct(LogsGroupRealmObject.GROUP_ID_1).findAll());
        }
    }

    /* renamed from: j.a.n0.j$k */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$k.class */
    public static final class C13149k extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ int f29662a;

        /* renamed from: b */
        public final /* synthetic */ int f29663b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13149k(int i, int i2) {
            super(1);
            this.f29662a = i;
            this.f29663b = i2;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).equalTo("ref_id", Integer.valueOf(this.f29662a)).equalTo("type", Integer.valueOf(this.f29663b)).findAll());
        }
    }

    /* renamed from: j.a.n0.j$l */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$l.class */
    public static final class C13150l extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public static final C13150l f29664a = new C13150l();

        public C13150l() {
            super(1);
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).findAll());
        }
    }

    /* renamed from: j.a.n0.j$m */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$m.class */
    public static final class C13151m extends AbstractC15150l implements AbstractC15118l<Realm, LogsGroupRealmObject> {

        /* renamed from: a */
        public static final C13151m f29665a = new C13151m();

        public C13151m() {
            super(1);
        }

        /* renamed from: a */
        public final LogsGroupRealmObject invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(LogsGroupRealmObject.class).sort("date", Sort.DESCENDING).findAll();
            if (findAll == null || !(!findAll.isEmpty())) {
                return null;
            }
            return (LogsGroupRealmObject) realm.copyFromRealm((Realm) ((RealmModel) findAll.get(0)));
        }
    }

    /* renamed from: j.a.n0.j$n */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$n.class */
    public static final class C13152n extends AbstractC15150l implements AbstractC15118l<Realm, LogsGroupRealmObject> {

        /* renamed from: a */
        public final /* synthetic */ Sort f29666a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13152n(Sort sort) {
            super(1);
            this.f29666a = sort;
        }

        /* renamed from: a */
        public final LogsGroupRealmObject invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).sort("date", this.f29666a).findAll();
            if (findAll == null || !(!findAll.isEmpty())) {
                return null;
            }
            return (LogsGroupRealmObject) realm.copyFromRealm((Realm) ((RealmModel) findAll.get(0)));
        }
    }

    /* renamed from: j.a.n0.j$o */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$o.class */
    public static final class C13153o extends AbstractC15150l implements AbstractC15118l<Realm, ArrayList<C13224a>> {

        /* renamed from: a */
        public final /* synthetic */ List f29667a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13153o(List list) {
            super(1);
            this.f29667a = list;
        }

        /* renamed from: a */
        public final ArrayList<C13224a> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            long currentTimeMillis = System.currentTimeMillis();
            long millis = TimeUnit.DAYS.toMillis(30L);
            ArrayList<C13224a> arrayList = new ArrayList<>();
            RealmQuery equalTo = realm.where(LogsGroupRealmObject.class).greaterThan("date", currentTimeMillis - millis).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).equalTo("type", (Integer) 18);
            List list = this.f29667a;
            RealmQuery realmQuery = equalTo;
            if (list != null) {
                ArrayList arrayList2 = new ArrayList(C15022n.m555a(list, 10));
                Iterator it = list.iterator();
                while (true) {
                    realmQuery = equalTo;
                    if (!it.hasNext()) {
                        break;
                    }
                    equalTo = equalTo.notEqualTo("e164", ((FavoriteListRealmObject) it.next()).get_e164());
                    arrayList2.add(C14989s.f33022a);
                }
            }
            RealmResults findAll = realmQuery.sort("date", Sort.ASCENDING).findAll();
            RealmResults<LogsGroupRealmObject> findAll2 = findAll.where().distinct(LogsGroupRealmObject.GROUP_ID_1).findAll();
            C15149k.m383a((Object) findAll2, "idDistinctResult");
            ArrayList arrayList3 = new ArrayList(C15022n.m555a(findAll2, 10));
            for (LogsGroupRealmObject logsGroupRealmObject : findAll2) {
                long count = findAll.where().equalTo(LogsGroupRealmObject.GROUP_ID_1, Integer.valueOf(logsGroupRealmObject.getGroup_id_1())).count();
                if (count > 2) {
                    int i = (int) count;
                    RealmModel copyFromRealm = realm.copyFromRealm((Realm) logsGroupRealmObject);
                    C15149k.m383a((Object) copyFromRealm, "copyFromRealm(it)");
                    arrayList.add(new C13224a(i, (LogsGroupRealmObject) copyFromRealm));
                }
                arrayList3.add(C14989s.f33022a);
            }
            C15025q.m553c(arrayList);
            return arrayList;
        }
    }

    /* renamed from: j.a.n0.j$p */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$p.class */
    public static final class C13154p extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29668a;

        /* renamed from: b */
        public final /* synthetic */ long f29669b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13154p(long j, long j2) {
            super(1);
            this.f29668a = j;
            this.f29669b = j2;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).greaterThan("id", this.f29668a).m10371or().greaterThan(LogsGroupRealmObject.UPDATETIME, this.f29669b).m10371or().greaterThan(LogsGroupRealmObject.CREATETIME, this.f29669b).sort("date", Sort.DESCENDING).findAll());
        }
    }

    /* renamed from: j.a.n0.j$q */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$q.class */
    public static final class C13155q extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public final /* synthetic */ long f29670a;

        /* renamed from: b */
        public final /* synthetic */ long f29671b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13155q(long j, long j2) {
            super(1);
            this.f29670a = j;
            this.f29671b = j2;
        }

        /* renamed from: a */
        public final int m4499a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery greaterThan = realm.where(LogsGroupRealmObject.class).equalTo("type", (Integer) 19).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).equalTo(LogsGroupRealmObject.NEW, (Integer) 1).greaterThan("date", this.f29670a);
            long j = this.f29671b;
            RealmQuery realmQuery = greaterThan;
            if (j > 0) {
                realmQuery = greaterThan.lessThan(LogsGroupRealmObject.CREATETIME, j);
            }
            return realmQuery.findAll().size();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4499a(realm));
        }
    }

    /* renamed from: j.a.n0.j$r */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$r.class */
    public static final class C13156r extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29672a;

        /* renamed from: b */
        public final /* synthetic */ long f29673b;

        /* renamed from: c */
        public final /* synthetic */ int[] f29674c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13156r(long j, long j2, int[] iArr) {
            super(1);
            this.f29672a = j;
            this.f29673b = j2;
            this.f29674c = iArr;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            int i = 0;
            RealmQuery greaterThan = realm.where(LogsGroupRealmObject.class).beginGroup().equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).equalTo(LogsGroupRealmObject.NEW, (Integer) 1).greaterThan("date", this.f29672a);
            long j = this.f29673b;
            RealmQuery realmQuery = greaterThan;
            if (j > 0) {
                realmQuery = greaterThan.lessThan(LogsGroupRealmObject.CREATETIME, j);
            }
            RealmQuery endGroup = realmQuery.endGroup();
            int[] iArr = this.f29674c;
            RealmQuery realmQuery2 = endGroup;
            if (iArr != null) {
                RealmQuery beginGroup = endGroup.beginGroup();
                ArrayList arrayList = new ArrayList(iArr.length);
                int length = iArr.length;
                int i2 = 0;
                while (i < length) {
                    int i3 = iArr[i];
                    beginGroup = i2 == 0 ? beginGroup.equalTo("type", Integer.valueOf(i3)) : beginGroup.m10371or().equalTo("type", Integer.valueOf(i3));
                    arrayList.add(C14989s.f33022a);
                    i++;
                    i2++;
                }
                realmQuery2 = beginGroup.endGroup();
            }
            return realm.copyFromRealm(realmQuery2.findAll());
        }
    }

    /* renamed from: j.a.n0.j$s */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$s.class */
    public static final class C13157s extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public final /* synthetic */ String f29675a;

        /* renamed from: b */
        public final /* synthetic */ long f29676b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13157s(String str, long j) {
            super(1);
            this.f29675a = str;
            this.f29676b = j;
        }

        /* renamed from: a */
        public final int m4497a(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.where(LogsGroupRealmObject.class).equalTo("e164", this.f29675a).equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).greaterThan("date", this.f29676b).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).equalTo("type", (Integer) 17).greaterThan("duration", 0).findAll().size();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4497a(realm));
        }
    }

    /* renamed from: j.a.n0.j$t */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$t.class */
    public static final class C13158t extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String f29677a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13158t(String str) {
            super(1);
            this.f29677a = str;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(LogsGroupRealmObject.class).equalTo("e164", this.f29677a).equalTo("type", (Integer) 17).isNotNull("content").findAll());
        }
    }

    /* renamed from: j.a.n0.j$u */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$u.class */
    public static final class C13159u extends AbstractC15150l implements AbstractC15118l<Realm, List<LogsGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29678a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13159u(String[] strArr) {
            super(1);
            this.f29678a = strArr;
        }

        /* renamed from: a */
        public final List<LogsGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            int i = 0;
            RealmQuery where = realm.where(LogsGroupRealmObject.class).beginGroup().greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0).isNotNull("e164").isNotEmpty("e164").equalTo(LogsGroupRealmObject.BLOCKED, (Integer) 0).endGroup().beginGroup().equalTo("type", (Integer) 33).m10371or().equalTo("type", (Integer) 65).endGroup().sort("date", Sort.DESCENDING).distinct(LogsGroupRealmObject.GROUP_ID_1).findAll().where();
            C15149k.m383a((Object) where, "allResult.where()");
            String[] strArr = this.f29678a;
            RealmQuery realmQuery = where;
            if (strArr != null) {
                ArrayList arrayList = new ArrayList(strArr.length);
                int length = strArr.length;
                while (true) {
                    realmQuery = where;
                    if (i >= length) {
                        break;
                    }
                    where = where.notEqualTo("e164", strArr[i]);
                    C15149k.m383a((Object) where, "furtherQuery.notEqualTo(…roupRealmObject.E164, it)");
                    arrayList.add(C14989s.f33022a);
                    i++;
                }
            }
            return realm.copyFromRealm(realmQuery.findAll());
        }
    }

    /* renamed from: j.a.n0.j$v */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$v.class */
    public static final class C13160v extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public static final C13160v f29679a = new C13160v();

        public C13160v() {
            super(1);
        }

        /* renamed from: a */
        public final int m4494a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.BLOCKED, 0).findAll();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                logsGroupRealmObject.setGroup_id_1(0);
                logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
            }
            return findAll.size();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4494a(realm));
        }
    }

    /* renamed from: j.a.n0.j$w */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$w.class */
    public static final class C13161w extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public final /* synthetic */ int f29680a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13161w(int i) {
            super(1);
            this.f29680a = i;
        }

        /* renamed from: a */
        public final int m4493a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery greaterThan = realm.where(LogsGroupRealmObject.class).greaterThan(LogsGroupRealmObject.GROUP_ID_1, 0);
            RealmQuery realmQuery = greaterThan;
            if (this.f29680a != 0) {
                ArrayList arrayList = new ArrayList();
                if (C11142n.m10197d(this.f29680a)) {
                    arrayList.add(17);
                }
                if (C11142n.m10195f(this.f29680a)) {
                    arrayList.add(18);
                }
                if (C11142n.m10196e(this.f29680a)) {
                    arrayList.add(19);
                }
                realmQuery = greaterThan;
                if (!arrayList.isEmpty()) {
                    realmQuery = greaterThan.m10377in("type", (Integer[]) arrayList.toArray(new Integer[arrayList.size()]));
                }
            }
            RealmResults<LogsGroupRealmObject> findAll = realmQuery.findAll();
            int size = findAll.size();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                logsGroupRealmObject.setGroup_id_1(0);
                logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
            }
            return size;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4493a(realm));
        }
    }

    /* renamed from: j.a.n0.j$x */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$x.class */
    public static final class C13162x extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public final /* synthetic */ String f29681a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13162x(String str) {
            super(1);
            this.f29681a = str;
        }

        /* renamed from: a */
        public final int m4492a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery endGroup = realm.where(LogsGroupRealmObject.class).beginGroup().equalTo("type", (Integer) 17).m10371or().equalTo("type", (Integer) 18).m10371or().equalTo("type", (Integer) 19).endGroup();
            String str = this.f29681a;
            RealmResults<LogsGroupRealmObject> findAll = str == null || str.length() == 0 ? endGroup.isNull("e164").findAll() : endGroup.equalTo("e164", this.f29681a).findAll();
            int size = findAll.size();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                logsGroupRealmObject.setGroup_id_1(0);
                logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
            }
            return size;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4492a(realm));
        }
    }

    /* renamed from: j.a.n0.j$y */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$y.class */
    public static final class C13163y extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public final /* synthetic */ long f29682a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13163y(long j) {
            super(1);
            this.f29682a = j;
        }

        /* renamed from: a */
        public final int m4491a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults<LogsGroupRealmObject> findAll = realm.where(LogsGroupRealmObject.class).equalTo("date", Long.valueOf(this.f29682a)).findAll();
            int size = findAll.size();
            long currentTimeMillis = System.currentTimeMillis();
            C15149k.m383a((Object) findAll, "results");
            for (LogsGroupRealmObject logsGroupRealmObject : findAll) {
                logsGroupRealmObject.setGroup_id_1(0);
                logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
            }
            return size;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Integer invoke(Realm realm) {
            return Integer.valueOf(m4491a(realm));
        }
    }

    /* renamed from: j.a.n0.j$z */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/j$z.class */
    public static final class C13164z extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29683a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13164z(List list) {
            super(1);
            this.f29683a = list;
        }

        /* renamed from: a */
        public final void m4490a(Realm realm) {
            C15149k.m377b(realm, "it");
            Number max = realm.where(LogsGroupRealmObject.class).max("id");
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            for (LogsGroupRealmObject logsGroupRealmObject : this.f29683a) {
                if (logsGroupRealmObject.getId() < 0) {
                    logsGroupRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29683a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4490a(realm);
            return C14989s.f33022a;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13131j.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29631a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final int m4554a(int i) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4442a(a, new C13161w(i));
        return num != null ? num.intValue() : -1;
    }

    /* renamed from: a */
    public static final int m4549a(long j, String str) {
        C15149k.m377b(str, "e164");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4435b(a, new C13147i(str, j));
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: a */
    public static final int m4547a(String str) {
        C15149k.m377b(str, "field");
        Realm b = C13193p.m4436b(f29633c.m4555a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(LogsGroupRealmObject.class);
            Number max = where != null ? where.max(str) : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: a */
    public static final int m4540a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr) {
        C15149k.m377b(strArr, "fieldNames");
        C15149k.m377b(objArr, "fields");
        C15149k.m377b(aVarArr, "querys");
        C15162x xVar = new C15162x();
        xVar.f33150a = -1;
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13136b(strArr, objArr, aVarArr, xVar));
        return xVar.f33150a;
    }

    /* renamed from: a */
    public static final LogsGroupRealmObject m4548a(Sort sort) {
        C15149k.m377b(sort, "sortOrder");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (LogsGroupRealmObject) C13193p.m4435b(a, new C13152n(sort));
    }

    /* renamed from: a */
    public static final <T> T m4542a(AbstractC15118l<? super Realm, ? extends T> lVar) {
        C15149k.m377b(lVar, "read");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (T) C13193p.m4435b(a, lVar);
    }

    /* renamed from: a */
    public static final List<LogsGroupRealmObject> m4553a(int i, int i2) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13149k(i2, i));
    }

    /* renamed from: a */
    public static final List<LogsGroupRealmObject> m4552a(long j) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13145g(j));
    }

    /* renamed from: a */
    public static final List<LogsGroupRealmObject> m4551a(long j, long j2) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13154p(j, j2));
    }

    /* renamed from: a */
    public static final List<LogsGroupRealmObject> m4550a(long j, long j2, int[] iArr) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13156r(j, j2, iArr));
    }

    /* renamed from: a */
    public static final List<LogsGroupRealmObject> m4546a(String str, String str2, int i, boolean z, Integer[] numArr) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13144f(str, str2, numArr, z, i));
    }

    /* renamed from: a */
    public static final List<C13224a> m4543a(List<? extends FavoriteListRealmObject> list) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13153o(list));
    }

    /* renamed from: a */
    public static final List<LogsGroupRealmObject> m4541a(String[] strArr) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13142e(strArr));
    }

    /* renamed from: a */
    public static final void m4545a(String str, String str2, long j, String str3) {
        C15149k.m377b(str, "e164");
        C15149k.m377b(str2, "number");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13143e0(str, str2, j, str3));
    }

    /* renamed from: a */
    public static final void m4544a(HashSet<Long> hashSet) {
        C15149k.m377b(hashSet, "refId");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13135a0(hashSet));
    }

    /* renamed from: b */
    public static final int m4537b(long j, long j2) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4435b(a, new C13155q(j, j2));
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: b */
    public static final int m4536b(long j, String str) {
        C15149k.m377b(str, "e164");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4435b(a, new C13157s(str, j));
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: b */
    public static final List<LogsGroupRealmObject> m4538b(long j) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        List<LogsGroupRealmObject> list = (List) C13193p.m4435b(a, new C13148j(j));
        if (list == null) {
            list = C15021m.m565a();
        }
        return list;
    }

    /* renamed from: b */
    public static final List<LogsGroupRealmObject> m4535b(String str) {
        C15149k.m377b(str, "e164");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13158t(str));
    }

    /* renamed from: b */
    public static final List<LogsGroupRealmObject> m4532b(String[] strArr) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13146h(strArr));
    }

    /* renamed from: b */
    public static final void m4539b() {
        Realm.compactRealm(f29633c.m4555a());
    }

    /* renamed from: b */
    public static final void m4534b(HashSet<Long> hashSet) {
        C15149k.m377b(hashSet, "refId");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13137b0(hashSet));
    }

    /* renamed from: b */
    public static final void m4533b(List<? extends LogsGroupRealmObject> list) {
        C15149k.m377b(list, "logsGroupRealmObjects");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13164z(list));
        C14037j3.m2731a().mo2704a(new C13955d1());
    }

    /* renamed from: c */
    public static final int m4530c(long j) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4442a(a, new C13163y(j));
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: c */
    public static final int m4529c(String str) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4442a(a, new C13162x(str));
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: c */
    public static final List<LogsGroupRealmObject> m4527c(String[] strArr) {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13159u(strArr));
    }

    /* renamed from: c */
    public static final void m4528c(HashSet<Long> hashSet) {
        C15149k.m377b(hashSet, "refId");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13139c0(hashSet));
    }

    /* renamed from: c */
    public static final boolean m4531c() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return C13193p.m4440a(LogsGroupRealmObject.class, a);
    }

    /* renamed from: d */
    public static final List<LogsGroupRealmObject> m4526d() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, C13138c.f29643a);
    }

    /* renamed from: d */
    public static final void m4525d(HashSet<Long> hashSet) {
        C15149k.m377b(hashSet, "refId");
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13141d0(hashSet));
    }

    /* renamed from: e */
    public static final List<LogsGroupRealmObject> m4524e() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, C13140d.f29645a);
    }

    /* renamed from: f */
    public static final File m4523f() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: g */
    public static final List<LogsGroupRealmObject> m4522g() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, C13150l.f29664a);
    }

    /* renamed from: h */
    public static final LogsGroupRealmObject m4521h() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        return (LogsGroupRealmObject) C13193p.m4435b(a, C13151m.f29665a);
    }

    /* renamed from: i */
    public static final int m4520i() {
        RealmConfiguration a = f29633c.m4555a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4442a(a, C13160v.f29679a);
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: a */
    public final RealmConfiguration m4555a() {
        AbstractC14974f fVar = f29632b;
        AbstractC14906i iVar = f29631a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}

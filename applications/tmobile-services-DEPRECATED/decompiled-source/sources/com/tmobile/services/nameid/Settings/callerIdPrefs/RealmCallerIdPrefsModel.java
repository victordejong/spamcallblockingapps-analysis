package com.tmobile.services.nameid.Settings.callerIdPrefs;

import android.annotation.SuppressLint;
import com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.CachePolicy;
import com.tmobile.services.nameid.model.CheckName;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p009io.CloseableKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0006\u0018�� '2\u00020\u0001:\u0001'B\u0017\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d¢\u0006\u0004\b%\u0010&J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\u00020\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/RealmCallerIdPrefsModel;", "com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener;", "listener", "", "addCnamListener", "(Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener;)V", "Lcom/tmobile/services/nameid/model/CheckName;", "getCheckNameFromRealm", "()Lcom/tmobile/services/nameid/model/CheckName;", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$CnamEligibility;", "getCnamEligibility", "()Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$CnamEligibility;", "", "getOutboundCallerName", "()Ljava/lang/String;", "", "isCnamEnabled", "()Z", "Lio/realm/RealmResults;", "results", "onRealmCheckNameUpdate", "(Lio/realm/RealmResults;)V", "removeCnamListener", "updateNameFromNetwork", "()V", "name", "updateNameListeners", "(Ljava/lang/String;)V", "Lcom/tmobile/services/nameid/model/CachePolicy;", "checkNameCachePolicy", "Lcom/tmobile/services/nameid/model/CachePolicy;", "checkNameRecords", "Lio/realm/RealmResults;", "", "listeners", "Ljava/util/Set;", "<init>", "(Lcom/tmobile/services/nameid/model/CachePolicy;)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/RealmCallerIdPrefsModel.class */
public final class RealmCallerIdPrefsModel implements CallerIdPrefs.Model {
    @NotNull

    /* renamed from: d */
    private static final String f12861d = "RealmCIdPrefsModel#";

    /* renamed from: a */
    private final Set<CallerIdPrefs.OutboundCnamListener> f12865a;

    /* renamed from: b */
    private final RealmResults<CheckName> f12866b;

    /* renamed from: c */
    private final CachePolicy<CheckName> f12867c;

    /* renamed from: g */
    public static final Companion f12864g = new Companion(null);
    @NotNull

    /* renamed from: e */
    private static final CheckName f12862e = new CheckName();
    @NotNull

    /* renamed from: f */
    private static final CachePolicy<CheckName> f12863f = new CachePolicy<CheckName>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel$Companion$defaultCachePolicy$1
        /* renamed from: a */
        public boolean isValid(@NotNull CheckName record) {
            Intrinsics.m1830e(record, "record");
            long time = record.getUpdated().getTime();
            Long l = DateUtils.f14255d;
            Intrinsics.m1831d(l, "DateUtils.DAY");
            return System.currentTimeMillis() < time + l.longValue();
        }
    };

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "p1", "Lio/realm/RealmResults;", "Lcom/tmobile/services/nameid/model/CheckName;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/RealmCallerIdPrefsModel$1.class */
    static final /* synthetic */ class C15591 extends FunctionReferenceImpl implements Function1<RealmResults<CheckName>, Unit> {
        C15591(RealmCallerIdPrefsModel realmCallerIdPrefsModel) {
            super(1, realmCallerIdPrefsModel, RealmCallerIdPrefsModel.class, "onRealmCheckNameUpdate", "onRealmCheckNameUpdate(Lio/realm/RealmResults;)V", 0);
        }

        /* renamed from: d */
        public final void m7321d(@NotNull RealmResults<CheckName> p1) {
            Intrinsics.m1830e(p1, "p1");
            ((RealmCallerIdPrefsModel) this.receiver).m7327j(p1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RealmResults<CheckName> realmResults) {
            m7321d(realmResults);
            return Unit.f20447a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/RealmCallerIdPrefsModel$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "getLOG_TAG", "()Ljava/lang/String;", "Lcom/tmobile/services/nameid/model/CachePolicy;", "Lcom/tmobile/services/nameid/model/CheckName;", "defaultCachePolicy", "Lcom/tmobile/services/nameid/model/CachePolicy;", "getDefaultCachePolicy", "()Lcom/tmobile/services/nameid/model/CachePolicy;", "unavailableCheckName", "Lcom/tmobile/services/nameid/model/CheckName;", "getUnavailableCheckName", "()Lcom/tmobile/services/nameid/model/CheckName;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/RealmCallerIdPrefsModel$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final String m7320a() {
            return RealmCallerIdPrefsModel.f12861d;
        }
    }

    public RealmCallerIdPrefsModel() {
        this(null, 1, null);
    }

    public RealmCallerIdPrefsModel(@NotNull CachePolicy<CheckName> checkNameCachePolicy) {
        Intrinsics.m1830e(checkNameCachePolicy, "checkNameCachePolicy");
        this.f12867c = checkNameCachePolicy;
        this.f12865a = new LinkedHashSet();
        RealmResults<CheckName> E = Realm.m3064G0().m3053Q0(CheckName.class).m2918E();
        Intrinsics.m1831d(E, "Realm.getDefaultInstance…a)\n            .findAll()");
        this.f12866b = E;
        final C15591 r3 = new C15591(this);
        E.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel$sam$io_realm_RealmChangeListener$0
            @Override // io.realm.RealmChangeListener
            /* renamed from: a */
            public final /* synthetic */ void mo2506a(Object obj) {
                Intrinsics.m1831d(Function1.this.invoke(obj), "invoke(...)");
            }
        });
    }

    public /* synthetic */ RealmCallerIdPrefsModel(CachePolicy cachePolicy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? f12863f : cachePolicy);
    }

    /* renamed from: i */
    private final CheckName m7328i() {
        CheckName checkName = null;
        try {
            Realm G0 = Realm.m3064G0();
            checkName = (CheckName) G0.m3053Q0(CheckName.class).m2916G();
            CloseableKt.m1887a(G0, null);
        } catch (Throwable th) {
            LogUtil.m5631p(f12861d, "Error getting Outbound Caller ID name from Realm");
        }
        if (checkName == null || !checkName.isValid()) {
            checkName = f12862e;
        }
        return checkName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r4 != null) goto L_0x002e;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7327j(io.realm.RealmResults<com.tmobile.services.nameid.model.CheckName> r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0.isValid()
            if (r0 == 0) goto L_0x0033
            r0 = r4
            boolean r0 = r0.isEmpty()
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0033
            r0 = r4
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.tmobile.services.nameid.model.CheckName r0 = (com.tmobile.services.nameid.model.CheckName) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002b
            r0 = r4
            java.lang.String r0 = r0.getName()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002b
            goto L_0x002e
        L_0x002b:
            java.lang.String r0 = ""
            r4 = r0
        L_0x002e:
            r0 = r3
            r1 = r4
            r0.m7325l(r1)
        L_0x0033:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel.m7327j(io.realm.RealmResults):void");
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: k */
    private final void m7326k() {
        LogUtil.m5643d(f12861d, "updateNameFromNetwork");
        Observable<String> e = ApiWrapper.m6781e();
        if (e != null) {
            e.subscribe(new Consumer<String>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel$updateNameFromNetwork$1
                /* renamed from: a */
                public final void accept(String name) {
                    RealmCallerIdPrefsModel realmCallerIdPrefsModel = RealmCallerIdPrefsModel.this;
                    Intrinsics.m1831d(name, "name");
                    realmCallerIdPrefsModel.m7325l(name);
                    LogUtil.m5643d(RealmCallerIdPrefsModel.f12864g.m7320a(), "updateNameFromNetwork succeeded.");
                }
            }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Settings.callerIdPrefs.RealmCallerIdPrefsModel$updateNameFromNetwork$2
                /* renamed from: a */
                public final void accept(Throwable th) {
                    RealmCallerIdPrefsModel.this.m7325l("");
                    String a = RealmCallerIdPrefsModel.f12864g.m7320a();
                    LogUtil.m5643d(a, "updateNameFromNetwork failed: " + th.getMessage());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public final void m7325l(String str) {
        for (CallerIdPrefs.OutboundCnamListener outboundCnamListener : this.f12865a) {
            outboundCnamListener.mo7337d(str);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Model
    @NotNull
    /* renamed from: a */
    public String mo7336a() {
        String str;
        CheckName i = m7328i();
        boolean isValid = this.f12867c.isValid(i);
        String str2 = f12861d;
        LogUtil.m5643d(str2, "getOutboundCallerName - valid record found? " + isValid);
        if (isValid) {
            str = i.getName();
        } else {
            m7326k();
            str = "";
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Model
    @NotNull
    /* renamed from: b */
    public CallerIdPrefs.CnamEligibility mo7335b() {
        try {
            Realm G0 = Realm.m3064G0();
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null && tmoUserStatus.isValid()) {
                boolean isCNAMEligible = tmoUserStatus.isCNAMEligible();
                CallerIdPrefs.CnamEligibility cnamEligibility = (isCNAMEligible || SubscriptionHelper.m5313o(tmoUserStatus)) ? isCNAMEligible ? CallerIdPrefs.CnamEligibility.Eligible : CallerIdPrefs.CnamEligibility.Ineligible : CallerIdPrefs.CnamEligibility.Business;
                CloseableKt.m1887a(G0, null);
                return cnamEligibility;
            }
            CallerIdPrefs.CnamEligibility cnamEligibility2 = CallerIdPrefs.CnamEligibility.Unknown;
            CloseableKt.m1887a(G0, null);
            return cnamEligibility2;
        } catch (Throwable th) {
            LogUtil.m5631p(f12861d, "Error getting userStatus in getCnamEligibility");
            return CallerIdPrefs.CnamEligibility.Unknown;
        }
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Model
    /* renamed from: c */
    public void mo7334c(@NotNull CallerIdPrefs.OutboundCnamListener listener) {
        Intrinsics.m1830e(listener, "listener");
        this.f12865a.add(listener);
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Model
    /* renamed from: d */
    public void mo7333d(@NotNull CallerIdPrefs.OutboundCnamListener listener) {
        Intrinsics.m1830e(listener, "listener");
        this.f12865a.remove(listener);
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Model
    /* renamed from: e */
    public boolean mo7332e() {
        return SubscriptionHelper.m5313o(null);
    }
}

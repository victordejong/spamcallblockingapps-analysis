package com.tmobile.services.nameid.scamBlock;

import android.content.Context;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.scamBlock.RealmScamBlockModel;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.scamBlock.ScamBlockCounter;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p009io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018�� r2\u00020\u00012\u00020\u0002:\u0001rB\u0017\u0012\u0006\u0010j\u001a\u00020!\u0012\u0006\u0010h\u001a\u00020!¢\u0006\u0004\bp\u0010qJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\rJ#\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0007J\u001f\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ#\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00130\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u001cH\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\n '*\u0004\u0018\u00010&0&H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u001cH\u0002¢\u0006\u0004\b*\u0010%J#\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00130\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b+\u0010 J\u001f\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b.\u0010/J%\u00100\u001a\b\u0012\u0004\u0012\u00020\u00110\u00132\u0006\u0010-\u001a\u00020,2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020,2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020,2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b4\u00103J'\u00107\u001a\u00020\u00052\u0006\u00105\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u00106\u001a\u00020&H\u0002¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u0018H\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0005H\u0002¢\u0006\u0004\b;\u0010\rJ\u000f\u0010<\u001a\u00020\u0005H\u0002¢\u0006\u0004\b<\u0010\rJ\u000f\u0010=\u001a\u00020\u0005H\u0002¢\u0006\u0004\b=\u0010\rJ\u0017\u0010?\u001a\u00020\u00182\u0006\u0010>\u001a\u00020\bH\u0002¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0018H\u0016¢\u0006\u0004\bA\u0010:J\u000f\u0010B\u001a\u00020\u0018H\u0002¢\u0006\u0004\bB\u0010:J\u001f\u0010E\u001a\u00020\u00052\u000e\u0010D\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u0010H\u0002¢\u0006\u0004\bE\u0010FJ\u001f\u0010G\u001a\u00020\u00052\u0006\u00105\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u0005H\u0002¢\u0006\u0004\bI\u0010\rJ\u0017\u0010I\u001a\u00020\u00052\u0006\u00105\u001a\u00020\bH\u0002¢\u0006\u0004\bI\u0010\u000bJ\u0017\u0010L\u001a\u00020\u00052\u0006\u0010K\u001a\u00020JH\u0002¢\u0006\u0004\bL\u0010MJ\u0017\u0010N\u001a\u00020\u00052\u0006\u00105\u001a\u00020\bH\u0002¢\u0006\u0004\bN\u0010\u000bJ\u001f\u0010O\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\bO\u0010PJ\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\bQ\u0010\u0007J\u0017\u0010S\u001a\u00020\u00052\u0006\u0010R\u001a\u00020\u001cH\u0002¢\u0006\u0004\bS\u0010TJ\u0017\u0010V\u001a\u00020\u00052\u0006\u0010U\u001a\u00020\bH\u0002¢\u0006\u0004\bV\u0010\u000bJ\u0019\u0010Y\u001a\u00020\u00052\b\u0010X\u001a\u0004\u0018\u00010WH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u0005H\u0002¢\u0006\u0004\b[\u0010\rJ\u000f\u0010\\\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\\\u0010:J\u000f\u0010]\u001a\u00020\u0005H\u0002¢\u0006\u0004\b]\u0010\rJ\u0017\u0010_\u001a\u00020\u00052\u0006\u0010^\u001a\u00020\u0018H\u0002¢\u0006\u0004\b_\u0010`J\u0017\u0010a\u001a\u00020\u00052\u0006\u00105\u001a\u00020\bH\u0002¢\u0006\u0004\ba\u0010\u000bR*\u0010X\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010W0b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010c\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u0016\u0010h\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010j\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010iR\"\u0010>\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b>\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010\u000bR\u001e\u0010D\u001a\n\u0012\u0004\u0012\u00020C\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010o¨\u0006s"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/RealmScamBlockModel;", "com/tmobile/services/nameid/scamBlock/ScamBlock$Model", "com/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model", "Landroid/content/Context;", "context", "", "activateScamBlock", "(Landroid/content/Context;)V", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "fakeState", "changeToFakeState", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "clearFakeState", "()V", "clearLastScamToggle", "clearPendingState", "Lio/realm/RealmResults;", "Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "realmResults", "", "copyFromRealm", "(Lio/realm/RealmResults;)Ljava/util/List;", "deactivateScamBlock", "baseState", "", "stateIsFake", "fakeStateFrom", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;Z)Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "Ljava/util/Date;", "cutoff", "Lio/reactivex/Single;", "getBlockedCalls", "(Ljava/util/Date;)Lio/reactivex/Single;", "", "getLastScamToggle", "()J", "getLockoutExpiration", "()Ljava/util/Date;", "", "kotlin.jvm.PlatformType", "getPendingState", "()Ljava/lang/String;", "getPendingStateExpiration", "getReceivedCalls", "", "disposition", "getScamCallCount", "(ILjava/util/Date;)I", "getScamCalls", "(ILjava/util/Date;)Ljava/util/List;", "getScamsBlockedCount", "(Ljava/util/Date;)I", "getScamsReceivedCount", "newState", "errorCode", "handleFailedScamBlockMATRequest", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;Landroid/content/Context;Ljava/lang/String;)V", "hasPendingState", "()Z", "initState", "initStateFromPrefs", "initStateFromRealm", "state", "isFake", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)Z", "isScamNotifyEnabled", "isStateFake", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatuses", "onUserStatusUpdate", "(Lio/realm/RealmResults;)V", "performScamBlockMATRequest", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;Landroid/content/Context;)V", "reconcileScamBlockState", "Lio/realm/Realm;", "realm", "refreshRealm", "(Lio/realm/Realm;)V", "revertRealmState", "scheduleChangeToFakeState", "(Landroid/content/Context;Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "scheduleFeatureStateCheck", "date", "setLastScamToggle", "(Ljava/util/Date;)V", "pendingState", "setPendingState", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$StateListener;", "listener", "setScamBlockStateListener", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$StateListener;)V", "setupRealmChangeListeners", "shouldChangeToFakeState", "update", "scamBlockOn", "updateRealmScamBlockState", "(Z)V", "updateState", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "getListener", "()Ljava/lang/ref/WeakReference;", "setListener", "(Ljava/lang/ref/WeakReference;)V", "lockoutDuration", "J", "pendingStateDuration", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "getState", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "setState", "Lio/realm/RealmResults;", "<init>", "(JJ)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/RealmScamBlockModel.class */
public final class RealmScamBlockModel implements ScamBlock.Model, ScamBlockCounter.Model {

    /* renamed from: f */
    private static final Companion f13739f = new Companion(null);
    @NotNull

    /* renamed from: a */
    private ScamBlock.State f13740a = ScamBlock.State.OFF;
    @NotNull

    /* renamed from: b */
    private WeakReference<ScamBlock.StateListener> f13741b = new WeakReference<>(null);

    /* renamed from: c */
    private RealmResults<TmoUserStatus> f13742c;

    /* renamed from: d */
    private final long f13743d;

    /* renamed from: e */
    private final long f13744e;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/RealmScamBlockModel$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/RealmScamBlockModel$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/RealmScamBlockModel$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13745a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f13746b;

        static {
            int[] iArr = new int[ScamBlock.State.values().length];
            f13745a = iArr;
            iArr[ScamBlock.State.ON.ordinal()] = 1;
            f13745a[ScamBlock.State.OFF.ordinal()] = 2;
            int[] iArr2 = new int[ScamBlock.State.values().length];
            f13746b = iArr2;
            iArr2[ScamBlock.State.ON.ordinal()] = 1;
            f13746b[ScamBlock.State.OFF.ordinal()] = 2;
        }
    }

    public RealmScamBlockModel(long j, long j2) {
        this.f13743d = j;
        this.f13744e = j2;
        m6378B();
        m6362R();
        m6360T();
    }

    /* renamed from: A */
    private final boolean m6379A() {
        String v = m6344v();
        Intrinsics.m1831d(v, "getPendingState()");
        return v.length() > 0;
    }

    /* renamed from: B */
    private final void m6378B() {
        if (m6379A()) {
            m6377C();
            m6371I();
            return;
        }
        m6376D();
    }

    /* renamed from: C */
    private final void m6377C() {
        String v = m6344v();
        if (Intrinsics.m1834a(v, ScamBlock.State.ON.name())) {
            m6363Q(ScamBlock.State.PENDING_ON);
        } else if (Intrinsics.m1834a(v, ScamBlock.State.OFF.name())) {
            m6363Q(ScamBlock.State.PENDING_OFF);
        }
    }

    /* renamed from: D */
    private final void m6376D() {
        RealmQuery Q0;
        Realm G0 = Realm.m3064G0();
        Boolean bool = null;
        TmoUserStatus tmoUserStatus = (G0 == null || (Q0 = G0.m3053Q0(TmoUserStatus.class)) == null) ? null : (TmoUserStatus) Q0.m2916G();
        if (tmoUserStatus != null) {
            bool = tmoUserStatus.getScamBlock();
        }
        m6363Q(m6348r(Intrinsics.m1834a(bool, Boolean.TRUE) ? ScamBlock.State.ON : ScamBlock.State.OFF, m6374F()));
    }

    /* renamed from: E */
    private final boolean m6375E(ScamBlock.State state) {
        return state == ScamBlock.State.FAKE_ON || state == ScamBlock.State.FAKE_OFF;
    }

    /* renamed from: F */
    private final boolean m6374F() {
        return PreferenceUtils.m5395b("PREF_SCAM_BLOCK_STATE_IS_FAKE", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public final void m6373G(RealmResults<TmoUserStatus> realmResults) {
        TmoUserStatus tmoUserStatus;
        if (realmResults != null && realmResults.isValid() && !realmResults.isEmpty() && (tmoUserStatus = realmResults.get(0)) != null) {
            Intrinsics.m1831d(tmoUserStatus, "userStatuses[0] ?: return");
            LogUtil.m5643d("ScamBlockModel#", "onUserStatusUpdate -> " + tmoUserStatus);
            m6370J(m6348r(Intrinsics.m1834a(tmoUserStatus.getScamBlock(), Boolean.TRUE) ? ScamBlock.State.ON : ScamBlock.State.OFF, m6374F()));
        }
    }

    /* renamed from: H */
    private final void m6372H(final ScamBlock.State state, final Context context) {
        LogUtil.m5643d("ScamBlockModel#", "Sending Scam Block status to MATA -> " + state.name());
        final boolean z = state == ScamBlock.State.ON;
        TmoApiWrapper.m6646d0(context, TmoApiWrapper.AccountType.BLOCK, z, false, "SCAM_BLOCK", new Consumer<TmoUserStatus>() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$performScamBlockMATRequest$1
            /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
            /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void accept(com.tmobile.services.nameid.model.TmoUserStatus r7) {
                /*
                    r6 = this;
                    com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$Companion r0 = com.tmobile.services.nameid.scamBlock.RealmScamBlockModel.m6357i()
                    java.lang.String r0 = "ScamBlockModel#"
                    java.lang.String r1 = "Scam Block status sent to MATA."
                    com.tmobile.services.nameid.utility.LogUtil.m5632o(r0, r1)
                    r0 = r7
                    java.lang.String r1 = "it"
                    kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                    r0 = r7
                    java.lang.String r0 = r0.getErrorText()
                    r7 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x003f
                    r0 = r7
                    boolean r0 = kotlin.text.StringsKt.m1515r(r0)
                    r1 = 1
                    r0 = r0 ^ r1
                    if (r0 == 0) goto L_0x003f
                    r0 = r7
                    java.lang.String r0 = r0.toLowerCase()
                    r8 = r0
                    r0 = r8
                    java.lang.String r1 = "(this as java.lang.String).toLowerCase()"
                    kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                    r0 = r8
                    java.lang.String r1 = "none"
                    r2 = 0
                    r3 = 2
                    r4 = 0
                    boolean r0 = kotlin.text.StringsKt.m1535H(r0, r1, r2, r3, r4)
                    if (r0 != 0) goto L_0x003f
                    r0 = 1
                    r9 = r0
                    goto L_0x0041
                L_0x003f:
                    r0 = 0
                    r9 = r0
                L_0x0041:
                    r0 = r6
                    boolean r0 = r5
                    if (r0 == 0) goto L_0x006b
                    r0 = r9
                    if (r0 != 0) goto L_0x006b
                    r0 = r6
                    com.tmobile.services.nameid.scamBlock.RealmScamBlockModel r0 = com.tmobile.services.nameid.scamBlock.RealmScamBlockModel.this
                    java.lang.ref.WeakReference r0 = r0.m6346t()
                    java.lang.Object r0 = r0.get()
                    com.tmobile.services.nameid.scamBlock.ScamBlock$StateListener r0 = (com.tmobile.services.nameid.scamBlock.ScamBlock.StateListener) r0
                    r7 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x00b5
                    r0 = r7
                    r1 = r6
                    com.tmobile.services.nameid.scamBlock.ScamBlock$State r1 = r6
                    r0.mo6281e(r1)
                    goto L_0x00b5
                L_0x006b:
                    r0 = r9
                    if (r0 == 0) goto L_0x00b5
                    com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$Companion r0 = com.tmobile.services.nameid.scamBlock.RealmScamBlockModel.m6357i()
                    java.lang.String r0 = "Got UserStatus with error code from Scam Block MATA [%d]"
                    r1 = 1
                    java.lang.Object[] r1 = new java.lang.Object[r1]
                    r2 = r1
                    r3 = 0
                    r4 = r7
                    r2[r3] = r4
                    r2 = 1
                    java.lang.Object[] r1 = java.util.Arrays.copyOf(r1, r2)
                    java.lang.String r0 = java.lang.String.format(r0, r1)
                    r8 = r0
                    r0 = r8
                    java.lang.String r1 = "java.lang.String.format(this, *args)"
                    kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
                    java.lang.String r0 = "ScamBlockModel#"
                    r1 = r8
                    com.tmobile.services.nameid.utility.LogUtil.m5631p(r0, r1)
                    r0 = r6
                    com.tmobile.services.nameid.scamBlock.RealmScamBlockModel r0 = com.tmobile.services.nameid.scamBlock.RealmScamBlockModel.this
                    r10 = r0
                    r0 = r6
                    com.tmobile.services.nameid.scamBlock.ScamBlock$State r0 = r6
                    r11 = r0
                    r0 = r6
                    android.content.Context r0 = r7
                    r8 = r0
                    r0 = r7
                    if (r0 == 0) goto L_0x00a9
                    goto L_0x00ac
                L_0x00a9:
                    java.lang.String r0 = ""
                    r7 = r0
                L_0x00ac:
                    r0 = r10
                    r1 = r11
                    r2 = r8
                    r3 = r7
                    com.tmobile.services.nameid.scamBlock.RealmScamBlockModel.m6355k(r0, r1, r2, r3)
                L_0x00b5:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$performScamBlockMATRequest$1.accept(com.tmobile.services.nameid.model.TmoUserStatus):void");
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$performScamBlockMATRequest$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                RealmScamBlockModel.Companion unused;
                unused = RealmScamBlockModel.f13739f;
                LogUtil.m5641f("ScamBlockModel#", "Error sending Scam Block status to MATA.", th);
                RealmScamBlockModel.this.m6340z(state, context, "");
            }
        });
    }

    /* renamed from: I */
    private final void m6371I() {
        RealmQuery Q0;
        Realm G0 = Realm.m3064G0();
        Boolean bool = null;
        TmoUserStatus tmoUserStatus = (G0 == null || (Q0 = G0.m3053Q0(TmoUserStatus.class)) == null) ? null : (TmoUserStatus) Q0.m2916G();
        if (tmoUserStatus != null) {
            bool = tmoUserStatus.getScamBlock();
        }
        m6370J(m6348r(Intrinsics.m1834a(bool, Boolean.TRUE) ? ScamBlock.State.ON : ScamBlock.State.OFF, m6374F()));
    }

    /* renamed from: J */
    private final void m6370J(ScamBlock.State state) {
        LogUtil.m5643d("ScamBlockModel#", "reconcileScamBlockStatus - called with new state = " + state.name());
        String v = m6344v();
        boolean z = new Date().compareTo(m6345u()) < 0;
        if (!m6379A()) {
            LogUtil.m5643d("ScamBlockModel#", "reconcileScamBlockStatus - no pending state.");
            m6358V(state);
        } else if (!z) {
            LogUtil.m5643d("ScamBlockModel#", "reconcileScamBlockStatus - pending state = " + v + " and lockout has ended.");
            m6350p();
            m6351o();
            m6352n();
            m6358V(state);
        } else if (m6361S()) {
            LogUtil.m5643d("ScamBlockModel#", "reconcileScamBlockStatus - changing to fake state");
            m6353m(state);
            m6358V(state);
        } else if (m6375E(state)) {
            LogUtil.m5643d("ScamBlockModel#", "reconcileScamBlockStatus - a fake state was received.");
            m6358V(state);
        } else {
            LogUtil.m5643d("ScamBlockModel#", "reconcileScamBlockStatus - default, do nothing.");
        }
    }

    /* renamed from: K */
    private final void m6369K(Realm realm) {
        try {
            if (!realm.m3159X()) {
                realm.m3158Y();
            }
        } catch (Throwable th) {
            LogUtil.m5641f("ScamBlockModel#", "Exception caught while refreshing Realm.", th);
        }
    }

    /* renamed from: L */
    private final void m6368L(ScamBlock.State state) {
        ScamBlock.State state2;
        int i = WhenMappings.f13745a[state.ordinal()];
        boolean z = true;
        if (i == 1) {
            state2 = ScamBlock.State.OFF;
        } else if (i != 2) {
            LogUtil.m5643d("ScamBlockModel#", "revertRealmState called with a target state = " + state.name() + ". That's illegal! Doing nothing.");
            return;
        } else {
            state2 = ScamBlock.State.ON;
        }
        if (state2 != ScamBlock.State.ON) {
            z = false;
        }
        m6359U(z);
    }

    /* renamed from: M */
    private final void m6367M(Context context, ScamBlock.State state) {
        LogUtil.m5643d("ScamBlockModel#", "scheduleChangeToFakeState, context -> " + context);
        if (context instanceof MainActivity) {
            LogUtil.m5643d("ScamBlockModel#", "scheduleChangeToFakeState, about to schedule with MainActivity");
            ((MainActivity) context).m7557y0(m6343w(), state);
            return;
        }
        LogUtil.m5643d("ScamBlockModel#", "scheduleChangeToFakeState, unable to schedule with MainActivity");
    }

    /* renamed from: N */
    private final void m6366N(Context context) {
        LogUtil.m5643d("ScamBlockModel#", "scheduleFeatureStateCheck, context -> " + context);
        if (context instanceof MainActivity) {
            LogUtil.m5643d("ScamBlockModel#", "scheduleFeatureStateCheck, about to schedule with MainActivity");
            ((MainActivity) context).m7556z0(m6345u());
            return;
        }
        LogUtil.m5643d("ScamBlockModel#", "scheduleFeatureStateCheck, unable to schedule with MainActivity");
    }

    /* renamed from: O */
    private final void m6365O(Date date) {
        PreferenceUtils.m5384m("PREF_LAST_SCAM_BLOCK_TOGGLE", date.getTime());
    }

    /* renamed from: P */
    private final void m6364P(ScamBlock.State state) {
        PreferenceUtils.m5383n("PREF_SCAM_BLOCK_PENDING_STATE", state.name());
    }

    /* renamed from: R */
    private final void m6362R() {
        RealmQuery Q0;
        LogUtil.m5643d("ScamBlockModel#", "setupRealmChangeListeners");
        Realm G0 = Realm.m3064G0();
        Integer num = null;
        RealmResults<TmoUserStatus> E = (G0 == null || (Q0 = G0.m3053Q0(TmoUserStatus.class)) == null) ? null : Q0.m2918E();
        this.f13742c = E;
        if (E != null) {
            E.m2865v(new RealmChangeListener<RealmResults<TmoUserStatus>>() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$setupRealmChangeListeners$1
                /* renamed from: b */
                public final void mo2506a(RealmResults<TmoUserStatus> realmResults) {
                    RealmScamBlockModel.this.m6373G(realmResults);
                }
            });
        }
        StringBuilder sb = new StringBuilder();
        sb.append("setupRealmChangeListeners: userStatuses.size = ");
        RealmResults<TmoUserStatus> realmResults = this.f13742c;
        if (realmResults != null) {
            num = Integer.valueOf(realmResults.size());
        }
        sb.append(num);
        LogUtil.m5643d("ScamBlockModel#", sb.toString());
    }

    /* renamed from: S */
    private final boolean m6361S() {
        LogUtil.m5643d("ScamBlockModel#", "shouldChangeToFakeState - isStateFake? " + m6374F() + " - hasPendingState? " + m6379A() + " - pending state expires at: " + m6343w().toString());
        return !m6374F() && m6379A() && m6343w().compareTo(new Date()) <= 0;
    }

    /* renamed from: T */
    private final void m6360T() {
        ScamBlock.StateListener stateListener = this.f13741b.get();
        if (stateListener != null) {
            stateListener.mo6285a(getState());
        }
    }

    /* renamed from: U */
    private final void m6359U(final boolean z) {
        Realm G0;
        try {
            Realm.m3064G0().m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$updateRealmScamBlockState$$inlined$use$lambda$1
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    RealmScamBlockModel.Companion unused;
                    TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3053Q0(TmoUserStatus.class).m2916G();
                    if (tmoUserStatus != null) {
                        tmoUserStatus.setScamBlock(Boolean.valueOf(z));
                        tmoUserStatus.setUpdatedAt(new Date());
                        unused = RealmScamBlockModel.f13739f;
                        LogUtil.m5643d("ScamBlockModel#", "Updated Scam Block status in Realm -> " + RealmScamBlockModel.this.getState().name());
                    }
                }
            });
            Unit unit = Unit.f20447a;
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: V */
    private final void m6358V(ScamBlock.State state) {
        m6363Q(state);
        m6360T();
    }

    /* renamed from: m */
    private final void m6353m(final ScamBlock.State state) {
        final boolean z = state == ScamBlock.State.ON;
        PreferenceUtils.m5386k("PREF_SCAM_BLOCK_STATE_IS_FAKE", true);
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$changeToFakeState$$inlined$use$lambda$1
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    RealmScamBlockModel.Companion unused;
                    TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3053Q0(TmoUserStatus.class).m2916G();
                    if (tmoUserStatus != null) {
                        tmoUserStatus.setScamBlock(Boolean.valueOf(z));
                        tmoUserStatus.setUpdatedAt(new Date());
                        unused = RealmScamBlockModel.f13739f;
                        LogUtil.m5643d("ScamBlockModel#", "Updated Scam Block status in Realm -> " + state.name());
                    }
                }
            });
            Unit unit = Unit.f20447a;
            CloseableKt.m1887a(G0, null);
        } catch (Throwable th) {
            LogUtil.m5641f("ScamBlockModel#", "Error while setting fake scam block state.", th);
            PreferenceUtils.m5386k("PREF_SCAM_BLOCK_STATE_IS_FAKE", false);
        }
    }

    /* renamed from: n */
    private final void m6352n() {
        PreferenceUtils.m5386k("PREF_SCAM_BLOCK_STATE_IS_FAKE", false);
    }

    /* renamed from: o */
    private final void m6351o() {
        PreferenceUtils.m5384m("PREF_LAST_SCAM_BLOCK_TOGGLE", 0L);
    }

    /* renamed from: p */
    private final void m6350p() {
        PreferenceUtils.m5383n("PREF_SCAM_BLOCK_PENDING_STATE", "");
    }

    /* renamed from: q */
    private final List<ActivityItem> m6349q(RealmResults<ActivityItem> realmResults) {
        ArrayList arrayList = new ArrayList();
        Iterator<ActivityItem> it = realmResults.iterator();
        while (it.hasNext()) {
            ActivityItem copy = it.next().copy();
            Intrinsics.m1831d(copy, "item.copy()");
            arrayList.add(copy);
        }
        return arrayList;
    }

    /* renamed from: r */
    private final ScamBlock.State m6348r(ScamBlock.State state, boolean z) {
        ScamBlock.State state2 = state;
        if (z) {
            int i = WhenMappings.f13746b[state.ordinal()];
            state2 = i != 1 ? i != 2 ? state : ScamBlock.State.FAKE_OFF : ScamBlock.State.FAKE_ON;
        }
        return state2;
    }

    /* renamed from: s */
    private final long m6347s() {
        return PreferenceUtils.m5393d("PREF_LAST_SCAM_BLOCK_TOGGLE");
    }

    /* renamed from: v */
    private final String m6344v() {
        return PreferenceUtils.m5389h("PREF_SCAM_BLOCK_PENDING_STATE", "");
    }

    /* renamed from: w */
    private final Date m6343w() {
        return new Date(m6347s() + this.f13743d);
    }

    /* renamed from: x */
    private final int m6342x(int i, Date date) {
        LogUtil.m5643d("ScamBlockModel#", "getScamCallCount, disp = " + i + " cutoff = " + date);
        Realm realm = Realm.m3064G0();
        Intrinsics.m1831d(realm, "realm");
        m6369K(realm);
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2885q("type", Integer.valueOf(i));
        Q0.m2913J("date", date);
        Q0.m2900b();
        Q0.m2885q("bucketId", 0);
        Q0.m2903T();
        Q0.m2885q("bucketId", 15);
        Q0.m2890l();
        return (int) Q0.m2896f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public final List<ActivityItem> m6341y(int i, Date date) {
        LogUtil.m5643d("ScamBlockModel#", "getScamCalls, disp = " + i + " cutoff = " + date);
        Realm realm = Realm.m3064G0();
        Intrinsics.m1831d(realm, "realm");
        m6369K(realm);
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2885q("type", Integer.valueOf(i));
        Q0.m2913J("date", date);
        Q0.m2900b();
        Q0.m2885q("bucketId", 0);
        Q0.m2903T();
        Q0.m2885q("bucketId", 15);
        Q0.m2890l();
        RealmResults<ActivityItem> realmResults = Q0.m2918E().m3089s("date", Sort.DESCENDING);
        Intrinsics.m1831d(realmResults, "realmResults");
        return m6349q(realmResults);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public final void m6340z(ScamBlock.State state, Context context, String str) {
        if (context instanceof MainActivity) {
            ((MainActivity) context).m7585k();
        }
        m6350p();
        m6351o();
        m6352n();
        m6368L(state);
        ScamBlock.StateListener stateListener = this.f13741b.get();
        if (stateListener != null) {
            stateListener.mo6284b(state, str);
        }
    }

    /* renamed from: Q */
    public void m6363Q(@NotNull ScamBlock.State state) {
        Intrinsics.m1830e(state, "<set-?>");
        this.f13740a = state;
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model, com.tmobile.services.nameid.scamBlock.ScamBlockCounter.Model
    /* renamed from: a */
    public int mo6330a(@NotNull Date cutoff) {
        Intrinsics.m1830e(cutoff, "cutoff");
        return m6342x(ActivityItem.Type.INCOMING.getValue(), cutoff);
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model, com.tmobile.services.nameid.scamBlock.ScamBlockCounter.Model
    /* renamed from: b */
    public int mo6329b(@NotNull Date cutoff) {
        Intrinsics.m1830e(cutoff, "cutoff");
        return m6342x(ActivityItem.Type.BLOCKED.getValue(), cutoff);
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model
    /* renamed from: c */
    public void mo6334c(@Nullable ScamBlock.StateListener stateListener) {
        LogUtil.m5643d("ScamBlockModel#", "setScamBlockStateListener");
        this.f13741b = new WeakReference<>(stateListener);
        m6360T();
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlockCounter.Model
    @NotNull
    /* renamed from: d */
    public Single<List<ActivityItem>> mo6328d(@NotNull final Date cutoff) {
        Intrinsics.m1830e(cutoff, "cutoff");
        Single<List<ActivityItem>> d = Single.m4470d(new SingleOnSubscribe<List<? extends ActivityItem>>() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$getReceivedCalls$1
            @Override // io.reactivex.SingleOnSubscribe
            /* renamed from: a */
            public final void mo4459a(@NotNull SingleEmitter<List<? extends ActivityItem>> it) {
                List<? extends ActivityItem> y;
                Intrinsics.m1830e(it, "it");
                try {
                    y = RealmScamBlockModel.this.m6341y(ActivityItem.Type.INCOMING.getValue(), cutoff);
                    it.onSuccess(y);
                } catch (Throwable th) {
                    it.onError(th);
                }
            }
        });
        Intrinsics.m1831d(d, "Single.create {\n        …)\n            }\n        }");
        return d;
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model
    /* renamed from: e */
    public void mo6333e(@NotNull Context context) {
        Intrinsics.m1830e(context, "context");
        LogUtil.m5643d("ScamBlockModel#", "deactivateScamBlock");
        m6364P(ScamBlock.State.OFF);
        m6358V(ScamBlock.State.PENDING_OFF);
        m6372H(ScamBlock.State.OFF, context);
        m6365O(new Date());
        m6366N(context);
        m6352n();
        m6367M(context, ScamBlock.State.OFF);
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlockCounter.Model
    @NotNull
    /* renamed from: f */
    public Single<List<ActivityItem>> mo6327f(@NotNull final Date cutoff) {
        Intrinsics.m1830e(cutoff, "cutoff");
        Single<List<ActivityItem>> d = Single.m4470d(new SingleOnSubscribe<List<? extends ActivityItem>>() { // from class: com.tmobile.services.nameid.scamBlock.RealmScamBlockModel$getBlockedCalls$1
            @Override // io.reactivex.SingleOnSubscribe
            /* renamed from: a */
            public final void mo4459a(@NotNull SingleEmitter<List<? extends ActivityItem>> it) {
                List<? extends ActivityItem> y;
                Intrinsics.m1830e(it, "it");
                try {
                    y = RealmScamBlockModel.this.m6341y(ActivityItem.Type.BLOCKED.getValue(), cutoff);
                    it.onSuccess(y);
                } catch (Throwable th) {
                    it.onError(th);
                }
            }
        });
        Intrinsics.m1831d(d, "Single.create {\n        …)\n            }\n        }");
        return d;
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model
    /* renamed from: g */
    public boolean mo6332g() {
        return PreferenceUtils.m5395b("PREF_NOTIFICATION_SCAM_BLOCKED", false);
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model, com.tmobile.services.nameid.scamBlock.ScamBlockCounter.Model
    @NotNull
    public ScamBlock.State getState() {
        return this.f13740a;
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.Model
    /* renamed from: h */
    public void mo6331h(@NotNull Context context) {
        Intrinsics.m1830e(context, "context");
        LogUtil.m5643d("ScamBlockModel#", "activateScamBlock");
        m6364P(ScamBlock.State.ON);
        m6358V(ScamBlock.State.PENDING_ON);
        m6372H(ScamBlock.State.ON, context);
        m6365O(new Date());
        m6366N(context);
        m6352n();
        m6367M(context, ScamBlock.State.ON);
    }

    @NotNull
    /* renamed from: t */
    public final WeakReference<ScamBlock.StateListener> m6346t() {
        return this.f13741b;
    }

    @NotNull
    /* renamed from: u */
    public Date m6345u() {
        return new Date(m6347s() + this.f13744e);
    }
}

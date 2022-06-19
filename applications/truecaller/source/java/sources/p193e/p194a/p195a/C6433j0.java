package p193e.p194a.p195a;

import android.content.SharedPreferences;
import com.google.common.collect.Collections2;
import com.razorpay.AnalyticsConstants;
import e.m.d.y.n;
import e.m.e.k;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.j0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/j0.class */
public class C6433j0 implements AbstractC6392i0 {

    /* renamed from: a */
    public final SharedPreferences f21388a;

    /* renamed from: b */
    public final AbstractC8541a f21389b;

    public C6433j0(SharedPreferences sharedPreferences, AbstractC8541a abstractC8541a) {
        this.f21388a = sharedPreferences;
        this.f21389b = abstractC8541a;
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: A */
    public b mo31238A() {
        return new b(this.f21388a.getLong("spamTabPromoLastDismissedDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: A0 */
    public void mo31237A0(int i) {
        C22128a.m8593n0(this.f21388a, "imHistoryEventLimit", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: A1 */
    public boolean mo31236A1() {
        return this.f21388a.getBoolean("hasDismissedReadReplyPromo", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: A2 */
    public void mo31235A2(boolean z) {
        C22128a.m8577r0(this.f21388a, "isAutoCleanupEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: A3 */
    public String mo31234A3() {
        return this.f21388a.getString("lastCallBanner", null);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: B */
    public void mo31233B(int i) {
        C22128a.m8593n0(this.f21388a, "mapPreviewZoom", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: B0 */
    public void mo31232B0(String str) {
        this.f21388a.edit().putString("autoDownloadMedia", str).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: B1 */
    public void mo31231B1(int i) {
        C22128a.m8593n0(this.f21388a, "autoCleanupSpamPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: B2 */
    public boolean mo31230B2(int i) {
        String str;
        if (i == 0) {
            str = "MmsAutoDownloadWhenRoaming";
        } else if (1 != i) {
            return false;
        } else {
            str = "SimTwoMmsAutoDownloadWhenRoaming";
        }
        return this.f21388a.getBoolean(str, false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: B3 */
    public void mo31229B3(b bVar) {
        this.f21388a.edit().putLong("LastMessagePromotionDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: C */
    public int mo31228C(int i) {
        return this.f21388a.getInt("conversationSpamSearchCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: C0 */
    public void mo31227C0(long j) {
        C22128a.m8589o0(this.f21388a, "featureDefaultSmsAppPromoDate", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: C1 */
    public boolean mo31226C1() {
        return this.f21389b.getBoolean("featureAvailability", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: C2 */
    public boolean mo31225C2() {
        return this.f21388a.getBoolean("BlockedMessagesNotification", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: C3 */
    public void mo31224C3(b bVar) {
        this.f21388a.edit().putLong("lastUnreadShortReminderDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: D */
    public void mo31223D(int i) {
        C22128a.m8593n0(this.f21388a, "pendingIncomingMsgNotificationsCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: D0 */
    public void mo31222D0(boolean z) {
        C22128a.m8577r0(this.f21388a, "messagingVibration", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: D1 */
    public void mo31221D1(int i) {
        C22128a.m8593n0(this.f21388a, "mapPreviewWidth", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: D2 */
    public boolean mo31220D2() {
        return this.f21388a.getBoolean("imCreateGroupAnimShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: D3 */
    public boolean mo31219D3() {
        return this.f21388a.getBoolean("promotionalMessagesMigrated", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: E */
    public void mo31218E(int i) {
        C22128a.m8593n0(this.f21388a, "featureDefaultSmsAppPromoDuration", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: E0 */
    public boolean mo31217E0() {
        return this.f21388a.getBoolean("additionalPermissionsDialogShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: E1 */
    public void mo31216E1(long j) {
        C22128a.m8589o0(this.f21388a, "lastTimeAppUpdatePromo", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: E2 */
    public int mo31215E2() {
        return this.f21388a.getInt("allTimeCleanupStatsSpamCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: E3 */
    public void mo31214E3(boolean z) {
        C22128a.m8577r0(this.f21388a, "inboxCleanupShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: F */
    public int mo31213F() {
        return this.f21388a.getInt("imNewJoinersPeriodDays", 7);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: F0 */
    public boolean mo31212F0() {
        return this.f21388a.getBoolean("autoJoinGroupsShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: F1 */
    public void mo31211F1(boolean z) {
        C22128a.m8577r0(this.f21388a, "isImPresenceReported", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: F2 */
    public b mo31210F2() {
        return new b(this.f21388a.getLong("lastUnreadShortReminderDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: F3 */
    public boolean mo31209F3() {
        return this.f21388a.getBoolean("hasShownUndoTip", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: G */
    public void mo31208G(b bVar) {
        this.f21388a.edit().putLong("manualCleanupLastDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: G0 */
    public boolean mo31207G0() {
        return this.f21388a.getBoolean("hadSmsReadAccess", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: G1 */
    public void mo31206G1(String str) {
        SharedPreferences.Editor edit = this.f21388a.edit();
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        edit.putString("messagingRingtone", str2).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: G2 */
    public long mo31205G2() {
        return this.f21388a.getLong("lastInboxBannerDate", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: G3 */
    public int mo31204G3() {
        return this.f21388a.getInt("imGroupRecoveryState", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: H */
    public void mo31203H(boolean z) {
        C22128a.m8577r0(this.f21388a, "promotionalMessagesMigrated", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: H0 */
    public boolean mo31202H0(int i) {
        String str;
        if (i == 0) {
            str = "MmsAutoDownload";
        } else if (1 != i) {
            return true;
        } else {
            str = "SimTwoMmsAutoDownload";
        }
        return this.f21388a.getBoolean(str, true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: H1 */
    public void mo31201H1(int i) {
        C22128a.m8593n0(this.f21388a, "manualCleanupSpamPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: H2 */
    public boolean mo31200H2() {
        return this.f21388a.getBoolean("isTypingIndicatorEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: H3 */
    public void mo31199H3(boolean z) {
        C22128a.m8577r0(this.f21388a, "wasReadReceiptsSyncedWithBE", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: I */
    public b mo31198I() {
        return new b(this.f21388a.getLong("autoCleanupLastDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: I0 */
    public void mo31197I0(boolean z) {
        C22128a.m8577r0(this.f21388a, "lastDmaNotificationClicked", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: I1 */
    public void mo31196I1(long j) {
        C22128a.m8589o0(this.f21388a, "defaultSmsAppTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: I2 */
    public boolean mo31195I2() {
        return this.f21388a.getBoolean("messagingVibration", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: I3 */
    public void mo31194I3(int i) {
        C22128a.m8593n0(this.f21388a, "mapPreviewHeight", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: J */
    public void mo31193J(boolean z) {
        C22128a.m8577r0(this.f21388a, "isGroupAutoJoinEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: J0 */
    public long mo31192J0() {
        return this.f21388a.getLong("spamTabVisitedTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: J1 */
    public b mo31191J1() {
        return new b(this.f21388a.getLong("manualCleanupNextStepLastShownDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: J2 */
    public void mo31190J2(int i) {
        C22128a.m8593n0(this.f21388a, "autoCleanupPromotionalPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: J3 */
    public void mo31189J3(int i) {
        C22128a.m8593n0(this.f21388a, "appUpdateToVersion", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: K */
    public void mo31188K(int i) {
        C22128a.m8593n0(this.f21388a, "unreadReminderDailyCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: K0 */
    public b mo31187K0() {
        return new b(this.f21388a.getLong("manualCleanupLastDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: K1 */
    public void mo31186K1(long j) {
        C22128a.m8589o0(this.f21388a, "lastInboxBannerDate", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: K2 */
    public int mo31185K2() {
        return this.f21388a.getInt("allTimeCleanupStatsOtpCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: K3 */
    public boolean mo31184K3() {
        return this.f21388a.getBoolean("wasReadReceiptsSyncedWithBE", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: L */
    public List<String> mo31183L() {
        return Collections2.newArrayList(this.f21388a.getString("reactions_emoji", "��,��,��,��,��,��,��").split(","));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: L0 */
    public String[] mo31182L0() {
        String[] strArr;
        String string = this.f21388a.getString("replyOptions", null);
        if (string != null) {
            strArr = (String[]) n.B1(String[].class).cast(new k().g(string, String[].class));
        } else {
            strArr = new String[0];
        }
        return strArr;
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: L1 */
    public boolean mo31181L1() {
        return this.f21388a.getBoolean("isManualCleanupPromotionalEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: L2 */
    public void mo31180L2(long j) {
        C22128a.m8589o0(this.f21388a, "spamTabVisitedTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: L3 */
    public long mo31179L3() {
        return this.f21388a.getLong("getImUserMissTtl", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: M */
    public long mo31178M() {
        return this.f21388a.getLong("businessTabVisitedTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: M0 */
    public long mo31177M0() {
        return this.f21388a.getLong("lastMessageReceivedWorkerRunDate", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: M1 */
    public int mo31176M1() {
        return this.f21388a.getInt("manualCleanupFailureRunCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: M2 */
    public void mo31175M2(boolean z) {
        C22128a.m8577r0(this.f21388a, "BlockedMessagesNotification", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: M3 */
    public int mo31174M3() {
        return this.f21388a.getInt("autoCleanupFailureRunCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: N */
    public int mo31173N() {
        return this.f21388a.getInt("defaultSmsNotificationPromoShown", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: N0 */
    public int mo31172N0() {
        return this.f21388a.getInt("imGroupMaxParticipantCount", 25);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: N1 */
    public int mo31171N1() {
        return this.f21388a.getInt("imHistoryMessageMaxCount", 300);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: N2 */
    public void mo31170N2(boolean z) {
        C22128a.m8577r0(this.f21388a, "isTypingIndicatorEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: N3 */
    public boolean mo31169N3() {
        return this.f21388a.getBoolean("isTenorGIFEnabled", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: O */
    public void mo31168O() {
        C22128a.m8577r0(this.f21388a, "umOnboardingShown", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: O0 */
    public float mo31167O0(float f) {
        return this.f21388a.getFloat("lastUrgentBubblePositionY", f);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: O1 */
    public int mo31166O1() {
        return this.f21388a.getInt("manualCleanupStatsPromotionalCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: O2 */
    public int mo31165O2() {
        return this.f21388a.getInt("appUpdateToVersion", -1);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: O3 */
    public void mo31164O3(long j) {
        C22128a.m8589o0(this.f21388a, "lastCallBannerDate", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: P */
    public int mo31163P() {
        return this.f21388a.getInt("autoCleanupRunCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: P0 */
    public boolean mo31162P0() {
        return this.f21388a.getBoolean("scheduleMessageTooltipShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: P1 */
    public long mo31161P1() {
        return this.f21388a.getLong("promotionalTabVisitedTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: P2 */
    public void mo31160P2(boolean z) {
        C22128a.m8577r0(this.f21388a, "wasDefaultSmsApp", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: P3 */
    public boolean mo31159P3() {
        return this.f21388a.getBoolean("enableUrgentMessages", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Q */
    public int mo31158Q() {
        return this.f21388a.getInt("autoCleanupOtpPeriod", 7);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Q0 */
    public int mo31157Q0() {
        return this.f21388a.getInt("mmsMaxImageHeightLimit", 480);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Q1 */
    public void mo31156Q1(b bVar) {
        this.f21388a.edit().putLong("spamTabPromoLastDismissedDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Q2 */
    public boolean mo31155Q2() {
        return this.f21388a.getBoolean("messagingSendGroupSms", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Q3 */
    public void mo31154Q3(int i) {
        C22128a.m8593n0(this.f21388a, "imHistoryMessageMaxCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: R */
    public void mo31153R() {
        this.f21388a.edit().putInt("manualCleanupFailureRunCount", this.f21388a.getInt("manualCleanupFailureRunCount", 0) + 1).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: R0 */
    public int mo31152R0() {
        return this.f21388a.getInt("unreadReminderDailyCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: R1 */
    public int mo31151R1() {
        return this.f21388a.getInt("manualCleanupOtpPeriod", 7);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: R2 */
    public void mo31150R2(long j) {
        C22128a.m8589o0(this.f21388a, "defaultSmsNotificationPromoShownDate", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: R3 */
    public void mo31149R3(int i) {
        C22128a.m8593n0(this.f21388a, "conversationSpamSearchCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: S */
    public void mo31148S(b bVar) {
        this.f21388a.edit().putLong("manualCleanupNextStepLastShownDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: S0 */
    public void mo31147S0(int i, long j) {
        SharedPreferences.Editor edit = this.f21388a.edit();
        edit.putLong("MsgLastTransportSyncTime_" + i, j).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: S1 */
    public int mo31146S1() {
        return this.f21388a.getInt("imForceUpgradeVersion", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: S2 */
    public void mo31145S2(int i) {
        C22128a.m8593n0(this.f21388a, "imNewJoinersPeriodDays", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: S3 */
    public void mo31144S3(String str) {
        C22128a.m8585p0(this.f21388a, "reactions_emoji", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: T */
    public void mo31143T(boolean z) {
        C22128a.m8577r0(this.f21388a, "isManualCleanupOtpEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: T0 */
    public int mo31142T0() {
        return this.f21388a.getInt("mmsMaxImageWidthLimit", 640);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: T1 */
    public boolean mo31141T1() {
        return this.f21388a.getBoolean("isManualCleanupOtpEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: T2 */
    public boolean mo31140T2() {
        return this.f21388a.getBoolean("manualCleanupDone", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: T3 */
    public void mo31139T3(long j) {
        C22128a.m8589o0(this.f21388a, "othersTabVisitedTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: U */
    public void mo31138U() {
        this.f21388a.edit().putInt("autoCleanupFailureRunCount", this.f21388a.getInt("autoCleanupFailureRunCount", 0) + 1).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: U0 */
    public void mo31137U0(b bVar) {
        this.f21388a.edit().putLong("autoCleanupLastDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: U1 */
    public b mo31136U1() {
        return new b(this.f21388a.getLong("featureDefaultSmsAppPromoDate", 1617235200000L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: U2 */
    public boolean mo31135U2() {
        return this.f21388a.getBoolean("imTracingEnabled", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: U3 */
    public void mo31134U3(boolean z) {
        C22128a.m8577r0(this.f21388a, "messagingSendGroupSms", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: V */
    public void mo31133V(int i) {
        C22128a.m8593n0(this.f21388a, "smsPermissionForBlockQuestionCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: V0 */
    public int mo31132V0() {
        return this.f21388a.getInt("autoCleanupSpamPeriod", 30);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: V1 */
    public void mo31131V1(String[] strArr) {
        this.f21388a.edit().putString("replyOptions", new k().n(strArr, String[].class)).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: V2 */
    public int mo31130V2() {
        return this.f21388a.getInt("autoCleanupPromotionalPeriod", 30);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: V3 */
    public int mo31129V3() {
        return this.f21388a.getInt("manualCleanupStatsOtpCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: W */
    public void mo31128W(int i, boolean z) {
        String str;
        if (i == 0) {
            str = "MmsAutoDownloadWhenRoaming";
        } else if (1 != i) {
            return;
        } else {
            str = "SimTwoMmsAutoDownloadWhenRoaming";
        }
        C22128a.m8577r0(this.f21388a, str, z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: W0 */
    public long mo31127W0() {
        return this.f21388a.getLong("lastCallBannerDate", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: W1 */
    public void mo31126W1() {
        m31007q4("addressFieldBlinkedCount");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: W2 */
    public void mo31125W2(boolean z) {
        C22128a.m8577r0(this.f21388a, "additionalPermissionsDialogShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: W3 */
    public void mo31124W3(boolean z) {
        C22128a.m8577r0(this.f21388a, "scheduleMessageTooltipShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: X */
    public boolean mo31123X() {
        return this.f21388a.getBoolean("historyMessagesInitialSyncCompleted", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: X0 */
    public void mo31122X0(boolean z) {
        C22128a.m8577r0(this.f21388a, "imTracingEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: X1 */
    public String mo31121X1() {
        return this.f21388a.getString("lastTimeZoneSync", null);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: X2 */
    public void mo31120X2(int i) {
        C22128a.m8593n0(this.f21388a, "imGroupMaxParticipantCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: X3 */
    public void mo31119X3(int i) {
        C22128a.m8593n0(this.f21388a, "imVoiceClipMaxDurationMins", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Y */
    public void mo31118Y(int i) {
        C22128a.m8593n0(this.f21388a, "allTimeCleanupStatsOtpCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Y0 */
    public long mo31117Y0() {
        return this.f21388a.getLong("imGroupRecoveryAttemptTime", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Y1 */
    public String mo31116Y1() {
        return this.f21388a.getString("groupInviteLink", "https://chat.truecaller.com/group/");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Y2 */
    public b mo31115Y2() {
        return new b(this.f21388a.getLong("lastGroupUnreadShortReminderDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Y3 */
    public void mo31114Y3() {
        m31007q4("counterFacebookInvite");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Z */
    public void mo31113Z(boolean z) {
        C22128a.m8577r0(this.f21388a, "hasShownUndoTip", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Z0 */
    public void mo31112Z0(int i, boolean z) {
        String str;
        if (i == 0) {
            str = "MmsAutoDownload";
        } else if (1 != i) {
            return;
        } else {
            str = "SimTwoMmsAutoDownload";
        }
        C22128a.m8577r0(this.f21388a, str, z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Z1 */
    public void mo31111Z1(boolean z) {
        C22128a.m8577r0(this.f21388a, "hasDismissedNewInboxPromo", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Z2 */
    public void mo31110Z2(int i) {
        C22128a.m8593n0(this.f21388a, "allTimeCleanupStatsSpamCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: Z3 */
    public boolean mo31109Z3() {
        return this.f21388a.getBoolean("starredMessagesShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: a */
    public boolean mo31108a() {
        return !this.f21389b.getBoolean("availability_disabled", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: a0 */
    public b mo31107a0() {
        return new b(this.f21388a.getLong("lastDmaNotificationShownDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: a1 */
    public void mo31106a1(float f) {
        this.f21388a.edit().putFloat("lastUrgentBubblePositionY", f).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: a2 */
    public int mo31105a2() {
        return this.f21388a.getInt("spamSearchStatus", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: a3 */
    public void mo31104a3(boolean z) {
        C22128a.m8577r0(this.f21388a, "starredMessagesShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: a4 */
    public void mo31103a4(boolean z) {
        C22128a.m8577r0(this.f21388a, "isAutoCleanupNotifEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: b */
    public boolean mo31102b() {
        return !this.f21389b.getBoolean("flash_disabled", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: b0 */
    public int mo31101b0() {
        return this.f21388a.getInt("imGroupBatchParticipantCount", 20);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: b1 */
    public void mo31100b1(boolean z) {
        C22128a.m8577r0(this.f21388a, "isManualCleanupSpamEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: b2 */
    public boolean mo31099b2() {
        return this.f21388a.getBoolean("isGroupAutoJoinEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: b3 */
    public int mo31098b3() {
        return this.f21388a.getInt("imVoiceClipMaxDurationMins", 59);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: b4 */
    public long mo31097b4(long j) {
        return this.f21388a.getLong("MsgLastSyncTime", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: c */
    public void mo31096c(b bVar) {
        this.f21388a.edit().putLong("lastImReadTime", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: c0 */
    public b mo31095c0() {
        return new b(this.f21388a.getLong("lastUnreadLongReminderDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: c1 */
    public int mo31094c1() {
        return this.f21388a.getInt("allTimeCleanupStatsPromotionalCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: c2 */
    public int mo31093c2() {
        return this.f21388a.getInt("smsPermissionForBlockQuestionCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: c3 */
    public boolean mo31092c3() {
        return this.f21388a.contains("messagingSendGroupSms");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: c4 */
    public void mo31091c4(boolean z) {
        C22128a.m8577r0(this.f21388a, "imCreateGroupAnimShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: d */
    public void mo31090d(int i, boolean z) {
        String str;
        if (i == 0) {
            str = "requestSmsDeliveryReport";
        } else if (1 != i) {
            return;
        } else {
            str = "requestSimTwoSmsDeliveryReport";
        }
        C22128a.m8577r0(this.f21388a, str, z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: d0 */
    public boolean mo31089d0() {
        return this.f21388a.contains("messagingRingtone");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: d1 */
    public long mo31088d1() {
        return this.f21388a.getLong("personalTabVisitedTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: d2 */
    public void mo31087d2(long j) {
        C22128a.m8589o0(this.f21388a, "nudgeToSendNotificationTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: d3 */
    public void mo31086d3(boolean z) {
        C22128a.m8577r0(this.f21388a, "isTenorGIFEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: d4 */
    public void mo31085d4(boolean z) {
        C22128a.m8577r0(this.f21388a, "autoJoinGroupsShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: e */
    public void mo31084e(b bVar) {
        this.f21388a.edit().putLong("lastGroupUnreadShortReminderDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: e0 */
    public void mo31083e0(long j) {
        C22128a.m8589o0(this.f21388a, "getImUserMissTtl", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: e1 */
    public b mo31082e1() {
        return new b(this.f21388a.getLong("JoinImUsersNotificationDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: e2 */
    public long mo31081e2() {
        return this.f21388a.getLong("lastTimeAppUpdatePromo", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: e3 */
    public void mo31080e3(boolean z) {
        C22128a.m8577r0(this.f21388a, "inboxCleanupPromoShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: e4 */
    public void mo31079e4(String str) {
        SharedPreferences.Editor edit = this.f21388a.edit();
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        edit.putString("chatMessagingRingtone", str2).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: f */
    public String mo31078f() {
        return this.f21388a.getString("imPeerId", null);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: f0 */
    public void mo31077f0(long j) {
        C22128a.m8589o0(this.f21388a, "imGroupRecoveryAttemptTime", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: f1 */
    public void mo31076f1(int i) {
        C22128a.m8593n0(this.f21388a, "manualCleanupPromotionalPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: f2 */
    public int mo31075f2() {
        return this.f21388a.getInt("imHistoryEventLimit", 50);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: f3 */
    public void mo31074f3(int i) {
        C22128a.m8593n0(this.f21388a, "imGroupBatchParticipantCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: f4 */
    public String mo31073f4() {
        return this.f21388a.getString("lastInboxBanner", null);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: g */
    public boolean mo31072g() {
        return this.f21388a.contains("chatMessagingRingtone");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: g0 */
    public void mo31071g0(b bVar) {
        this.f21388a.edit().putLong("JoinImUsersNotificationDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: g1 */
    public void mo31070g1(boolean z) {
        C22128a.m8577r0(this.f21388a, "historyMessagesInitialSyncCompleted", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: g2 */
    public boolean mo31069g2() {
        return this.f21388a.getBoolean("qaEnableAvailability", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: g3 */
    public boolean mo31068g3() {
        return this.f21388a.getBoolean("umOnboardingShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: g4 */
    public b mo31067g4() {
        return new b(this.f21388a.getLong("promotionalTabPromoLastDismissedDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: h */
    public void mo31066h() {
        C22128a.m8577r0(this.f21388a, "translationPreferencesShown", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: h0 */
    public boolean mo31065h0() {
        return this.f21388a.getBoolean("isImPresenceReported", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: h1 */
    public int mo31064h1() {
        return this.f21388a.getInt("pendingIncomingMsgNotificationsCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: h2 */
    public void mo31063h2(int i) {
        C22128a.m8593n0(this.f21388a, "manualCleanupStatsOtpCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: h3 */
    public void mo31062h3(int i) {
        C22128a.m8593n0(this.f21388a, "spamSearchStatus", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: h4 */
    public void mo31061h4(boolean z) {
        C22128a.m8577r0(this.f21388a, "enableUrgentMessages", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: i */
    public void mo31060i() {
        this.f21388a.edit().putInt("manualCleanupRunCount", mo31021o2() + 1).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: i0 */
    public void mo31059i0(boolean z) {
        C22128a.m8577r0(this.f21388a, "searchInConversationShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: i1 */
    public void mo31058i1(String str) {
        this.f21388a.edit().putString("autoDownloadTranslations", str).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: i2 */
    public long mo31057i2(int i, long j) {
        SharedPreferences sharedPreferences = this.f21388a;
        return sharedPreferences.getLong("MsgLastTransportSyncTime_" + i, j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: i3 */
    public String mo31056i3() {
        String string = this.f21388a.getString("chatMessagingRingtone", "");
        String str = string;
        if (h.j(string)) {
            str = null;
        }
        return str;
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: i4 */
    public void mo31055i4(long j) {
        C22128a.m8589o0(this.f21388a, "imInitialSyncTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: j */
    public boolean mo31054j() {
        return this.f21388a.getBoolean("hasDismissedCallsMessagesSeparatelyPromo", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: j0 */
    public long mo31053j0() {
        return this.f21388a.getLong("imInitialSyncTimestamp", -1L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: j1 */
    public String mo31052j1() {
        String string = this.f21388a.getString("messagingRingtone", "");
        String str = string;
        if (h.j(string)) {
            str = null;
        }
        return str;
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: j2 */
    public String mo31051j2() {
        return this.f21388a.getString("autoDownloadTranslations", "wifiOrMobile");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: j3 */
    public boolean mo31050j3() {
        return this.f21388a.getBoolean("hasDismissedNewInboxPromo", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: j4 */
    public boolean mo31049j4() {
        return this.f21388a.getLong("addressFieldBlinkedCount", 0L) >= 3;
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: k */
    public boolean mo31048k() {
        return this.f21388a.getBoolean("isReadReceiptsEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: k0 */
    public int mo31047k0() {
        return this.f21388a.getInt("manualCleanupPromotionalPeriod", 30);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: k1 */
    public void mo31046k1(int i) {
        C22128a.m8593n0(this.f21388a, "manualCleanupStatsSpamCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: k2 */
    public void mo31045k2(boolean z) {
        C22128a.m8577r0(this.f21388a, "isReadReceiptsEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: k3 */
    public void mo31044k3(boolean z) {
        C22128a.m8577r0(this.f21388a, "showCallHistoryInConversations", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: k4 */
    public void mo31043k4(boolean z) {
        C22128a.m8577r0(this.f21388a, "starredMessagesTooltipShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: l */
    public long mo31042l() {
        return this.f21388a.getLong("imMaxMediaSize", 104857600L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: l0 */
    public boolean mo31041l0() {
        return this.f21388a.getBoolean("lastDmaNotificationClicked", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: l1 */
    public long mo31040l1() {
        return this.f21388a.getLong("defaultSmsAppTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: l2 */
    public void mo31039l2(String str) {
        C22128a.m8585p0(this.f21388a, "lastInboxBanner", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: l3 */
    public b mo31038l3() {
        return new b(this.f21388a.getLong("lastGroupUnreadLongReminderDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: l4 */
    public void mo31037l4(String str) {
        C22128a.m8585p0(this.f21388a, "imPeerId", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: m */
    public void mo31036m(String str) {
        C22128a.m8585p0(this.f21388a, "lastCallBanner", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: m0 */
    public boolean mo31035m0() {
        return this.f21388a.getBoolean("lastCleverTapDefaultSmsAppState", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: m1 */
    public boolean mo31034m1() {
        return this.f21388a.getBoolean("promotionalMessagesNotifications", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: m2 */
    public boolean mo31033m2() {
        return this.f21388a.getBoolean("appUpdatePromo", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: m3 */
    public boolean mo31032m3() {
        return this.f21388a.getBoolean("isManualCleanupSpamEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: m4 */
    public void mo31031m4(boolean z) {
        C22128a.m8577r0(this.f21388a, "hadSmsReadAccess", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: n */
    public boolean mo31030n() {
        return this.f21388a.getBoolean("inboxCleanupPromoShown", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: n0 */
    public void mo31029n0(boolean z) {
        C22128a.m8577r0(this.f21388a, "lastCleverTapDefaultSmsAppState", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: n1 */
    public void mo31028n1(long j) {
        C22128a.m8589o0(this.f21388a, "MsgLastSyncTime", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: n2 */
    public void mo31027n2(int i) {
        C22128a.m8593n0(this.f21388a, "appUpdatePromoPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: n3 */
    public boolean mo31026n3() {
        return this.f21388a.getBoolean("isImAttachmentMigrationPending", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: n4 */
    public void mo31025n4(int i) {
        C22128a.m8593n0(this.f21388a, "autoCleanupOtpPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: o */
    public void mo31024o(int i) {
        C22128a.m8593n0(this.f21388a, "mmsMaxImageHeightLimit", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: o0 */
    public boolean mo31023o0() {
        return this.f21388a.getBoolean("translationPreferencesShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: o1 */
    public b mo31022o1() {
        return new b(this.f21388a.getLong("firstDmaNotificationShownDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: o2 */
    public int mo31021o2() {
        return this.f21388a.getInt("manualCleanupRunCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: o3 */
    public void mo31020o3(long j) {
        C22128a.m8589o0(this.f21388a, "personalTabVisitedTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: o4 */
    public long mo31019o4() {
        return this.f21388a.getLong("typingIndicatorTimeout", 2L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: p */
    public b mo31018p() {
        return new b(this.f21388a.getLong("LastMessagePromotionDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: p0 */
    public void mo31017p0(boolean z) {
        C22128a.m8577r0(this.f21388a, "manualCleanupDone", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: p1 */
    public void mo31016p1(b bVar) {
        this.f21388a.edit().putLong("lastGroupUnreadLongReminderDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: p2 */
    public void mo31015p2(b bVar) {
        this.f21388a.edit().putLong("lastDmaNotificationShownDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: p3 */
    public boolean mo31014p3() {
        return this.f21388a.getBoolean("starredMessagesTooltipShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: p4 */
    public void mo31013p4(boolean z) {
        C22128a.m8577r0(this.f21388a, "promotionalMessagesNotifications", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: q */
    public void mo31012q(int i) {
        C22128a.m8593n0(this.f21388a, "allTimeCleanupStatsPromotionalCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: q0 */
    public boolean mo31011q0() {
        return this.f21388a.getBoolean("isAutoCleanupEnabled", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: q1 */
    public void mo31010q1(int i) {
        C22128a.m8593n0(this.f21388a, "mmsMaxMessageSizeLimit", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: q2 */
    public void mo31009q2(boolean z) {
        C22128a.m8577r0(this.f21388a, "isImAttachmentMigrationPending", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: q3 */
    public boolean mo31008q3() {
        return this.f21388a.getBoolean("showCallHistoryInConversations", true);
    }

    /* renamed from: q4 */
    public final void m31007q4(String str) {
        this.f21388a.edit().putLong(str, this.f21388a.getLong(str, 0L) + 1).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: r */
    public String[] mo31006r() {
        return this.f21388a.getString("fileMimeTypes", "application/vnd.ms-powerpoint|application/vnd.openxmlformats-officedocument.presentationml.presentation|application/vnd.ms-excel|application/vnd.openxmlformats-officedocument.spreadsheetml.sheet|application/msword|application/vnd.openxmlformats-officedocument.wordprocessingml.document|application/pdf|text/plain").split("\\|");
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: r0 */
    public void mo31005r0(int i) {
        C22128a.m8593n0(this.f21388a, "imForceUpgradeVersion", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: r1 */
    public boolean mo31004r1(int i) {
        String str;
        if (i == 0) {
            str = "requestSmsDeliveryReport";
        } else if (1 != i) {
            return false;
        } else {
            str = "requestSimTwoSmsDeliveryReport";
        }
        return this.f21388a.getBoolean(str, true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: r2 */
    public void mo31003r2(boolean z) {
        C22128a.m8577r0(this.f21388a, "hasCallHistoryConfirmationShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: r3 */
    public void mo31002r3(String str) {
        C22128a.m8585p0(this.f21388a, "groupInviteLink", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: s */
    public void mo31001s(boolean z) {
        C22128a.m8577r0(this.f21388a, "hasUnconsumedEvents", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: s0 */
    public void mo31000s0(boolean z) {
        C22128a.m8577r0(this.f21388a, "defaultTabLongPressTooltipShown", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: s1 */
    public boolean mo30999s1() {
        return this.f21388a.getBoolean("defaultTabLongPressTooltipShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: s2 */
    public void mo30998s2(int i) {
        C22128a.m8593n0(this.f21388a, "imGroupRecoveryState", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: s3 */
    public int mo30997s3() {
        return this.f21388a.getInt("featureDefaultSmsAppPromoDuration", 28);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: t */
    public void mo30996t(boolean z) {
        C22128a.m8577r0(this.f21388a, "isManualCleanupPromotionalEnabled", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: t0 */
    public void mo30995t0(String str) {
        C22128a.m8585p0(this.f21388a, "lastTimeZoneSync", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: t1 */
    public void mo30994t1(int i) {
        C22128a.m8593n0(this.f21388a, "mmsMaxImageWidthLimit", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: t2 */
    public String mo30993t2() {
        return this.f21388a.getString("autoDownloadMedia", AnalyticsConstants.WIFI);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: t3 */
    public void mo30992t3(long j) {
        C22128a.m8589o0(this.f21388a, "typingIndicatorTimeout", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: u */
    public void mo30991u(long j) {
        C22128a.m8589o0(this.f21388a, "imMaxMediaSize", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: u0 */
    public boolean mo30990u0() {
        return this.f21388a.getBoolean("isAutoCleanupNotifEnabled", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: u1 */
    public boolean mo30989u1() {
        return this.f21388a.getBoolean("enableSwishWithUrgentMessages", true);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: u2 */
    public void mo30988u2(b bVar) {
        this.f21388a.edit().putLong("lastUnreadLongReminderDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: u3 */
    public void mo30987u3(b bVar) {
        this.f21388a.edit().putLong("lastImSendTime", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: v */
    public void mo30986v(b bVar) {
        this.f21388a.edit().putLong("promotionalTabPromoLastDismissedDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: v0 */
    public void mo30985v0(String str) {
        C22128a.m8585p0(this.f21388a, "fileMimeTypes", str);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: v1 */
    public void mo30984v1(int i) {
        C22128a.m8593n0(this.f21388a, "defaultSmsNotificationPromoShown", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: v2 */
    public void mo30983v2(long j) {
        C22128a.m8589o0(this.f21388a, "lastMessageReceivedWorkerRunDate", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: v3 */
    public void mo30982v3(boolean z) {
        C22128a.m8577r0(this.f21388a, "enableSwishWithUrgentMessages", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: w */
    public long mo30981w() {
        return this.f21388a.getLong("othersTabVisitedTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: w0 */
    public void mo30980w0(int i) {
        C22128a.m8593n0(this.f21388a, "manualCleanupOtpPeriod", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: w1 */
    public boolean mo30979w1() {
        return this.f21388a.getBoolean("hasCallHistoryConfirmationShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: w2 */
    public int mo30978w2() {
        return this.f21388a.getInt("appUpdatePromoPeriod", 30);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: w3 */
    public void mo30977w3(int i) {
        C22128a.m8593n0(this.f21388a, "manualCleanupStatsPromotionalCount", i);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: x */
    public void mo30976x(boolean z) {
        C22128a.m8577r0(this.f21388a, "hasDismissedCallsMessagesSeparatelyPromo", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: x0 */
    public void mo30975x0(long j) {
        C22128a.m8589o0(this.f21388a, "businessTabVisitedTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: x1 */
    public int mo30974x1() {
        return this.f21388a.getInt("mmsMaxMessageSizeLimit", 307200);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: x2 */
    public long mo30973x2() {
        return this.f21388a.getLong("nudgeToSendNotificationTimestamp", 0L);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: x3 */
    public void mo30972x3(boolean z) {
        C22128a.m8577r0(this.f21388a, "appUpdatePromo", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: y */
    public int mo30971y() {
        return this.f21388a.getInt("manualCleanupSpamPeriod", 30);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: y0 */
    public void mo30970y0() {
        this.f21388a.edit().putInt("autoCleanupRunCount", mo31163P() + 1).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: y1 */
    public int mo30969y1() {
        return this.f21388a.getInt("manualCleanupStatsSpamCount", 0);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: y2 */
    public b mo30968y2() {
        return new b(this.f21388a.getLong("defaultSmsNotificationPromoShownDate", 0L));
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: y3 */
    public void mo30967y3(long j) {
        C22128a.m8589o0(this.f21388a, "promotionalTabVisitedTimestamp", j);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: z */
    public void mo30966z(boolean z) {
        C22128a.m8577r0(this.f21388a, "hasDismissedReadReplyPromo", z);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: z0 */
    public boolean mo30965z0() {
        return this.f21388a.getBoolean("inboxCleanupShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: z1 */
    public boolean mo30964z1() {
        return this.f21388a.getBoolean("searchInConversationShown", false);
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: z2 */
    public void mo30963z2(b bVar) {
        this.f21388a.edit().putLong("firstDmaNotificationShownDate", ((e) bVar).a).apply();
    }

    @Override // p193e.p194a.p195a.AbstractC6392i0
    /* renamed from: z3 */
    public boolean mo30962z3() {
        return this.f21388a.getBoolean("wasDefaultSmsApp", false);
    }
}

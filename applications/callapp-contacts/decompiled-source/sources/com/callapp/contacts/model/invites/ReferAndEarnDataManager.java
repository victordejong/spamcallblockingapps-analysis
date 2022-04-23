package com.callapp.contacts.model.invites;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.g;
import com.callapp.common.model.json.JSONInviteReferer;
import com.callapp.common.model.json.JSONReferAndEarnRewards;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.ArrayPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.sync.syncer.upload.UploadSyncer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.contacts.widget.referandearn.JSONReferAndEarnRewardsObject;
import com.callapp.contacts.widget.referandearn.ReferAndEarnActivity;
import com.callapp.contacts.widget.referandearn.ReferAndEarnSectionOpenPopUp;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.objectbox.a;
import io.objectbox.query.PropertyQuery;
import io.objectbox.relation.ToMany;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.h.l;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.models.APIMeta;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018�� \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;", "", "()V", "Companion", "ReferAndEarnDataManagerListener", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnDataManager.class */
public final class ReferAndEarnDataManager {
    public static final Companion Companion = new Companion(null);
    private static final a<ReferAndEarnData> boxReferAndEarnData;
    private static final a<ReferAndEarnUserData> boxReferAndEarnUserData;

    @Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J.\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00142\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\b\u0010\u001f\u001a\u00020\u0012H\u0007J$\u0010 \u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00142\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0017\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0017\u001a\u00020\u0014H\u0007¢\u0006\u0002\u0010#J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u0014H\u0007J\b\u0010'\u001a\u00020\"H\u0007J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0014H\u0007J\b\u0010)\u001a\u00020\u0019H\u0007J\u0010\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,H\u0007J\u001c\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J\b\u00100\u001a\u00020\u0012H\u0007J\u0018\u00101\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u001bH\u0007J\u0018\u00103\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u001bH\u0007J\u0018\u00104\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u00105\u001a\u000206H\u0007J\b\u00107\u001a\u00020\u0012H\u0007J\"\u00108\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00142\b\u00109\u001a\u0004\u0018\u00010\u00142\u0006\u0010:\u001a\u00020&H\u0007R:\u0010\u0003\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u00048\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0002R:\u0010\b\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\t0\t \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\t0\t\u0018\u00010\u00040\u00048\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\n\u0010\u0002R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010¨\u0006;"}, d2 = {"Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;", "", "()V", "boxReferAndEarnData", "Lio/objectbox/Box;", "Lcom/callapp/contacts/model/invites/ReferAndEarnData;", "kotlin.jvm.PlatformType", "getBoxReferAndEarnData$annotations", "boxReferAndEarnUserData", "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;", "getBoxReferAndEarnUserData$annotations", "referAndEarnRewardsData", "", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "getReferAndEarnRewardsData$annotations", "getReferAndEarnRewardsData", "()Ljava/util/List;", "addNewReferer", "", "key", "", "addPoint", "referId", "globalPhoneNumber", "notifyUser", "", APIMeta.POINTS, "", "addReferRecord", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "addSelfPoint", "addThePoints", "getInstalledDate", "", "(Ljava/lang/String;)Ljava/lang/Long;", "getReferAndEarnBox", "getReferStatus", "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;", "getTotalEarned", "isContactInvited", "isPremiumRewarded", "onStageReachedDialog", "context", "Landroid/content/Context;", "postPointsReferKey", "referAndEarnDataManagerListener", "Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;", "removeAll", "sendPointsToReferer", "numberOfPoints", "setPointsNumber", "updatePoints", "earnedPoints", "Ljava/math/BigInteger;", "updatePointsFromInvites", "updateReferStatus", "nameOrNumber", "referStatus", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addNewReferer(String str) {
            if (StringUtils.b((CharSequence) str) && ((ReferAndEarnData) ReferAndEarnDataManager.boxReferAndEarnData.e().a(ReferAndEarnData_.referId, str).a().a()) == null) {
                ReferAndEarnDataManager.boxReferAndEarnData.a((a) new ReferAndEarnData(str));
            }
        }

        public static /* synthetic */ void addPoint$default(Companion companion, String str, String str2, boolean z, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                str2 = null;
            }
            if ((i2 & 4) != 0) {
                z = true;
            }
            companion.addPoint(str, str2, z, i);
        }

        public static /* synthetic */ void addThePoints$default(Companion companion, String str, String str2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                str2 = null;
            }
            companion.addThePoints(str, str2, i);
        }

        private static /* synthetic */ void getBoxReferAndEarnData$annotations() {
        }

        private static /* synthetic */ void getBoxReferAndEarnUserData$annotations() {
        }

        public static /* synthetic */ void getReferAndEarnRewardsData$annotations() {
        }

        public static /* synthetic */ void postPointsReferKey$default(Companion companion, ReferAndEarnDataManagerListener referAndEarnDataManagerListener, ContactData contactData, int i, Object obj) {
            if ((i & 2) != 0) {
                contactData = null;
            }
            companion.postPointsReferKey(referAndEarnDataManagerListener, contactData);
        }

        public final void addPoint(final String referId, final String str, final boolean z, final int i) {
            p.d(referId, "referId");
            new Task() { // from class: com.callapp.contacts.model.invites.ReferAndEarnDataManager$Companion$addPoint$1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ReferAndEarnUserData referAndEarnUserData;
                    Object obj;
                    ReferAndEarnData referAndEarnData = (ReferAndEarnData) ReferAndEarnDataManager.boxReferAndEarnData.e().a(ReferAndEarnData_.referId, referId).a().a();
                    if (referAndEarnData != null) {
                        AnalyticsManager.get().a(Constants.REFER_AND_EARN, "InviterReferInstall");
                        int i2 = i;
                        String str2 = null;
                        JSONReferAndEarnRewards jSONReferAndEarnRewards = null;
                        for (int i3 = 0; i3 < i2; i3++) {
                            referAndEarnData.setEarnedPoints(referAndEarnData.getEarnedPoints() + 1);
                            jSONReferAndEarnRewards = jSONReferAndEarnRewards;
                            if (jSONReferAndEarnRewards == null) {
                                List<JSONReferAndEarnRewards> referAndEarnRewardsData = ReferAndEarnDataManager.Companion.getReferAndEarnRewardsData();
                                if (referAndEarnRewardsData != null) {
                                    Iterator<T> it2 = referAndEarnRewardsData.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            obj = null;
                                            break;
                                        }
                                        obj = it2.next();
                                        JSONReferAndEarnRewards jSONReferAndEarnRewards2 = (JSONReferAndEarnRewards) obj;
                                        if (jSONReferAndEarnRewards2.getKey() == referAndEarnData.getEarnedPoints() && jSONReferAndEarnRewards2.isMilestone()) {
                                            break;
                                        }
                                    }
                                    jSONReferAndEarnRewards = (JSONReferAndEarnRewards) obj;
                                } else {
                                    jSONReferAndEarnRewards = null;
                                }
                            }
                            Prefs.ht.b(1);
                        }
                        ToMany<ReferAndEarnUserData> referAndEarnUserDataToMany = referAndEarnData.getReferAndEarnUserDataToMany();
                        p.b(referAndEarnUserDataToMany, "referAndEarnUserDataToMany");
                        Iterator<ReferAndEarnUserData> it3 = referAndEarnUserDataToMany.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                referAndEarnUserData = null;
                                break;
                            }
                            referAndEarnUserData = it3.next();
                            ReferAndEarnUserData it4 = referAndEarnUserData;
                            p.b(it4, "it");
                            if (p.a((Object) it4.getGlobalPhoneNumber(), (Object) str)) {
                                break;
                            }
                        }
                        ReferAndEarnUserData referAndEarnUserData2 = referAndEarnUserData;
                        if (referAndEarnUserData2 != null) {
                            referAndEarnUserData2.setStatus(ReferAndEarnUserData.STATUS.INSTALLED);
                            referAndEarnUserData2.setDate(System.currentTimeMillis());
                            ReferAndEarnDataManager.boxReferAndEarnUserData.a((a) referAndEarnUserData2);
                        }
                        ReferAndEarnDataManager.boxReferAndEarnData.a((a) referAndEarnData);
                        ReferAndEarnDataManager.Companion.updatePointsFromInvites();
                        if (z) {
                            if (jSONReferAndEarnRewards != null) {
                                ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
                                CallAppApplication callAppApplication = CallAppApplication.get();
                                p.b(callAppApplication, "CallAppApplication.get()");
                                companion.onStageReachedDialog(callAppApplication);
                                AnalyticsManager analyticsManager = AnalyticsManager.get();
                                String title = jSONReferAndEarnRewards.getTitle();
                                p.b(title, "milestone.title");
                                analyticsManager.a(Constants.REFER_AND_EARN, "InviteStoreStatusChange", new l("\\s").a(title, ""));
                            } else {
                                String str3 = str;
                                ReferAndEarnUserData referAndEarnUserData3 = str3 != null ? (ReferAndEarnUserData) ReferAndEarnDataManager.boxReferAndEarnUserData.e().a(ReferAndEarnUserData_.globalPhoneNumber, str3).a().a() : null;
                                NotificationManager notificationManager = NotificationManager.get();
                                if (referAndEarnUserData3 != null) {
                                    str2 = referAndEarnUserData3.getNameOrNumber();
                                }
                                Intent intent = new Intent(CallAppApplication.get(), ReferAndEarnActivity.class);
                                intent.putExtra("EXTRA_ENTRY_POINT", "ClickInviteInstallNotification");
                                intent.setFlags(268468224);
                                PendingIntent activity = PendingIntent.getActivity(CallAppApplication.get(), 0, intent, 0);
                                if (!StringUtils.b((CharSequence) str2)) {
                                    str2 = Activities.getString(2131887556);
                                }
                                g.e b2 = notificationManager.a(NotificationManager.NotificationChannelEnum.REFER_AND_EARN_NOTIFICATION_CHANNEL).a(2131231910).a(Activities.a(2131887544, str2)).b(Activities.getString(2131887543));
                                b2.l = 1;
                                b2.u = NotificationManager.NotificationChannelEnum.REFER_AND_EARN_NOTIFICATION_CHANNEL.name();
                                b2.f = activity;
                                notificationManager.a(notificationManager.f14906a.nextInt(), b2.a(true));
                            }
                        }
                        AnalyticsManager.get().a(Constants.REFER_AND_EARN, "InvitePointsStatusChange", String.valueOf(Prefs.ht.get().intValue()));
                    }
                }
            }.execute();
        }

        public final void addReferRecord(String referId, ContactData contactData) {
            p.d(referId, "referId");
            p.d(contactData, "contactData");
            ReferAndEarnData referAndEarnData = (ReferAndEarnData) ReferAndEarnDataManager.boxReferAndEarnData.e().a(ReferAndEarnData_.referId, referId).a().a();
            if (referAndEarnData == null) {
                ReferAndEarnData referAndEarnData2 = new ReferAndEarnData(referId);
                ToMany<ReferAndEarnUserData> referAndEarnUserDataToMany = referAndEarnData2.getReferAndEarnUserDataToMany();
                if (referAndEarnUserDataToMany != null) {
                    referAndEarnUserDataToMany.add(new ReferAndEarnUserData(contactData, ReferAndEarnUserData.STATUS.IDLE, System.currentTimeMillis()));
                }
                ReferAndEarnDataManager.boxReferAndEarnData.a((a) referAndEarnData2);
            } else if (((ReferAndEarnUserData) ReferAndEarnDataManager.boxReferAndEarnUserData.e().a(ReferAndEarnUserData_.globalPhoneNumber, contactData.getPhone().a()).a().a()) == null) {
                ToMany<ReferAndEarnUserData> referAndEarnUserDataToMany2 = referAndEarnData.getReferAndEarnUserDataToMany();
                if (referAndEarnUserDataToMany2 != null) {
                    referAndEarnUserDataToMany2.add(new ReferAndEarnUserData(contactData, ReferAndEarnUserData.STATUS.IDLE, System.currentTimeMillis()));
                }
                ReferAndEarnDataManager.boxReferAndEarnData.a((a) referAndEarnData);
            }
        }

        public final void addSelfPoint() {
            postPointsReferKey$default(this, new ReferAndEarnDataManagerListener() { // from class: com.callapp.contacts.model.invites.ReferAndEarnDataManager$Companion$addSelfPoint$1
                @Override // com.callapp.contacts.model.invites.ReferAndEarnDataManager.ReferAndEarnDataManagerListener
                public final void onKeyResult(JSONInviteReferer jSONInviteReferer) {
                    if (jSONInviteReferer != null) {
                        ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
                        String key = jSONInviteReferer.getKey();
                        p.b(key, "it.key");
                        companion.addNewReferer(key);
                    }
                }
            }, null, 2, null);
        }

        public final void addThePoints(String referId, String str, int i) {
            p.d(referId, "referId");
            addPoint$default(this, referId, str, false, i, 4, null);
        }

        public final Long getInstalledDate(String globalPhoneNumber) {
            p.d(globalPhoneNumber, "globalPhoneNumber");
            ReferAndEarnUserData referAndEarnUserData = (ReferAndEarnUserData) ReferAndEarnDataManager.boxReferAndEarnUserData.e().a(ReferAndEarnUserData_.globalPhoneNumber, globalPhoneNumber).a().a();
            if (referAndEarnUserData != null) {
                return Long.valueOf(referAndEarnUserData.getDate());
            }
            return null;
        }

        public final a<ReferAndEarnData> getReferAndEarnBox() {
            a<ReferAndEarnData> boxReferAndEarnData = ReferAndEarnDataManager.boxReferAndEarnData;
            p.b(boxReferAndEarnData, "boxReferAndEarnData");
            return boxReferAndEarnData;
        }

        public final List<JSONReferAndEarnRewards> getReferAndEarnRewardsData() {
            return JSONReferAndEarnRewardsObject.Companion.getJSONReferAndEarnRewardsData();
        }

        public final ReferAndEarnUserData.STATUS getReferStatus(String globalPhoneNumber) {
            p.d(globalPhoneNumber, "globalPhoneNumber");
            ReferAndEarnUserData referAndEarnUserData = (ReferAndEarnUserData) ReferAndEarnDataManager.boxReferAndEarnUserData.e().a(ReferAndEarnUserData_.globalPhoneNumber, globalPhoneNumber).a().a();
            if (referAndEarnUserData == null) {
                return ReferAndEarnUserData.STATUS.IDLE;
            }
            ReferAndEarnUserData.STATUS status = referAndEarnUserData.getStatus();
            p.b(status, "referUserRecord.status");
            return status;
        }

        public final long getTotalEarned() {
            return new PropertyQuery(ReferAndEarnDataManager.boxReferAndEarnData.e().a(), ReferAndEarnData_.earnedPoints).a();
        }

        public final boolean isContactInvited(String globalPhoneNumber) {
            p.d(globalPhoneNumber, "globalPhoneNumber");
            return ReferAndEarnDataManager.boxReferAndEarnUserData.e().a(ReferAndEarnUserData_.globalPhoneNumber, globalPhoneNumber).a().e() > 0;
        }

        public final boolean isPremiumRewarded() {
            String[] strArr;
            if (Prefs.cW.get() == null) {
                return false;
            }
            for (String str : Prefs.cW.get()) {
                if (CollectionUtils.a(BillingManager.a("subs"), str) || CollectionUtils.a(BillingManager.a("inapp"), str)) {
                    return true;
                }
            }
            return false;
        }

        public final void onStageReachedDialog(Context context) {
            p.d(context, "context");
            PopupManager.get().a(context, new ReferAndEarnSectionOpenPopUp());
        }

        public final void postPointsReferKey(final ReferAndEarnDataManagerListener referAndEarnDataManagerListener, final ContactData contactData) {
            p.d(referAndEarnDataManagerListener, "referAndEarnDataManagerListener");
            if (StringUtils.a((CharSequence) Prefs.hr.get())) {
                new Task() { // from class: com.callapp.contacts.model.invites.ReferAndEarnDataManager$Companion$postPointsReferKey$1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        String str = ((((((((HttpUtils.getCallappServerPrefix() + "ivt") + "?") + "myp") + "=") + UrlUtils.a(Prefs.aR.get())) + "&") + "tk") + "=") + Prefs.aV.get();
                        ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONInviteReferer.class);
                        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str);
                        httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                        HttpUtils.b(httpRequestParamsBuilder.a());
                        JSONInviteReferer jSONInviteReferer = (JSONInviteReferer) classParserHttpResponseHandler.getResult();
                        if (jSONInviteReferer != null) {
                            ContactData contactData2 = ContactData.this;
                            if (contactData2 != null) {
                                ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
                                String key = jSONInviteReferer.getKey();
                                p.b(key, "result.key");
                                companion.addReferRecord(key, contactData2);
                            }
                            Prefs.hr.set(jSONInviteReferer.getKey());
                            referAndEarnDataManagerListener.onKeyResult(jSONInviteReferer);
                            return;
                        }
                        referAndEarnDataManagerListener.onKeyResult(null);
                    }
                }.execute();
                return;
            }
            if (contactData != null) {
                Companion companion = ReferAndEarnDataManager.Companion;
                String str = Prefs.hr.get();
                p.b(str, "Prefs.referAndEarnLinkCode.get()");
                companion.addReferRecord(str, contactData);
            }
            referAndEarnDataManagerListener.onKeyResult(new JSONInviteReferer(Prefs.hr.get()));
        }

        public final void removeAll() {
            ReferAndEarnDataManager.boxReferAndEarnData.d();
        }

        public final void sendPointsToReferer(final String referId, final int i) {
            p.d(referId, "referId");
            new Task() { // from class: com.callapp.contacts.model.invites.ReferAndEarnDataManager$Companion$sendPointsToReferer$1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    String str = ((((((((HttpUtils.getCallappServerPrefix() + "point") + "?") + "myp") + "=") + UrlUtils.a(Prefs.aR.get())) + "&") + "tk") + "=") + Prefs.aV.get();
                    ObjectMapper jsonObjectMapper = UploadSyncer.getJsonObjectMapper();
                    String str2 = referId;
                    BigInteger valueOf = BigInteger.valueOf(i);
                    p.b(valueOf, "BigInteger.valueOf(this.toLong())");
                    String writeValueAsString = jsonObjectMapper.writeValueAsString(new JSONInviteReferer(str2, valueOf));
                    ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(String.class);
                    HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str);
                    httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                    HttpUtils.a(httpRequestParamsBuilder.a(), writeValueAsString);
                    if (classParserHttpResponseHandler.getResponseCode() == 200) {
                        AnalyticsManager.get().a(Constants.REFER_AND_EARN, "InviteReferInstall");
                    }
                }
            }.execute();
        }

        public final void setPointsNumber(String referId, int i) {
            p.d(referId, "referId");
            ReferAndEarnData referAndEarnData = (ReferAndEarnData) ReferAndEarnDataManager.boxReferAndEarnData.e().a(ReferAndEarnData_.referId, referId).a().a();
            if (referAndEarnData != null) {
                referAndEarnData.setEarnedPoints(i);
                ReferAndEarnDataManager.boxReferAndEarnData.a((a) referAndEarnData);
                Prefs.cW.set(null);
                Prefs.ht.b(1);
                new Task() { // from class: com.callapp.contacts.model.invites.ReferAndEarnDataManager$Companion$setPointsNumber$1$1
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        ReferAndEarnDataManager.Companion.updatePointsFromInvites();
                    }
                }.execute();
            }
        }

        public final void updatePoints(String referId, BigInteger earnedPoints) {
            p.d(referId, "referId");
            p.d(earnedPoints, "earnedPoints");
            if (earnedPoints.intValue() > 0) {
                ReferAndEarnData referAndEarnData = (ReferAndEarnData) ReferAndEarnDataManager.boxReferAndEarnData.e().a(ReferAndEarnData_.referId, referId).a().a();
                if (referAndEarnData == null) {
                    ReferAndEarnDataManager.boxReferAndEarnData.a((a) new ReferAndEarnData(referId, earnedPoints.intValue() * ((int) CallAppRemoteConfigManager.get().b("ReferAndEarnPointValue"))));
                } else {
                    referAndEarnData.setEarnedPoints(earnedPoints.intValue() * ((int) CallAppRemoteConfigManager.get().b("ReferAndEarnPointValue")));
                    ReferAndEarnDataManager.boxReferAndEarnData.a((a) referAndEarnData);
                }
                updatePointsFromInvites();
            }
        }

        public final void updatePointsFromInvites() {
            ArrayList arrayList;
            String[] sku;
            if (Prefs.cW.get() != null) {
                String[] strArr = Prefs.cW.get();
                p.b(strArr, "Prefs.storeItemAwardedAsGift.get()");
                String[] strArr2 = strArr;
                arrayList = new ArrayList(n.b((Object[]) ((String[]) Arrays.copyOf(strArr2, strArr2.length))));
            } else {
                arrayList = new ArrayList();
            }
            Companion companion = this;
            long totalEarned = companion.getTotalEarned();
            List<JSONReferAndEarnRewards> referAndEarnRewardsData = companion.getReferAndEarnRewardsData();
            if (referAndEarnRewardsData != null) {
                for (JSONReferAndEarnRewards jSONReferAndEarnRewards : referAndEarnRewardsData) {
                    if (totalEarned >= jSONReferAndEarnRewards.getKey()) {
                        for (String str : jSONReferAndEarnRewards.getSku()) {
                            if (!CollectionUtils.a(arrayList, str)) {
                                arrayList.add(str);
                            }
                        }
                    }
                }
            }
            ArrayList arrayList2 = arrayList;
            Prefs.dB.set(Boolean.valueOf(CollectionUtils.a(arrayList2, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER))));
            Prefs.dv.set(Boolean.valueOf(CollectionUtils.a(arrayList2, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))));
            ArrayPref arrayPref = Prefs.cW;
            Object[] array = arrayList2.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            arrayPref.set(array);
        }

        public final void updateReferStatus(String globalPhoneNumber, String str, ReferAndEarnUserData.STATUS referStatus) {
            ReferAndEarnUserData referAndEarnUserData;
            p.d(globalPhoneNumber, "globalPhoneNumber");
            p.d(referStatus, "referStatus");
            ReferAndEarnData referAndEarnData = (ReferAndEarnData) ReferAndEarnDataManager.boxReferAndEarnData.e().a(ReferAndEarnData_.referId, Prefs.hr.get()).a().a();
            if (referAndEarnData != null) {
                ToMany<ReferAndEarnUserData> referAndEarnUserDataToMany = referAndEarnData.getReferAndEarnUserDataToMany();
                p.b(referAndEarnUserDataToMany, "referAndEarnUserDataToMany");
                Iterator<ReferAndEarnUserData> it2 = referAndEarnUserDataToMany.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        referAndEarnUserData = null;
                        break;
                    }
                    referAndEarnUserData = it2.next();
                    ReferAndEarnUserData it3 = referAndEarnUserData;
                    p.b(it3, "it");
                    if (p.a((Object) it3.getGlobalPhoneNumber(), (Object) globalPhoneNumber)) {
                        break;
                    }
                }
                ReferAndEarnUserData referAndEarnUserData2 = referAndEarnUserData;
                if (referAndEarnUserData2 != null) {
                    referAndEarnUserData2.setStatus(referStatus);
                    referAndEarnUserData2.setDate(System.currentTimeMillis());
                    ReferAndEarnDataManager.boxReferAndEarnUserData.a((a) referAndEarnUserData2);
                } else {
                    String str2 = str;
                    if (StringUtils.a((CharSequence) str)) {
                        str2 = "";
                    }
                    ToMany<ReferAndEarnUserData> referAndEarnUserDataToMany2 = referAndEarnData.getReferAndEarnUserDataToMany();
                    if (referAndEarnUserDataToMany2 != null) {
                        referAndEarnUserDataToMany2.add(new ReferAndEarnUserData(str2, globalPhoneNumber, referStatus, System.currentTimeMillis()));
                    }
                }
                ReferAndEarnDataManager.boxReferAndEarnData.a((a) referAndEarnData);
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;", "", "onKeyResult", "", "jsonInviteReferer", "Lcom/callapp/common/model/json/JSONInviteReferer;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener.class */
    public interface ReferAndEarnDataManagerListener {
        void onKeyResult(JSONInviteReferer jSONInviteReferer);
    }

    static {
        CallAppApplication callAppApplication = CallAppApplication.get();
        p.b(callAppApplication, "CallAppApplication.get()");
        boxReferAndEarnData = callAppApplication.getObjectBoxStore().d(ReferAndEarnData.class);
        CallAppApplication callAppApplication2 = CallAppApplication.get();
        p.b(callAppApplication2, "CallAppApplication.get()");
        boxReferAndEarnUserData = callAppApplication2.getObjectBoxStore().d(ReferAndEarnUserData.class);
    }

    public static final void addPoint(String str, String str2, boolean z, int i) {
        Companion.addPoint(str, str2, z, i);
    }

    public static final void addReferRecord(String str, ContactData contactData) {
        Companion.addReferRecord(str, contactData);
    }

    public static final void addSelfPoint() {
        Companion.addSelfPoint();
    }

    public static final void addThePoints(String str, String str2, int i) {
        Companion.addThePoints(str, str2, i);
    }

    public static final Long getInstalledDate(String str) {
        return Companion.getInstalledDate(str);
    }

    public static final a<ReferAndEarnData> getReferAndEarnBox() {
        return Companion.getReferAndEarnBox();
    }

    public static final List<JSONReferAndEarnRewards> getReferAndEarnRewardsData() {
        return Companion.getReferAndEarnRewardsData();
    }

    public static final ReferAndEarnUserData.STATUS getReferStatus(String str) {
        return Companion.getReferStatus(str);
    }

    public static final long getTotalEarned() {
        return Companion.getTotalEarned();
    }

    public static final boolean isContactInvited(String str) {
        return Companion.isContactInvited(str);
    }

    public static final boolean isPremiumRewarded() {
        return Companion.isPremiumRewarded();
    }

    public static final void onStageReachedDialog(Context context) {
        Companion.onStageReachedDialog(context);
    }

    public static final void postPointsReferKey(ReferAndEarnDataManagerListener referAndEarnDataManagerListener, ContactData contactData) {
        Companion.postPointsReferKey(referAndEarnDataManagerListener, contactData);
    }

    public static final void removeAll() {
        Companion.removeAll();
    }

    public static final void sendPointsToReferer(String str, int i) {
        Companion.sendPointsToReferer(str, i);
    }

    public static final void setPointsNumber(String str, int i) {
        Companion.setPointsNumber(str, i);
    }

    public static final void updatePoints(String str, BigInteger bigInteger) {
        Companion.updatePoints(str, bigInteger);
    }

    public static final void updatePointsFromInvites() {
        Companion.updatePointsFromInvites();
    }

    public static final void updateReferStatus(String str, String str2, ReferAndEarnUserData.STATUS status) {
        Companion.updateReferStatus(str, str2, status);
    }
}

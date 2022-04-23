package com.callapp.contacts.activity.missedcall;

import android.app.KeyguardManager;
import android.content.Intent;
import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener;
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItem;
import com.callapp.contacts.activity.missedcall.missedAnswer.MissedCallActivity;
import com.callapp.contacts.activity.missedcall.missedAnswer.NotAnsweredActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.MissedCallCardIds;
import com.callapp.contacts.model.objectbox.MissedCallCardIds_;
import com.callapp.contacts.model.objectbox.SingleMissedCallData;
import com.callapp.contacts.model.objectbox.SingleMissedCallData_;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.receiver.ScreenUnlockReceiver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseAdTransparentActivity;
import com.callapp.contacts.util.CallLogEntry;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.MultiSizeAdLoaderCache;
import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.callapp.contacts.workers.MissedNotAnsweredPreloadAdWorker;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.google.common.collect.av;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import io.objectbox.a;
import io.objectbox.g;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallManager.class */
public class MissedCallManager {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f13411a = false;

    public static Pair<List<MissedCallSummaryItem>, Integer> a(int i, int i2, Calendar calendar) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        Calendar instance = Calendar.getInstance();
        instance.add(5, -1);
        instance.set(11, i2);
        instance.set(12, 0);
        Date time = instance.getTime();
        Date time2 = calendar.getTime();
        for (CallLogEntry callLogEntry : CallLogUtils.a(time)) {
            if (callLogEntry.getTime().after(time2)) {
                break;
            }
            int a2 = CallLogUtils.a(callLogEntry.getType(), callLogEntry.getDuration());
            Phone a3 = PhoneManager.get().a(callLogEntry.getNumber());
            String a4 = a3.a();
            if (a2 == i) {
                if (!a(MissedCallFrequentManager.a(a3, av.a(Integer.valueOf(i))), callLogEntry.getTime().getTime(), i, true)) {
                    if (hashMap.get(a4) != null) {
                        hashMap2.put(a4, Integer.valueOf(((Integer) hashMap2.get(a4)).intValue() + 1));
                    } else {
                        hashMap.put(a4, new CallLogUtils.MissedCallData(callLogEntry.getId().longValue(), callLogEntry.getTime(), PhoneManager.get().a(a4), null, a2, callLogEntry.getDuration()));
                        hashMap2.put(a4, 1);
                    }
                }
            } else if (hashMap.get(a4) != null) {
                hashMap.remove(a4);
                hashMap2.remove(a4);
            }
        }
        int i3 = 0;
        boolean z = true;
        for (String str : hashMap.keySet()) {
            ContactData a5 = ContactUtils.a(((CallLogUtils.MissedCallData) hashMap.get(str)).f15872c);
            if (!IncognitoCallManager.get().isIncognito(a5.getPhone()) && !a5.isSpammer() && (PhoneStateManager.get().getCallForPhone(a5.getPhone()) == null || !PhoneStateManager.get().getCallForPhone(a5.getPhone()).isBlocked())) {
                if (!CallLogUtils.b(a5.getPhone().a())) {
                    arrayList.add(new MissedCallSummaryItem(a5.getPhotoUrl(), a5.getPhone().getRawNumber(), a5.getDeviceId(), z, ((Integer) hashMap2.get(str)).intValue(), a5.getNameOrNumber()));
                    i3 += ((Integer) hashMap2.get(str)).intValue();
                    z = false;
                }
            }
        }
        return new Pair<>(arrayList, Integer.valueOf(i3));
    }

    public static void a() {
        if (f13411a) {
            f13411a = false;
            a(CallLogContentObserver.f15282a);
        }
    }

    private static void a(Phone phone, long j, long j2, int i, int i2) {
        if (AdUtils.a()) {
            a(phone, j, j2, i, i2, null, null, null, false);
        } else if (i2 != 3 || !((KeyguardManager) CallAppApplication.get().a("keyguard")).isKeyguardLocked()) {
            MissedNotAnsweredPreloadAdWorker.f17052a.a(phone, j, j2, i, i2);
        } else {
            SingleMissedCallData singleMissedCallData = (SingleMissedCallData) CallAppApplication.get().getObjectBoxStore().d(SingleMissedCallData.class).e().a(SingleMissedCallData_.contactId, j).a(SingleMissedCallData_.phoneAsRaw, phone.getRawNumber()).a(SingleMissedCallData_.missedCallType, i2).a().a();
            SingleMissedCallData singleMissedCallData2 = singleMissedCallData;
            if (singleMissedCallData == null) {
                singleMissedCallData2 = new SingleMissedCallData(j, phone, j2, 0, i, i2);
            }
            singleMissedCallData2.setNumberOfMissedCalls(i);
            singleMissedCallData2.setMissedCallTime(j2);
            CallAppApplication.get().getObjectBoxStore().d(SingleMissedCallData.class).a((a) singleMissedCallData2);
            ScreenUnlockReceiver.a();
        }
    }

    public static void a(Phone phone, long j, long j2, int i, int i2, BaseMultiSizeAdLoader baseMultiSizeAdLoader, MoPubView moPubView, NativeAd nativeAd, boolean z) {
        if (Prefs.aW.get().booleanValue()) {
            Class cls = i2 == 3 ? MissedCallActivity.class : NotAnsweredActivity.class;
            Intent intent = new Intent(CallAppApplication.get(), cls);
            intent.setFlags(268435456);
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, phone.toString());
            intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
            intent.putExtra("EXTRA_MISSED_CALL_TIME", j2);
            intent.putExtra("EXTRA_MISSED_CALL_NUMBER", i);
            intent.putExtra("EXTRA_MISSED_CALL_TYPE", i2);
            if (moPubView != null || nativeAd != null) {
                MultiSizeAdLoaderCache.AdData adData = new MultiSizeAdLoaderCache.AdData(baseMultiSizeAdLoader, moPubView, nativeAd, z);
                MultiSizeAdLoaderCache.Companion companion = MultiSizeAdLoaderCache.f16077a;
                MultiSizeAdLoaderCache.Companion.a(cls, adData);
                intent.putExtra(BaseAdTransparentActivity.EXTRA_AD_LOADED, true);
            } else if (baseMultiSizeAdLoader != null) {
                baseMultiSizeAdLoader.b();
            }
            if (i2 == 3) {
                Prefs.H.set(Long.valueOf(j2));
                AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ViewOverlay");
            } else if (i2 == 40) {
                Prefs.I.set(Long.valueOf(j2));
                AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ViewOverlay");
            }
            Activities.a(CallAppApplication.get(), intent);
        }
    }

    public static void a(Phone phone, CallReminderFrequentData.FrequentType frequentType) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(MissedCallCardIds.class);
        List c2 = d2.e().a(MissedCallCardIds_.phoneNumber, phone.a()).a().c();
        d2.e().a(MissedCallCardIds_.phoneNumber, phone.a()).a().f();
        MissedCallFrequentManager.a(frequentType, c2, false);
        EventBusManager.f14368a.a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f12953a, (EventType<OnMissedCallCardChangeListener, Phone>) phone, false);
    }

    public static void a(Phone phone, CallReminderFrequentData.FrequentType frequentType, int i, long j) {
        long f = CallAppApplication.get().getObjectBoxStore().d(MissedCallCardIds.class).e().a(MissedCallCardIds_.phoneNumber, phone.a()).a(MissedCallCardIds_.missedCallType, i).a().f();
        if (i != 40 || f != 0) {
            MissedCallFrequentManager.a(phone, frequentType, i, j);
            EventBusManager.f14368a.a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f12953a, (EventType<OnMissedCallCardChangeListener, Phone>) phone, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.util.Set<java.lang.Integer> r8) {
        /*
            Method dump skipped, instructions count: 1203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.missedcall.MissedCallManager.a(java.util.Set):void");
    }

    private static boolean a(List<CallReminderFrequentData> list, long j, int i, boolean z) {
        if (!CollectionUtils.b(list)) {
            return false;
        }
        for (CallReminderFrequentData callReminderFrequentData : list) {
            if (callReminderFrequentData.getMissedCallType() == i) {
                if (callReminderFrequentData.getFrequentType().equals(CallReminderFrequentData.FrequentType.DONT_SHOW)) {
                    return true;
                }
                if (callReminderFrequentData.getFrequentType().equals(CallReminderFrequentData.FrequentType.DELETE)) {
                    long lastDeleteFromNotificationTimeStamp = callReminderFrequentData.getLastDeleteFromNotificationTimeStamp();
                    if (z && lastDeleteFromNotificationTimeStamp > 0) {
                        return lastDeleteFromNotificationTimeStamp > j;
                    }
                    if (callReminderFrequentData.getDeleteTimeStamp() >= j) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public static void b() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(MissedCallCardIds.class);
        List<MissedCallCardIds> c2 = d2.c();
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        for (MissedCallCardIds missedCallCardIds : c2) {
            if (TimeUnit.MILLISECONDS.toDays(date.getTime() - missedCallCardIds.getLastMissedCall()) > 2) {
                arrayList.add(missedCallCardIds);
            }
        }
        if (CollectionUtils.b(arrayList)) {
            d2.b((Collection) arrayList);
        }
    }

    public static void c() {
        CallAppApplication.get().getObjectBoxStore().d(MissedCallCardIds.class).d();
        EventBusManager.f14368a.a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f12953a, (EventType<OnMissedCallCardChangeListener, Phone>) null, false);
    }

    public static void d() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(MissedCallCardIds.class);
        List<MissedCallCardIds> c2 = d2.c();
        if (CollectionUtils.b(c2)) {
            for (MissedCallCardIds missedCallCardIds : c2) {
                missedCallCardIds.setMissedCallType(3);
            }
            d2.a((Collection) c2);
        }
    }

    public static void e() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(SingleMissedCallData.class);
        List<SingleMissedCallData> c2 = d2.e().a((g) SingleMissedCallData_.id, 0).a().c();
        if (!CollectionUtils.a(c2)) {
            d2.d();
            for (SingleMissedCallData singleMissedCallData : c2) {
                a(singleMissedCallData.getPhone(), singleMissedCallData.getContactId(), singleMissedCallData.getMissedCallTime(), singleMissedCallData.getNumberOfMissedCalls(), singleMissedCallData.getMissedCallType());
            }
        }
    }

    public static List<MissedCallCardIds> getMissedCallCardIds() {
        return CallAppApplication.get().getObjectBoxStore().d(MissedCallCardIds.class).e().a((g) MissedCallCardIds_.lastMissedCall, 1).a().c();
    }

    public static boolean isMissedCallCardEnabled() {
        return Prefs.y.get().booleanValue();
    }

    public static boolean isMissedCallDailySummaryEnabled() {
        return Prefs.C.get().booleanValue();
    }

    private static boolean isMissedCallOverlayEnabled() {
        return Prefs.A.get().booleanValue();
    }

    public static boolean isMissedCallsNotificationsEnabled() {
        return Prefs.F.get().booleanValue();
    }

    public static boolean isNotAnswerDailySummaryEnabled() {
        return Prefs.D.get().booleanValue();
    }

    public static boolean isNotAnswerNotificationsEnabled() {
        return Prefs.E.get().booleanValue();
    }

    public static boolean isNotAnsweredCardEnabled() {
        return Prefs.z.get().booleanValue();
    }

    private static boolean isNotAnsweredOverlayEnabled() {
        return Prefs.B.get().booleanValue();
    }
}

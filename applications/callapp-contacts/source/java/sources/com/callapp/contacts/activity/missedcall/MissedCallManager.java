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
import com.google.common.collect.C15484av;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallManager.class */
public class MissedCallManager {

    /* renamed from: a */
    private static boolean f23843a = false;

    /* renamed from: a */
    public static Pair<List<MissedCallSummaryItem>, Integer> m29827a(int i, int i2, Calendar calendar) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(5, -1);
        calendar2.set(11, i2);
        calendar2.set(12, 0);
        Date time = calendar2.getTime();
        Date time2 = calendar.getTime();
        for (CallLogEntry callLogEntry : CallLogUtils.m27567a(time)) {
            if (callLogEntry.getTime().after(time2)) {
                break;
            }
            int m27580a = CallLogUtils.m27580a(callLogEntry.getType(), callLogEntry.getDuration());
            Phone m28239a = PhoneManager.get().m28239a(callLogEntry.getNumber());
            String m26101a = m28239a.m26101a();
            if (m27580a == i) {
                if (!m29822a(MissedCallFrequentManager.m29829a(m28239a, C15484av.m8820a(Integer.valueOf(i))), callLogEntry.getTime().getTime(), i, true)) {
                    if (hashMap.get(m26101a) != null) {
                        hashMap2.put(m26101a, Integer.valueOf(((Integer) hashMap2.get(m26101a)).intValue() + 1));
                    } else {
                        hashMap.put(m26101a, new CallLogUtils.MissedCallData(callLogEntry.getId().longValue(), callLogEntry.getTime(), PhoneManager.get().m28239a(m26101a), null, m27580a, callLogEntry.getDuration()));
                        hashMap2.put(m26101a, 1);
                    }
                }
            } else if (hashMap.get(m26101a) != null) {
                hashMap.remove(m26101a);
                hashMap2.remove(m26101a);
            }
        }
        int i3 = 0;
        boolean z = true;
        for (String str : hashMap.keySet()) {
            ContactData m28327a = ContactUtils.m28327a(((CallLogUtils.MissedCallData) hashMap.get(str)).f27710c);
            if (!IncognitoCallManager.get().isIncognito(m28327a.getPhone()) && !m28327a.isSpammer() && (PhoneStateManager.get().getCallForPhone(m28327a.getPhone()) == null || !PhoneStateManager.get().getCallForPhone(m28327a.getPhone()).isBlocked())) {
                if (!CallLogUtils.m27556b(m28327a.getPhone().m26101a())) {
                    arrayList.add(new MissedCallSummaryItem(m28327a.getPhotoUrl(), m28327a.getPhone().getRawNumber(), m28327a.getDeviceId(), z, ((Integer) hashMap2.get(str)).intValue(), m28327a.getNameOrNumber()));
                    i3 += ((Integer) hashMap2.get(str)).intValue();
                    z = false;
                }
            }
        }
        return new Pair<>(arrayList, Integer.valueOf(i3));
    }

    /* renamed from: a */
    public static void m29828a() {
        if (f23843a) {
            f23843a = false;
            m29821a(CallLogContentObserver.f26825a);
        }
    }

    /* renamed from: a */
    private static void m29826a(Phone phone, long j, long j2, int i, int i2) {
        if (AdUtils.m27285a()) {
            m29825a(phone, j, j2, i, i2, null, null, null, false);
        } else if (i2 != 3 || !((KeyguardManager) CallAppApplication.get().m31868a("keyguard")).isKeyguardLocked()) {
            MissedNotAnsweredPreloadAdWorker.f29601a.m26143a(phone, j, j2, i, i2);
        } else {
            SingleMissedCallData singleMissedCallData = (SingleMissedCallData) CallAppApplication.get().getObjectBoxStore().m4727d(SingleMissedCallData.class).m4700e().m4613a(SingleMissedCallData_.contactId, j).m4611a(SingleMissedCallData_.phoneAsRaw, phone.getRawNumber()).m4613a(SingleMissedCallData_.missedCallType, i2).m4618a().m4641a();
            SingleMissedCallData singleMissedCallData2 = singleMissedCallData;
            if (singleMissedCallData == null) {
                singleMissedCallData2 = new SingleMissedCallData(j, phone, j2, 0, i, i2);
            }
            singleMissedCallData2.setNumberOfMissedCalls(i);
            singleMissedCallData2.setMissedCallTime(j2);
            CallAppApplication.get().getObjectBoxStore().m4727d(SingleMissedCallData.class).m4711a((C17944a) singleMissedCallData2);
            ScreenUnlockReceiver.m27888a();
        }
    }

    /* renamed from: a */
    public static void m29825a(Phone phone, long j, long j2, int i, int i2, BaseMultiSizeAdLoader baseMultiSizeAdLoader, MoPubView moPubView, NativeAd nativeAd, boolean z) {
        if (Prefs.f26246aW.get().booleanValue()) {
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
                MultiSizeAdLoaderCache.Companion companion = MultiSizeAdLoaderCache.f28029a;
                MultiSizeAdLoaderCache.Companion.m27218a(cls, adData);
                intent.putExtra(BaseAdTransparentActivity.EXTRA_AD_LOADED, true);
            } else if (baseMultiSizeAdLoader != null) {
                baseMultiSizeAdLoader.mo27194b();
            }
            if (i2 == 3) {
                Prefs.f26204H.set(Long.valueOf(j2));
                AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ViewOverlay");
            } else if (i2 == 40) {
                Prefs.f26205I.set(Long.valueOf(j2));
                AnalyticsManager.get().m28450a(Constants.NOT_ANSWER_CATEGORY, "ViewOverlay");
            }
            Activities.m27685a(CallAppApplication.get(), intent);
        }
    }

    /* renamed from: a */
    public static void m29824a(Phone phone, CallReminderFrequentData.FrequentType frequentType) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(MissedCallCardIds.class);
        List m4628c = m4727d.m4700e().m4611a(MissedCallCardIds_.phoneNumber, phone.m26101a()).m4618a().m4628c();
        m4727d.m4700e().m4611a(MissedCallCardIds_.phoneNumber, phone.m26101a()).m4618a().m4624f();
        MissedCallFrequentManager.m29832a(frequentType, m4628c, false);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f23127a, (EventType<OnMissedCallCardChangeListener, Phone>) phone, false);
    }

    /* renamed from: a */
    public static void m29823a(Phone phone, CallReminderFrequentData.FrequentType frequentType, int i, long j) {
        long m4624f = CallAppApplication.get().getObjectBoxStore().m4727d(MissedCallCardIds.class).m4700e().m4611a(MissedCallCardIds_.phoneNumber, phone.m26101a()).m4613a(MissedCallCardIds_.missedCallType, i).m4618a().m4624f();
        if (i == 40 && m4624f == 0) {
            return;
        }
        MissedCallFrequentManager.m29830a(phone, frequentType, i, j);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f23127a, (EventType<OnMissedCallCardChangeListener, Phone>) phone, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03b9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m29821a(java.util.Set<java.lang.Integer> r8) {
        /*
            Method dump skipped, instructions count: 1203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.missedcall.MissedCallManager.m29821a(java.util.Set):void");
    }

    /* renamed from: a */
    private static boolean m29822a(List<CallReminderFrequentData> list, long j, int i, boolean z) {
        if (CollectionUtils.m26068b(list)) {
            for (CallReminderFrequentData callReminderFrequentData : list) {
                if (callReminderFrequentData.getMissedCallType() == i) {
                    if (callReminderFrequentData.getFrequentType().equals(CallReminderFrequentData.FrequentType.DONT_SHOW)) {
                        return true;
                    }
                    if (callReminderFrequentData.getFrequentType().equals(CallReminderFrequentData.FrequentType.DELETE)) {
                        long lastDeleteFromNotificationTimeStamp = callReminderFrequentData.getLastDeleteFromNotificationTimeStamp();
                        if (z && lastDeleteFromNotificationTimeStamp > 0) {
                            return lastDeleteFromNotificationTimeStamp > j;
                        } else if (callReminderFrequentData.getDeleteTimeStamp() >= j) {
                            return true;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public static void m29820b() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(MissedCallCardIds.class);
        List<MissedCallCardIds> m4703c = m4727d.m4703c();
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        for (MissedCallCardIds missedCallCardIds : m4703c) {
            if (TimeUnit.MILLISECONDS.toDays(date.getTime() - missedCallCardIds.getLastMissedCall()) > 2) {
                arrayList.add(missedCallCardIds);
            }
        }
        if (CollectionUtils.m26068b(arrayList)) {
            m4727d.m4704b((Collection) arrayList);
        }
    }

    /* renamed from: c */
    public static void m29819c() {
        CallAppApplication.get().getObjectBoxStore().m4727d(MissedCallCardIds.class).m4701d();
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnMissedCallCardChangeListener, Phone>>) OnMissedCallCardChangeListener.f23127a, (EventType<OnMissedCallCardChangeListener, Phone>) null, false);
    }

    /* renamed from: d */
    public static void m29818d() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(MissedCallCardIds.class);
        List<MissedCallCardIds> m4703c = m4727d.m4703c();
        if (CollectionUtils.m26068b(m4703c)) {
            for (MissedCallCardIds missedCallCardIds : m4703c) {
                missedCallCardIds.setMissedCallType(3);
            }
            m4727d.m4710a((Collection) m4703c);
        }
    }

    /* renamed from: e */
    public static void m29817e() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(SingleMissedCallData.class);
        List<SingleMissedCallData> m4628c = m4727d.m4700e().m4614a((C17978g) SingleMissedCallData_.f26796id, 0).m4618a().m4628c();
        if (CollectionUtils.m26076a(m4628c)) {
            return;
        }
        m4727d.m4701d();
        for (SingleMissedCallData singleMissedCallData : m4628c) {
            m29826a(singleMissedCallData.getPhone(), singleMissedCallData.getContactId(), singleMissedCallData.getMissedCallTime(), singleMissedCallData.getNumberOfMissedCalls(), singleMissedCallData.getMissedCallType());
        }
    }

    public static List<MissedCallCardIds> getMissedCallCardIds() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(MissedCallCardIds.class).m4700e().m4614a((C17978g) MissedCallCardIds_.lastMissedCall, 1).m4618a().m4628c();
    }

    public static boolean isMissedCallCardEnabled() {
        return Prefs.f26668y.get().booleanValue();
    }

    public static boolean isMissedCallDailySummaryEnabled() {
        return Prefs.f26199C.get().booleanValue();
    }

    private static boolean isMissedCallOverlayEnabled() {
        return Prefs.f26197A.get().booleanValue();
    }

    public static boolean isMissedCallsNotificationsEnabled() {
        return Prefs.f26202F.get().booleanValue();
    }

    public static boolean isNotAnswerDailySummaryEnabled() {
        return Prefs.f26200D.get().booleanValue();
    }

    public static boolean isNotAnswerNotificationsEnabled() {
        return Prefs.f26201E.get().booleanValue();
    }

    public static boolean isNotAnsweredCardEnabled() {
        return Prefs.f26669z.get().booleanValue();
    }

    private static boolean isNotAnsweredOverlayEnabled() {
        return Prefs.f26198B.get().booleanValue();
    }
}

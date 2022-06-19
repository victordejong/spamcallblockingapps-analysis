package com.callapp.contacts.observers;

import android.os.Handler;
import android.os.HandlerThread;
import android.provider.CallLog;
import android.util.Pair;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.observers.CallAppContentObserver;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.MissedCallUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.common.collect.C15484av;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/CallLogContentObserver.class */
public class CallLogContentObserver extends CallAppContentObserver {

    /* renamed from: a */
    public static final Set<Integer> f26825a = C15484av.m8820a(3, 40);

    /* renamed from: b */
    private static CallLogContentObserver f26826b;

    /* renamed from: c */
    private static HandlerThread f26827c;

    /* renamed from: h */
    private static OnMissedCallCardChangeListener f26828h;

    /* renamed from: i */
    private ContactData f26833i;

    /* renamed from: j */
    private ContactData f26834j;

    /* renamed from: k */
    private ContactDataChangeListener f26835k;

    /* renamed from: m */
    private ContactDataChangeListener f26837m;

    /* renamed from: d */
    private final Object f26829d = new Object();

    /* renamed from: e */
    private final List<MissedCallUtils.MissedCallDataForNotification> f26830e = Collections.synchronizedList(new ArrayList());

    /* renamed from: f */
    private final Object f26831f = new Object();

    /* renamed from: g */
    private final List<MissedCallUtils.MissedCallDataForNotification> f26832g = Collections.synchronizedList(new ArrayList());

    /* renamed from: l */
    private final Object f26836l = new Object();

    /* renamed from: n */
    private final Object f26838n = new Object();

    /* renamed from: o */
    private MissedCallUtils.MissedCallsListParams f26839o = null;

    /* renamed from: p */
    private MissedCallUtils.MissedCallsListParams f26840p = null;

    /* renamed from: q */
    private final Runnable f26841q = new Runnable() { // from class: com.callapp.contacts.observers.CallLogContentObserver.2
        @Override // java.lang.Runnable
        public void run() {
            CallLogContentObserver.this.m28090c(false);
        }
    };

    private CallLogContentObserver(Handler handler) {
        super(handler);
    }

    /* renamed from: a */
    public static void m28107a() {
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.READ_CALL_LOG")) {
            HandlerThread handlerThread = new HandlerThread("CallApp.CallLogObserver");
            f26827c = handlerThread;
            handlerThread.start();
            AndroidUtils.m27631a(f26827c.getLooper());
            final Handler handler = new Handler(f26827c.getLooper());
            f26826b = new CallLogContentObserver(handler);
            CallAppApplication.get().getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, true, f26826b);
            f26828h = new OnMissedCallCardChangeListener() { // from class: com.callapp.contacts.observers.CallLogContentObserver.1
                @Override // com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener
                /* renamed from: b */
                public final void mo28085b(final Phone phone) {
                    handler.post(new Runnable() { // from class: com.callapp.contacts.observers.CallLogContentObserver.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CallLogContentObserver.f26826b.m28090c(true);
                            CallLogContentObserver.m28106a(CallLogContentObserver.f26826b, phone);
                            CallLogContentObserver.m28098b(CallLogContentObserver.f26826b, phone);
                        }
                    });
                }
            };
            EventBusManager.f25138a.m29048a(OnMissedCallCardChangeListener.f23127a, f26828h);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    static /* synthetic */ void m28106a(CallLogContentObserver callLogContentObserver, Phone phone) {
        List<CallLogUtils.MissedCallData> arrayList = new ArrayList<>();
        synchronized (callLogContentObserver.f26829d) {
            if (CollectionUtils.m26068b(callLogContentObserver.f26830e)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.f26830e) {
                    if (!Objects.m31915a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c, phone) && (((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27714g == null || !DateUtils.m27135a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27714g.longValue()))) {
                        arrayList.add(missedCallDataForNotification.f25754a);
                    }
                }
            }
        }
        callLogContentObserver.m28096b(arrayList);
    }

    /* renamed from: a */
    public static void m28103a(List<CallLogUtils.MissedCallData> list) {
        CallLogContentObserver callLogContentObserver = f26826b;
        if (callLogContentObserver != null) {
            callLogContentObserver.m28096b(list);
        }
    }

    /* renamed from: a */
    private void m28102a(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        synchronized (this.f26831f) {
            this.f26832g.clear();
            if (CollectionUtils.m26068b(list)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
                    this.f26832g.add(missedCallDataForNotification);
                }
            }
        }
        NotificationManager.get().m28544a(list, missedCallsListParams);
    }

    /* renamed from: a */
    public void m28101a(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams, ContactData contactData) {
        for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
            missedCallDataForNotification.setContactData(contactData);
        }
        m28102a(list, missedCallsListParams);
    }

    /* renamed from: a */
    private void m28100a(List<CallLogUtils.MissedCallData> list, boolean z) {
        ContactDataChangeListener contactDataChangeListener;
        if (CollectionUtils.m26076a(list)) {
            m28102a((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            m28099a(false);
            return;
        }
        Collections.sort(list, new Comparator<CallLogUtils.MissedCallData>() { // from class: com.callapp.contacts.observers.CallLogContentObserver.5
            @Override // java.util.Comparator
            public /* synthetic */ int compare(CallLogUtils.MissedCallData missedCallData, CallLogUtils.MissedCallData missedCallData2) {
                return -missedCallData.f27709b.compareTo(missedCallData2.f27709b);
            }
        });
        final ArrayList arrayList = new ArrayList(list.size());
        for (CallLogUtils.MissedCallData missedCallData : list) {
            if (!IncognitoCallManager.get().isIncognito(missedCallData.f27710c) && !m28104a(missedCallData)) {
                arrayList.add(new MissedCallUtils.MissedCallDataForNotification(missedCallData));
            }
        }
        if (CollectionUtils.m26076a(arrayList)) {
            m28102a((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            m28099a(false);
            return;
        }
        final MissedCallUtils.MissedCallsListParams m27442a = MissedCallUtils.m27442a(arrayList);
        if (!z && m27442a.equals(this.f26839o)) {
            return;
        }
        this.f26839o = m27442a;
        if (m27442a.f27773a) {
            m28102a(arrayList, m27442a);
        } else if (m27442a.f27774b != 1) {
            NotificationManager.ContactDataForNotification.m28528a(arrayList);
            m28102a(arrayList, m27442a);
        } else {
            synchronized (this.f26836l) {
                m28087e();
                this.f26835k = new ContactDataChangeListener() { // from class: com.callapp.contacts.observers.CallLogContentObserver.6
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
                        if (CollectionUtils.m26073a(set, ContactField.deviceId, ContactField.fullName, ContactField.photoUrl)) {
                            if (!StringUtils.m26045b((CharSequence) contactData.getFullName()) && !contactData.hasAnyPhotoUrl()) {
                                return;
                            }
                            CallLogContentObserver.this.m28101a(arrayList, m27442a, contactData);
                        }
                    }
                };
                Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(((CallLogUtils.MissedCallData) arrayList.get(0).f25754a).f27710c, 0L, this.f26835k, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
                ContactData contactData = (ContactData) registerForContactDetailsStack.first;
                this.f26833i = contactData;
                if (contactData != null && !contactData.isIncognito()) {
                    m28101a(arrayList, m27442a, (ContactData) registerForContactDetailsStack.first);
                }
                if (((Set) registerForContactDetailsStack.second).size() > 0 && (contactDataChangeListener = this.f26835k) != null) {
                    contactDataChangeListener.onContactChanged(this.f26833i, (Set) registerForContactDetailsStack.second);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* renamed from: a */
    public static void m28099a(boolean z) {
        CallLogContentObserver callLogContentObserver = f26826b;
        if (callLogContentObserver != null) {
            callLogContentObserver.f26839o = null;
            callLogContentObserver.m28087e();
            synchronized (callLogContentObserver.f26831f) {
                if (CollectionUtils.m26068b(callLogContentObserver.f26832g)) {
                    for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.f26832g) {
                        MissedCallManager.m29823a(missedCallDataForNotification.getSourcePhone(), CallReminderFrequentData.FrequentType.DELETE, 3, (z ? ((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27709b.getTime() : false) == true ? 1L : 0L);
                    }
                }
                callLogContentObserver.f26832g.clear();
            }
        }
    }

    /* renamed from: a */
    private static boolean m28104a(CallLogUtils.MissedCallData missedCallData) {
        List<CallReminderFrequentData> m29829a = MissedCallFrequentManager.m29829a(PhoneManager.get().m28239a(missedCallData.f27710c.m26101a()), C15484av.m8820a(Integer.valueOf(missedCallData.f27712e)));
        if (CollectionUtils.m26068b(m29829a)) {
            if (m29829a.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.DONT_SHOW)) {
                return true;
            }
            return m29829a.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.DELETE) && m29829a.get(0).getDeleteTimeStamp() > missedCallData.f27709b.getTime();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    static /* synthetic */ void m28098b(CallLogContentObserver callLogContentObserver, Phone phone) {
        List<CallLogUtils.MissedCallData> arrayList = new ArrayList<>();
        synchronized (callLogContentObserver.f26831f) {
            if (CollectionUtils.m26068b(callLogContentObserver.f26832g)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.f26832g) {
                    if (!Objects.m31915a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c, phone) && (((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27714g == null || !DateUtils.m27135a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27714g.longValue()))) {
                        arrayList.add(missedCallDataForNotification.f25754a);
                    }
                }
            }
        }
        callLogContentObserver.m28100a(arrayList, true);
    }

    /* renamed from: b */
    private void m28096b(List<CallLogUtils.MissedCallData> list) {
        ContactDataChangeListener contactDataChangeListener;
        if (CollectionUtils.m26076a(list)) {
            m28095b((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            m28093b(false);
            return;
        }
        Collections.sort(list, new Comparator<CallLogUtils.MissedCallData>() { // from class: com.callapp.contacts.observers.CallLogContentObserver.3
            @Override // java.util.Comparator
            public /* synthetic */ int compare(CallLogUtils.MissedCallData missedCallData, CallLogUtils.MissedCallData missedCallData2) {
                return -missedCallData.f27709b.compareTo(missedCallData2.f27709b);
            }
        });
        final ArrayList arrayList = new ArrayList(list.size());
        for (CallLogUtils.MissedCallData missedCallData : list) {
            if (!IncognitoCallManager.get().isIncognito(missedCallData.f27710c) && !m28104a(missedCallData)) {
                arrayList.add(new MissedCallUtils.MissedCallDataForNotification(missedCallData));
            }
        }
        if (CollectionUtils.m26076a(arrayList)) {
            m28095b((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            m28093b(false);
            return;
        }
        final MissedCallUtils.MissedCallsListParams m27442a = MissedCallUtils.m27442a(arrayList);
        if (m27442a.equals(this.f26840p)) {
            return;
        }
        this.f26840p = m27442a;
        if (m27442a.f27773a) {
            m28095b(arrayList, m27442a);
        } else if (m27442a.f27774b != 1) {
            NotificationManager.ContactDataForNotification.m28528a(arrayList);
            m28095b(arrayList, m27442a);
        } else {
            synchronized (this.f26838n) {
                m28086f();
                this.f26837m = new ContactDataChangeListener() { // from class: com.callapp.contacts.observers.CallLogContentObserver.4
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
                        if (CollectionUtils.m26073a(set, ContactField.deviceId, ContactField.fullName, ContactField.photoUrl)) {
                            if (!StringUtils.m26045b((CharSequence) contactData.getFullName()) && !contactData.hasAnyPhotoUrl()) {
                                return;
                            }
                            CallLogContentObserver.this.m28094b(arrayList, m27442a, contactData);
                        }
                    }
                };
                Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(((CallLogUtils.MissedCallData) arrayList.get(0).f25754a).f27710c, 0L, this.f26837m, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
                ContactData contactData = (ContactData) registerForContactDetailsStack.first;
                this.f26834j = contactData;
                if (contactData != null && !contactData.isIncognito()) {
                    m28094b(arrayList, m27442a, (ContactData) registerForContactDetailsStack.first);
                }
                if (((Set) registerForContactDetailsStack.second).size() > 0 && (contactDataChangeListener = this.f26837m) != null) {
                    contactDataChangeListener.onContactChanged(this.f26834j, (Set) registerForContactDetailsStack.second);
                }
            }
        }
    }

    /* renamed from: b */
    private void m28095b(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        synchronized (this.f26829d) {
            this.f26830e.clear();
            if (CollectionUtils.m26068b(list)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
                    this.f26830e.add(missedCallDataForNotification);
                }
            }
        }
        NotificationManager.get().m28536b(list, missedCallsListParams);
    }

    /* renamed from: b */
    public void m28094b(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams, ContactData contactData) {
        for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
            missedCallDataForNotification.setContactData(contactData);
        }
        m28095b(list, missedCallsListParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* renamed from: b */
    public static void m28093b(boolean z) {
        CallLogContentObserver callLogContentObserver = f26826b;
        if (callLogContentObserver != null) {
            callLogContentObserver.f26840p = null;
            callLogContentObserver.m28086f();
            synchronized (callLogContentObserver.f26829d) {
                if (CollectionUtils.m26068b(callLogContentObserver.f26830e)) {
                    for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.f26830e) {
                        MissedCallManager.m29823a(missedCallDataForNotification.getSourcePhone(), CallReminderFrequentData.FrequentType.DELETE, 40, (z ? ((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27709b.getTime() : false) == true ? 1L : 0L);
                    }
                }
                callLogContentObserver.f26830e.clear();
            }
        }
    }

    /* renamed from: c */
    public static void m28092c() {
        if (f26826b != null) {
            CallAppApplication.get().getContentResolver().unregisterContentObserver(f26826b);
            f26826b = null;
        }
        HandlerThread handlerThread = f26827c;
        if (handlerThread != null) {
            handlerThread.quit();
            f26827c = null;
        }
        EventBusManager.f25138a.m29045b(OnMissedCallCardChangeListener.f23127a, f26828h);
    }

    /* renamed from: c */
    public static void m28091c(CallAppContentObserver.ContentObserverListener contentObserverListener) {
        CallLogContentObserver callLogContentObserver = f26826b;
        if (callLogContentObserver != null) {
            callLogContentObserver.m28109a(contentObserverListener);
        }
    }

    /* renamed from: d */
    public static void m28088d(CallAppContentObserver.ContentObserverListener contentObserverListener) {
        CallLogContentObserver callLogContentObserver = f26826b;
        if (callLogContentObserver != null) {
            callLogContentObserver.m28108b(contentObserverListener);
        }
    }

    /* renamed from: e */
    private void m28087e() {
        synchronized (this.f26836l) {
            if (this.f26833i != null && this.f26835k != null) {
                Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.f26833i, this.f26835k);
                this.f26833i = null;
                this.f26835k = null;
            }
        }
    }

    /* renamed from: f */
    private void m28086f() {
        synchronized (this.f26838n) {
            if (this.f26834j != null && this.f26837m != null) {
                Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.f26834j, this.f26837m);
                this.f26834j = null;
                this.f26837m = null;
            }
        }
    }

    @Override // com.callapp.contacts.observers.CallAppContentObserver
    /* renamed from: b */
    protected final Runnable mo28080b() {
        return this.f26841q;
    }

    /* renamed from: c */
    public final void m28090c(boolean z) {
        if (!z) {
            CallLogUtils.m27582a();
            m28087e();
            m28086f();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(40, Prefs.f26255af.get());
        hashMap.put(3, Prefs.f26254ae.get());
        List<CallLogUtils.MissedCallData> m27441a = MissedCallUtils.m27441a(hashMap);
        if (CollectionUtils.m26076a(m27441a)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (CallLogUtils.MissedCallData missedCallData : m27441a) {
            int i = missedCallData.f27712e;
            if (i == 3) {
                arrayList.add(missedCallData);
                hashSet.add(3);
            } else if (i == 40) {
                hashSet.add(40);
            }
        }
        if (CollectionUtils.m26068b(arrayList) && !z) {
            m28100a(arrayList, z);
        }
        if (z) {
            return;
        }
        MissedCallManager.m29821a(hashSet);
        EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.CONTACTS);
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return true;
    }
}

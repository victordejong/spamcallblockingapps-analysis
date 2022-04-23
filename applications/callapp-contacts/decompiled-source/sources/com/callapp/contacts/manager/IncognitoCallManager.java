package com.callapp.contacts.manager;

import android.util.Pair;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.observers.CallAppContentObserver;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.util.CallLogEntry;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/IncognitoCallManager.class */
public class IncognitoCallManager implements ManagedLifecycle, CallStateListener, ContactDataChangeListener, CallAppContentObserver.ContentObserverListener {
    private final Object lock = new Object();
    private Map<Phone, Integer> numbersMarkedIncognito;

    /* renamed from: com.callapp.contacts.manager.IncognitoCallManager$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/IncognitoCallManager$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14874a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallState.values().length];
            f14874a = iArr;
            try {
                iArr[CallState.RINGING_OUTGOING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14874a[CallState.RINGING_INCOMING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14874a[CallState.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14874a[CallState.POST_CALL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static IncognitoCallManager get() {
        return Singletons.get().getIncognitoCallManager();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        PhoneStateManager.get().removeListener(this);
        CallLogContentObserver.d(this);
        this.numbersMarkedIncognito.clear();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.numbersMarkedIncognito = new HashMap();
        CallLogContentObserver.c(this);
        PhoneStateManager.get().addListener(this);
    }

    public boolean isIncognito(ContactData contactData) {
        boolean z = false;
        if (contactData == null) {
            return false;
        }
        for (Phone phone : contactData.getPhones()) {
            z |= isIncognito(phone);
        }
        return z;
    }

    public boolean isIncognito(Phone phone) {
        return CollectionUtils.a(this.numbersMarkedIncognito.keySet(), phone);
    }

    public void markIncognito(Phone phone) {
        synchronized (this.lock) {
            int i = 1;
            if (CollectionUtils.a(this.numbersMarkedIncognito.keySet(), phone)) {
                i = 1 + this.numbersMarkedIncognito.get(phone).intValue();
            }
            this.numbersMarkedIncognito.put(phone, Integer.valueOf(i));
        }
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        int i = AnonymousClass1.f14874a[callData.getState().ordinal()];
        if (i == 1) {
            Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = ContactLoaderManager.get().registerForContactDetailsStack(callData.getNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(callData.getNumber(), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), 0L, this, EnumSet.of(ContactField.isIncognito));
            if (((Set) registerForContactDetailsStack.second).size() > 0) {
                onContactChanged((ContactData) registerForContactDetailsStack.first, (Set) registerForContactDetailsStack.second);
            }
        } else if (i != 2) {
            if (i == 3 || i == 4) {
                ContactLoaderManager.get().unRegisterForContactDetailsStack(PhoneStateManager.get().getContactDataByCallData(callData), this);
            }
        } else if (CollectionUtils.a(this.numbersMarkedIncognito.keySet(), callData.getNumber())) {
            markIncognito(callData.getNumber());
        } else {
            Pair<ContactData, Set<ContactField>> registerForContactDetailsStack2 = ContactLoaderManager.get().registerForContactDetailsStack(callData.getNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(callData.getNumber(), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), 0L, this, EnumSet.of(ContactField.isIncognito));
            if (((Set) registerForContactDetailsStack2.second).size() > 0) {
                onContactChanged((ContactData) registerForContactDetailsStack2.first, (Set) registerForContactDetailsStack2.second);
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (CollectionUtils.a(set, ContactField.isIncognito) && contactData.isIncognito()) {
            for (Phone phone : contactData.getPhones()) {
                CallData callForPhone = PhoneStateManager.get().getCallForPhone(phone);
                if (!(callForPhone == null || CollectionUtils.a(this.numbersMarkedIncognito.keySet(), callForPhone.getNumber()))) {
                    markIncognito(callForPhone.getNumber());
                    return;
                }
            }
        }
    }

    @Override // com.callapp.contacts.observers.CallAppContentObserver.ContentObserverListener
    public void onContentChanged() {
        synchronized (this.lock) {
            if (CollectionUtils.a(this.numbersMarkedIncognito)) {
                Prefs.fS.set(new Date());
                return;
            }
            Date date = new Date();
            List<CallLogEntry> a2 = CallLogUtils.a(Prefs.fS.get());
            Collections.sort(a2, _$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV_2781jDqaAg.INSTANCE);
            LinkedList<Phone> linkedList = new LinkedList();
            boolean z = false;
            for (Phone phone : this.numbersMarkedIncognito.keySet()) {
                int intValue = this.numbersMarkedIncognito.get(phone).intValue();
                int i = 0;
                boolean z2 = z;
                while (true) {
                    z = z2;
                    if (i < intValue) {
                        CallLogEntry callLogEntry = null;
                        Iterator<CallLogEntry> it2 = a2.iterator();
                        do {
                            if (!it2.hasNext()) {
                                break;
                            }
                            callLogEntry = it2.next();
                        } while (!PhoneManager.get().a(callLogEntry.getNumber()).equals(phone));
                        if (callLogEntry != null) {
                            CallLogUtils.a((List<Long>) Collections.singletonList(callLogEntry.getId()));
                            a2.remove(callLogEntry);
                            int i2 = intValue - 1;
                            this.numbersMarkedIncognito.put(phone, Integer.valueOf(i2));
                            if (i2 == 0) {
                                linkedList.add(phone);
                            }
                            z2 = true;
                        }
                        i++;
                    }
                }
            }
            for (Phone phone2 : linkedList) {
                this.numbersMarkedIncognito.remove(phone2);
            }
            if (z) {
                CallLogUtils.a();
                NotificationManager.c();
                EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
                EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.RECENT_CALLS);
            }
            if (PhoneStateManager.get().getCallListSize() == 0) {
                Prefs.fS.set(date);
            }
        }
    }
}

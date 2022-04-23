package com.callapp.contacts.util;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/MissedCallUtils.class */
public class MissedCallUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification.class */
    public static class MissedCallDataForNotification extends NotificationManager.ContactDataForNotification<CallLogUtils.MissedCallData> {
        public MissedCallDataForNotification(CallLogUtils.MissedCallData missedCallData) {
            super(missedCallData);
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Date getSourceDate() {
            return ((CallLogUtils.MissedCallData) this.f14915a).f15871b;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public String getSourceName() {
            return ((CallLogUtils.MissedCallData) this.f14915a).f15873d;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Phone getSourcePhone() {
            return ((CallLogUtils.MissedCallData) this.f14915a).f15872c;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType.class */
    public enum MissedCallNotificationType {
        SINGLE_CALL_NON_PRIVATE_NUMBER,
        SINGLE_CALL_PRIVATE_NUMBER,
        MULTIPLE_CALLS_ALL_SAME_CALLER,
        MULTIPLE_CALLS_MIXED_CALLERS,
        MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/MissedCallUtils$MissedCallsListParams.class */
    public static class MissedCallsListParams {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f15930a;

        /* renamed from: b  reason: collision with root package name */
        public final int f15931b;

        /* renamed from: c  reason: collision with root package name */
        public final int f15932c;

        MissedCallsListParams(int i, int i2, boolean z) {
            this.f15932c = i;
            this.f15931b = i2;
            this.f15930a = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MissedCallsListParams missedCallsListParams = (MissedCallsListParams) obj;
            return this.f15930a == missedCallsListParams.f15930a && this.f15931b == missedCallsListParams.f15931b && this.f15932c == missedCallsListParams.f15932c;
        }

        public int hashCode() {
            return ((((this.f15930a ? 1 : 0) * 31) + this.f15931b) * 31) + this.f15932c;
        }
    }

    public static MissedCallNotificationType a(MissedCallsListParams missedCallsListParams) {
        return missedCallsListParams.f15932c == 1 ? missedCallsListParams.f15930a ? MissedCallNotificationType.SINGLE_CALL_PRIVATE_NUMBER : MissedCallNotificationType.SINGLE_CALL_NON_PRIVATE_NUMBER : missedCallsListParams.f15930a ? MissedCallNotificationType.MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS : missedCallsListParams.f15931b > 1 ? MissedCallNotificationType.MULTIPLE_CALLS_MIXED_CALLERS : MissedCallNotificationType.MULTIPLE_CALLS_ALL_SAME_CALLER;
    }

    public static MissedCallsListParams a(List<MissedCallDataForNotification> list) {
        if (list.size() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        boolean z = true;
        for (MissedCallDataForNotification missedCallDataForNotification : list) {
            hashSet.add(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c);
            if (((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c != null && !CallLogUtils.b(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c.getRawNumber())) {
                z = false;
            }
        }
        return new MissedCallsListParams(list.size(), hashSet.size(), z);
    }

    public static String a(MissedCallDataForNotification missedCallDataForNotification) {
        return (missedCallDataForNotification.getContactData() == null || !missedCallDataForNotification.getContactData().isVoiceMail()) ? StringUtils.b((CharSequence) missedCallDataForNotification.getCallappName()) ? StringUtils.j(missedCallDataForNotification.getCallappName()) : StringUtils.b((CharSequence) ((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15873d) ? StringUtils.j(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15873d) : (((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c == null || CallLogUtils.b(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c.getRawNumber())) ? CallAppApplication.get().getString(2131886488) : ((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c.e() : Activities.getString(2131888153);
    }

    public static List<CallLogUtils.MissedCallData> a(Map<Integer, Date> map) {
        Date date = null;
        for (Date date2 : map.values()) {
            if (date == null || date2.before(date)) {
                date = date2;
            }
        }
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        Stack stack = (Stack) CallLogUtils.getCallLog().clone();
        ArrayList arrayList = new ArrayList();
        while (CollectionUtils.b(stack)) {
            AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack.pop();
            if (instance.getTime().after(aggregateCallLogData.f11102d)) {
                break;
            }
            for (AggregateCallLogData.CallLogData callLogData : aggregateCallLogData.getCallLogs()) {
                Date date3 = map.get(Integer.valueOf(callLogData.getCallType()));
                if (date3 != null && !date3.after(callLogData.getDate())) {
                    arrayList.add(new CallLogUtils.MissedCallData(callLogData.getCallId(), callLogData.getDate(), aggregateCallLogData.getPhone(), aggregateCallLogData.displayName, callLogData.getCallType(), callLogData.getDuration()));
                }
            }
        }
        return arrayList;
    }

    public static void a(boolean z) {
        Prefs.af.set(new Date());
        CallLogContentObserver.b(z);
    }

    public static void b(boolean z) {
        Prefs.ae.set(new Date());
        CallLogContentObserver.a(z);
    }
}

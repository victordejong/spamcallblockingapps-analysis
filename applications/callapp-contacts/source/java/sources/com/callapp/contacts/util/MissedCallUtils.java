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
            return ((CallLogUtils.MissedCallData) this.f25754a).f27709b;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public String getSourceName() {
            return ((CallLogUtils.MissedCallData) this.f25754a).f27711d;
        }

        @Override // com.callapp.contacts.manager.NotificationManager.ContactDataForNotification
        public Phone getSourcePhone() {
            return ((CallLogUtils.MissedCallData) this.f25754a).f27710c;
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

        /* renamed from: a */
        public final boolean f27773a;

        /* renamed from: b */
        public final int f27774b;

        /* renamed from: c */
        public final int f27775c;

        MissedCallsListParams(int i, int i2, boolean z) {
            this.f27775c = i;
            this.f27774b = i2;
            this.f27773a = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MissedCallsListParams missedCallsListParams = (MissedCallsListParams) obj;
            return this.f27773a == missedCallsListParams.f27773a && this.f27774b == missedCallsListParams.f27774b && this.f27775c == missedCallsListParams.f27775c;
        }

        public int hashCode() {
            return ((((this.f27773a ? 1 : 0) * 31) + this.f27774b) * 31) + this.f27775c;
        }
    }

    /* renamed from: a */
    public static MissedCallNotificationType m27443a(MissedCallsListParams missedCallsListParams) {
        return missedCallsListParams.f27775c == 1 ? missedCallsListParams.f27773a ? MissedCallNotificationType.SINGLE_CALL_PRIVATE_NUMBER : MissedCallNotificationType.SINGLE_CALL_NON_PRIVATE_NUMBER : missedCallsListParams.f27773a ? MissedCallNotificationType.MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS : missedCallsListParams.f27774b > 1 ? MissedCallNotificationType.MULTIPLE_CALLS_MIXED_CALLERS : MissedCallNotificationType.MULTIPLE_CALLS_ALL_SAME_CALLER;
    }

    /* renamed from: a */
    public static MissedCallsListParams m27442a(List<MissedCallDataForNotification> list) {
        if (list.size() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        boolean z = true;
        for (MissedCallDataForNotification missedCallDataForNotification : list) {
            hashSet.add(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c);
            if (((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c != null && !CallLogUtils.m27556b(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c.getRawNumber())) {
                z = false;
            }
        }
        return new MissedCallsListParams(list.size(), hashSet.size(), z);
    }

    /* renamed from: a */
    public static String m27444a(MissedCallDataForNotification missedCallDataForNotification) {
        return (missedCallDataForNotification.getContactData() == null || !missedCallDataForNotification.getContactData().isVoiceMail()) ? StringUtils.m26045b((CharSequence) missedCallDataForNotification.getCallappName()) ? StringUtils.m26020j(missedCallDataForNotification.getCallappName()) : StringUtils.m26045b((CharSequence) ((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27711d) ? StringUtils.m26020j(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27711d) : (((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c == null || CallLogUtils.m27556b(((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c.getRawNumber())) ? CallAppApplication.get().getString(2131886488) : ((CallLogUtils.MissedCallData) missedCallDataForNotification.f25754a).f27710c.m26087e() : Activities.getString(2131888153);
    }

    /* renamed from: a */
    public static List<CallLogUtils.MissedCallData> m27441a(Map<Integer, Date> map) {
        Date date = null;
        for (Date date2 : map.values()) {
            if (date == null || date2.before(date)) {
                date = date2;
            }
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Stack stack = (Stack) CallLogUtils.getCallLog().clone();
        ArrayList arrayList = new ArrayList();
        while (CollectionUtils.m26068b(stack)) {
            AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack.pop();
            if (calendar.getTime().after(aggregateCallLogData.f20275d)) {
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

    /* renamed from: a */
    public static void m27440a(boolean z) {
        Prefs.f26255af.set(new Date());
        CallLogContentObserver.m28093b(z);
    }

    /* renamed from: b */
    public static void m27439b(boolean z) {
        Prefs.f26254ae.set(new Date());
        CallLogContentObserver.m28099a(z);
    }
}

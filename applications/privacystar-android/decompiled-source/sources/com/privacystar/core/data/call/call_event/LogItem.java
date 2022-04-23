package com.privacystar.core.data.call.call_event;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.text.format.DateFormat;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.util.CallLogUtil;
import com.privacystar.core.util.ContactUtil;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/LogItem.class */
public class LogItem implements Comparable<LogItem>, Parcelable {
    public static final Parcelable.Creator<LogItem> CREATOR = new Parcelable.Creator<LogItem>() { // from class: com.privacystar.core.data.call.call_event.LogItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LogItem createFromParcel(Parcel parcel) {
            return new LogItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LogItem[] newArray(int i) {
            return new LogItem[i];
        }
    };
    private static final String KEY_DATE = "date";
    private static final String KEY_DIRECTION = "direction";
    private static final String KEY_DURATION = "duration";
    private static final String KEY_ID = "id";
    private static final String KEY_NAME = "name";
    private static final String KEY_OCCURRENCES = "occurrences";
    private static final String KEY_PHONE = "phone";
    private static final String KEY_RAWDATE = "rawdate";
    private static final String KEY_STATUS = "status";
    private static final String KEY_TIME = "time";
    private static final String KEY_TXTID = "txtid";
    private static final String KEY_TYPE = "type";
    private static final String TYPE_CALL = "call";
    private static final String TYPE_NONE = "";
    private static final String TYPE_SMS = "sms";
    private String callStatus;
    private long date;
    private CallHistoryHelper.CallDirection direction;
    private long duration;
    private int itemId;
    private boolean mBlocked;
    private boolean mIdentification;
    private int mOffenderBits;
    private String name;
    private int occurrences;
    private String phoneNumber;
    private int txtId;
    private LogItemType type;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/LogItem$DateLogItemComparator.class */
    public static class DateLogItemComparator implements Comparator<LogItem> {
        public int compare(LogItem logItem, LogItem logItem2) {
            Date date = new Date(logItem.date);
            Date date2 = new Date(logItem2.date);
            if (Math.abs(date.getTime() - date2.getTime()) < 30000) {
                return 0;
            }
            return date.compareTo(date2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/LogItem$DateLogItemComparatorMergeless.class */
    public static class DateLogItemComparatorMergeless implements Comparator<LogItem> {
        public int compare(LogItem logItem, LogItem logItem2) {
            return new Date(logItem.date).compareTo(new Date(logItem2.date));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_event/LogItem$LogItemType.class */
    public enum LogItemType implements Parcelable {
        CALL("call"),
        SMS(LogItem.TYPE_SMS),
        CALLER_ID("caller_id");
        
        public static final Parcelable.Creator<LogItemType> CREATOR = new Parcelable.Creator<LogItemType>() { // from class: com.privacystar.core.data.call.call_event.LogItem.LogItemType.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LogItemType createFromParcel(Parcel parcel) {
                return LogItemType.values()[parcel.readInt()];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LogItemType[] newArray(int i) {
                return new LogItemType[i];
            }
        };
        private String value;

        LogItemType(String str) {
            this.value = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public LogItem() {
        this.duration = -1L;
        this.mOffenderBits = 0;
        this.mBlocked = false;
        this.mIdentification = false;
        this.direction = CallHistoryHelper.CallDirection.INCOMING_RECEIVED;
    }

    public LogItem(Parcel parcel) {
        this.duration = -1L;
        boolean z = false;
        this.mOffenderBits = 0;
        this.mBlocked = false;
        this.mIdentification = false;
        this.direction = CallHistoryHelper.CallDirection.INCOMING_RECEIVED;
        this.phoneNumber = parcel.readString();
        this.name = parcel.readString();
        this.callStatus = parcel.readString();
        this.date = parcel.readLong();
        this.duration = parcel.readLong();
        this.type = LogItemType.CREATOR.createFromParcel(parcel);
        this.itemId = parcel.readInt();
        this.txtId = parcel.readInt();
        this.mOffenderBits = parcel.readInt();
        this.occurrences = parcel.readInt();
        this.mBlocked = parcel.readInt() != 0;
        this.mIdentification = parcel.readInt() != 0 ? true : z;
        this.direction = CallHistoryHelper.CallDirection.CREATOR.createFromParcel(parcel);
    }

    private String getDateString() {
        return DateFormat.format("MM/dd/yyyy", getDate()).toString();
    }

    private String getTimeString() {
        return DateFormat.format("hh:mm:ss a", getDate()).toString();
    }

    public static List<LogItem> mergeCallAndBlockedLists(List<LogItem> list, List<LogItem> list2) {
        DateLogItemComparator dateLogItemComparator = new DateLogItemComparator();
        DateLogItemComparatorMergeless dateLogItemComparatorMergeless = new DateLogItemComparatorMergeless();
        removeDuplicatesFromCalls(dateLogItemComparator, list, list2);
        list2.addAll(list);
        Collections.sort(list2, dateLogItemComparatorMergeless);
        Collections.reverse(list2);
        return list2;
    }

    private static void removeDuplicatesFromCalls(Comparator<LogItem> comparator, List<LogItem> list, List<LogItem> list2) {
        ListIterator<LogItem> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            LogItem next = listIterator.next();
            int i = 0;
            while (true) {
                if (i >= list2.size()) {
                    break;
                } else if (comparator.compare(next, list2.get(i)) == 0) {
                    listIterator.remove();
                    break;
                } else {
                    i++;
                }
            }
        }
    }

    public static LogItemType typeFromCall(boolean z) {
        return LogItemType.CALL;
    }

    public static LogItemType typeFromCallerId(boolean z) {
        return LogItemType.CALLER_ID;
    }

    public static LogItemType typeFromSms(boolean z) {
        return LogItemType.SMS;
    }

    public int compareTo(@NonNull LogItem logItem) {
        Date date = new Date(this.date);
        Date date2 = new Date(logItem.date);
        if (date.after(date2)) {
            return 1;
        }
        return date2.after(date) ? -1 : 0;
    }

    public LogItem deepCopy() {
        LogItem logItem = new LogItem();
        logItem.phoneNumber = this.phoneNumber;
        logItem.name = this.name;
        logItem.callStatus = this.callStatus;
        logItem.date = this.date;
        logItem.duration = this.duration;
        logItem.type = this.type;
        logItem.itemId = this.itemId;
        logItem.txtId = this.txtId;
        logItem.mOffenderBits = this.mOffenderBits;
        logItem.occurrences = this.occurrences;
        logItem.mBlocked = this.mBlocked;
        logItem.mIdentification = this.mIdentification;
        logItem.direction = this.direction;
        return logItem;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LogItem logItem = (LogItem) obj;
        if (getDate() != logItem.getDate() || getDuration() != logItem.getDuration() || getItemId() != logItem.getItemId() || getTxtId() != logItem.getTxtId() || this.mOffenderBits != logItem.mOffenderBits || getOccurrences() != logItem.getOccurrences() || this.mBlocked != logItem.mBlocked || this.mIdentification != logItem.mIdentification) {
            return false;
        }
        if (getPhoneNumber() != null) {
            if (!getPhoneNumber().equals(logItem.getPhoneNumber())) {
                return false;
            }
        } else if (logItem.getPhoneNumber() != null) {
            return false;
        }
        if (getName() != null) {
            if (!getName().equals(logItem.getName())) {
                return false;
            }
        } else if (logItem.getName() != null) {
            return false;
        }
        if (getCallStatus() != null) {
            if (!getCallStatus().equals(logItem.getCallStatus())) {
                return false;
            }
        } else if (logItem.getCallStatus() != null) {
            return false;
        }
        if (getType() != logItem.getType()) {
            return false;
        }
        if (getDirection() != logItem.getDirection()) {
            z = false;
        }
        return z;
    }

    public String getCallStatus() {
        return this.callStatus;
    }

    public long getDate() {
        return this.date;
    }

    public Date getDateObject() {
        return new Date(this.date);
    }

    public CallHistoryHelper.CallDirection getDirection() {
        return this.direction;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getItemId() {
        return this.itemId;
    }

    public String getName() {
        return this.name;
    }

    public int getOccurrences() {
        return this.occurrences;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getShortDateString() {
        return DateFormat.format("MM/dd", getDate()).toString();
    }

    public int getTxtId() {
        return this.txtId;
    }

    public LogItemType getType() {
        return this.type;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getPhoneNumber() != null ? getPhoneNumber().hashCode() : 0;
        int hashCode2 = getName() != null ? getName().hashCode() : 0;
        int hashCode3 = getCallStatus() != null ? getCallStatus().hashCode() : 0;
        int date = (int) (getDate() ^ (getDate() >>> 32));
        int duration = (int) (getDuration() ^ (getDuration() >>> 32));
        int hashCode4 = getType() != null ? getType().hashCode() : 0;
        int itemId = getItemId();
        int txtId = getTxtId();
        int i2 = this.mOffenderBits;
        int occurrences = getOccurrences();
        boolean z = this.mBlocked;
        boolean z2 = this.mIdentification;
        if (getDirection() != null) {
            i = getDirection().hashCode();
        }
        return (((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + date) * 31) + duration) * 31) + hashCode4) * 31) + itemId) * 31) + txtId) * 31) + i2) * 31) + occurrences) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + i;
    }

    public boolean isIdentification() {
        return this.mIdentification;
    }

    public void mergeWith(LogItem logItem) {
        if (Text.isBlank(this.phoneNumber)) {
            this.phoneNumber = logItem.phoneNumber;
        }
        if (Text.isBlank(this.name)) {
            this.name = logItem.name;
        }
        if (Text.isBlank(this.callStatus)) {
            this.callStatus = logItem.callStatus;
        }
        if (this.duration == -1) {
            this.duration = logItem.duration;
        }
        if (!this.mBlocked) {
            setBlocked(logItem.wasBlocked());
        }
        if (!this.mIdentification) {
            setIdentification(logItem.isIdentification());
        }
        if (this.direction == null) {
            this.direction = logItem.direction;
        }
        if (this.mOffenderBits == 0) {
            this.mOffenderBits = logItem.mOffenderBits;
        }
    }

    public void setBlocked(boolean z) {
        this.mBlocked = z;
    }

    public void setCallStatus(String str) {
        this.callStatus = str;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDirection(CallHistoryHelper.CallDirection callDirection) {
        this.direction = callDirection;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setIdentification(boolean z) {
        this.mIdentification = z;
    }

    public void setItemId(int i) {
        this.itemId = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOccurrences(int i) {
        this.occurrences = i;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setTxtId(int i) {
        this.txtId = i;
    }

    public void setType(LogItemType logItemType) {
        this.type = logItemType;
    }

    public CallLogUtil.BasicLogInfo toBasicLogInfo(Realm realm) {
        boolean isCallerBlocked = BlockListRealm.isCallerBlocked(realm, this.phoneNumber);
        CallLogUtil.BasicLogInfo basicLogInfo = new CallLogUtil.BasicLogInfo(this.phoneNumber, this.name, null, Long.valueOf(this.date), this.direction.toInt(), 0, ContactUtil.isNumberInContacts(this.phoneNumber), this.type == LogItemType.CALL, isCallerBlocked);
        basicLogInfo.setLookupOnly(this.mIdentification);
        return basicLogInfo;
    }

    public boolean wasBlocked() {
        return this.mBlocked;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.name);
        parcel.writeString(this.callStatus);
        parcel.writeLong(this.date);
        parcel.writeLong(this.duration);
        this.type.writeToParcel(parcel, i);
        parcel.writeInt(this.itemId);
        parcel.writeInt(this.txtId);
        parcel.writeInt(this.mOffenderBits);
        parcel.writeInt(this.occurrences);
        parcel.writeInt(this.mBlocked ? 1 : 0);
        parcel.writeInt(this.mIdentification ? 1 : 0);
        this.direction.writeToParcel(parcel, i);
    }
}

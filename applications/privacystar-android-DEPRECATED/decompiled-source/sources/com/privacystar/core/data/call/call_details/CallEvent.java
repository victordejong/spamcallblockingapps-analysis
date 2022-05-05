package com.privacystar.core.data.call.call_details;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.p001v4.app.NotificationCompat;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.util.NumbersUtil;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_details/CallEvent.class */
public class CallEvent implements Parcelable, Comparable {
    public static final Parcelable.Creator<CallEvent> CREATOR = new Parcelable.Creator<CallEvent>() { // from class: com.privacystar.core.data.call.call_details.CallEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallEvent createFromParcel(Parcel parcel) {
            return new CallEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallEvent[] newArray(int i) {
            return new CallEvent[i];
        }
    };
    private boolean blocked;
    private long date;
    private CallHistoryHelper.CallDirection direction;
    private boolean identification;
    private int nativeId;
    private EventType type;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/call_details/CallEvent$EventType.class */
    public enum EventType implements Parcelable {
        CALL(NotificationCompat.CATEGORY_CALL),
        SMS("text"),
        CALLER_ID("cid"),
        NONE("none");
        
        public static final Parcelable.Creator<EventType> CREATOR = new Parcelable.Creator<EventType>() { // from class: com.privacystar.core.data.call.call_details.CallEvent.EventType.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public EventType createFromParcel(Parcel parcel) {
                int readInt = parcel.readInt();
                return (readInt < 0 || readInt >= EventType.values().length) ? EventType.NONE : EventType.values()[parcel.readInt()];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public EventType[] newArray(int i) {
                return new EventType[i];
            }
        };
        private String value;

        EventType(String str) {
            this.value = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getLabel() {
            return this.value;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    public CallEvent() {
        this.type = EventType.CALLER_ID;
        this.blocked = false;
        this.identification = false;
        this.direction = CallHistoryHelper.CallDirection.NO_DIRECTION;
        this.nativeId = -1;
    }

    protected CallEvent(Parcel parcel) {
        this.type = EventType.CALLER_ID;
        boolean z = false;
        this.blocked = false;
        this.identification = false;
        this.direction = CallHistoryHelper.CallDirection.NO_DIRECTION;
        this.nativeId = -1;
        this.date = parcel.readLong();
        this.type = EventType.CREATOR.createFromParcel(parcel);
        this.blocked = parcel.readInt() == 1;
        this.identification = parcel.readInt() == 1 ? true : z;
        this.direction = CallHistoryHelper.CallDirection.CREATOR.createFromParcel(parcel);
        this.nativeId = parcel.readInt();
    }

    public CallEvent(CallEvent callEvent) {
        this.type = EventType.CALLER_ID;
        this.blocked = false;
        this.identification = false;
        this.direction = CallHistoryHelper.CallDirection.NO_DIRECTION;
        this.nativeId = -1;
        this.date = callEvent.date;
        this.type = callEvent.type;
        this.blocked = callEvent.blocked;
        this.identification = callEvent.identification;
        this.direction = callEvent.direction;
        this.nativeId = callEvent.nativeId;
    }

    public CallEvent(LogItem logItem) {
        this.type = EventType.CALLER_ID;
        this.blocked = false;
        this.identification = false;
        this.direction = CallHistoryHelper.CallDirection.NO_DIRECTION;
        this.nativeId = -1;
        this.date = logItem.getDate();
        this.blocked = logItem.wasBlocked();
        this.identification = logItem.isIdentification();
        this.direction = logItem.getDirection();
        if (logItem.getType() == LogItem.LogItemType.CALL) {
            this.type = EventType.CALL;
        } else if (logItem.getType() == LogItem.LogItemType.SMS) {
            this.type = EventType.SMS;
        } else {
            this.type = EventType.CALLER_ID;
        }
        if (this.type == EventType.CALL) {
            this.nativeId = logItem.getItemId();
        } else if (this.type == EventType.SMS) {
            this.nativeId = logItem.getTxtId();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull Object obj) {
        if (obj instanceof CallEvent) {
            return NumbersUtil.lossyIntFromLong(((CallEvent) obj).getDate() - getDate());
        }
        return -1;
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
        if (!(obj instanceof CallEvent)) {
            return false;
        }
        CallEvent callEvent = (CallEvent) obj;
        if (getDate() != callEvent.getDate() || this.blocked != callEvent.blocked || isIdentification() != callEvent.isIdentification() || getNativeId() != callEvent.getNativeId() || getType() != callEvent.getType()) {
            return false;
        }
        if (getDirection() != callEvent.getDirection()) {
            z = false;
        }
        return z;
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

    public int getNativeId() {
        return this.nativeId;
    }

    public EventType getType() {
        return this.type;
    }

    public int hashCode() {
        int date = (int) (getDate() ^ (getDate() >>> 32));
        int i = 0;
        int hashCode = getType() != null ? getType().hashCode() : 0;
        boolean z = this.blocked;
        boolean isIdentification = isIdentification();
        if (getDirection() != null) {
            i = getDirection().hashCode();
        }
        return (((((((((date * 31) + hashCode) * 31) + (z ? 1 : 0)) * 31) + (isIdentification ? 1 : 0)) * 31) + i) * 31) + getNativeId();
    }

    public boolean isIdentification() {
        return this.identification;
    }

    public void mergeWith(CallEvent callEvent) {
        if (this.type.equals(EventType.CALLER_ID)) {
            this.type = callEvent.type;
        }
        if (!this.blocked) {
            this.blocked = callEvent.blocked;
        }
        if (!this.identification) {
            this.identification = callEvent.identification;
        }
        if (this.direction.equals(CallHistoryHelper.CallDirection.NO_DIRECTION)) {
            this.direction = callEvent.direction;
        }
        if (wasBlocked() || !this.direction.equals(CallHistoryHelper.CallDirection.NO_DIRECTION) || !isIdentification()) {
            this.type = callEvent.getType();
            this.direction = callEvent.getDirection();
            return;
        }
        this.type = EventType.CALLER_ID;
    }

    public void setBlocked(boolean z) {
        this.blocked = z;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDirection(CallHistoryHelper.CallDirection callDirection) {
        this.direction = callDirection;
    }

    public void setIdentification(boolean z) {
        this.identification = z;
    }

    public void setNativeId(int i) {
        this.nativeId = i;
    }

    public void setType(EventType eventType) {
        this.type = eventType;
    }

    public String toString() {
        return "\nCallEvent{Date=" + new Date(this.date).toString() + ", Direction=" + this.direction + ", Blocked=" + this.blocked + '}';
    }

    public boolean wasBlocked() {
        return this.blocked;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.date);
        parcel.writeParcelable(this.type, i);
        int i2 = -1;
        parcel.writeInt(this.blocked ? 1 : -1);
        if (this.identification) {
            i2 = 1;
        }
        parcel.writeInt(i2);
        parcel.writeParcelable(this.direction, i);
        parcel.writeInt(this.nativeId);
    }
}

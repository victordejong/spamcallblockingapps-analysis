package com.callapp.contacts.model.objectbox;

import io.objectbox.converter.PropertyConverter;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData.class */
public class CallReminderFrequentData {
    private long deleteTimeStamp;
    private FrequentType frequentType;
    private Long id;
    private long lastDeleteFromNotificationTimeStamp;
    private int missedCallType;
    private String phoneAsGlobal;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType.class */
    public enum FrequentType {
        ALWAYS("always"),
        SHOW_LESS("show_less"),
        DONT_SHOW("dont_show"),
        DELETE("delete");
        
        private String type;

        FrequentType(String str) {
            this.type = str;
        }

        public final String getType() {
            return this.type;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter.class */
    static class FrequentTypeConverter implements PropertyConverter<FrequentType, Integer> {
        public Integer convertToDatabaseValue(FrequentType frequentType) {
            if (frequentType == null) {
                return null;
            }
            return Integer.valueOf(frequentType.ordinal());
        }

        public FrequentType convertToEntityProperty(Integer num) {
            FrequentType[] values;
            if (num == null) {
                return null;
            }
            for (FrequentType frequentType : FrequentType.values()) {
                if (frequentType.ordinal() == num.intValue()) {
                    return frequentType;
                }
            }
            return FrequentType.ALWAYS;
        }
    }

    public CallReminderFrequentData() {
        this.frequentType = FrequentType.ALWAYS;
    }

    public CallReminderFrequentData(Long l, String str, FrequentType frequentType, int i, long j) {
        this.frequentType = FrequentType.ALWAYS;
        this.id = l;
        this.phoneAsGlobal = str;
        this.frequentType = frequentType;
        this.missedCallType = i;
        this.lastDeleteFromNotificationTimeStamp = j;
    }

    public CallReminderFrequentData(String str, FrequentType frequentType, int i) {
        this.frequentType = FrequentType.ALWAYS;
        this.phoneAsGlobal = str;
        this.frequentType = frequentType;
        this.missedCallType = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CallReminderFrequentData callReminderFrequentData = (CallReminderFrequentData) obj;
        return this.deleteTimeStamp == callReminderFrequentData.deleteTimeStamp && this.missedCallType == callReminderFrequentData.missedCallType && this.lastDeleteFromNotificationTimeStamp == callReminderFrequentData.lastDeleteFromNotificationTimeStamp && Objects.equals(this.id, callReminderFrequentData.id) && Objects.equals(this.phoneAsGlobal, callReminderFrequentData.phoneAsGlobal) && this.frequentType == callReminderFrequentData.frequentType;
    }

    public long getDeleteTimeStamp() {
        return this.deleteTimeStamp;
    }

    public FrequentType getFrequentType() {
        return this.frequentType;
    }

    public Long getId() {
        return this.id;
    }

    public long getLastDeleteFromNotificationTimeStamp() {
        return this.lastDeleteFromNotificationTimeStamp;
    }

    public int getMissedCallType() {
        return this.missedCallType;
    }

    public String getPhoneAsGlobal() {
        return this.phoneAsGlobal;
    }

    public int hashCode() {
        return Objects.hash(this.id, this.phoneAsGlobal, this.frequentType, Long.valueOf(this.deleteTimeStamp), Integer.valueOf(this.missedCallType), Long.valueOf(this.lastDeleteFromNotificationTimeStamp));
    }

    public void setDeleteTimeStamp(long j) {
        this.deleteTimeStamp = j;
    }

    public void setFrequentType(FrequentType frequentType) {
        this.frequentType = frequentType;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setLastDeleteFromNotificationTimeStamp(long j) {
        this.lastDeleteFromNotificationTimeStamp = j;
    }

    public void setMissedCallType(int i) {
        this.missedCallType = i;
    }

    public void setPhoneAsGlobal(String str) {
        this.phoneAsGlobal = str;
    }

    public String toString() {
        return "CallReminderFrequentData{id=" + this.id + ", phoneAsGlobal='" + this.phoneAsGlobal + "', frequentType=" + this.frequentType + ", deleteTimeStamp=" + this.deleteTimeStamp + ", missedCallType=" + this.missedCallType + ", lastDeleteFromNotificationTimeStamp=" + this.lastDeleteFromNotificationTimeStamp + '}';
    }
}

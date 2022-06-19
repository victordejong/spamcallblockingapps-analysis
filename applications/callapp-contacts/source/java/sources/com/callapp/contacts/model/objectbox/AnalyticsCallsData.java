package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.framework.phone.Phone;
import io.objectbox.converter.PropertyConverter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData.class */
public class AnalyticsCallsData {
    private CallType callType;
    private long date;
    private DayType dayType;
    private long duration;

    /* renamed from: id */
    protected Long f26747id;
    private boolean isBlock;
    private boolean isConference;
    private boolean isExclude;
    private boolean isIdentified;
    private boolean isIncognito;
    private boolean isInternational;
    private boolean isPrivate;
    private boolean isSpam;
    private String phoneAsGlobal;
    private SimManager.SimId simId;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter.class */
    static class CallNameConverter implements PropertyConverter<CallType, Integer> {
        public Integer convertToDatabaseValue(CallType callType) {
            if (callType == null) {
                return null;
            }
            return Integer.valueOf(callType.ordinal());
        }

        public CallType convertToEntityProperty(Integer num) {
            CallType[] values;
            if (num == null) {
                return null;
            }
            for (CallType callType : CallType.values()) {
                if (callType.ordinal() == num.intValue()) {
                    return callType;
                }
            }
            return CallType.INCOMING;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType.class */
    public enum CallType {
        NOT_ANSWER("not_answer"),
        OUTGOING("outgoing"),
        INCOMING("incoming"),
        MISSED_CALL("missed_call");
        
        private String name;

        CallType(String str) {
            this.name = str;
        }

        public final String getName() {
            return this.name;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType.class */
    public enum DayType {
        DAY("day"),
        NIGHT("night");
        
        private String dayType;

        DayType(String str) {
            this.dayType = str;
        }

        public final String getDayType() {
            return this.dayType;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter.class */
    static class DayTypeConverter implements PropertyConverter<DayType, Integer> {
        public Integer convertToDatabaseValue(DayType dayType) {
            if (dayType == null) {
                return null;
            }
            return Integer.valueOf(dayType.ordinal());
        }

        public DayType convertToEntityProperty(Integer num) {
            DayType[] values;
            if (num == null) {
                return null;
            }
            for (DayType dayType : DayType.values()) {
                if (dayType.ordinal() == num.intValue()) {
                    return dayType;
                }
            }
            return DayType.DAY;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter.class */
    static class SimIdConverter implements PropertyConverter<SimManager.SimId, Integer> {
        public Integer convertToDatabaseValue(SimManager.SimId simId) {
            if (simId == null) {
                return null;
            }
            return Integer.valueOf(simId.ordinal());
        }

        public SimManager.SimId convertToEntityProperty(Integer num) {
            SimManager.SimId[] values;
            if (num == null) {
                return null;
            }
            for (SimManager.SimId simId : SimManager.SimId.values()) {
                if (simId.ordinal() == num.intValue()) {
                    return simId;
                }
            }
            return SimManager.SimId.ASK;
        }
    }

    public AnalyticsCallsData(long j, CallType callType, DayType dayType, SimManager.SimId simId, Phone phone, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.date = j;
        this.callType = callType;
        this.dayType = dayType;
        this.simId = simId;
        this.phoneAsGlobal = phone.m26101a();
        this.duration = j2;
        this.isSpam = z;
        this.isBlock = z2;
        this.isPrivate = z3;
        this.isIncognito = z4;
        this.isConference = z5;
        this.isInternational = z6;
        this.isIdentified = z7;
        this.isExclude = z8;
    }

    public AnalyticsCallsData(Long l, long j, CallType callType, DayType dayType, SimManager.SimId simId, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.f26747id = l;
        this.date = j;
        this.callType = callType;
        this.dayType = dayType;
        this.simId = simId;
        this.phoneAsGlobal = str;
        this.duration = j2;
        this.isSpam = z;
        this.isBlock = z2;
        this.isPrivate = z3;
        this.isIncognito = z4;
        this.isConference = z5;
        this.isInternational = z6;
        this.isIdentified = z7;
        this.isExclude = z8;
    }

    public CallType getCallType() {
        return this.callType;
    }

    public long getDate() {
        return this.date;
    }

    public DayType getDayType() {
        return this.dayType;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getPhoneAsGlobal() {
        return this.phoneAsGlobal;
    }

    public SimManager.SimId getSimId() {
        return this.simId;
    }

    public boolean isBlock() {
        return this.isBlock;
    }

    public boolean isConference() {
        return this.isConference;
    }

    public boolean isExclude() {
        return this.isExclude;
    }

    public boolean isIdentified() {
        return this.isIdentified;
    }

    public boolean isIncognito() {
        return this.isIncognito;
    }

    public boolean isInternational() {
        return this.isInternational;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public boolean isSpam() {
        return this.isSpam;
    }

    public void setBlock(boolean z) {
        this.isBlock = z;
    }

    public void setCallType(CallType callType) {
        this.callType = callType;
    }

    public void setConference(boolean z) {
        this.isConference = z;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDayType(DayType dayType) {
        this.dayType = dayType;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setExclude(boolean z) {
        this.isExclude = z;
    }

    public void setIdentified(boolean z) {
        this.isIdentified = z;
    }

    public void setIncognito(boolean z) {
        this.isIncognito = z;
    }

    public void setInternational(boolean z) {
        this.isInternational = z;
    }

    public void setPhoneAsGlobal(String str) {
        this.phoneAsGlobal = str;
    }

    public void setPrivate(boolean z) {
        this.isPrivate = z;
    }

    public void setSimId(SimManager.SimId simId) {
        this.simId = simId;
    }

    public void setSpam(boolean z) {
        this.isSpam = z;
    }

    public String toString() {
        return "AnalyticsCallsData{id=" + this.f26747id + ", date=" + this.date + ", callType=" + this.callType + ", dayType=" + this.dayType + ", simId=" + this.simId + ", phoneAsGlobal='" + this.phoneAsGlobal + "', duration=" + this.duration + ", isSpam=" + this.isSpam + ", isBlock=" + this.isBlock + ", isPrivate=" + this.isPrivate + ", isIncognito=" + this.isIncognito + ", isConference=" + this.isConference + ", isInternational=" + this.isInternational + ", isIdentified=" + this.isIdentified + ", isExclude=" + this.isExclude + '}';
    }
}

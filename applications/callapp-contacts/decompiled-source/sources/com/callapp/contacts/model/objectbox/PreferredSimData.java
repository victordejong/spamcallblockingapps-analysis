package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import io.objectbox.converter.PropertyConverter;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimData.class */
public class PreferredSimData implements MonitoredDeviceID, Serializable {
    protected Long id;
    private String phoneOrIdKey;
    private SimManager.SimId simId;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter.class */
    static class SimTypeConverter implements PropertyConverter<SimManager.SimId, Integer> {
        public Integer convertToDatabaseValue(SimManager.SimId simId) {
            return Integer.valueOf(simId.simId);
        }

        public SimManager.SimId convertToEntityProperty(Integer num) {
            int intValue = num.intValue();
            return intValue != 0 ? intValue != 1 ? SimManager.SimId.ASK : SimManager.SimId.SIM_2 : SimManager.SimId.SIM_1;
        }
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.id;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public SimManager.SimId getSimId() {
        return this.simId;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setSimId(SimManager.SimId simId) {
        this.simId = simId;
    }

    public String toString() {
        return "PreferredSimData{id=" + this.id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', simId=" + this.simId + '}';
    }
}

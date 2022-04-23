package com.callapp.contacts.sync.model;

import com.callapp.contacts.model.objectbox.MonitoredDeviceID;
import com.callapp.framework.util.StringUtils;
import io.objectbox.BoxStore;
import io.objectbox.relation.ToMany;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerData.class */
public class SyncerData implements MonitoredDeviceID {
    transient BoxStore __boxStore;
    private Long id;
    private String phoneOrIdKey;
    private ToMany<SyncerDetails> syncerDetails = new ToMany<>(this, SyncerData_.syncerDetails);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SyncerData syncerData = (SyncerData) obj;
        if (Objects.equals(this.id, syncerData.id) && Objects.equals(this.phoneOrIdKey, syncerData.phoneOrIdKey)) {
            return Objects.equals(this.syncerDetails, syncerData.syncerDetails);
        }
        return false;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.id;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public long getSyncDate(String str) {
        Iterator<SyncerDetails> it2 = getSyncerDetails().iterator();
        while (it2.hasNext()) {
            SyncerDetails next = it2.next();
            if (StringUtils.b(next.getSyncerKeyName(), str)) {
                return next.getLastSyncDate();
            }
        }
        return 0L;
    }

    public ToMany<SyncerDetails> getSyncerDetails() {
        return this.syncerDetails;
    }

    public int hashCode() {
        Long l = this.id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.phoneOrIdKey;
        int hashCode2 = str != null ? str.hashCode() : 0;
        ToMany<SyncerDetails> toMany = this.syncerDetails;
        if (toMany != null) {
            i = toMany.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setSyncDate(String str, long j) {
        boolean z;
        ToMany<SyncerDetails> syncerDetails = getSyncerDetails();
        Iterator<SyncerDetails> it2 = syncerDetails.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            SyncerDetails next = it2.next();
            if (StringUtils.b(next.getSyncerKeyName(), str)) {
                z = true;
                next.setLastSyncDate(j);
                break;
            }
        }
        if (!z) {
            SyncerDetails syncerDetails2 = new SyncerDetails();
            syncerDetails2.setSyncerKeyName(str);
            syncerDetails2.setLastSyncDate(j);
            syncerDetails.add(syncerDetails2);
        }
    }

    public void setSyncerDetails(ToMany<SyncerDetails> toMany) {
        this.syncerDetails = toMany;
    }

    public String toString() {
        return "SyncerData{id=" + this.id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', syncerDetails=" + this.syncerDetails + '}';
    }
}

package com.callapp.contacts.sync.model;

import io.objectbox.BoxStore;
import io.objectbox.relation.ToOne;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetails.class */
public class SyncerDetails {
    transient BoxStore __boxStore;

    /* renamed from: id */
    protected Long f27588id;
    private long lastSyncDate;
    private ToOne<SyncerData> syncerData = new ToOne<>(this, SyncerDetails_.syncerData);
    private String syncerKeyName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SyncerDetails syncerDetails = (SyncerDetails) obj;
        if (this.lastSyncDate != syncerDetails.lastSyncDate || !Objects.equals(this.f27588id, syncerDetails.f27588id) || !Objects.equals(this.syncerKeyName, syncerDetails.syncerKeyName)) {
            return false;
        }
        return Objects.equals(this.syncerData, syncerDetails.syncerData);
    }

    public Long getId() {
        return this.f27588id;
    }

    public long getLastSyncDate() {
        return this.lastSyncDate;
    }

    public ToOne<SyncerData> getSyncerData() {
        return this.syncerData;
    }

    public String getSyncerKeyName() {
        return this.syncerKeyName;
    }

    public int hashCode() {
        Long l = this.f27588id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.syncerKeyName;
        int hashCode2 = str != null ? str.hashCode() : 0;
        long j = this.lastSyncDate;
        int i2 = (int) (j ^ (j >>> 32));
        ToOne<SyncerData> toOne = this.syncerData;
        if (toOne != null) {
            i = toOne.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + i;
    }

    public void setId(Long l) {
        this.f27588id = l;
    }

    public void setLastSyncDate(long j) {
        this.lastSyncDate = j;
    }

    public void setSyncerData(ToOne<SyncerData> toOne) {
        this.syncerData = toOne;
    }

    public void setSyncerKeyName(String str) {
        this.syncerKeyName = str;
    }

    public String toString() {
        return "SyncerDetails{id=" + this.f27588id + ", syncerKeyName='" + this.syncerKeyName + "', lastSyncDate=" + this.lastSyncDate + ", syncerData=" + this.syncerData + '}';
    }
}

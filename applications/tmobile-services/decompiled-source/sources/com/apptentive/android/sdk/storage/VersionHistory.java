package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/VersionHistory.class */
public class VersionHistory implements Saveable {
    private static final long serialVersionUID = 1;
    private transient DataChangedListener listener;
    private List<VersionHistoryItem> versionHistoryItems = new ArrayList();

    public void clear() {
        synchronized (this) {
            this.versionHistoryItems.clear();
            notifyDataChanged();
        }
    }

    public VersionHistoryItem getLastVersionSeen() {
        if (this.versionHistoryItems.isEmpty()) {
            return null;
        }
        List<VersionHistoryItem> list = this.versionHistoryItems;
        return list.get(list.size() - 1);
    }

    public Apptentive.DateTime getTimeAtInstallForVersionCode(int i) {
        for (VersionHistoryItem versionHistoryItem : this.versionHistoryItems) {
            if (versionHistoryItem.getVersionCode() == i) {
                return new Apptentive.DateTime(versionHistoryItem.getTimestamp());
            }
        }
        return new Apptentive.DateTime(Util.currentTimeSeconds());
    }

    public Apptentive.DateTime getTimeAtInstallForVersionName(String str) {
        for (VersionHistoryItem versionHistoryItem : this.versionHistoryItems) {
            Apptentive.Version version = new Apptentive.Version();
            Apptentive.Version version2 = new Apptentive.Version();
            version.setVersion(versionHistoryItem.getVersionName());
            version2.setVersion(str);
            if (version.equals(version2)) {
                return new Apptentive.DateTime(versionHistoryItem.getTimestamp());
            }
        }
        return new Apptentive.DateTime(Util.currentTimeSeconds());
    }

    public Apptentive.DateTime getTimeAtInstallTotal() {
        return this.versionHistoryItems.size() > 0 ? new Apptentive.DateTime(this.versionHistoryItems.get(0).getTimestamp()) : new Apptentive.DateTime(Util.currentTimeSeconds());
    }

    public boolean isUpdateForVersionCode() {
        HashSet hashSet = new HashSet();
        for (VersionHistoryItem versionHistoryItem : this.versionHistoryItems) {
            hashSet.add(Integer.valueOf(versionHistoryItem.getVersionCode()));
        }
        boolean z = true;
        if (hashSet.size() <= 1) {
            z = false;
        }
        return z;
    }

    public boolean isUpdateForVersionName() {
        HashSet hashSet = new HashSet();
        for (VersionHistoryItem versionHistoryItem : this.versionHistoryItems) {
            hashSet.add(versionHistoryItem.getVersionName());
        }
        boolean z = true;
        if (hashSet.size() <= 1) {
            z = false;
        }
        return z;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        DataChangedListener dataChangedListener = this.listener;
        if (dataChangedListener != null) {
            dataChangedListener.onDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
    }

    public void updateVersionHistory(double d, Integer num, String str) {
        boolean z;
        Iterator<VersionHistoryItem> it = this.versionHistoryItems.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            VersionHistoryItem next = it.next();
            if (next.getVersionCode() == num.intValue() && next.getVersionName().equals(str)) {
                z = true;
                break;
            }
        }
        if (!z) {
            this.versionHistoryItems.add(new VersionHistoryItem(d, num.intValue(), str));
            notifyDataChanged();
        }
    }
}

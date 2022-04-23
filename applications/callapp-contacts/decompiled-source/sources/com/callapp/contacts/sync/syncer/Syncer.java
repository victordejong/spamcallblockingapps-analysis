package com.callapp.contacts.sync.syncer;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.model.SyncContext;
import com.callapp.contacts.sync.model.SyncManager;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/Syncer.class */
public abstract class Syncer {
    public SyncContext syncContext;
    private boolean syncEnabled = true;
    public LongPref lastSyncPref = new LongPref(getName() + SyncManager.LAST_SYNC, 0L);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean canMatchProfileToContact(RemoteAccountHelper remoteAccountHelper, ContactData contactData, String str) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        Set<String> negatives = contactData.getNegatives(remoteAccountHelper.getHelperSocialNetDBId());
        return !negatives.contains(str) && !negatives.contains("DONTHAVE");
    }

    public void destroy() {
        setSyncEnabled(false);
        this.syncContext = null;
    }

    public String getName() {
        return getClass().getSimpleName();
    }

    public long getSyncPeriodMillis() {
        return Constants.WEEK_IN_MILLIS;
    }

    public void init(SyncContext syncContext) {
        this.syncContext = syncContext;
        setSyncEnabled(true);
    }

    public boolean isSyncEnabled() {
        return this.syncEnabled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean markProfileAsSureOrUnsure(RemoteAccountHelper remoteAccountHelper, ContactData contactData, String str, boolean z) {
        if (!canMatchProfileToContact(remoteAccountHelper, contactData, str)) {
            return false;
        }
        remoteAccountHelper.a(contactData.getDeviceId(), (String) null, str, z);
        remoteAccountHelper.a(contactData, new JSONSocialNetworkID(str, z));
        return true;
    }

    public boolean needsDeviceData() {
        return true;
    }

    public abstract void onSyncContact(SyncerContext syncerContext);

    public boolean onSyncEnd() {
        if (!isSyncEnabled()) {
            return false;
        }
        this.lastSyncPref.set(Long.valueOf(System.currentTimeMillis()));
        return true;
    }

    public void onSyncStart() {
        if (shouldSync()) {
            new LongPref(getName() + SyncManager.START_SYNC).set(Long.valueOf(this.syncContext.startDate));
        }
    }

    protected void sendMatchingAnalytics(String str, String str2, long j) {
        AnalyticsManager.get().a(Constants.SYNCERS, str, str2, j, new String[0]);
    }

    public void setSyncEnabled(boolean z) {
        this.syncEnabled = z;
    }

    public boolean shouldSync() {
        return this.syncContext.startDate - getSyncPeriodMillis() >= this.lastSyncPref.get().longValue();
    }

    public boolean shouldSyncContact(ContactData contactData) {
        if (!isSyncEnabled()) {
            return false;
        }
        return this.syncContext.startDate - getSyncPeriodMillis() >= this.syncContext.getSyncData(contactData).getSyncDate(getName());
    }
}

package com.callapp.contacts.sync.model;

import android.util.Pair;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.model.contact.ContactData;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerContext.class */
public class SyncerContext {
    public final ContactData contact;
    public boolean fullySynced;
    public boolean hasPhoto;
    public Map<String, Integer> singleNameCount;
    public Pair<Integer, JSONSocialNetworkID> social;

    public SyncerContext(ContactData contactData) {
        this.contact = contactData;
    }

    public void markFullySynced() {
        this.fullySynced = true;
    }
}

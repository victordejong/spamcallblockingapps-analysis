package com.callapp.contacts.loader.im;

import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/SkypeLoader.class */
public class SkypeLoader extends BaseChatLoader {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/SkypeLoader$SkypeChatData.class */
    public static final class SkypeChatData extends ChatData {
        private static final long serialVersionUID = 4377073996697817108L;
        private String fullName;

        public SkypeChatData(JSONIMaddress jSONIMaddress, boolean z, long j) {
            super(jSONIMaddress);
        }

        @Override // com.callapp.contacts.model.contact.ChatData
        public final int fetchPresence() {
            return -1;
        }

        public final String getFullName() {
            return this.fullName;
        }

        public final void setFullName(String str) {
            this.fullName = str;
        }
    }

    public static boolean isSkypeInstalled() {
        return Activities.a(Constants.SKYPE_INTENT_COMPONENT_NAME);
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected final ChatData a(JSONIMaddress jSONIMaddress, ContactData contactData) {
        return new SkypeChatData(jSONIMaddress, contactData.isContactInDevice(), contactData.getDeviceId());
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected final Collection<? extends ChatData> a(ContactData contactData) {
        return contactData.getSkypeData();
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader, com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        super.a(loadContext);
        ContactData contactData = loadContext.f14535a;
        if (loadContext.f14537c != null && CollectionUtils.a((Set) loadContext.f14536b, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            String str = null;
            if (contactData.isContactInDevice()) {
                str = ContactUtils.c(contactData.getDeviceId());
            }
            boolean z = false;
            boolean z2 = false;
            if (StringUtils.b((CharSequence) str)) {
                Collection<SkypeChatData> skypeData = contactData.getSkypeData();
                z2 = false;
                if (CollectionUtils.b(skypeData)) {
                    Iterator<SkypeChatData> it2 = skypeData.iterator();
                    while (true) {
                        z2 = z;
                        if (!it2.hasNext()) {
                            break;
                        }
                        SkypeChatData next = it2.next();
                        if (!StringUtils.b(next.getFullName(), str)) {
                            next.setFullName(str);
                            z = true;
                        }
                    }
                }
            }
            if (z2) {
                contactData.updateFullName();
                contactData.updateNames();
            }
        }
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected final void a(ContactData contactData, Collection<? extends ChatData> collection) {
        contactData.setSkypeData(collection);
        contactData.updateSkypeData();
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected ContactField getChatField() {
        return ContactField.skype;
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected String[] getEmailSuffixes() {
        return null;
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.imAddresses, ContactField.deviceId);
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected int getProtocolId() {
        return 3;
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected boolean isAppInstalled() {
        return isSkypeInstalled();
    }
}

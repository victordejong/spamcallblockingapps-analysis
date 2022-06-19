package com.callapp.contacts.loader.p238im;

import android.content.Intent;
import android.net.Uri;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import java.util.Collection;
/* renamed from: com.callapp.contacts.loader.im.YahooLoader */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/YahooLoader.class */
public class YahooLoader extends BaseChatLoader {

    /* renamed from: a */
    public static final String[] f25517a = {"@yahoo.com", "@ymail.com", "@rocketmail.com"};

    /* renamed from: com.callapp.contacts.loader.im.YahooLoader$YahooChatData */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/YahooLoader$YahooChatData.class */
    public static final class YahooChatData extends ChatData {
        private static final long serialVersionUID = 1021338097743987697L;

        public YahooChatData(JSONIMaddress jSONIMaddress) {
            super(jSONIMaddress);
        }

        @Override // com.callapp.contacts.model.contact.ChatData
        public final int fetchPresence() {
            return -1;
        }
    }

    public static boolean isYahooInstalled() {
        return Activities.m27672a(new Intent("android.intent.action.SENDTO", new Uri.Builder().scheme("imto").authority("yahoo").appendPath("test").build()));
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    /* renamed from: a */
    protected final ChatData mo28797a(JSONIMaddress jSONIMaddress, ContactData contactData) {
        return new YahooChatData(jSONIMaddress);
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    /* renamed from: a */
    protected final Collection<ChatData> mo28796a(ContactData contactData) {
        return contactData.getYahooData();
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    /* renamed from: a */
    protected final void mo28795a(ContactData contactData, Collection<? extends ChatData> collection) {
        contactData.setYahooData(collection);
        contactData.updateYahooData();
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    protected ContactField getChatField() {
        return ContactField.yahoo;
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    protected String[] getEmailSuffixes() {
        return f25517a;
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    protected int getProtocolId() {
        return 2;
    }

    @Override // com.callapp.contacts.loader.p238im.BaseChatLoader
    protected boolean isAppInstalled() {
        return isYahooInstalled();
    }
}

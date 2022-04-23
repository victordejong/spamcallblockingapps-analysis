package com.callapp.contacts.loader.im;

import android.content.Intent;
import android.net.Uri;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/YahooLoader.class */
public class YahooLoader extends BaseChatLoader {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f14722a = {"@yahoo.com", "@ymail.com", "@rocketmail.com"};

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
        return Activities.a(new Intent("android.intent.action.SENDTO", new Uri.Builder().scheme("imto").authority("yahoo").appendPath("test").build()));
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected final ChatData a(JSONIMaddress jSONIMaddress, ContactData contactData) {
        return new YahooChatData(jSONIMaddress);
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected final Collection<ChatData> a(ContactData contactData) {
        return contactData.getYahooData();
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected final void a(ContactData contactData, Collection<? extends ChatData> collection) {
        contactData.setYahooData(collection);
        contactData.updateYahooData();
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected ContactField getChatField() {
        return ContactField.yahoo;
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected String[] getEmailSuffixes() {
        return f14722a;
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected int getProtocolId() {
        return 2;
    }

    @Override // com.callapp.contacts.loader.im.BaseChatLoader
    protected boolean isAppInstalled() {
        return isYahooInstalled();
    }
}

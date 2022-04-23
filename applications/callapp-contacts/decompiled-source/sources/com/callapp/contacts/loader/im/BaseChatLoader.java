package com.callapp.contacts.loader.im;

import android.app.Activity;
import android.content.Context;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.util.Objects;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ChatData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/BaseChatLoader.class */
public abstract class BaseChatLoader extends SimpleContactLoader {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/BaseChatLoader$ChatStarter.class */
    public interface ChatStarter {
        void a(Context context, String str);
    }

    public static boolean a(final Context context, Collection<JSONIMaddress> collection, final ChatStarter chatStarter) {
        if (!CollectionUtils.b(collection)) {
            return false;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (JSONIMaddress jSONIMaddress : collection) {
            String iMAddress = jSONIMaddress.getIMAddress();
            if (StringUtils.b((CharSequence) iMAddress)) {
                hashSet.add(iMAddress);
                arrayList.add(new AdapterText.ItemText(iMAddress, i));
                i++;
            }
        }
        if (hashSet.size() == 1) {
            chatStarter.a(context, (String) hashSet.iterator().next());
            return true;
        } else if (!CollectionUtils.b(hashSet)) {
            return false;
        } else {
            final String[] strArr = new String[hashSet.size()];
            hashSet.toArray(strArr);
            final DialogList dialogList = new DialogList("");
            AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
            adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.loader.im.BaseChatLoader.1
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public final void onRowClicked(int i2) {
                    AndroidUtils.a((Activity) context);
                    chatStarter.a(context, strArr[i2]);
                    dialogList.dismiss();
                }
            });
            dialogList.setAdapter(adapterText);
            PopupManager.get().a(context, dialogList);
            return true;
        }
    }

    protected abstract ChatData a(JSONIMaddress jSONIMaddress, ContactData contactData);

    protected abstract Collection<? extends ChatData> a(ContactData contactData);

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public void a(LoadContext loadContext) {
        if (loadContext.f14536b.contains(getChatField())) {
            ContactData contactData = loadContext.f14535a;
            Collection<? extends ChatData> a2 = a(contactData);
            ArrayList<ChatData> arrayList = null;
            if (isAppInstalled()) {
                Collection<JSONIMaddress> a3 = ContactUtils.a(contactData, getProtocolId(), getEmailSuffixes());
                if (!CollectionUtils.a(a3)) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<JSONIMaddress> it2 = a3.iterator();
                    while (true) {
                        arrayList = arrayList2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        arrayList2.add(a(it2.next(), contactData));
                    }
                }
            }
            if (!Objects.a(a2, arrayList)) {
                a(contactData, arrayList);
                if (arrayList != null) {
                    for (ChatData chatData : arrayList) {
                        chatData.getPresence();
                    }
                }
            }
        }
    }

    protected abstract void a(ContactData contactData, Collection<? extends ChatData> collection);

    protected abstract ContactField getChatField();

    protected abstract String[] getEmailSuffixes();

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.imAddresses, ContactField.emails);
    }

    protected abstract int getProtocolId();

    protected abstract boolean isAppInstalled();
}

package com.callapp.contacts.loader.p238im;

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
/* renamed from: com.callapp.contacts.loader.im.BaseChatLoader */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/BaseChatLoader.class */
public abstract class BaseChatLoader extends SimpleContactLoader {

    /* renamed from: com.callapp.contacts.loader.im.BaseChatLoader$ChatStarter */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/im/BaseChatLoader$ChatStarter.class */
    public interface ChatStarter {
        /* renamed from: a */
        void mo28798a(Context context, String str);
    }

    /* renamed from: a */
    public static boolean m28799a(final Context context, Collection<JSONIMaddress> collection, final ChatStarter chatStarter) {
        if (CollectionUtils.m26068b(collection)) {
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (JSONIMaddress jSONIMaddress : collection) {
                String iMAddress = jSONIMaddress.getIMAddress();
                if (StringUtils.m26045b((CharSequence) iMAddress)) {
                    hashSet.add(iMAddress);
                    arrayList.add(new AdapterText.ItemText(iMAddress, i));
                    i++;
                }
            }
            if (hashSet.size() == 1) {
                chatStarter.mo28798a(context, (String) hashSet.iterator().next());
                return true;
            } else if (!CollectionUtils.m26068b(hashSet)) {
                return false;
            } else {
                final String[] strArr = new String[hashSet.size()];
                hashSet.toArray(strArr);
                final DialogList dialogList = new DialogList("");
                AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
                adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.loader.im.BaseChatLoader.1
                    @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                    public final void onRowClicked(int i2) {
                        AndroidUtils.m27635a((Activity) context);
                        chatStarter.mo28798a(context, strArr[i2]);
                        dialogList.dismiss();
                    }
                });
                dialogList.setAdapter(adapterText);
                PopupManager.get().m28209a(context, dialogList);
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    protected abstract ChatData mo28797a(JSONIMaddress jSONIMaddress, ContactData contactData);

    /* renamed from: a */
    protected abstract Collection<? extends ChatData> mo28796a(ContactData contactData);

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public void mo27726a(LoadContext loadContext) {
        if (loadContext.f25323b.contains(getChatField())) {
            ContactData contactData = loadContext.f25322a;
            Collection<? extends ChatData> mo28796a = mo28796a(contactData);
            ArrayList<ChatData> arrayList = null;
            if (isAppInstalled()) {
                Collection<JSONIMaddress> m28329a = ContactUtils.m28329a(contactData, getProtocolId(), getEmailSuffixes());
                if (!CollectionUtils.m26076a(m28329a)) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<JSONIMaddress> it2 = m28329a.iterator();
                    while (true) {
                        arrayList = arrayList2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        arrayList2.add(mo28797a(it2.next(), contactData));
                    }
                }
            }
            if (Objects.m31915a(mo28796a, arrayList)) {
                return;
            }
            mo28795a(contactData, arrayList);
            if (arrayList == null) {
                return;
            }
            for (ChatData chatData : arrayList) {
                chatData.getPresence();
            }
        }
    }

    /* renamed from: a */
    protected abstract void mo28795a(ContactData contactData, Collection<? extends ChatData> collection);

    protected abstract ContactField getChatField();

    protected abstract String[] getEmailSuffixes();

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.imAddresses, ContactField.emails);
    }

    protected abstract int getProtocolId();

    protected abstract boolean isAppInstalled();
}

package com.callapp.contacts.loader;

import android.util.SparseArray;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.SuggestContactManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.SuggestionData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/SuggestionLoader.class */
public class SuggestionLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        HashSet hashSet;
        ContactData contactData = loadContext.f25322a;
        synchronized (contactData.getLock(SuggestionLoader.class)) {
            SuggestionData suggestionData = contactData.getSuggestionData();
            SuggestionData suggestionData2 = suggestionData;
            if (suggestionData == null) {
                SuggestionData suggestionData3 = new SuggestionData();
                SparseArray<String> m28474a = SuggestContactManager.m28474a(contactData.getDeviceId());
                Integer[] numArr = ApiConstants.f19116c;
                int length = numArr.length;
                int i = 0;
                while (true) {
                    suggestionData2 = suggestionData3;
                    if (i >= length) {
                        break;
                    }
                    int intValue = numArr[i].intValue();
                    String str = m28474a.get(intValue);
                    if (StringUtils.m26045b((CharSequence) str)) {
                        suggestionData3.setSocialIdByNetId(new JSONSocialNetworkID(str, false), intValue);
                    }
                    i++;
                }
            }
            Set<ContactField> set = loadContext.f25323b;
            ContactData contactData2 = loadContext.f25322a;
            if (!Objects.m31915a(suggestionData2, contactData2.getSuggestionData()) && set.contains(ContactField.suggestions)) {
                contactData2.setSuggestionData(suggestionData2);
                ContactDataUtils.updateAllSocialIdsFromFields(contactData2, set, loadContext, this.f25279d);
            }
            if (suggestionData2 == null) {
                hashSet = new HashSet();
            } else {
                HashSet hashSet2 = new HashSet();
                if (suggestionData2.getFacebookId() != null) {
                    hashSet2.add(1);
                }
                if (suggestionData2.getTwitterScreenName() != null) {
                    hashSet2.add(4);
                }
                if (suggestionData2.getFoursquareId() != null) {
                    hashSet2.add(6);
                }
                if (suggestionData2.getInstagramId() != null) {
                    hashSet2.add(7);
                }
                if (suggestionData2.getPinterestId() != null) {
                    hashSet2.add(9);
                }
                hashSet = hashSet2;
                if (suggestionData2.getVkId() != null) {
                    hashSet2.add(10);
                    hashSet = hashSet2;
                }
            }
            if (set.contains(ContactField.hasSuggestions) && !CollectionUtils.m26074a((Collection) hashSet, (Collection) contactData2.getHasSuggestions())) {
                contactData2.setHasSuggestions(hashSet);
                contactData2.updateHasSuggestion();
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}

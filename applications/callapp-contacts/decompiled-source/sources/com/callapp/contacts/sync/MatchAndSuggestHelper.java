package com.callapp.contacts.sync;

import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.SuggestContactManager;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/MatchAndSuggestHelper.class */
public class MatchAndSuggestHelper {
    public static void a(int i, ContactData contactData) {
        String str;
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(i);
        if (remoteAccountHelper != null) {
            JSONSocialNetworkID a2 = remoteAccountHelper.a(contactData);
            if (a2 == null || !a2.isSure()) {
                if (a2 != null) {
                    str = a2.getId();
                } else {
                    SocialSearchResults a3 = SocialNetworksSearchUtil.a(contactData, i);
                    if (a3 == null || a3.id == null) {
                        str = null;
                        if (a3 != null) {
                            str = null;
                            if (CollectionUtils.b(a3.results)) {
                                ArrayList arrayList = new ArrayList();
                                for (PersonData personData : a3.results) {
                                    if (StringUtils.b((Object) a3.term, (Object) personData.getName())) {
                                        arrayList.add(personData);
                                    }
                                }
                                str = null;
                                if (arrayList.size() == 1) {
                                    str = ((PersonData) arrayList.get(0)).getId();
                                }
                            }
                        }
                    } else {
                        str = a3.id.getId();
                    }
                }
                if (StringUtils.b((CharSequence) str)) {
                    try {
                        a(i, contactData, str, remoteAccountHelper.f(str));
                    } catch (QuotaReachedException | UserNotFoundException e) {
                        CLog.c(MatchAndSuggestHelper.class, e.getMessage());
                    }
                }
            }
        }
    }

    public static void a(int i, ContactData contactData, String str, String str2) {
        if (a(i, contactData, str)) {
            SuggestContactManager.a(contactData.getDeviceId(), i, str, str2, contactData.getFullName());
        }
    }

    public static void a(ContactData contactData) {
        for (Integer num : ApiConstants.f10379c) {
            a(num.intValue(), contactData);
        }
    }

    public static boolean a(int i, ContactData contactData, String str) {
        if (!StringUtils.b((CharSequence) str)) {
            return false;
        }
        Set<String> set = UserPositiveNegativeManager.b(contactData.getDeviceId(), contactData.getPhone()).get(i);
        return set == null || !set.contains(str);
    }
}

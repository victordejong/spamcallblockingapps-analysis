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
    /* renamed from: a */
    public static void m27776a(int i, ContactData contactData) {
        String str;
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(i);
        if (remoteAccountHelper != null) {
            JSONSocialNetworkID mo29108a = remoteAccountHelper.mo29108a(contactData);
            if (mo29108a != null && mo29108a.isSure()) {
                return;
            }
            if (mo29108a != null) {
                str = mo29108a.getId();
            } else {
                SocialSearchResults m29232a = SocialNetworksSearchUtil.m29232a(contactData, i);
                if (m29232a == null || m29232a.f26742id == null) {
                    str = null;
                    if (m29232a != null) {
                        str = null;
                        if (CollectionUtils.m26068b(m29232a.results)) {
                            ArrayList arrayList = new ArrayList();
                            for (PersonData personData : m29232a.results) {
                                if (StringUtils.m26044b((Object) m29232a.term, (Object) personData.getName())) {
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
                    str = m29232a.f26742id.getId();
                }
            }
            if (!StringUtils.m26045b((CharSequence) str)) {
                return;
            }
            try {
                m27774a(i, contactData, str, remoteAccountHelper.mo29100f(str));
            } catch (QuotaReachedException | UserNotFoundException e) {
                CLog.m27588c(MatchAndSuggestHelper.class, e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public static void m27774a(int i, ContactData contactData, String str, String str2) {
        if (m27775a(i, contactData, str)) {
            SuggestContactManager.m28472a(contactData.getDeviceId(), i, str, str2, contactData.getFullName());
        }
    }

    /* renamed from: a */
    public static void m27773a(ContactData contactData) {
        for (Integer num : ApiConstants.f19116c) {
            m27776a(num.intValue(), contactData);
        }
    }

    /* renamed from: a */
    public static boolean m27775a(int i, ContactData contactData, String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            Set<String> set = UserPositiveNegativeManager.m28879b(contactData.getDeviceId(), contactData.getPhone()).get(i);
            return set == null || !set.contains(str);
        }
        return false;
    }
}

package com.callapp.contacts.manager;

import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/RestrictionManager.class */
public class RestrictionManager {

    /* renamed from: a */
    private static final Object f25770a = new Object();

    /* renamed from: b */
    private static Set<String> f25771b;

    /* renamed from: a */
    public static boolean m28498a(ContactData contactData) {
        ExtractedInfo phoneOrigin;
        if (!Prefs.f26657n.get().booleanValue() && (phoneOrigin = contactData.getPhoneOrigin()) != null) {
            if ((phoneOrigin.comType != IMDataExtractionUtils.ComType.SEARCH && phoneOrigin.comType != IMDataExtractionUtils.ComType.CLIPBOARD) || CollectionUtils.m26073a(contactData.getPastChangedFields(), ContactField.call)) {
                return true;
            }
            List<Phone> phonesList = contactData.getPhonesList();
            if (!CollectionUtils.m26068b(phonesList)) {
                return true;
            }
            for (Phone phone : phonesList) {
                if (m28497a(phone)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m28497a(Phone phone) {
        synchronized (f25770a) {
            if (f25771b == null) {
                f25771b = new HashSet();
                String m28703a = CallAppRemoteConfigManager.get().m28703a("restrictedCountries");
                if (StringUtils.m26045b((CharSequence) m28703a)) {
                    String[] split = m28703a.toLowerCase().split(",");
                    if (CollectionUtils.m26066b(split)) {
                        f25771b.addAll(Arrays.asList(split));
                    }
                }
            }
        }
        return f25771b.contains(phone.getRegionCode().toLowerCase());
    }
}

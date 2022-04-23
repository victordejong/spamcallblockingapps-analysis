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

    /* renamed from: a  reason: collision with root package name */
    private static final Object f14929a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static Set<String> f14930b;

    public static boolean a(ContactData contactData) {
        ExtractedInfo phoneOrigin;
        if (Prefs.n.get().booleanValue() || (phoneOrigin = contactData.getPhoneOrigin()) == null) {
            return true;
        }
        if (!(phoneOrigin.comType == IMDataExtractionUtils.ComType.SEARCH || phoneOrigin.comType == IMDataExtractionUtils.ComType.CLIPBOARD) || CollectionUtils.a(contactData.getPastChangedFields(), ContactField.call)) {
            return true;
        }
        List<Phone> phonesList = contactData.getPhonesList();
        if (!CollectionUtils.b(phonesList)) {
            return true;
        }
        for (Phone phone : phonesList) {
            if (a(phone)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Phone phone) {
        synchronized (f14929a) {
            if (f14930b == null) {
                f14930b = new HashSet();
                String a2 = CallAppRemoteConfigManager.get().a("restrictedCountries");
                if (StringUtils.b((CharSequence) a2)) {
                    String[] split = a2.toLowerCase().split(",");
                    if (CollectionUtils.b(split)) {
                        f14930b.addAll(Arrays.asList(split));
                    }
                }
            }
        }
        return f14930b.contains(phone.getRegionCode().toLowerCase());
    }
}

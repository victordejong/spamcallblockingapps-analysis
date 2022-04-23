package com.callapp.contacts.loader.device;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.util.Objects;
import com.callapp.common.util.PhoneNumberOfflineGeocoderWrapper;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.AreaCodesDB;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.k;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/NumberGeocodingLoader.class */
public class NumberGeocodingLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        if (loadContext.f14536b.contains(ContactField.addresses)) {
            PhoneNumberOfflineGeocoderWrapper instance = PhoneNumberOfflineGeocoderWrapper.getInstance();
            ContactData contactData = loadContext.f14535a;
            String countryIso = PhoneManager.get().getCountryIso();
            k.a phoneNumber = contactData.getPhone().getPhoneNumber();
            Locale locale = Locale.getDefault();
            String b2 = instance.b(phoneNumber, locale);
            boolean z = PhoneNumberUtil.getInstance().getCountryCodeForRegion(countryIso) == phoneNumber.f32890a;
            JSONAddress jSONAddress = null;
            String str = StringUtils.b((CharSequence) b2) ? b2 : null;
            String str2 = str;
            if (!z) {
                String a2 = instance.a(phoneNumber, locale);
                str2 = str;
                if (StringUtils.b((CharSequence) a2)) {
                    if (StringUtils.a((CharSequence) b2)) {
                        str2 = a2;
                    } else {
                        str2 = str + ", " + a2;
                    }
                }
            }
            String str3 = str2;
            if (contactData.getPhone().getCountryCode() == 1) {
                str3 = str2;
                if (StringUtils.a(str2, ",") < 2) {
                    String a3 = AreaCodesDB.get().a(contactData.getPhone());
                    str3 = str2;
                    if (StringUtils.b((CharSequence) a3)) {
                        str3 = a3;
                    }
                }
            }
            if (StringUtils.b((CharSequence) str3)) {
                jSONAddress = new JSONAddress(str3);
            }
            if (!Objects.a(contactData.getNumberGeocodingDescription(), jSONAddress)) {
                contactData.setNumberGeocodingDescription(jSONAddress);
                contactData.updateAddresses();
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}

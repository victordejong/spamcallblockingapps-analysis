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
import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/NumberGeocodingLoader.class */
public class NumberGeocodingLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        if (loadContext.f25323b.contains(ContactField.addresses)) {
            PhoneNumberOfflineGeocoderWrapper phoneNumberOfflineGeocoderWrapper = PhoneNumberOfflineGeocoderWrapper.getInstance();
            ContactData contactData = loadContext.f25322a;
            String countryIso = PhoneManager.get().getCountryIso();
            C16136k.C16137a phoneNumber = contactData.getPhone().getPhoneNumber();
            Locale locale = Locale.getDefault();
            String m31912b = phoneNumberOfflineGeocoderWrapper.m31912b(phoneNumber, locale);
            boolean z = PhoneNumberUtil.getInstance().getCountryCodeForRegion(countryIso) == phoneNumber.f57029a;
            String str = StringUtils.m26045b((CharSequence) m31912b) ? m31912b : null;
            String str2 = str;
            if (!z) {
                String m31913a = phoneNumberOfflineGeocoderWrapper.m31913a(phoneNumber, locale);
                str2 = str;
                if (StringUtils.m26045b((CharSequence) m31913a)) {
                    if (StringUtils.m26059a((CharSequence) m31912b)) {
                        str2 = m31913a;
                    } else {
                        str2 = str + ", " + m31913a;
                    }
                }
            }
            String str3 = str2;
            if (contactData.getPhone().getCountryCode() == 1) {
                str3 = str2;
                if (StringUtils.m26053a(str2, ",") < 2) {
                    String m28761a = AreaCodesDB.get().m28761a(contactData.getPhone());
                    str3 = str2;
                    if (StringUtils.m26045b((CharSequence) m28761a)) {
                        str3 = m28761a;
                    }
                }
            }
            JSONAddress jSONAddress = null;
            if (StringUtils.m26045b((CharSequence) str3)) {
                jSONAddress = new JSONAddress(str3);
            }
            if (Objects.m31915a(contactData.getNumberGeocodingDescription(), jSONAddress)) {
                return;
            }
            contactData.setNumberGeocodingDescription(jSONAddress);
            contactData.updateAddresses();
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}

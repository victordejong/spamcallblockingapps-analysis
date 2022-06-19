package com.callapp.contacts.activity.setup;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.provider.ContactsContract;
import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor.class */
public class PhoneAndCountryDeviceExtractor {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry.class */
    public static class ExtractedCountry implements Comparable<ExtractedCountry> {

        /* renamed from: a */
        private String f24412a;

        /* renamed from: b */
        private boolean f24413b;

        public ExtractedCountry(String str, boolean z) {
            this.f24412a = str;
            this.f24413b = z;
        }

        @Override // java.lang.Comparable
        public /* synthetic */ int compareTo(ExtractedCountry extractedCountry) {
            ExtractedCountry extractedCountry2 = extractedCountry;
            if (this.f24413b) {
                return -1;
            }
            return extractedCountry2.isReliable() ? 1 : 0;
        }

        public String getCountryISO() {
            return this.f24412a;
        }

        public boolean isReliable() {
            return this.f24413b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone.class */
    public static class ExtractedPhone implements Comparable<ExtractedPhone> {

        /* renamed from: a */
        private final String f24414a;

        /* renamed from: b */
        private final String f24415b;

        /* renamed from: c */
        private final ExtractedPhoneSourcePriority f24416c;

        /* renamed from: d */
        private boolean f24417d;

        public ExtractedPhone(String str, ExtractedPhoneSourcePriority extractedPhoneSourcePriority, String str2) {
            this(str, extractedPhoneSourcePriority, false, str2);
        }

        public ExtractedPhone(String str, ExtractedPhoneSourcePriority extractedPhoneSourcePriority, boolean z, String str2) {
            this.f24417d = z;
            this.f24414a = str;
            this.f24416c = extractedPhoneSourcePriority;
            this.f24415b = str2;
        }

        @Override // java.lang.Comparable
        public /* synthetic */ int compareTo(ExtractedPhone extractedPhone) {
            ExtractedPhone extractedPhone2 = extractedPhone;
            if (this.f24416c.isReliable || !extractedPhone2.isReliable()) {
                return ((!this.f24416c.isReliable || extractedPhone2.isReliable()) && this.f24416c.ordinal() >= extractedPhone2.f24416c.ordinal()) ? 1 : -1;
            }
            return 1;
        }

        public String getAreaCode() {
            return this.f24415b;
        }

        public String getPhoneNumber() {
            return this.f24414a;
        }

        public ExtractedPhoneSourcePriority getSource() {
            return this.f24416c;
        }

        public boolean isReliable() {
            ExtractedPhoneSourcePriority extractedPhoneSourcePriority = this.f24416c;
            return extractedPhoneSourcePriority != null && extractedPhoneSourcePriority.isReliable;
        }

        public boolean isValidated() {
            return this.f24417d;
        }

        public String toString() {
            return "PhoneCandidate{phoneNumber='" + this.f24414a + "', source='" + this.f24416c + "}";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority.class */
    public enum ExtractedPhoneSourcePriority {
        PHONE_NUMBER(true, "Phone number"),
        VIBER(true, "Viber"),
        SAMSUNG(true, "Samsung"),
        SOMA(true, "Soma"),
        GLIDE(true, "Glide"),
        ICQ(true, "ICQ"),
        BIP(true, "Bip"),
        BOTIM(true, "Botim"),
        MI_CHAT(true, "MiChat"),
        AYOBA(true, "Ayoba"),
        FACEBOOK_ACCOUNT(true, "Facebook"),
        LINE1NUMBER(false, "getLine1Number"),
        ICS(false, "ICS"),
        UNKNOWN(false, "unknown");
        
        public final String description;
        public final boolean isReliable;

        ExtractedPhoneSourcePriority(boolean z, String str) {
            this.isReliable = z;
            this.description = str;
        }
    }

    /* renamed from: a */
    private static List<ExtractedPhone> m29537a(Account[] accountArr) {
        ArrayList arrayList = new ArrayList();
        for (Account account : accountArr) {
            Phone m28239a = PhoneManager.get().m28239a(account.name);
            if (m28239a.isValidForSearch()) {
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, Constants.ACCOUNT_TYPE, account.type);
                String m26101a = m28239a.m26101a();
                ExtractedPhoneSourcePriority extractedPhoneSourcePriority = ExtractedPhoneSourcePriority.UNKNOWN;
                String ndc = m28239a.getNDC();
                ExtractedPhoneSourcePriority extractedPhoneSourcePriority2 = extractedPhoneSourcePriority;
                if (StringUtils.m26045b((CharSequence) account.type)) {
                    String str = account.type;
                    str.hashCode();
                    boolean z = true;
                    switch (str.hashCode()) {
                        case -1905835042:
                            if (str.equals(Constants.FACEBOOK_AUTH_ACCOUNT_TYPE)) {
                                z = false;
                                break;
                            }
                            break;
                        case -1902782178:
                            if (str.equals(Constants.VIBER_ACCOUNT_TYPE_OLD_BEFORE_JUN15)) {
                                z = true;
                                break;
                            }
                            break;
                        case -1853779885:
                            if (str.equals(Constants.ICQ_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case -1651733025:
                            if (str.equals(Constants.VIBER_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case -1409882354:
                            if (str.equals(Constants.GLIDE_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 178963045:
                            if (str.equals(Constants.BOTIM_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 522383947:
                            if (str.equals(Constants.MICHAT_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 1022407973:
                            if (str.equals(Constants.SOMA_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 1276557380:
                            if (str.equals(Constants.BIP_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 1970859984:
                            if (str.equals(Constants.AYOBA_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 2051164785:
                            if (str.equals(Constants.SAMSUNG_COREAPPS_ACCOUNT_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.FACEBOOK_ACCOUNT;
                            break;
                        case true:
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.VIBER;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.ICQ;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.GLIDE;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.BOTIM;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.MI_CHAT;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.SOMA;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.BIP;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.AYOBA;
                            break;
                        case true:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.SAMSUNG;
                            break;
                        default:
                            extractedPhoneSourcePriority2 = extractedPhoneSourcePriority;
                            break;
                    }
                }
                arrayList.add(new ExtractedPhone(m26101a, extractedPhoneSourcePriority2, ndc));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m29536b(String str) {
        return PhoneManager.get().m28239a(str).isValid();
    }

    public static Pair<ExtractedPhone, ExtractedCountry> getPhoneAndCountry() {
        ExtractedCountry extractedCountry;
        ExtractedPhone phoneFromDevice = getPhoneFromDevice();
        if (phoneFromDevice != null && phoneFromDevice.isReliable()) {
            String regionCode = PhoneManager.get().m28239a(phoneFromDevice.f24414a).getRegionCode();
            if (StringUtils.m26045b((CharSequence) regionCode)) {
                extractedCountry = new ExtractedCountry(regionCode, true);
                return new Pair<>(phoneFromDevice, extractedCountry);
            }
        }
        String simCountryIso = PhoneManager.get().getSimCountryIso();
        if (StringUtils.m26045b((CharSequence) simCountryIso)) {
            extractedCountry = new ExtractedCountry(simCountryIso, true);
        } else {
            if (phoneFromDevice != null) {
                String regionCode2 = PhoneManager.get().m28239a(phoneFromDevice.f24414a).getRegionCode();
                if (StringUtils.m26045b((CharSequence) regionCode2)) {
                    extractedCountry = new ExtractedCountry(regionCode2, false);
                }
            }
            extractedCountry = null;
        }
        return new Pair<>(phoneFromDevice, extractedCountry);
    }

    private static ExtractedPhone getPhoneFromDevice() {
        if (Prefs.f26229aF.isNotNull()) {
            Phone m28239a = PhoneManager.get().m28239a(Prefs.f26229aF.get());
            return new ExtractedPhone(m28239a.m26101a(), ExtractedPhoneSourcePriority.PHONE_NUMBER, true, m28239a.getNDC());
        }
        ArrayList<ExtractedPhone> arrayList = new ArrayList();
        arrayList.addAll(m29537a(AccountManager.get(CallAppApplication.get()).getAccounts()));
        Phone m28239a2 = PhoneManager.get().m28239a(PhoneManager.get().getLine1Number());
        if (m28239a2.isValid()) {
            arrayList.add(new ExtractedPhone(m28239a2.m26101a(), ExtractedPhoneSourcePriority.LINE1NUMBER, false, m28239a2.getNDC()));
        }
        String phoneFromICSProfile = getPhoneFromICSProfile();
        if (StringUtils.m26045b((CharSequence) phoneFromICSProfile)) {
            Phone m28239a3 = PhoneManager.get().m28239a(phoneFromICSProfile);
            if (m28239a3.isValid()) {
                arrayList.add(new ExtractedPhone(m28239a3.m26101a(), ExtractedPhoneSourcePriority.ICS, m28239a3.getNDC()));
            }
        }
        Collections.sort(arrayList);
        ExtractedPhone extractedPhone = null;
        for (ExtractedPhone extractedPhone2 : arrayList) {
            boolean m29536b = m29536b(extractedPhone2.getPhoneNumber());
            ExtractedPhoneSourcePriority source = extractedPhone2.getSource();
            if (m29536b) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Phone was obtained from " + source.description);
                if (extractedPhone == null || StringUtils.m26059a((CharSequence) extractedPhone.getPhoneNumber()) || StringUtils.m26057a(extractedPhone2.f24416c, Activities.getString(2131886890)) || !extractedPhone.isReliable()) {
                    extractedPhone = extractedPhone2;
                }
            } else {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Phone not obtained from " + source.description);
            }
        }
        if (extractedPhone != null && !StringUtils.m26059a((CharSequence) extractedPhone.getPhoneNumber())) {
            return extractedPhone;
        }
        return null;
    }

    private static String getPhoneFromICSProfile() {
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.READ_CONTACTS")) {
            PermissionManager.get();
            if (!PermissionManager.m28253a("android.permission.WRITE_CONTACTS")) {
                return null;
            }
            try {
                return (String) new ContentQuery(ContactsContract.Profile.CONTENT_URI).m29021a("entities").m29008c("data1").m29012b("data1", "!=", (String) null).m29012b("data1", "!=", "").m29012b("mimetype", "=", "vnd.android.cursor.item/phone_v2").m29020a("is_primary", false).m29009c(new RowCallback<String>() { // from class: com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor.1
                    @Override // com.callapp.contacts.framework.dao.RowCallback
                    public final /* synthetic */ String onRow(RowContext rowContext) {
                        String m29002a = rowContext.m29002a("data1");
                        if (PhoneAndCountryDeviceExtractor.m29536b(m29002a)) {
                            return m29002a;
                        }
                        return null;
                    }
                });
            } catch (Exception e) {
                CLog.m27609a(PhoneAndCountryDeviceExtractor.class, e);
                return null;
            }
        }
        return null;
    }
}

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

        /* renamed from: a  reason: collision with root package name */
        private String f13858a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f13859b;

        public ExtractedCountry(String str, boolean z) {
            this.f13858a = str;
            this.f13859b = z;
        }

        @Override // java.lang.Comparable
        public /* synthetic */ int compareTo(ExtractedCountry extractedCountry) {
            ExtractedCountry extractedCountry2 = extractedCountry;
            if (this.f13859b) {
                return -1;
            }
            return extractedCountry2.isReliable() ? 1 : 0;
        }

        public String getCountryISO() {
            return this.f13858a;
        }

        public boolean isReliable() {
            return this.f13859b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone.class */
    public static class ExtractedPhone implements Comparable<ExtractedPhone> {

        /* renamed from: a  reason: collision with root package name */
        private final String f13860a;

        /* renamed from: b  reason: collision with root package name */
        private final String f13861b;

        /* renamed from: c  reason: collision with root package name */
        private final ExtractedPhoneSourcePriority f13862c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f13863d;

        public ExtractedPhone(String str, ExtractedPhoneSourcePriority extractedPhoneSourcePriority, String str2) {
            this(str, extractedPhoneSourcePriority, false, str2);
        }

        public ExtractedPhone(String str, ExtractedPhoneSourcePriority extractedPhoneSourcePriority, boolean z, String str2) {
            this.f13863d = z;
            this.f13860a = str;
            this.f13862c = extractedPhoneSourcePriority;
            this.f13861b = str2;
        }

        @Override // java.lang.Comparable
        public /* synthetic */ int compareTo(ExtractedPhone extractedPhone) {
            ExtractedPhone extractedPhone2 = extractedPhone;
            if (this.f13862c.isReliable || !extractedPhone2.isReliable()) {
                return ((!this.f13862c.isReliable || extractedPhone2.isReliable()) && this.f13862c.ordinal() >= extractedPhone2.f13862c.ordinal()) ? 1 : -1;
            }
            return 1;
        }

        public String getAreaCode() {
            return this.f13861b;
        }

        public String getPhoneNumber() {
            return this.f13860a;
        }

        public ExtractedPhoneSourcePriority getSource() {
            return this.f13862c;
        }

        public boolean isReliable() {
            ExtractedPhoneSourcePriority extractedPhoneSourcePriority = this.f13862c;
            return extractedPhoneSourcePriority != null && extractedPhoneSourcePriority.isReliable;
        }

        public boolean isValidated() {
            return this.f13863d;
        }

        public String toString() {
            return "PhoneCandidate{phoneNumber='" + this.f13860a + "', source='" + this.f13862c + "}";
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

    private static List<ExtractedPhone> a(Account[] accountArr) {
        ArrayList arrayList = new ArrayList();
        for (Account account : accountArr) {
            Phone a2 = PhoneManager.get().a(account.name);
            if (a2.isValidForSearch()) {
                AnalyticsManager.get().a(Constants.REGISTRATION, Constants.ACCOUNT_TYPE, account.type);
                String a3 = a2.a();
                ExtractedPhoneSourcePriority extractedPhoneSourcePriority = ExtractedPhoneSourcePriority.UNKNOWN;
                String ndc = a2.getNDC();
                ExtractedPhoneSourcePriority extractedPhoneSourcePriority2 = extractedPhoneSourcePriority;
                if (StringUtils.b((CharSequence) account.type)) {
                    String str = account.type;
                    str.hashCode();
                    char c2 = 65535;
                    switch (str.hashCode()) {
                        case -1905835042:
                            if (str.equals(Constants.FACEBOOK_AUTH_ACCOUNT_TYPE)) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1902782178:
                            if (str.equals(Constants.VIBER_ACCOUNT_TYPE_OLD_BEFORE_JUN15)) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -1853779885:
                            if (str.equals(Constants.ICQ_ACCOUNT_TYPE)) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case -1651733025:
                            if (str.equals(Constants.VIBER_ACCOUNT_TYPE)) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case -1409882354:
                            if (str.equals(Constants.GLIDE_ACCOUNT_TYPE)) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 178963045:
                            if (str.equals(Constants.BOTIM_ACCOUNT_TYPE)) {
                                c2 = 5;
                                break;
                            }
                            break;
                        case 522383947:
                            if (str.equals(Constants.MICHAT_ACCOUNT_TYPE)) {
                                c2 = 6;
                                break;
                            }
                            break;
                        case 1022407973:
                            if (str.equals(Constants.SOMA_ACCOUNT_TYPE)) {
                                c2 = 7;
                                break;
                            }
                            break;
                        case 1276557380:
                            if (str.equals(Constants.BIP_ACCOUNT_TYPE)) {
                                c2 = '\b';
                                break;
                            }
                            break;
                        case 1970859984:
                            if (str.equals(Constants.AYOBA_ACCOUNT_TYPE)) {
                                c2 = '\t';
                                break;
                            }
                            break;
                        case 2051164785:
                            if (str.equals(Constants.SAMSUNG_COREAPPS_ACCOUNT_TYPE)) {
                                c2 = '\n';
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.FACEBOOK_ACCOUNT;
                            break;
                        case 1:
                        case 3:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.VIBER;
                            break;
                        case 2:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.ICQ;
                            break;
                        case 4:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.GLIDE;
                            break;
                        case 5:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.BOTIM;
                            break;
                        case 6:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.MI_CHAT;
                            break;
                        case 7:
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.SOMA;
                            break;
                        case '\b':
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.BIP;
                            break;
                        case '\t':
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.AYOBA;
                            break;
                        case '\n':
                            extractedPhoneSourcePriority2 = ExtractedPhoneSourcePriority.SAMSUNG;
                            break;
                        default:
                            extractedPhoneSourcePriority2 = extractedPhoneSourcePriority;
                            break;
                    }
                }
                arrayList.add(new ExtractedPhone(a3, extractedPhoneSourcePriority2, ndc));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str) {
        return PhoneManager.get().a(str).isValid();
    }

    public static Pair<ExtractedPhone, ExtractedCountry> getPhoneAndCountry() {
        ExtractedCountry extractedCountry;
        ExtractedPhone phoneFromDevice = getPhoneFromDevice();
        if (phoneFromDevice != null && phoneFromDevice.isReliable()) {
            String regionCode = PhoneManager.get().a(phoneFromDevice.f13860a).getRegionCode();
            if (StringUtils.b((CharSequence) regionCode)) {
                extractedCountry = new ExtractedCountry(regionCode, true);
                return new Pair<>(phoneFromDevice, extractedCountry);
            }
        }
        String simCountryIso = PhoneManager.get().getSimCountryIso();
        if (StringUtils.b((CharSequence) simCountryIso)) {
            extractedCountry = new ExtractedCountry(simCountryIso, true);
        } else {
            if (phoneFromDevice != null) {
                String regionCode2 = PhoneManager.get().a(phoneFromDevice.f13860a).getRegionCode();
                if (StringUtils.b((CharSequence) regionCode2)) {
                    extractedCountry = new ExtractedCountry(regionCode2, false);
                }
            }
            extractedCountry = null;
        }
        return new Pair<>(phoneFromDevice, extractedCountry);
    }

    private static ExtractedPhone getPhoneFromDevice() {
        if (Prefs.aF.isNotNull()) {
            Phone a2 = PhoneManager.get().a(Prefs.aF.get());
            return new ExtractedPhone(a2.a(), ExtractedPhoneSourcePriority.PHONE_NUMBER, true, a2.getNDC());
        }
        ArrayList<ExtractedPhone> arrayList = new ArrayList();
        arrayList.addAll(a(AccountManager.get(CallAppApplication.get()).getAccounts()));
        Phone a3 = PhoneManager.get().a(PhoneManager.get().getLine1Number());
        if (a3.isValid()) {
            arrayList.add(new ExtractedPhone(a3.a(), ExtractedPhoneSourcePriority.LINE1NUMBER, false, a3.getNDC()));
        }
        String phoneFromICSProfile = getPhoneFromICSProfile();
        if (StringUtils.b((CharSequence) phoneFromICSProfile)) {
            Phone a4 = PhoneManager.get().a(phoneFromICSProfile);
            if (a4.isValid()) {
                arrayList.add(new ExtractedPhone(a4.a(), ExtractedPhoneSourcePriority.ICS, a4.getNDC()));
            }
        }
        Collections.sort(arrayList);
        ExtractedPhone extractedPhone = null;
        for (ExtractedPhone extractedPhone2 : arrayList) {
            boolean b2 = b(extractedPhone2.getPhoneNumber());
            ExtractedPhoneSourcePriority source = extractedPhone2.getSource();
            if (b2) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.a(Constants.REGISTRATION, "Phone was obtained from " + source.description);
                if (extractedPhone == null || StringUtils.a((CharSequence) extractedPhone.getPhoneNumber()) || StringUtils.a(extractedPhone2.f13862c, Activities.getString(2131886890)) || !extractedPhone.isReliable()) {
                    extractedPhone = extractedPhone2;
                }
            } else {
                AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                analyticsManager2.a(Constants.REGISTRATION, "Phone not obtained from " + source.description);
            }
        }
        if (extractedPhone == null || StringUtils.a((CharSequence) extractedPhone.getPhoneNumber())) {
            return null;
        }
        return extractedPhone;
    }

    private static String getPhoneFromICSProfile() {
        PermissionManager.get();
        if (!PermissionManager.a("android.permission.READ_CONTACTS")) {
            return null;
        }
        PermissionManager.get();
        if (!PermissionManager.a("android.permission.WRITE_CONTACTS")) {
            return null;
        }
        try {
            return (String) new ContentQuery(ContactsContract.Profile.CONTENT_URI).a("entities").c("data1").b("data1", "!=", (String) null).b("data1", "!=", "").b("mimetype", "=", "vnd.android.cursor.item/phone_v2").a("is_primary", false).c(new RowCallback<String>() { // from class: com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor.1
                @Override // com.callapp.contacts.framework.dao.RowCallback
                public final /* synthetic */ String onRow(RowContext rowContext) {
                    String a2 = rowContext.a("data1");
                    if (PhoneAndCountryDeviceExtractor.b(a2)) {
                        return a2;
                    }
                    return null;
                }
            });
        } catch (Exception e) {
            CLog.a(PhoneAndCountryDeviceExtractor.class, e);
            return null;
        }
    }
}

package com.callapp.contacts.activity.setup;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/CountryList.class */
public class CountryList {

    /* renamed from: a */
    private List<CountryListItem> f24367a = new ArrayList();

    /* renamed from: c */
    private CountryListItem f24369c = null;

    /* renamed from: b */
    private Integer f24368b = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/CountryList$CountryListItem.class */
    public static class CountryListItem implements Comparable<CountryListItem> {

        /* renamed from: a */
        private final String f24370a;

        /* renamed from: b */
        private final String f24371b;

        /* renamed from: c */
        private final String f24372c;

        /* renamed from: d */
        private final Integer f24373d;

        public CountryListItem(String str, String str2, String str3, Integer num) {
            this.f24370a = str;
            this.f24371b = str2;
            this.f24372c = str3;
            this.f24373d = num;
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(CountryListItem countryListItem) {
            return this.f24370a.compareTo(countryListItem.f24370a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return getCountryCode().equals(((CountryListItem) obj).getCountryCode());
            }
            return false;
        }

        public String getCountryCode() {
            return this.f24371b;
        }

        public String getDisplayedCountry() {
            return this.f24372c;
        }

        public int hashCode() {
            return getCountryCode().hashCode();
        }

        public String toString() {
            return this.f24370a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType.class */
    public enum PrefixCountryIsoMatchType {
        NO_MATCH,
        COUNTRYISO_MATCH,
        INTL_PHONE_PREFIX_MATCH,
        BOTH_MATCH
    }

    public CountryList(String str, Integer num) {
        m29561a(str, num);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x010e, code lost:
        if (r20 == com.callapp.contacts.activity.setup.CountryList.PrefixCountryIsoMatchType.COUNTRYISO_MATCH) goto L32;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m29561a(java.lang.String r8, java.lang.Integer r9) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.setup.CountryList.m29561a(java.lang.String, java.lang.Integer):void");
    }

    public Integer getAutoSelectedIndex() {
        return this.f24368b;
    }

    public List<CountryListItem> getCountryList() {
        return this.f24367a;
    }
}

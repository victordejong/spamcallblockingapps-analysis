package com.callapp.contacts.activity.setup;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/CountryList.class */
public class CountryList {

    /* renamed from: a  reason: collision with root package name */
    private List<CountryListItem> f13823a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private CountryListItem f13825c = null;

    /* renamed from: b  reason: collision with root package name */
    private Integer f13824b = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/CountryList$CountryListItem.class */
    public static class CountryListItem implements Comparable<CountryListItem> {

        /* renamed from: a  reason: collision with root package name */
        private final String f13826a;

        /* renamed from: b  reason: collision with root package name */
        private final String f13827b;

        /* renamed from: c  reason: collision with root package name */
        private final String f13828c;

        /* renamed from: d  reason: collision with root package name */
        private final Integer f13829d;

        public CountryListItem(String str, String str2, String str3, Integer num) {
            this.f13826a = str;
            this.f13827b = str2;
            this.f13828c = str3;
            this.f13829d = num;
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(CountryListItem countryListItem) {
            return this.f13826a.compareTo(countryListItem.f13826a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return getCountryCode().equals(((CountryListItem) obj).getCountryCode());
        }

        public String getCountryCode() {
            return this.f13827b;
        }

        public String getDisplayedCountry() {
            return this.f13828c;
        }

        public int hashCode() {
            return getCountryCode().hashCode();
        }

        public String toString() {
            return this.f13826a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/CountryList$PrefixCountryIsoMatchType.class */
    public enum PrefixCountryIsoMatchType {
        NO_MATCH,
        COUNTRYISO_MATCH,
        INTL_PHONE_PREFIX_MATCH,
        BOTH_MATCH
    }

    public CountryList(String str, Integer num) {
        a(str, num);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x010e, code lost:
        if (r20 == com.callapp.contacts.activity.setup.CountryList.PrefixCountryIsoMatchType.COUNTRYISO_MATCH) goto L_0x0111;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r8, java.lang.Integer r9) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.setup.CountryList.a(java.lang.String, java.lang.Integer):void");
    }

    public Integer getAutoSelectedIndex() {
        return this.f13824b;
    }

    public List<CountryListItem> getCountryList() {
        return this.f13823a;
    }
}

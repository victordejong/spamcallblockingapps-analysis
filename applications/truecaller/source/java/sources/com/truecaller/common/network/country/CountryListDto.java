package com.truecaller.common.network.country;

import e.m.e.d0.b;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/country/CountryListDto.class */
public class CountryListDto {
    @b("COUNTRY_LIST")
    public C3680b countryList;
    @b("COUNTRY_LIST_CHECKSUM")
    public String countryListChecksum;

    /* renamed from: com.truecaller.common.network.country.CountryListDto$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/country/CountryListDto$a.class */
    public static class C3679a {
        @b("CID")

        /* renamed from: a */
        public String f10910a;
        @b("CN")

        /* renamed from: b */
        public String f10911b;
        @b("CCN")

        /* renamed from: c */
        public String f10912c;
        @b("CC")

        /* renamed from: d */
        public String f10913d;

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C3679a c3679a = (C3679a) obj;
            if (!Objects.equals(this.f10910a, c3679a.f10910a) || !Objects.equals(this.f10911b, c3679a.f10911b) || !Objects.equals(this.f10912c, c3679a.f10912c) || !Objects.equals(this.f10913d, c3679a.f10913d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return Objects.hash(this.f10910a, this.f10911b, this.f10912c, this.f10913d);
        }
    }

    /* renamed from: com.truecaller.common.network.country.CountryListDto$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/country/CountryListDto$b.class */
    public static class C3680b {
        @b("COUNTRY_SUGGESTION")

        /* renamed from: a */
        public C3679a f10914a;
        @b("C")

        /* renamed from: b */
        public List<C3679a> f10915b;
    }
}

package com.criteo.publisher.model;

import com.criteo.publisher.p020a0.EnumC1908a;
/* renamed from: com.criteo.publisher.model.k */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/k.class */
public final class C2037k {

    /* renamed from: a */
    public final String f2234a;

    /* renamed from: b */
    public final AdSize f2235b;

    /* renamed from: c */
    public final EnumC1908a f2236c;

    public C2037k(AdSize adSize, String str, EnumC1908a aVar) {
        this.f2235b = adSize;
        this.f2234a = str;
        this.f2236c = aVar;
    }

    /* renamed from: a */
    public EnumC1908a m35863a() {
        return this.f2236c;
    }

    /* renamed from: b */
    public String m35862b() {
        return this.f2234a;
    }

    /* renamed from: c */
    public AdSize m35861c() {
        return this.f2235b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2037k.class != obj.getClass()) {
            return false;
        }
        C2037k kVar = (C2037k) obj;
        String str = this.f2234a;
        if (str != null) {
            if (!str.equals(kVar.f2234a)) {
                return false;
            }
        } else if (kVar.f2234a != null) {
            return false;
        }
        AdSize adSize = this.f2235b;
        if (adSize != null) {
            if (!adSize.equals(kVar.f2235b)) {
                return false;
            }
        } else if (kVar.f2235b != null) {
            return false;
        }
        if (this.f2236c != kVar.f2236c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f2234a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AdSize adSize = this.f2235b;
        int hashCode2 = adSize != null ? adSize.hashCode() : 0;
        EnumC1908a aVar = this.f2236c;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "CacheAdUnit{placementId='" + this.f2234a + "', adSize=" + this.f2235b + ", adUnitType= " + this.f2236c + '}';
    }
}

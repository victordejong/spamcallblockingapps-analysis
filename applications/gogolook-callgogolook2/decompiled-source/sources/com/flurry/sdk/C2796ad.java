package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.ad */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ad.class */
public final class C2796ad {

    /* renamed from: a */
    public final Map<C2798b, C2797a> f3942a = new HashMap();

    /* renamed from: com.flurry.sdk.ad$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ad$a.class */
    public static final class C2797a {

        /* renamed from: a */
        public C2974dj f3943a;

        /* renamed from: b */
        public C2792ac f3944b;
    }

    /* renamed from: com.flurry.sdk.ad$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ad$b.class */
    public static final class C2798b {

        /* renamed from: a */
        public String f3945a;

        /* renamed from: b */
        public EnumC2923ct f3946b;

        /* renamed from: c */
        public C3374k f3947c;

        public C2798b(String str, EnumC2923ct ctVar, C3374k kVar) {
            this.f3945a = str;
            this.f3946b = ctVar;
            if (kVar != null) {
                this.f3947c = kVar.copy();
            }
        }

        public final boolean equals(Object obj) {
            String str;
            if (obj == null || !(obj instanceof C2798b)) {
                return false;
            }
            C2798b bVar = (C2798b) obj;
            if (!this.f3945a.equals(bVar.f3945a) && (str = this.f3945a) != null && !str.equals(bVar.f3945a)) {
                return false;
            }
            EnumC2923ct ctVar = this.f3946b;
            EnumC2923ct ctVar2 = bVar.f3946b;
            if (ctVar != ctVar2 && ctVar != null && !ctVar.equals(ctVar2)) {
                return false;
            }
            C3374k kVar = this.f3947c;
            C3374k kVar2 = bVar.f3947c;
            return kVar == kVar2 || kVar == null || kVar.equals(kVar2);
        }

        public final int hashCode() {
            String str = this.f3945a;
            int i = 17;
            if (str != null) {
                i = 17 ^ str.hashCode();
            }
            EnumC2923ct ctVar = this.f3946b;
            int i2 = i;
            if (ctVar != null) {
                i2 = i ^ ctVar.hashCode();
            }
            C3374k kVar = this.f3947c;
            int i3 = i2;
            if (kVar != null) {
                i3 = i2 ^ kVar.hashCode();
            }
            return i3;
        }
    }

    /* renamed from: a */
    public final C2797a m33680a(String str, EnumC2923ct ctVar, C3374k kVar) {
        C2797a aVar;
        synchronized (this) {
            C2798b bVar = new C2798b(str, ctVar, kVar);
            C2797a aVar2 = this.f3942a.get(bVar);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = new C2797a();
                aVar.f3943a = new C2974dj(str);
                aVar.f3944b = new C2792ac(str);
                this.f3942a.put(bVar, aVar);
            }
        }
        return aVar;
    }
}

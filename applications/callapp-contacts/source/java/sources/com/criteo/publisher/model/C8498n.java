package com.criteo.publisher.model;

import com.criteo.publisher.p256m0.EnumC8423a;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.model.n */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/n.class */
public class C8498n {

    /* renamed from: a */
    private final AdSize f30327a;

    /* renamed from: b */
    private final String f30328b;

    /* renamed from: c */
    private final EnumC8423a f30329c;

    public C8498n(AdSize size, String placementId, EnumC8423a adUnitType) {
        C18524p.m3841c(size, "size");
        C18524p.m3841c(placementId, "placementId");
        C18524p.m3841c(adUnitType, "adUnitType");
        this.f30327a = size;
        this.f30328b = placementId;
        this.f30329c = adUnitType;
    }

    /* renamed from: a */
    public EnumC8423a m25584a() {
        return this.f30329c;
    }

    /* renamed from: b */
    public String m25583b() {
        return this.f30328b;
    }

    /* renamed from: c */
    public AdSize m25582c() {
        return this.f30327a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8498n)) {
                return false;
            }
            C8498n c8498n = (C8498n) obj;
            return C18524p.m3850a(m25582c(), c8498n.m25582c()) && C18524p.m3850a((Object) m25583b(), (Object) c8498n.m25583b()) && C18524p.m3850a(m25584a(), c8498n.m25584a());
        }
        return true;
    }

    public int hashCode() {
        AdSize m25582c = m25582c();
        int i = 0;
        int hashCode = m25582c != null ? m25582c.hashCode() : 0;
        String m25583b = m25583b();
        int hashCode2 = m25583b != null ? m25583b.hashCode() : 0;
        EnumC8423a m25584a = m25584a();
        if (m25584a != null) {
            i = m25584a.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "CacheAdUnit(size=" + m25582c() + ", placementId=" + m25583b() + ", adUnitType=" + m25584a() + ")";
    }
}

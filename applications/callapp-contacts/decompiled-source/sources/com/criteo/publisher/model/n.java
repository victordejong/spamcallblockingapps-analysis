package com.criteo.publisher.model;

import com.criteo.publisher.m0.a;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/n.class */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final AdSize f17619a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17620b;

    /* renamed from: c  reason: collision with root package name */
    private final a f17621c;

    public n(AdSize size, String placementId, a adUnitType) {
        p.c(size, "size");
        p.c(placementId, "placementId");
        p.c(adUnitType, "adUnitType");
        this.f17619a = size;
        this.f17620b = placementId;
        this.f17621c = adUnitType;
    }

    public a a() {
        return this.f17621c;
    }

    public String b() {
        return this.f17620b;
    }

    public AdSize c() {
        return this.f17619a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return p.a(c(), nVar.c()) && p.a((Object) b(), (Object) nVar.b()) && p.a(a(), nVar.a());
    }

    public int hashCode() {
        AdSize c2 = c();
        int i = 0;
        int hashCode = c2 != null ? c2.hashCode() : 0;
        String b2 = b();
        int hashCode2 = b2 != null ? b2.hashCode() : 0;
        a a2 = a();
        if (a2 != null) {
            i = a2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "CacheAdUnit(size=" + c() + ", placementId=" + b() + ", adUnitType=" + a() + ")";
    }
}

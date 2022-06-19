package com.appnext.core;

import com.appnext.base.C0472a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.core.b */
/* loaded from: classes-dex2jar.jar:com/appnext/core/b.class */
public final class C0528b {

    /* renamed from: cD */
    private String f1749cD;

    /* renamed from: cE */
    private String f1750cE;

    /* renamed from: cF */
    private int f1751cF;

    /* renamed from: cG */
    private int f1752cG;
    private String cat;
    private int cnt;
    private String pbk;

    public C0528b(AbstractC0501Ad abstractC0501Ad) {
        this.f1749cD = "";
        this.cat = "";
        this.f1750cE = "";
        this.pbk = "";
        try {
            this.f1749cD = abstractC0501Ad.getPlacementID();
            this.cat = abstractC0501Ad.getCategories();
            this.f1750cE = abstractC0501Ad.getSpecificCategories();
            this.pbk = abstractC0501Ad.getPostback();
            this.f1751cF = abstractC0501Ad.getMinVideoLength();
            this.f1752cG = abstractC0501Ad.getMaxVideoLength();
            this.cnt = abstractC0501Ad.getCount();
        } catch (Throwable th) {
            C0472a.m42577a("AdKey$AdKey", th);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        try {
            if (!getClass().isInstance(obj) && !obj.getClass().isInstance(this)) {
                return false;
            }
            return obj instanceof C0528b ? ((C0528b) obj).f1749cD.equals(this.f1749cD) && ((C0528b) obj).cat.equals(this.cat) && ((C0528b) obj).f1750cE.equals(this.f1750cE) && ((C0528b) obj).pbk.equals(this.pbk) && ((C0528b) obj).f1751cF == this.f1751cF && ((C0528b) obj).f1752cG == this.f1752cG && ((C0528b) obj).cnt == this.cnt : super.equals(obj);
        } catch (Throwable th) {
            return false;
        }
    }

    public final int hashCode() {
        return ((((C22128a.m8579q2(this.pbk, C22128a.m8579q2(this.f1750cE, C22128a.m8579q2(this.cat, this.f1749cD.hashCode() * 31, 31), 31), 31) + this.f1751cF) * 31) + this.f1752cG) * 31) + this.cnt;
    }
}

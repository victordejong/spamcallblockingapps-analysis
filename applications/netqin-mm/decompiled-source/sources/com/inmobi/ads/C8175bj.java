package com.inmobi.ads;

import android.content.ContentValues;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.p503d.C8224a;
import java.util.Map;
/* renamed from: com.inmobi.ads.bj */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bj.class */
public final class C8175bj {

    /* renamed from: a */
    public long f31894a;

    /* renamed from: b */
    public String f31895b;

    /* renamed from: c */
    public Map<String, String> f31896c;

    /* renamed from: d */
    public String f31897d;

    /* renamed from: e */
    public String f31898e;

    /* renamed from: f */
    public InMobiAdRequest.MonetizationContext f31899f;

    public C8175bj(long j, String str, String str2) {
        this.f31899f = InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY;
        this.f31894a = j;
        this.f31895b = str;
        this.f31898e = str2;
        if (str == null) {
            this.f31895b = "";
        }
    }

    public C8175bj(ContentValues contentValues) {
        this.f31899f = InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY;
        this.f31894a = contentValues.getAsLong("placement_id").longValue();
        this.f31895b = contentValues.getAsString("tp_key");
        this.f31898e = contentValues.getAsString("ad_type");
        this.f31899f = InMobiAdRequest.MonetizationContext.m6733a(contentValues.getAsString("m10_context"));
    }

    /* renamed from: a */
    public static C8175bj m6257a(long j, Map<String, String> map, String str, String str2) {
        C8175bj bjVar = new C8175bj(j, C8224a.m6143a(map), str);
        bjVar.f31897d = str2;
        bjVar.f31896c = map;
        return bjVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C8175bj.class != obj.getClass()) {
            return false;
        }
        C8175bj bjVar = (C8175bj) obj;
        return this.f31894a == bjVar.f31894a && this.f31899f == bjVar.f31899f && this.f31895b.equals(bjVar.f31895b) && this.f31898e.equals(bjVar.f31898e);
    }

    public final int hashCode() {
        long j = this.f31894a;
        return (((((int) (j ^ (j >>> 32))) * 31) + this.f31898e.hashCode()) * 30) + this.f31899f.hashCode();
    }
}

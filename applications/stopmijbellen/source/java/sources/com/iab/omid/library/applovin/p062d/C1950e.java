package com.iab.omid.library.applovin.p062d;

import android.text.TextUtils;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
/* renamed from: com.iab.omid.library.applovin.d.e */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/d/e.class */
public class C1950e {
    /* renamed from: a */
    public static void m4086a() {
        if (Omid.isActive()) {
            return;
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public static void m4085a(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
        if (owner != Owner.NONE) {
            if (creativeType == CreativeType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (impressionType != ImpressionType.DEFINED_BY_JAVASCRIPT || owner != Owner.NATIVE) {
                return;
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    /* renamed from: a */
    public static void m4084a(C1929a c1929a) {
        if (!c1929a.m4183g()) {
            return;
        }
        throw new IllegalStateException("AdSession is started");
    }

    /* renamed from: a */
    public static void m4083a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m4082a(String str, int i, String str2) {
        if (str.length() <= i) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: a */
    public static void m4081a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: b */
    public static void m4080b(C1929a c1929a) {
        if (!c1929a.m4182h()) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: c */
    public static void m4079c(C1929a c1929a) {
        m4074h(c1929a);
        m4080b(c1929a);
    }

    /* renamed from: d */
    public static void m4078d(C1929a c1929a) {
        if (c1929a.getAdSessionStatePublisher().m4055c() == null) {
            return;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    /* renamed from: e */
    public static void m4077e(C1929a c1929a) {
        if (c1929a.getAdSessionStatePublisher().m4054d() == null) {
            return;
        }
        throw new IllegalStateException("MediaEvents already exists for AdSession");
    }

    /* renamed from: f */
    public static void m4076f(C1929a c1929a) {
        if (c1929a.m4181i()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: g */
    public static void m4075g(C1929a c1929a) {
        if (c1929a.m4180j()) {
            return;
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    /* renamed from: h */
    private static void m4074h(C1929a c1929a) {
        if (c1929a.m4183g()) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}

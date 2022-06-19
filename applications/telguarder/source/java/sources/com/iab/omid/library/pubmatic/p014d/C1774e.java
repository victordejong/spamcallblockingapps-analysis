package com.iab.omid.library.pubmatic.p014d;

import android.text.TextUtils;
import com.iab.omid.library.pubmatic.Omid;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.adsession.CreativeType;
import com.iab.omid.library.pubmatic.adsession.ImpressionType;
import com.iab.omid.library.pubmatic.adsession.Owner;
/* renamed from: com.iab.omid.library.pubmatic.d.e */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/d/e.class */
public class C1774e {
    /* renamed from: a */
    public static void m1225a() {
        if (Omid.isActive()) {
            return;
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public static void m1224a(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
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
    public static void m1223a(C1753a c1753a) {
        if (!c1753a.m1318f()) {
            return;
        }
        throw new IllegalStateException("AdSession is started");
    }

    /* renamed from: a */
    public static void m1222a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m1221a(String str, int i, String str2) {
        if (str.length() <= i) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: a */
    public static void m1220a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: b */
    public static void m1219b(C1753a c1753a) {
        if (!c1753a.m1317g()) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: c */
    public static void m1218c(C1753a c1753a) {
        m1213h(c1753a);
        m1219b(c1753a);
    }

    /* renamed from: d */
    public static void m1217d(C1753a c1753a) {
        if (c1753a.getAdSessionStatePublisher().m1194c() == null) {
            return;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    /* renamed from: e */
    public static void m1216e(C1753a c1753a) {
        if (c1753a.getAdSessionStatePublisher().m1193d() == null) {
            return;
        }
        throw new IllegalStateException("MediaEvents already exists for AdSession");
    }

    /* renamed from: f */
    public static void m1215f(C1753a c1753a) {
        if (c1753a.m1316h()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: g */
    public static void m1214g(C1753a c1753a) {
        if (c1753a.m1315i()) {
            return;
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    /* renamed from: h */
    private static void m1213h(C1753a c1753a) {
        if (c1753a.m1318f()) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}

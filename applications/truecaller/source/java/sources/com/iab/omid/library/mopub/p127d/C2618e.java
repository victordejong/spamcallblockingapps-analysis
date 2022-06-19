package com.iab.omid.library.mopub.p127d;

import android.text.TextUtils;
import com.iab.omid.library.mopub.Omid;
import com.iab.omid.library.mopub.adsession.CreativeType;
import com.iab.omid.library.mopub.adsession.ImpressionType;
import com.iab.omid.library.mopub.adsession.Owner;
import com.iab.omid.library.mopub.adsession.a;
/* renamed from: com.iab.omid.library.mopub.d.e */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/d/e.class */
public class C2618e {
    /* renamed from: a */
    public static void m36401a() {
        if (Omid.isActive()) {
            return;
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public static void m36400a(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
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
    public static void m36399a(a aVar) {
        if (!aVar.f()) {
            return;
        }
        throw new IllegalStateException("AdSession is started");
    }

    /* renamed from: a */
    public static void m36398a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m36397a(String str, int i, String str2) {
        if (str.length() <= i) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: a */
    public static void m36396a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: b */
    public static void m36395b(a aVar) {
        if (!aVar.g()) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: c */
    public static void m36394c(a aVar) {
        m36389h(aVar);
        m36395b(aVar);
    }

    /* renamed from: d */
    public static void m36393d(a aVar) {
        if (aVar.getAdSessionStatePublisher().m36367c() == null) {
            return;
        }
        throw new IllegalStateException("AdEvents already exists for AdSession");
    }

    /* renamed from: e */
    public static void m36392e(a aVar) {
        if (aVar.getAdSessionStatePublisher().m36366d() == null) {
            return;
        }
        throw new IllegalStateException("MediaEvents already exists for AdSession");
    }

    /* renamed from: f */
    public static void m36391f(a aVar) {
        if (aVar.h()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: g */
    public static void m36390g(a aVar) {
        if (aVar.i()) {
            return;
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    /* renamed from: h */
    private static void m36389h(a aVar) {
        if (aVar.f()) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}

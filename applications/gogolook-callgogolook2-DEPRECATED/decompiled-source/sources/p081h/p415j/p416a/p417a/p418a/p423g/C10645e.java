package p081h.p415j.p416a.p417a.p418a.p423g;

import android.text.TextUtils;
import p081h.p415j.p416a.p417a.p418a.C10611a;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p420d.EnumC10623f;
/* renamed from: h.j.a.a.a.g.e */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/g/e.class */
public class C10645e {
    /* renamed from: a */
    public static void m11084a() {
        if (!C10611a.m11205b()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    /* renamed from: a */
    public static void m11083a(EnumC10623f fVar) {
        if (fVar.equals(EnumC10623f.NONE)) {
            throw new IllegalArgumentException("Impression owner is none");
        }
    }

    /* renamed from: a */
    public static void m11082a(C10626i iVar) {
        if (iVar.m11160g()) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    /* renamed from: a */
    public static void m11081a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: a */
    public static void m11080a(String str, int i, String str2) {
        if (str.length() > i) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* renamed from: a */
    public static void m11079a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* renamed from: b */
    public static void m11078b(C10626i iVar) {
        if (iVar.m11157j().m11064c() != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
    }

    /* renamed from: c */
    public static void m11077c(C10626i iVar) {
        if (!iVar.m11159h()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
    }
}

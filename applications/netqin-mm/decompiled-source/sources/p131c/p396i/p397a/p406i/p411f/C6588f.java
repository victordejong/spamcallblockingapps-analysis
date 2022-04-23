package p131c.p396i.p397a.p406i.p411f;

import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p406i.p411f.p412h.C6593c;
import p131c.p396i.p397a.p406i.p411f.p412h.C6594d;
import p131c.p396i.p397a.p406i.p411f.p412h.C6596e;
import p131c.p396i.p397a.p406i.p411f.p412h.View$OnAttachStateChangeListenerC6592b;
import p131c.p396i.p397a.p406i.p411f.p413i.C6600b;
import p131c.p396i.p397a.p406i.p411f.p413i.View$OnAttachStateChangeListenerC6598a;
import p131c.p396i.p397a.p406i.p411f.p414j.C6605c;
import p131c.p396i.p397a.p406i.p411f.p414j.View$OnAttachStateChangeListenerC6604b;
import p131c.p396i.p397a.p406i.p411f.p415k.C6609b;
import p131c.p396i.p397a.p406i.p411f.p415k.View$OnAttachStateChangeListenerC6607a;
/* renamed from: c.i.a.i.f.f */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/f.class */
public class C6588f {
    /* renamed from: a */
    public static AbstractC6578a m20450a(BaseAdResult baseAdResult) {
        char c;
        String c2 = baseAdResult.m5316c();
        int hashCode = c2.hashCode();
        if (hashCode == 2092) {
            if (c2.equals("AM")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 2123) {
            if (c2.equals("BM")) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode != 2236) {
            if (hashCode == 2467 && c2.equals("MP")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (c2.equals("FB")) {
                c = 0;
            }
            c = 65535;
        }
        return c != 0 ? c != 1 ? c != 2 ? c != 3 ? null : new View$OnAttachStateChangeListenerC6598a(baseAdResult) : new View$OnAttachStateChangeListenerC6607a(baseAdResult) : new View$OnAttachStateChangeListenerC6592b(baseAdResult) : new View$OnAttachStateChangeListenerC6604b(baseAdResult);
    }

    /* renamed from: b */
    public static AbstractC6582c m20449b(BaseAdResult baseAdResult) {
        char c;
        String c2 = baseAdResult.m5316c();
        int hashCode = c2.hashCode();
        if (hashCode == 2092) {
            if (c2.equals("AM")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 2123) {
            if (c2.equals("BM")) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode != 2236) {
            if (hashCode == 2467 && c2.equals("MP")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (c2.equals("FB")) {
                c = 0;
            }
            c = 65535;
        }
        return c != 0 ? c != 1 ? c != 2 ? c != 3 ? null : new C6600b(baseAdResult) : new C6609b(baseAdResult) : new C6593c(baseAdResult) : new C6605c(baseAdResult);
    }

    /* renamed from: c */
    public static AbstractC6586e m20448c(BaseAdResult baseAdResult) {
        String c = baseAdResult.m5316c();
        return ((c.hashCode() == 2092 && c.equals("AM")) ? (char) 0 : (char) 65535) != 0 ? null : new C6594d(baseAdResult);
    }

    /* renamed from: d */
    public static AbstractC6589g m20447d(BaseAdResult baseAdResult) {
        String c = baseAdResult.m5316c();
        return ((c.hashCode() == 2092 && c.equals("AM")) ? (char) 0 : (char) 65535) != 0 ? null : new C6596e(baseAdResult);
    }
}

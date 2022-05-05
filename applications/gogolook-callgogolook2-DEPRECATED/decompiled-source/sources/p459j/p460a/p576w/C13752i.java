package p459j.p460a.p576w;

import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14233b;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.i */
/* loaded from: classes2-dex2jar.jar:j/a/w/i.class */
public final class C13752i {

    /* renamed from: a */
    public static C14282k f30861a;

    /* renamed from: b */
    public static final C13752i f30862b = new C13752i();

    /* renamed from: a */
    public static final void m3525a(int i) {
        C14282k kVar = f30861a;
        if (kVar != null) {
            m3517c(i);
            kVar.m1923a();
        }
        f30861a = null;
    }

    /* renamed from: a */
    public static final void m3524a(int i, int i2) {
        if (13 == i || 21 == i) {
            C14282k kVar = f30861a;
            String str = null;
            String str2 = kVar != null ? (String) kVar.m1921a("source") : null;
            C14282k kVar2 = f30861a;
            if (kVar2 != null) {
                str = (String) kVar2.m1921a("material");
            }
            m3519b(i);
            m3525a(i2);
            m3521a(str2, str);
        }
    }

    /* renamed from: a */
    public static final void m3523a(Integer num) {
        C14282k kVar = f30861a;
        if (kVar != null) {
            kVar.m1920a("promote_type", Integer.valueOf(num != null ? num.intValue() : 0));
        }
    }

    /* renamed from: a */
    public static final void m3521a(String str, String str2) {
        C14282k a = f30862b.m3526a();
        if (str == null) {
            str = "others";
        }
        a.m1920a("source", str);
        if (str2 == null) {
            str2 = "none";
        }
        a.m1920a("material", str2);
        a.m1920a("register_status", Integer.valueOf(C14137r4.m2369i() ? 1 : 0));
        a.m1920a("subscribed_status", Integer.valueOf(C14021h2.m2779g() ? 1 : 0));
        f30861a = a;
    }

    /* renamed from: b */
    public static final void m3520b() {
        Integer num;
        C14282k kVar = f30861a;
        int intValue = (kVar == null || (num = (Integer) kVar.m1921a("scroll_count")) == null) ? 0 : num.intValue();
        C14282k kVar2 = f30861a;
        if (kVar2 != null) {
            kVar2.m1920a("scroll_count", Integer.valueOf(intValue + 1));
        }
    }

    /* renamed from: b */
    public static final void m3519b(int i) {
        C14282k kVar = f30861a;
        if (kVar != null) {
            kVar.m1920a("action", Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public static final void m3518b(String str) {
        C15149k.m377b(str, "projectType");
        C14282k kVar = f30861a;
        if (kVar != null) {
            kVar.m1920a("purchase_status", Integer.valueOf(f30862b.m3522a(str)));
        }
    }

    /* renamed from: c */
    public static final void m3517c(int i) {
        C14282k kVar = f30861a;
        if (kVar != null) {
            kVar.m1920a("duration", Integer.valueOf(i));
        }
    }

    /* renamed from: d */
    public static final void m3516d(int i) {
        C14282k kVar = f30861a;
        if (kVar != null) {
            kVar.m1920a("purchase_status", Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    public final int m3522a(String str) {
        int i;
        int hashCode = str.hashCode();
        if (hashCode == 400018166) {
            if (str.equals("ad_free_m")) {
                i = 1;
            }
            i = -2;
        } else if (hashCode != 400018178) {
            if (hashCode == 530277949 && str.equals("ad_free_biannual")) {
                i = 3;
            }
            i = -2;
        } else {
            if (str.equals("ad_free_y")) {
                i = 2;
            }
            i = -2;
        }
        return i;
    }

    /* renamed from: a */
    public final C14282k m3526a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("ver", 3);
        aVar.m2100a("source", "others");
        aVar.m2100a("material", "none");
        aVar.m2100a("action", 0);
        aVar.m2100a("purchase_status", -2);
        aVar.m2100a("register_status", 0);
        aVar.m2100a("subscribed_status", 0);
        aVar.m2100a("promote_type", 0);
        aVar.m2100a("scroll_count", 0);
        aVar.m2100a("duration", 0);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_iap_page_pv"), new C14233b("whoscall_iap_page_pv")}, aVar);
    }
}

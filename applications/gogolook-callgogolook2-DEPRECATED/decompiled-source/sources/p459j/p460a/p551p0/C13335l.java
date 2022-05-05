package p459j.p460a.p551p0;

import p459j.p460a.p582w0.p590x4.C14282k;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
/* renamed from: j.a.p0.l */
/* loaded from: classes3-dex2jar.jar:j/a/p0/l.class */
public final class C13335l {

    /* renamed from: a */
    public static C14282k f30015a;

    /* renamed from: b */
    public static final C13335l f30016b = new C13335l();

    /* renamed from: a */
    public static final void m4182a(int i) {
        C14282k kVar = f30015a;
        if (kVar != null) {
            kVar.m1920a("counts", Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public static final void m4181b() {
        f30015a = f30016b.m4183a();
    }

    /* renamed from: c */
    public static final void m4180c() {
        C14282k kVar = f30015a;
        if (kVar != null) {
            kVar.m1923a();
        }
        f30015a = null;
    }

    /* renamed from: d */
    public static final void m4179d() {
        C14282k kVar = f30015a;
        if (kVar != null) {
            kVar.m1920a("action", 1);
        }
    }

    /* renamed from: e */
    public static final void m4178e() {
        C14282k kVar = f30015a;
        if (kVar != null) {
            kVar.m1920a("action", 2);
        }
    }

    /* renamed from: a */
    public final C14282k m4183a() {
        C14231a aVar = new C14231a();
        aVar.m2100a("action", -1);
        aVar.m2100a("counts", 0);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_search_pv_v2")}, aVar);
    }
}

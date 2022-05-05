package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8125g7;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.C8404v6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
/* renamed from: h.i.c.y.a.b.a.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/g0.class */
public final class C10023g0 {

    /* renamed from: d */
    public static final C6999k f22678d = new C6999k("ModelDownloadLogger", "");

    /* renamed from: a */
    public final C8404v6 f22679a;

    /* renamed from: b */
    public final C10051e f22680b;

    /* renamed from: c */
    public final C8125g7 f22681c;

    public C10023g0(@NonNull C8386u6 u6Var, @NonNull C10051e eVar) {
        this.f22679a = C8404v6.m18125a(u6Var, 4);
        this.f22680b = eVar;
        this.f22681c = C8125g7.m18518a(u6Var);
    }

    /* renamed from: a */
    public final void m13581a(EnumC8223l4 l4Var) {
        m13580a(l4Var, 0);
    }

    /* renamed from: a */
    public final void m13580a(EnumC8223l4 l4Var, int i) {
        m13577a(l4Var, "NA", false, false, EnumC10040w.UNKNOWN, C8075e2.EnumC8077b.MODEL_INFO_RETRIEVAL_FAILED, i);
    }

    /* renamed from: a */
    public final void m13579a(EnumC8223l4 l4Var, EnumC10040w wVar, C8075e2.EnumC8077b bVar) {
        m13577a(l4Var, "NA", false, true, wVar, bVar, 0);
    }

    /* renamed from: a */
    public final void m13578a(EnumC8223l4 l4Var, String str, boolean z, EnumC10040w wVar) {
        m13577a(l4Var, str, false, false, wVar, C8075e2.EnumC8077b.UNKNOWN_STATUS, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13577a(p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4 r7, java.lang.String r8, boolean r9, boolean r10, p081h.p203i.p325c.p373y.p374a.p375b.p376a.EnumC10040w r11, p081h.p203i.p204a.p224e.p259j.p271l.C8075e2.EnumC8077b r12, int r13) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10023g0.m13577a(h.i.a.e.j.l.l4, java.lang.String, boolean, boolean, h.i.c.y.a.b.a.w, h.i.a.e.j.l.e2$b, int):void");
    }

    /* renamed from: a */
    public final void m13576a(EnumC8223l4 l4Var, boolean z, EnumC10040w wVar, C8075e2.EnumC8077b bVar) {
        m13577a(l4Var, "NA", z, false, wVar, bVar, 0);
    }

    /* renamed from: a */
    public final void m13575a(boolean z, EnumC10040w wVar, int i) {
        m13577a(EnumC8223l4.DOWNLOAD_FAILED, "NA", false, false, wVar, C8075e2.EnumC8077b.FAILED, i);
    }
}

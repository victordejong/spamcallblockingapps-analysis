package com.flurry.sdk;

import com.flurry.sdk.C3031ep;
import com.flurry.sdk.C3035er;
import com.flurry.sdk.C3037es;
import com.flurry.sdk.C3039et;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.eh */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/eh.class */
public final class C3021eh {

    /* renamed from: a */
    public int f4705a;

    /* renamed from: b */
    public List<C3031ep> f4706b;

    /* renamed from: c */
    public boolean f4707c;

    /* renamed from: d */
    public boolean f4708d;

    /* renamed from: com.flurry.sdk.eh$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/eh$a.class */
    public static final class C3022a {

        /* renamed from: a */
        public C3021eh f4709a = new C3021eh((byte) 0);

        /* renamed from: a */
        public final C3022a m33271a() {
            this.f4709a.f4708d = true;
            return this;
        }

        /* renamed from: a */
        public final C3022a m33270a(int i) {
            this.f4709a.f4705a = i;
            return this;
        }

        /* renamed from: a */
        public final C3022a m33269a(List<C3031ep> list) {
            this.f4709a.f4706b = list;
            return this;
        }

        /* renamed from: a */
        public final C3022a m33268a(boolean z) {
            this.f4709a.f4707c = z;
            return this;
        }
    }

    public C3021eh() {
    }

    public /* synthetic */ C3021eh(byte b) {
        this();
    }

    /* renamed from: a */
    public static C3021eh m33275a(C3021eh ehVar, C3021eh ehVar2) {
        C3039et etVar;
        if (ehVar == null || ehVar2 == null) {
            return null;
        }
        List<C3031ep> list = ehVar.f4706b;
        List<C3031ep> list2 = ehVar2.f4706b;
        if (list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return null;
        }
        C3031ep epVar = list.get(0);
        C3031ep epVar2 = list2.get(0);
        C3035er erVar = epVar.f4758c;
        C3035er erVar2 = epVar2.f4758c;
        if (erVar == null || erVar2 == null || !EnumC3026ek.Wrapper.equals(erVar.f4763a)) {
            return null;
        }
        if (!(EnumC3026ek.InLine.equals(erVar2.f4763a) || EnumC3026ek.Wrapper.equals(erVar2.f4763a))) {
            return null;
        }
        List<C3037es> list3 = erVar.f4769g;
        List<C3037es> list4 = erVar2.f4769g;
        if (list4 == null || list4.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        if (list3 == null || list3.isEmpty()) {
            arrayList.addAll(list4);
        } else {
            C3037es esVar = list3.get(0);
            C3037es esVar2 = list4.get(0);
            C3039et etVar2 = esVar.f4774d;
            C3039et etVar3 = esVar2.f4774d;
            if (etVar2 == null || etVar3 == null) {
                return null;
            }
            if (etVar2 == null || etVar3 == null) {
                etVar = null;
            } else {
                C3338jg<EnumC3029en, String> jgVar = new C3338jg<>();
                C3338jg<EnumC3029en, String> jgVar2 = etVar2.f4778c;
                if (jgVar2 != null) {
                    jgVar.m32656a(jgVar2);
                }
                C3338jg<EnumC3029en, String> jgVar3 = etVar3.f4778c;
                if (jgVar3 != null) {
                    jgVar.m32656a(jgVar3);
                }
                C3338jg<EnumC3030eo, String> jgVar4 = new C3338jg<>();
                C3338jg<EnumC3030eo, String> jgVar5 = etVar2.f4779d;
                if (jgVar5 != null) {
                    jgVar4.m32656a(jgVar5);
                }
                C3338jg<EnumC3030eo, String> jgVar6 = etVar3.f4779d;
                if (jgVar6 != null) {
                    jgVar4.m32656a(jgVar6);
                }
                C3039et.C3040a aVar = new C3039et.C3040a();
                aVar.m33221a(etVar3.f4776a);
                aVar.m33218b(etVar3.f4777b);
                aVar.m33219a(jgVar);
                aVar.m33217b(jgVar4);
                aVar.m33220a(etVar3.f4780e);
                etVar = aVar.f4781a;
            }
            if (etVar == null) {
                return null;
            }
            C3037es.C3038a aVar2 = new C3037es.C3038a();
            aVar2.m33223a(esVar2.f4771a);
            aVar2.m33225a(esVar2.f4772b);
            aVar2.m33222b(esVar2.f4773c);
            aVar2.m33224a(etVar);
            arrayList.add(aVar2.f4775a);
        }
        C3035er.C3036a aVar3 = new C3035er.C3036a();
        aVar3.m33232a(EnumC3026ek.Wrapper);
        aVar3.m33230a(erVar2.f4764b);
        aVar3.m33231a(erVar.f4765c);
        ArrayList arrayList2 = new ArrayList();
        List<String> list5 = erVar.f4766d;
        if (list5 != null) {
            arrayList2.addAll(list5);
        }
        List<String> list6 = erVar2.f4766d;
        if (list6 != null) {
            for (String str : list6) {
                if (arrayList2.contains(str)) {
                    return null;
                }
            }
            arrayList2.addAll(list6);
        }
        aVar3.m33229a(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        List<String> list7 = erVar.f4767e;
        if (list7 != null) {
            arrayList3.addAll(list7);
        }
        List<String> list8 = erVar2.f4767e;
        if (list8 != null) {
            arrayList3.addAll(list8);
        }
        aVar3.m33228b(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        List<String> list9 = erVar.f4768f;
        if (list9 != null) {
            arrayList4.addAll(list9);
        }
        List<String> list10 = erVar2.f4768f;
        if (list10 != null) {
            arrayList4.addAll(list10);
        }
        aVar3.m33227c(arrayList4);
        aVar3.m33226d(arrayList);
        C3035er erVar3 = aVar3.f4770a;
        C3031ep.C3032a aVar4 = new C3031ep.C3032a();
        aVar4.m33235a(epVar.f4756a);
        aVar4.m33237a(epVar.f4757b);
        aVar4.m33236a(erVar3);
        C3031ep epVar3 = aVar4.f4759a;
        ArrayList arrayList5 = new ArrayList(1);
        arrayList5.add(epVar3);
        C3022a aVar5 = new C3022a();
        aVar5.m33269a(arrayList5);
        aVar5.m33270a(ehVar.f4705a);
        aVar5.m33268a(EnumC3026ek.InLine.equals(erVar2.f4763a));
        return aVar5.f4709a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (r4 != null) goto L_0x005f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m33276a() {
        /*
            r3 = this;
            r0 = r3
            java.util.List<com.flurry.sdk.ep> r0 = r0.f4706b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005d
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x005d
            r0 = r4
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.flurry.sdk.ep r0 = (com.flurry.sdk.C3031ep) r0
            com.flurry.sdk.er r0 = r0.f4758c
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005d
            r0 = r4
            java.util.List<com.flurry.sdk.es> r0 = r0.f4769g
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005d
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x005d
            r0 = r4
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.flurry.sdk.es r0 = (com.flurry.sdk.C3037es) r0
            com.flurry.sdk.et r0 = r0.f4774d
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005d
            r0 = r4
            com.flurry.sdk.eu r0 = r0.f4780e
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005d
            r0 = r4
            java.lang.String r0 = r0.f4784c
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005d
            goto L_0x005f
        L_0x005d:
            r0 = 0
            r4 = r0
        L_0x005f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3021eh.m33276a():java.lang.String");
    }

    /* renamed from: a */
    public final List<String> m33274a(EnumC3029en enVar) {
        C3035er erVar;
        List<C3037es> list;
        C3039et etVar;
        C3338jg<EnumC3029en, String> jgVar;
        List<C3031ep> list2 = this.f4706b;
        return (list2 == null || list2.isEmpty() || (erVar = list2.get(0).f4758c) == null || (list = erVar.f4769g) == null || list.isEmpty() || (etVar = list.get(0).f4774d) == null || (jgVar = etVar.f4778c) == null) ? null : jgVar.m32655a((C3338jg<EnumC3029en, String>) enVar);
    }

    /* renamed from: a */
    public final List<String> m33273a(EnumC3030eo eoVar) {
        C3035er erVar;
        List<C3037es> list;
        C3039et etVar;
        C3338jg<EnumC3030eo, String> jgVar;
        ArrayList arrayList = new ArrayList();
        List<C3031ep> list2 = this.f4706b;
        if (!(list2 == null || list2.isEmpty() || (erVar = list2.get(0).f4758c) == null || (list = erVar.f4769g) == null || list.isEmpty() || (etVar = list.get(0).f4774d) == null || (jgVar = etVar.f4779d) == null)) {
            arrayList.addAll(jgVar.m32655a((C3338jg<EnumC3030eo, String>) eoVar));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final String m33272b() {
        List<String> a = m33273a(EnumC3030eo.ClickThrough);
        if (a.size() > 0) {
            return a.get(0);
        }
        return null;
    }
}

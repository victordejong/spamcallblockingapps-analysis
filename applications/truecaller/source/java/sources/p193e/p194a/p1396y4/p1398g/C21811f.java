package p193e.p194a.p1396y4.p1398g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19278d;
import p193e.p194a.p432b4.p433a.C8638c;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.y4.g.f */
/* loaded from: classes13-dex2jar.jar:e/a/y4/g/f.class */
public final class C21811f implements AbstractC21806a {

    /* renamed from: a */
    public final String f60669a;

    /* renamed from: b */
    public final C8638c f60670b;

    public C21811f(String str, C8638c c8638c) {
        l.e(str, "t9Lang");
        l.e(c8638c, "t9KeyMap");
        this.f60669a = str;
        this.f60670b = c8638c;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0215 A[SYNTHETIC] */
    @Override // p193e.p194a.p1396y4.p1398g.AbstractC21806a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> mo9040a(java.lang.String r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1396y4.p1398g.C21811f.mo9040a(java.lang.String, boolean, boolean):java.util.List");
    }

    /* renamed from: b */
    public final List<String> m9039b(List<String> list, s1.z.b.l<? super Character, Boolean> lVar, s1.z.b.l<? super Character, ? extends List<String>> lVar2) {
        List list2;
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            ArrayList arrayList2 = new ArrayList(str.length());
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                Character valueOf = Character.valueOf(charAt);
                if (!((Boolean) lVar.d(Character.valueOf(valueOf.charValue()))).booleanValue()) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    try {
                        list2 = (List) lVar2.d(Character.valueOf(valueOf.charValue()));
                    } catch (Throwable th) {
                        list2 = null;
                    }
                    if (list2 != null) {
                        arrayList2.add(list2);
                    }
                }
                list2 = C25225a.m3962T1(String.valueOf(charAt));
                arrayList2.add(list2);
            }
            ArrayList m3962T1 = C25225a.m3962T1("");
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                List<Object> list3 = (List) it.next();
                l.e(m3962T1, "$this$combineJoining");
                l.e(list3, "other");
                l.e("", "separator");
                C19278d c19278d = new C19278d("");
                l.e(m3962T1, "$this$combine");
                l.e(list3, "other");
                l.e(c19278d, "transformer");
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : m3962T1) {
                    ArrayList arrayList4 = new ArrayList(C25225a.m4004J(list3, 10));
                    for (Object obj2 : list3) {
                        arrayList4.add(c19278d.m13707k(obj, obj2));
                    }
                    i.b(arrayList3, arrayList4);
                }
                m3962T1 = arrayList3;
            }
            i.b(arrayList, m3962T1);
        }
        return arrayList;
    }
}

package p193e.p1681q.p1701f.p1702a.p1705e.p1711g;

import e.q.f.a.c.b;
import e.q.f.a.f.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import p193e.p1681q.p1688b.C25186d;
import p193e.p1681q.p1701f.p1702a.C25223b;
import p193e.p1681q.p1701f.p1702a.p1705e.C25228a;
/* renamed from: e.q.f.a.e.g.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/g/b.class */
public class C25244b {

    /* renamed from: e */
    public static C25223b f70610e;

    /* renamed from: a */
    public b f70611a;

    /* renamed from: b */
    public boolean f70612b;

    /* renamed from: c */
    public ArrayList<C25243a> f70613c = new ArrayList<>();

    /* renamed from: d */
    public C25228a f70614d;

    public C25244b(b bVar, C25228a c25228a, C25223b c25223b) {
        this.f70611a = bVar;
        this.f70614d = c25228a;
        f70610e = c25223b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m3763a() {
        if (this.f70612b) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f70613c.size(); i++) {
            C25243a c25243a = this.f70613c.get(i);
            if (c25243a.f70609e) {
                arrayList.add(c25243a);
            }
        }
        if (arrayList.size() == 1) {
            this.f70612b = true;
            ArrayList<C25243a> arrayList2 = new ArrayList<>();
            this.f70613c = arrayList2;
            arrayList2.add(arrayList.get(0));
        } else if (arrayList.size() > 1) {
            ArrayList<C25243a> arrayList3 = new ArrayList<>();
            this.f70613c = arrayList3;
            arrayList3.addAll(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((C25243a) it.next()).f70609e = false;
            }
        }
    }

    /* renamed from: b */
    public String[] m3762b(int i, String str, String str2) {
        int i2;
        String[] split = str.split("\\|");
        String str3 = null;
        if (split.length == 3) {
            i2 = split[0].charAt(1) - '0';
            str = split[1];
            str3 = split[2].substring(1, split[2].length() - 1);
        } else if (split.length == 2 && split[0].charAt(0) == '{') {
            i2 = split[0].charAt(1) - '0';
            str = split[1];
        } else {
            i2 = i;
            if (split.length == 2) {
                str = split[0];
                str3 = split[1].substring(1, split[1].length() - 1);
                i2 = i;
            }
        }
        return new String[]{Integer.toString(i2), str, str3};
    }

    /* renamed from: c */
    public void m3761c(int i, String str) {
        boolean z;
        Iterator<C25243a> it = this.f70613c.iterator();
        while (it.hasNext()) {
            C25243a next = it.next();
            Iterator<Integer> it2 = this.f70614d.f70539b.f70574f.iterator();
            while (true) {
                z = false;
                if (!it2.hasNext()) {
                    break;
                }
                int intValue = it2.next().intValue();
                if (next.f70605a < intValue) {
                    z = false;
                    if (i > intValue) {
                        z = true;
                    }
                }
            }
            if (!z) {
                b bVar = next.f70606b;
                if (bVar.f70531a) {
                    boolean z2 = true;
                    if (bVar.f.equalsIgnoreCase("vendor")) {
                        z2 = true ^ C25186d.m4117f(str, true);
                    }
                    if (z2) {
                        if (!next.f70607c.a(next.f70606b.f)) {
                            if (!next.f70608d.a(next.f70606b.f)) {
                                n nVar = next.f70608d;
                                String str2 = next.f70606b.f;
                                n nVar2 = nVar;
                                Objects.requireNonNull(nVar2);
                                str2.hashCode();
                                String str3 = (String) nVar2.b.put(str2, str);
                                if (next.f70606b.f70532b) {
                                    next.m3764a();
                                }
                            }
                        }
                    }
                }
            }
        }
        m3763a();
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0407 A[EDGE_INSN: B:141:0x0407->B:87:0x0407 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03df  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3760d(p193e.p1681q.p1701f.p1702a.p1712f.C25247c r6, p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25236c r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 1420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.p1705e.p1711g.C25244b.m3760d(e.q.f.a.f.c, e.q.f.a.e.d.c, boolean):void");
    }

    /* renamed from: e */
    public final boolean m3759e(ArrayList<String> arrayList, String str) {
        if (str.matches("[-/@#$%^&_+=()]+") || str.length() <= 0) {
            return false;
        }
        arrayList.add("\"#" + str + "\"");
        return true;
    }
}

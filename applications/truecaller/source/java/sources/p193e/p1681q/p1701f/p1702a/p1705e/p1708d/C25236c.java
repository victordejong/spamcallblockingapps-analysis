package p193e.p1681q.p1701f.p1702a.p1705e.p1708d;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: e.q.f.a.e.d.c */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/d/c.class */
public class C25236c {

    /* renamed from: a */
    public ArrayList<C25235b> f70589a = new ArrayList<>();

    /* renamed from: a */
    public boolean m3774a(C25235b c25235b) {
        Iterator<C25235b> it = this.f70589a.iterator();
        while (it.hasNext()) {
            if (it.next().equals(c25235b)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m3773b(String str) {
        Iterator<C25235b> it = this.f70589a.iterator();
        while (it.hasNext()) {
            String str2 = it.next().f70584f;
            if (str2 != null && str.equals(str2.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public boolean m3772c(int i, String str) {
        boolean z;
        if (this.f70589a.size() > i) {
            ArrayList<C25235b> arrayList = this.f70589a;
            if (str.equals(arrayList.get(arrayList.size() - i).f70579a)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    public boolean m3771d(String str) {
        Iterator<C25235b> it = this.f70589a.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().f70579a)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public boolean m3770e(String... strArr) {
        int size = this.f70589a.size() - 1;
        while (true) {
            if (size >= 0) {
                C25235b c25235b = this.f70589a.get(size);
                for (String str : strArr) {
                    if (str.equals(c25235b.f70579a)) {
                        return true;
                    }
                }
                size--;
            } else {
                return false;
            }
        }
    }

    /* renamed from: f */
    public List<C25235b> m3769f(String str, int i, String str2, String... strArr) {
        boolean z;
        int i2;
        boolean z2;
        int size = this.f70589a.size() - 1;
        ArrayList arrayList = new ArrayList(1);
        int size2 = this.f70589a.size() - 1;
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            if (size2 < 0) {
                break;
            }
            if (!str2.equals(this.f70589a.get(size2).f70579a)) {
                i2 = size;
                z2 = z4;
                if (z4) {
                    break;
                }
            } else {
                size2--;
                z2 = true;
                i2 = size2;
            }
            size2--;
            size = i2;
            z3 = z2;
        }
        boolean z5 = false;
        int i3 = 0;
        while (size >= 0) {
            C25235b c25235b = this.f70589a.get(size);
            if (str.equals(c25235b.f70584f)) {
                arrayList.add(c25235b);
                z = true;
            } else {
                z = z5;
                if (z5) {
                    if (strArr.length <= 0) {
                        return arrayList;
                    }
                    for (String str3 : strArr) {
                        if (str3.equals(c25235b.f70579a)) {
                            return arrayList;
                        }
                    }
                    return null;
                }
            }
            int i4 = i3;
            if (i > 0) {
                if (i3 >= i && !z) {
                    return null;
                }
                i4 = i3 + 1;
            }
            size--;
            i3 = i4;
            z5 = z;
        }
        return null;
    }

    /* renamed from: g */
    public List<C25235b> m3768g(String str, int i, String str2, String... strArr) {
        boolean z;
        boolean z2;
        int i2;
        int size = this.f70589a.size() - 1;
        ArrayList arrayList = new ArrayList(1);
        int i3 = size;
        if (str2 != null) {
            int size2 = this.f70589a.size() - 1;
            boolean z3 = false;
            while (true) {
                boolean z4 = z3;
                i3 = size;
                if (size2 < 0) {
                    break;
                }
                if (!str2.equals(this.f70589a.get(size2).f70579a)) {
                    i2 = size;
                    z2 = z4;
                    if (z4) {
                        i3 = size;
                        break;
                    }
                } else {
                    size2--;
                    z2 = true;
                    i2 = size2;
                }
                size2--;
                size = i2;
                z3 = z2;
            }
        }
        boolean z5 = false;
        int i4 = 0;
        int i5 = i3;
        while (i5 >= 0) {
            C25235b c25235b = this.f70589a.get(i5);
            if (str.equals(c25235b.f70579a)) {
                arrayList.add(c25235b);
                z = true;
            } else {
                z = z5;
                if (z5) {
                    if (strArr.length <= 0) {
                        return arrayList;
                    }
                    for (String str3 : strArr) {
                        if (str3.equals(c25235b.f70579a)) {
                            return arrayList;
                        }
                    }
                    return null;
                }
            }
            int i6 = i4;
            if (i > 0) {
                if (i4 >= i && !z) {
                    return null;
                }
                i6 = i4 + 1;
            }
            i5--;
            i4 = i6;
            z5 = z;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0111, code lost:
        if (r0.equals(r0) != false) goto L32;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1681q.p1701f.p1702a.p1712f.C25249f<java.lang.String, java.lang.String> m3767h(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25236c.m3767h(java.lang.String):e.q.f.a.f.f");
    }

    /* renamed from: i */
    public int m3766i() {
        return this.f70589a.size();
    }

    /* renamed from: j */
    public boolean m3765j() {
        Iterator<C25235b> it = this.f70589a.iterator();
        while (it.hasNext()) {
            C25235b next = it.next();
            String str = next.f70584f;
            if (str != null && (str.contains("(") || next.f70584f.contains(")"))) {
                return true;
            }
        }
        return false;
    }
}

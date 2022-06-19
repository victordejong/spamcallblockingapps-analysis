package p193e.p1577m.p1578a.p1596c.p1622m1.p1628r;

import android.text.SpannableStringBuilder;
import android.util.Pair;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
/* renamed from: e.m.a.c.m1.r.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/b.class */
public final class C24612b {

    /* renamed from: a */
    public final String f68893a;

    /* renamed from: b */
    public final String f68894b;

    /* renamed from: c */
    public final boolean f68895c;

    /* renamed from: d */
    public final long f68896d;

    /* renamed from: e */
    public final long f68897e;

    /* renamed from: f */
    public final C24614d f68898f;

    /* renamed from: g */
    public final String[] f68899g;

    /* renamed from: h */
    public final String f68900h;

    /* renamed from: i */
    public final String f68901i;

    /* renamed from: j */
    public final HashMap<String, Integer> f68902j;

    /* renamed from: k */
    public final HashMap<String, Integer> f68903k;

    /* renamed from: l */
    public List<C24612b> f68904l;

    public C24612b(String str, String str2, long j, long j2, C24614d c24614d, String[] strArr, String str3, String str4) {
        this.f68893a = str;
        this.f68894b = str2;
        this.f68901i = str4;
        this.f68898f = c24614d;
        this.f68899g = strArr;
        this.f68895c = str2 != null;
        this.f68896d = j;
        this.f68897e = j2;
        Objects.requireNonNull(str3);
        this.f68900h = str3;
        this.f68902j = new HashMap<>();
        this.f68903k = new HashMap<>();
    }

    /* renamed from: b */
    public static C24612b m4842b(String str) {
        return new C24612b(null, str.replaceAll("\r\n", StringConstant.NEW_LINE).replaceAll(" *\n *", StringConstant.NEW_LINE).replaceAll(StringConstant.NEW_LINE, StringConstant.SPACE).replaceAll("[ \t\\x0B\f\r]+", StringConstant.SPACE), -9223372036854775807L, -9223372036854775807L, null, null, "", null);
    }

    /* renamed from: f */
    public static SpannableStringBuilder m4838f(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    /* renamed from: a */
    public void m4843a(C24612b c24612b) {
        if (this.f68904l == null) {
            this.f68904l = new ArrayList();
        }
        this.f68904l.add(c24612b);
    }

    /* renamed from: c */
    public C24612b m4841c(int i) {
        List<C24612b> list = this.f68904l;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: d */
    public int m4840d() {
        List<C24612b> list = this.f68904l;
        return list == null ? 0 : list.size();
    }

    /* renamed from: e */
    public final void m4839e(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f68893a);
        boolean equals2 = "div".equals(this.f68893a);
        if (z || equals || (equals2 && this.f68901i != null)) {
            long j = this.f68896d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f68897e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.f68904l == null) {
            return;
        }
        for (int i = 0; i < this.f68904l.size(); i++) {
            this.f68904l.get(i).m4839e(treeSet, z || equals);
        }
    }

    /* renamed from: g */
    public boolean m4837g(long j) {
        long j2 = this.f68896d;
        return (j2 == -9223372036854775807L && this.f68897e == -9223372036854775807L) || (j2 <= j && this.f68897e == -9223372036854775807L) || ((j2 == -9223372036854775807L && j < this.f68897e) || (j2 <= j && j < this.f68897e));
    }

    /* renamed from: h */
    public final void m4836h(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f68900h)) {
            str = this.f68900h;
        }
        if (m4837g(j) && "div".equals(this.f68893a) && this.f68901i != null) {
            list.add(new Pair<>(str, this.f68901i));
            return;
        }
        for (int i = 0; i < m4840d(); i++) {
            m4841c(i).m4836h(j, str, list);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x030c, code lost:
        if (r13 >= m4840d()) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x030f, code lost:
        m4841c(r13).m4835i(r7, r9, r10);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0322, code lost:
        return;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4835i(long r7, java.util.Map<java.lang.String, p193e.p1577m.p1578a.p1596c.p1622m1.p1628r.C24614d> r9, java.util.Map<java.lang.String, android.text.SpannableStringBuilder> r10) {
        /*
            Method dump skipped, instructions count: 803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1628r.C24612b.m4835i(long, java.util.Map, java.util.Map):void");
    }

    /* renamed from: j */
    public final void m4834j(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.f68902j.clear();
        this.f68903k.clear();
        if ("metadata".equals(this.f68893a)) {
            return;
        }
        if (!"".equals(this.f68900h)) {
            str = this.f68900h;
        }
        if (this.f68895c && z) {
            m4838f(str, map).append((CharSequence) this.f68894b);
        } else if ("br".equals(this.f68893a) && z) {
            m4838f(str, map).append('\n');
        } else if (m4837g(j)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.f68902j.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean equals = "p".equals(this.f68893a);
            for (int i = 0; i < m4840d(); i++) {
                m4841c(i).m4834j(j, z || equals, str, map);
            }
            if (equals) {
                SpannableStringBuilder m4838f = m4838f(str, map);
                int length = m4838f.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (m4838f.charAt(length) == ' ');
                if (length >= 0 && m4838f.charAt(length) != '\n') {
                    m4838f.append('\n');
                }
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.f68903k.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }
}

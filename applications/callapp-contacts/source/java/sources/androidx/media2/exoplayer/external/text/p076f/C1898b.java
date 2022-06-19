package androidx.media2.exoplayer.external.text.p076f;

import android.text.SpannableStringBuilder;
import android.util.Pair;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: androidx.media2.exoplayer.external.text.f.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/b.class */
final class C1898b {

    /* renamed from: a */
    public final String f7610a;

    /* renamed from: b */
    public final String f7611b;

    /* renamed from: c */
    public final boolean f7612c;

    /* renamed from: d */
    public final long f7613d;

    /* renamed from: e */
    public final long f7614e;

    /* renamed from: f */
    public final C1900d f7615f;

    /* renamed from: g */
    public final String f7616g;

    /* renamed from: h */
    public final String f7617h;

    /* renamed from: i */
    private final String[] f7618i;

    /* renamed from: j */
    private final HashMap<String, Integer> f7619j;

    /* renamed from: k */
    private final HashMap<String, Integer> f7620k;

    /* renamed from: l */
    private List<C1898b> f7621l;

    public C1898b(String str, String str2, long j, long j2, C1900d c1900d, String[] strArr, String str3, String str4) {
        this.f7610a = str;
        this.f7611b = str2;
        this.f7617h = str4;
        this.f7615f = c1900d;
        this.f7618i = strArr;
        this.f7612c = str2 != null;
        this.f7613d = j;
        this.f7614e = j2;
        this.f7616g = (String) C1993a.m41690a(str3);
        this.f7619j = new HashMap<>();
        this.f7620k = new HashMap<>();
    }

    /* renamed from: a */
    public static SpannableStringBuilder m41930a(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int i2;
        int length = spannableStringBuilder.length();
        int i3 = 0;
        while (i3 < length) {
            int i4 = length;
            if (spannableStringBuilder.charAt(i3) == ' ') {
                int i5 = i3 + 1;
                int i6 = i5;
                while (i6 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i6) == ' ') {
                    i6++;
                }
                int i7 = i6 - i5;
                i4 = length;
                if (i7 > 0) {
                    spannableStringBuilder.delete(i3, i3 + i7);
                    i4 = length - i7;
                }
            }
            i3++;
            length = i4;
        }
        int i8 = length;
        if (length > 0) {
            i8 = length;
            if (spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
                i8 = length - 1;
            }
        }
        int i9 = 0;
        while (true) {
            i = i8 - 1;
            if (i9 >= i) {
                break;
            }
            int i10 = i8;
            if (spannableStringBuilder.charAt(i9) == '\n') {
                int i11 = i9 + 1;
                i10 = i8;
                if (spannableStringBuilder.charAt(i11) == ' ') {
                    spannableStringBuilder.delete(i11, i9 + 2);
                    i10 = i8 - 1;
                }
            }
            i9++;
            i8 = i10;
        }
        int i12 = i8;
        int i13 = 0;
        if (i8 > 0) {
            i12 = i8;
            i13 = 0;
            if (spannableStringBuilder.charAt(i) == ' ') {
                spannableStringBuilder.delete(i, i8);
                i12 = i8 - 1;
                i13 = 0;
            }
        }
        while (true) {
            i2 = i12 - 1;
            if (i13 >= i2) {
                break;
            }
            int i14 = i12;
            if (spannableStringBuilder.charAt(i13) == ' ') {
                int i15 = i13 + 1;
                i14 = i12;
                if (spannableStringBuilder.charAt(i15) == '\n') {
                    spannableStringBuilder.delete(i13, i15);
                    i14 = i12 - 1;
                }
            }
            i13++;
            i12 = i14;
        }
        if (i12 > 0 && spannableStringBuilder.charAt(i2) == '\n') {
            spannableStringBuilder.delete(i2, i12);
        }
        return spannableStringBuilder;
    }

    /* renamed from: a */
    private static SpannableStringBuilder m41928a(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    /* renamed from: a */
    private C1898b m41935a(int i) {
        List<C1898b> list = this.f7621l;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: a */
    private void m41927a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f7610a);
        boolean equals2 = "div".equals(this.f7610a);
        if (z || equals || (equals2 && this.f7617h != null)) {
            long j = this.f7613d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f7614e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.f7621l == null) {
            return;
        }
        for (int i = 0; i < this.f7621l.size(); i++) {
            this.f7621l.get(i).m41927a(treeSet, z || equals);
        }
    }

    /* renamed from: a */
    private boolean m41934a(long j) {
        long j2 = this.f7613d;
        if (j2 == -9223372036854775807L && this.f7614e == -9223372036854775807L) {
            return true;
        }
        if (j2 <= j && this.f7614e == -9223372036854775807L) {
            return true;
        }
        if (j2 == -9223372036854775807L && j < this.f7614e) {
            return true;
        }
        return j2 <= j && j < this.f7614e;
    }

    /* renamed from: b */
    private int m41926b() {
        List<C1898b> list = this.f7621l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: a */
    public final void m41933a(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f7616g)) {
            str = this.f7616g;
        }
        if (m41934a(j) && "div".equals(this.f7610a) && this.f7617h != null) {
            list.add(new Pair<>(str, this.f7617h));
            return;
        }
        for (int i = 0; i < m41926b(); i++) {
            m41935a(i).m41933a(j, str, list);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0309, code lost:
        if (r13 >= m41926b()) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x030c, code lost:
        m41935a(r13).m41932a(r7, r9, r10);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x031f, code lost:
        return;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41932a(long r7, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.text.p076f.C1900d> r9, java.util.Map<java.lang.String, android.text.SpannableStringBuilder> r10) {
        /*
            Method dump skipped, instructions count: 800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p076f.C1898b.m41932a(long, java.util.Map, java.util.Map):void");
    }

    /* renamed from: a */
    public final void m41931a(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.f7619j.clear();
        this.f7620k.clear();
        if ("metadata".equals(this.f7610a)) {
            return;
        }
        if (!"".equals(this.f7616g)) {
            str = this.f7616g;
        }
        if (this.f7612c && z) {
            m41928a(str, map).append((CharSequence) this.f7611b);
        } else if ("br".equals(this.f7610a) && z) {
            m41928a(str, map).append('\n');
        } else if (m41934a(j)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.f7619j.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean equals = "p".equals(this.f7610a);
            for (int i = 0; i < m41926b(); i++) {
                m41935a(i).m41931a(j, z || equals, str, map);
            }
            if (equals) {
                SpannableStringBuilder m41928a = m41928a(str, map);
                int length = m41928a.length() - 1;
                while (length >= 0 && m41928a.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && m41928a.charAt(length) != '\n') {
                    m41928a.append('\n');
                }
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.f7620k.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }

    /* renamed from: a */
    public final void m41929a(C1898b c1898b) {
        if (this.f7621l == null) {
            this.f7621l = new ArrayList();
        }
        this.f7621l.add(c1898b);
    }

    /* renamed from: a */
    public final long[] m41936a() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        m41927a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it2 = treeSet.iterator();
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        return jArr;
    }
}

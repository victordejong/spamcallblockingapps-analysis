package com.google.android.exoplayer2.text.p257q;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* renamed from: com.google.android.exoplayer2.text.q.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/b.class */
final class C5368b {

    /* renamed from: a */
    public final String f17146a;

    /* renamed from: b */
    public final String f17147b;

    /* renamed from: c */
    public final boolean f17148c;

    /* renamed from: d */
    public final long f17149d;

    /* renamed from: e */
    public final long f17150e;

    /* renamed from: f */
    public final C5371e f17151f;

    /* renamed from: g */
    private final String[] f17152g;

    /* renamed from: h */
    public final String f17153h;

    /* renamed from: i */
    public final String f17154i;

    /* renamed from: j */
    private final HashMap<String, Integer> f17155j;

    /* renamed from: k */
    private final HashMap<String, Integer> f17156k;

    /* renamed from: l */
    private List<C5368b> f17157l;

    private C5368b(String str, String str2, long j, long j2, C5371e c5371e, String[] strArr, String str3, String str4) {
        this.f17146a = str;
        this.f17147b = str2;
        this.f17154i = str4;
        this.f17151f = c5371e;
        this.f17152g = strArr;
        this.f17148c = str2 != null;
        this.f17149d = j;
        this.f17150e = j2;
        this.f17153h = (String) C5508e.m18911e(str3);
        this.f17155j = new HashMap<>();
        this.f17156k = new HashMap<>();
    }

    /* renamed from: b */
    private void m19502b(Map<String, C5371e> map, SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        C5371e m19485d = C5370d.m19485d(this.f17151f, this.f17152g, map);
        if (m19485d != null) {
            C5370d.m19488a(spannableStringBuilder, i, i2, m19485d);
        }
    }

    /* renamed from: c */
    public static C5368b m19501c(String str, long j, long j2, C5371e c5371e, String[] strArr, String str2, String str3) {
        return new C5368b(str, null, j, j2, c5371e, strArr, str2, str3);
    }

    /* renamed from: d */
    public static C5368b m19500d(String str) {
        return new C5368b(null, C5370d.m19487b(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null);
    }

    /* renamed from: e */
    private SpannableStringBuilder m19499e(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int i2;
        int i3;
        int length = spannableStringBuilder.length();
        int i4 = 0;
        while (i4 < length) {
            int i5 = length;
            if (spannableStringBuilder.charAt(i4) == ' ') {
                int i6 = i4 + 1;
                int i7 = i6;
                while (i7 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i7) == ' ') {
                    i7++;
                }
                int i8 = i7 - i6;
                i5 = length;
                if (i8 > 0) {
                    spannableStringBuilder.delete(i4, i4 + i8);
                    i5 = length - i8;
                }
            }
            i4++;
            length = i5;
        }
        int i9 = length;
        if (length > 0) {
            i9 = length;
            if (spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
                i9 = length - 1;
            }
        }
        int i10 = 0;
        while (true) {
            i = i9;
            i2 = i - 1;
            if (i10 >= i2) {
                break;
            }
            i9 = i;
            if (spannableStringBuilder.charAt(i10) == '\n') {
                int i11 = i10 + 1;
                i9 = i;
                if (spannableStringBuilder.charAt(i11) == ' ') {
                    spannableStringBuilder.delete(i11, i10 + 2);
                    i9 = i - 1;
                }
            }
            i10++;
        }
        int i12 = i;
        int i13 = 0;
        if (i > 0) {
            i12 = i;
            i13 = 0;
            if (spannableStringBuilder.charAt(i2) == ' ') {
                spannableStringBuilder.delete(i2, i);
                i12 = i - 1;
                i13 = 0;
            }
        }
        while (true) {
            i3 = i12 - 1;
            if (i13 >= i3) {
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
        if (i12 > 0 && spannableStringBuilder.charAt(i3) == '\n') {
            spannableStringBuilder.delete(i3, i12);
        }
        return spannableStringBuilder;
    }

    /* renamed from: i */
    private void m19495i(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f17146a);
        boolean equals2 = "div".equals(this.f17146a);
        if (z || equals || (equals2 && this.f17154i != null)) {
            long j = this.f17149d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f17150e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.f17157l == null) {
            return;
        }
        for (int i = 0; i < this.f17157l.size(); i++) {
            this.f17157l.get(i).m19495i(treeSet, z || equals);
        }
    }

    /* renamed from: k */
    private static SpannableStringBuilder m19493k(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    /* renamed from: m */
    private void m19491m(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f17153h)) {
            str = this.f17153h;
        }
        if (m19492l(j) && "div".equals(this.f17146a) && this.f17154i != null) {
            list.add(new Pair<>(str, this.f17154i));
            return;
        }
        for (int i = 0; i < m19497g(); i++) {
            m19498f(i).m19491m(j, str, list);
        }
    }

    /* renamed from: n */
    private void m19490n(long j, Map<String, C5371e> map, Map<String, SpannableStringBuilder> map2) {
        int i;
        if (!m19492l(j)) {
            return;
        }
        Iterator<Map.Entry<String, Integer>> it = this.f17156k.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int i2 = 0;
                if (this.f17155j.containsKey(key)) {
                    i2 = this.f17155j.get(key).intValue();
                }
                int intValue = next.getValue().intValue();
                if (i2 != intValue) {
                    m19502b(map, map2.get(key), i2, intValue);
                }
            }
        }
        for (i = 0; i < m19497g(); i++) {
            m19498f(i).m19490n(j, map, map2);
        }
    }

    /* renamed from: o */
    private void m19489o(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.f17155j.clear();
        this.f17156k.clear();
        if ("metadata".equals(this.f17146a)) {
            return;
        }
        if (!"".equals(this.f17153h)) {
            str = this.f17153h;
        }
        if (this.f17148c && z) {
            m19493k(str, map).append((CharSequence) this.f17147b);
        } else if ("br".equals(this.f17146a) && z) {
            m19493k(str, map).append('\n');
        } else if (m19492l(j)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.f17155j.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean equals = "p".equals(this.f17146a);
            for (int i = 0; i < m19497g(); i++) {
                m19498f(i).m19489o(j, z || equals, str, map);
            }
            if (equals) {
                C5370d.m19486c(m19493k(str, map));
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.f17156k.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }

    /* renamed from: a */
    public void m19503a(C5368b c5368b) {
        if (this.f17157l == null) {
            this.f17157l = new ArrayList();
        }
        this.f17157l.add(c5368b);
    }

    /* renamed from: f */
    public C5368b m19498f(int i) {
        List<C5368b> list = this.f17157l;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: g */
    public int m19497g() {
        List<C5368b> list = this.f17157l;
        return list == null ? 0 : list.size();
    }

    /* renamed from: h */
    public List<C5317b> m19496h(long j, Map<String, C5371e> map, Map<String, C5369c> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        m19491m(j, this.f17153h, arrayList);
        TreeMap treeMap = new TreeMap();
        m19489o(j, false, this.f17153h, treeMap);
        m19490n(j, map, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                C5369c c5369c = map2.get(pair.first);
                arrayList2.add(new C5317b(decodeByteArray, c5369c.f17159b, 0, c5369c.f17160c, c5369c.f17162e, c5369c.f17163f, c5369c.f17164g));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C5369c c5369c2 = map2.get(entry.getKey());
            arrayList2.add(new C5317b(m19499e((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, c5369c2.f17160c, c5369c2.f17161d, c5369c2.f17162e, c5369c2.f17159b, Integer.MIN_VALUE, c5369c2.f17163f, c5369c2.f17165h, c5369c2.f17166i));
        }
        return arrayList2;
    }

    /* renamed from: j */
    public long[] m19494j() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        m19495i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    /* renamed from: l */
    public boolean m19492l(long j) {
        long j2 = this.f17149d;
        return (j2 == -9223372036854775807L && this.f17150e == -9223372036854775807L) || (j2 <= j && this.f17150e == -9223372036854775807L) || ((j2 == -9223372036854775807L && j < this.f17150e) || (j2 <= j && j < this.f17150e));
    }
}

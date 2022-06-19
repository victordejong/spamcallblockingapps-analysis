package com.google.android.exoplayer2.text.p343g;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.p340d.C11375a;
import com.google.android.exoplayer2.text.p340d.C11376b;
import com.google.android.exoplayer2.text.p340d.C11377c;
import com.google.android.exoplayer2.text.p340d.C11378d;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.google.android.exoplayer2.text.g.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/d.class */
public final class C11397d {

    /* renamed from: a */
    public final String f37587a;

    /* renamed from: b */
    public final String f37588b;

    /* renamed from: c */
    public final boolean f37589c;

    /* renamed from: d */
    public final long f37590d;

    /* renamed from: e */
    public final long f37591e;

    /* renamed from: f */
    public final C11400g f37592f;

    /* renamed from: g */
    final String[] f37593g;

    /* renamed from: h */
    public final String f37594h;

    /* renamed from: i */
    public final String f37595i;

    /* renamed from: j */
    public final C11397d f37596j;

    /* renamed from: k */
    private final HashMap<String, Integer> f37597k;

    /* renamed from: l */
    private final HashMap<String, Integer> f37598l;

    /* renamed from: m */
    private List<C11397d> f37599m;

    public C11397d(String str, String str2, long j, long j2, C11400g c11400g, String[] strArr, String str3, String str4, C11397d c11397d) {
        this.f37587a = str;
        this.f37588b = str2;
        this.f37595i = str4;
        this.f37592f = c11400g;
        this.f37593g = strArr;
        this.f37589c = str2 != null;
        this.f37590d = j;
        this.f37591e = j2;
        this.f37594h = (String) C11593a.m20020b(str3);
        this.f37596j = c11397d;
        this.f37597k = new HashMap<>();
        this.f37598l = new HashMap<>();
    }

    /* renamed from: a */
    private static SpannableStringBuilder m20679a(String str, Map<String, C11356b.C11358a> map) {
        if (!map.containsKey(str)) {
            C11356b.C11358a c11358a = new C11356b.C11358a();
            c11358a.f37428a = new SpannableStringBuilder();
            map.put(str, c11358a);
        }
        return (SpannableStringBuilder) C11593a.m20020b(map.get(str).f37428a);
    }

    /* renamed from: a */
    public static void m20681a(SpannableStringBuilder spannableStringBuilder) {
        C11391a[] c11391aArr;
        for (C11391a c11391a : (C11391a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), C11391a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(c11391a), spannableStringBuilder.getSpanEnd(c11391a), "");
        }
        for (int i = 0; i < spannableStringBuilder.length(); i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                int i3 = i2;
                while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                    i3++;
                }
                int i4 = i3 - i2;
                if (i4 > 0) {
                    spannableStringBuilder.delete(i, i4 + i);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
            if (spannableStringBuilder.charAt(i5) == '\n') {
                int i6 = i5 + 1;
                if (spannableStringBuilder.charAt(i6) == ' ') {
                    spannableStringBuilder.delete(i6, i5 + 2);
                }
            }
        }
        int i7 = 0;
        if (spannableStringBuilder.length() > 0) {
            i7 = 0;
            if (spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
                i7 = 0;
            }
        }
        while (i7 < spannableStringBuilder.length() - 1) {
            if (spannableStringBuilder.charAt(i7) == ' ') {
                int i8 = i7 + 1;
                if (spannableStringBuilder.charAt(i8) == '\n') {
                    spannableStringBuilder.delete(i7, i8);
                }
            }
            i7++;
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    /* renamed from: a */
    private void m20678a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f37587a);
        boolean equals2 = "div".equals(this.f37587a);
        if (z || equals || (equals2 && this.f37595i != null)) {
            long j = this.f37590d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f37591e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.f37599m == null) {
            return;
        }
        for (int i = 0; i < this.f37599m.size(); i++) {
            this.f37599m.get(i).m20678a(treeSet, z || equals);
        }
    }

    /* renamed from: a */
    private boolean m20685a(long j) {
        long j2 = this.f37590d;
        if (j2 == -9223372036854775807L && this.f37591e == -9223372036854775807L) {
            return true;
        }
        if (j2 <= j && this.f37591e == -9223372036854775807L) {
            return true;
        }
        if (j2 == -9223372036854775807L && j < this.f37591e) {
            return true;
        }
        return j2 <= j && j < this.f37591e;
    }

    /* renamed from: a */
    public final int m20687a() {
        List<C11397d> list = this.f37599m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: a */
    public final C11397d m20686a(int i) {
        List<C11397d> list = this.f37599m;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: a */
    public final void m20684a(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f37594h)) {
            str = this.f37594h;
        }
        if (m20685a(j) && "div".equals(this.f37587a) && this.f37595i != null) {
            list.add(new Pair<>(str, this.f37595i));
            return;
        }
        for (int i = 0; i < m20687a(); i++) {
            m20686a(i).m20684a(j, str, list);
        }
    }

    /* renamed from: a */
    public final void m20683a(long j, Map<String, C11400g> map, Map<String, C11398e> map2, String str, Map<String, C11356b.C11358a> map3) {
        C11397d m20676a;
        int i;
        int i2;
        if (!m20685a(j)) {
            return;
        }
        if (!"".equals(this.f37594h)) {
            str = this.f37594h;
        }
        for (Map.Entry<String, Integer> entry : this.f37598l.entrySet()) {
            String key = entry.getKey();
            int intValue = this.f37597k.containsKey(key) ? this.f37597k.get(key).intValue() : 0;
            int intValue2 = entry.getValue().intValue();
            if (intValue != intValue2) {
                C11356b.C11358a c11358a = (C11356b.C11358a) C11593a.m20020b(map3.get(key));
                int i3 = ((C11398e) C11593a.m20020b(map2.get(str))).f37609j;
                C11400g m20675a = C11399f.m20675a(this.f37592f, this.f37593g, map);
                SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c11358a.f37428a;
                SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                if (spannableStringBuilder == null) {
                    spannableStringBuilder2 = new SpannableStringBuilder();
                    c11358a.f37428a = spannableStringBuilder2;
                }
                if (m20675a != null) {
                    C11397d c11397d = this.f37596j;
                    if (m20675a.m20673a() != -1) {
                        spannableStringBuilder2.setSpan(new StyleSpan(m20675a.m20673a()), intValue, intValue2, 33);
                    }
                    if (m20675a.f37615f == 1) {
                        spannableStringBuilder2.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                    }
                    if (m20675a.f37616g == 1) {
                        spannableStringBuilder2.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                    }
                    if (m20675a.f37612c) {
                        if (!m20675a.f37612c) {
                            throw new IllegalStateException("Font color has not been defined.");
                        }
                        C11377c.m20722a(spannableStringBuilder2, new ForegroundColorSpan(m20675a.f37611b), intValue, intValue2);
                    }
                    if (m20675a.f37614e) {
                        if (!m20675a.f37614e) {
                            throw new IllegalStateException("Background color has not been defined.");
                        }
                        C11377c.m20722a(spannableStringBuilder2, new BackgroundColorSpan(m20675a.f37613d), intValue, intValue2);
                    }
                    if (m20675a.f37610a != null) {
                        C11377c.m20722a(spannableStringBuilder2, new TypefaceSpan(m20675a.f37610a), intValue, intValue2);
                    }
                    if (m20675a.f37626q != null) {
                        C11392b c11392b = (C11392b) C11593a.m20020b(m20675a.f37626q);
                        if (c11392b.f37567a == -1) {
                            i2 = (i3 == 2 || i3 == 1) ? 3 : 1;
                            i = 1;
                        } else {
                            i2 = c11392b.f37567a;
                            i = c11392b.f37568b;
                        }
                        C11377c.m20722a(spannableStringBuilder2, new C11378d(i2, i, c11392b.f37569c == -2 ? 1 : c11392b.f37569c), intValue, intValue2);
                    }
                    int i4 = m20675a.f37622m;
                    if (i4 == 2) {
                        C11397d m20674b = C11399f.m20674b(c11397d, map);
                        if (m20674b != null && (m20676a = C11399f.m20676a(m20674b, map)) != null) {
                            if (m20676a.m20687a() != 1 || m20676a.m20686a(0).f37588b == null) {
                                C11617n.m19859b();
                            } else {
                                String str2 = (String) C11599af.m19974a(m20676a.m20686a(0).f37588b);
                                C11400g c11400g = m20674b.f37592f;
                                spannableStringBuilder2.setSpan(new C11376b(str2, c11400g != null ? c11400g.f37623n : -1), intValue, intValue2, 33);
                            }
                        }
                    } else if (i4 == 3 || i4 == 4) {
                        spannableStringBuilder2.setSpan(new C11391a(), intValue, intValue2, 33);
                    }
                    if (m20675a.f37625p == 1) {
                        C11377c.m20722a(spannableStringBuilder2, new C11375a(), intValue, intValue2);
                    }
                    int i5 = m20675a.f37619j;
                    if (i5 == 1) {
                        C11377c.m20722a(spannableStringBuilder2, new AbsoluteSizeSpan((int) m20675a.f37620k, true), intValue, intValue2);
                    } else if (i5 == 2) {
                        C11377c.m20722a(spannableStringBuilder2, new RelativeSizeSpan(m20675a.f37620k), intValue, intValue2);
                    } else if (i5 == 3) {
                        C11377c.m20722a(spannableStringBuilder2, new RelativeSizeSpan(m20675a.f37620k / 100.0f), intValue, intValue2);
                    }
                    if (m20675a.f37627r != Float.MAX_VALUE && "p".equals(this.f37587a)) {
                        c11358a.f37439l = (m20675a.f37627r * (-90.0f)) / 100.0f;
                    }
                    c11358a.f37430c = m20675a.f37624o;
                } else {
                    continue;
                }
            }
        }
        for (int i6 = 0; i6 < m20687a(); i6++) {
            m20686a(i6).m20683a(j, map, map2, str, map3);
        }
    }

    /* renamed from: a */
    public final void m20682a(long j, boolean z, String str, Map<String, C11356b.C11358a> map) {
        this.f37597k.clear();
        this.f37598l.clear();
        if ("metadata".equals(this.f37587a)) {
            return;
        }
        if (!"".equals(this.f37594h)) {
            str = this.f37594h;
        }
        if (this.f37589c && z) {
            m20679a(str, map).append((CharSequence) C11593a.m20020b(this.f37588b));
        } else if ("br".equals(this.f37587a) && z) {
            m20679a(str, map).append('\n');
        } else if (m20685a(j)) {
            for (Map.Entry<String, C11356b.C11358a> entry : map.entrySet()) {
                this.f37597k.put(entry.getKey(), Integer.valueOf(((CharSequence) C11593a.m20020b(entry.getValue().f37428a)).length()));
            }
            boolean equals = "p".equals(this.f37587a);
            for (int i = 0; i < m20687a(); i++) {
                m20686a(i).m20682a(j, z || equals, str, map);
            }
            if (equals) {
                SpannableStringBuilder m20679a = m20679a(str, map);
                int length = m20679a.length() - 1;
                while (length >= 0 && m20679a.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && m20679a.charAt(length) != '\n') {
                    m20679a.append('\n');
                }
            }
            for (Map.Entry<String, C11356b.C11358a> entry2 : map.entrySet()) {
                this.f37598l.put(entry2.getKey(), Integer.valueOf(((CharSequence) C11593a.m20020b(entry2.getValue().f37428a)).length()));
            }
        }
    }

    /* renamed from: a */
    public final void m20680a(C11397d c11397d) {
        if (this.f37599m == null) {
            this.f37599m = new ArrayList();
        }
        this.f37599m.add(c11397d);
    }

    /* renamed from: b */
    public final long[] m20677b() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        m20678a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it2 = treeSet.iterator();
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        return jArr;
    }
}

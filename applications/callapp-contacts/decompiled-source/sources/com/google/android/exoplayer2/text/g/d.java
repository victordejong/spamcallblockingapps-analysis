package com.google.android.exoplayer2.text.g;

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
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.d.c;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f21837a;

    /* renamed from: b  reason: collision with root package name */
    public final String f21838b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f21839c;

    /* renamed from: d  reason: collision with root package name */
    public final long f21840d;
    public final long e;
    public final g f;
    final String[] g;
    public final String h;
    public final String i;
    public final d j;
    private final HashMap<String, Integer> k;
    private final HashMap<String, Integer> l;
    private List<d> m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, long j, long j2, g gVar, String[] strArr, String str3, String str4, d dVar) {
        this.f21837a = str;
        this.f21838b = str2;
        this.i = str4;
        this.f = gVar;
        this.g = strArr;
        this.f21839c = str2 != null;
        this.f21840d = j;
        this.e = j2;
        this.h = (String) a.b(str3);
        this.j = dVar;
        this.k = new HashMap<>();
        this.l = new HashMap<>();
    }

    private static SpannableStringBuilder a(String str, Map<String, b.a> map) {
        if (!map.containsKey(str)) {
            b.a aVar = new b.a();
            aVar.f21738a = new SpannableStringBuilder();
            map.put(str, aVar);
        }
        return (SpannableStringBuilder) a.b(map.get(str).f21738a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SpannableStringBuilder spannableStringBuilder) {
        a[] aVarArr;
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
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
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
    }

    private void a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f21837a);
        boolean equals2 = "div".equals(this.f21837a);
        if (z || equals || (equals2 && this.i != null)) {
            long j = this.f21840d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                this.m.get(i).a(treeSet, z || equals);
            }
        }
    }

    private boolean a(long j) {
        long j2 = this.f21840d;
        if (j2 == -9223372036854775807L && this.e == -9223372036854775807L) {
            return true;
        }
        if (j2 <= j && this.e == -9223372036854775807L) {
            return true;
        }
        if (j2 != -9223372036854775807L || j >= this.e) {
            return j2 <= j && j < this.e;
        }
        return true;
    }

    public final int a() {
        List<d> list = this.m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final d a(int i) {
        List<d> list = this.m;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.h)) {
            str = this.h;
        }
        if (!a(j) || !"div".equals(this.f21837a) || this.i == null) {
            for (int i = 0; i < a(); i++) {
                a(i).a(j, str, list);
            }
            return;
        }
        list.add(new Pair<>(str, this.i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, Map<String, g> map, Map<String, e> map2, String str, Map<String, b.a> map3) {
        d a2;
        int i;
        int i2;
        if (a(j)) {
            if (!"".equals(this.h)) {
                str = this.h;
            }
            for (Map.Entry<String, Integer> entry : this.l.entrySet()) {
                String key = entry.getKey();
                int intValue = this.k.containsKey(key) ? this.k.get(key).intValue() : 0;
                int intValue2 = entry.getValue().intValue();
                if (intValue != intValue2) {
                    b.a aVar = (b.a) a.b(map3.get(key));
                    int i3 = ((e) a.b(map2.get(str))).j;
                    g a3 = f.a(this.f, this.g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) aVar.f21738a;
                    SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder2 = new SpannableStringBuilder();
                        aVar.f21738a = spannableStringBuilder2;
                    }
                    if (a3 != null) {
                        d dVar = this.j;
                        if (a3.a() != -1) {
                            spannableStringBuilder2.setSpan(new StyleSpan(a3.a()), intValue, intValue2, 33);
                        }
                        if (a3.f == 1) {
                            spannableStringBuilder2.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                        }
                        if (a3.g == 1) {
                            spannableStringBuilder2.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                        }
                        if (a3.f21847c) {
                            if (a3.f21847c) {
                                c.a(spannableStringBuilder2, new ForegroundColorSpan(a3.f21846b), intValue, intValue2);
                            } else {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                        }
                        if (a3.e) {
                            if (a3.e) {
                                c.a(spannableStringBuilder2, new BackgroundColorSpan(a3.f21848d), intValue, intValue2);
                            } else {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                        }
                        if (a3.f21845a != null) {
                            c.a(spannableStringBuilder2, new TypefaceSpan(a3.f21845a), intValue, intValue2);
                        }
                        if (a3.q != null) {
                            b bVar = (b) a.b(a3.q);
                            if (bVar.f21823a == -1) {
                                i2 = (i3 == 2 || i3 == 1) ? 3 : 1;
                                i = 1;
                            } else {
                                i2 = bVar.f21823a;
                                i = bVar.f21824b;
                            }
                            c.a(spannableStringBuilder2, new com.google.android.exoplayer2.text.d.d(i2, i, bVar.f21825c == -2 ? 1 : bVar.f21825c), intValue, intValue2);
                        }
                        int i4 = a3.m;
                        if (i4 == 2) {
                            d b2 = f.b(dVar, map);
                            if (!(b2 == null || (a2 = f.a(b2, map)) == null)) {
                                if (a2.a() != 1 || a2.a(0).f21838b == null) {
                                    n.b();
                                } else {
                                    String str2 = (String) af.a(a2.a(0).f21838b);
                                    g gVar = b2.f;
                                    spannableStringBuilder2.setSpan(new com.google.android.exoplayer2.text.d.b(str2, gVar != null ? gVar.n : -1), intValue, intValue2, 33);
                                }
                            }
                        } else if (i4 == 3 || i4 == 4) {
                            spannableStringBuilder2.setSpan(new a(), intValue, intValue2, 33);
                        }
                        if (a3.p == 1) {
                            c.a(spannableStringBuilder2, new com.google.android.exoplayer2.text.d.a(), intValue, intValue2);
                        }
                        int i5 = a3.j;
                        if (i5 == 1) {
                            c.a(spannableStringBuilder2, new AbsoluteSizeSpan((int) a3.k, true), intValue, intValue2);
                        } else if (i5 == 2) {
                            c.a(spannableStringBuilder2, new RelativeSizeSpan(a3.k), intValue, intValue2);
                        } else if (i5 == 3) {
                            c.a(spannableStringBuilder2, new RelativeSizeSpan(a3.k / 100.0f), intValue, intValue2);
                        }
                        if (a3.r != Float.MAX_VALUE && "p".equals(this.f21837a)) {
                            aVar.l = (a3.r * (-90.0f)) / 100.0f;
                        }
                        aVar.f21740c = a3.o;
                    } else {
                        continue;
                    }
                }
            }
            for (int i6 = 0; i6 < a(); i6++) {
                a(i6).a(j, map, map2, str, map3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, boolean z, String str, Map<String, b.a> map) {
        this.k.clear();
        this.l.clear();
        if (!"metadata".equals(this.f21837a)) {
            if (!"".equals(this.h)) {
                str = this.h;
            }
            if (this.f21839c && z) {
                a(str, map).append((CharSequence) a.b(this.f21838b));
            } else if ("br".equals(this.f21837a) && z) {
                a(str, map).append('\n');
            } else if (a(j)) {
                for (Map.Entry<String, b.a> entry : map.entrySet()) {
                    this.k.put(entry.getKey(), Integer.valueOf(((CharSequence) a.b(entry.getValue().f21738a)).length()));
                }
                boolean equals = "p".equals(this.f21837a);
                for (int i = 0; i < a(); i++) {
                    a(i).a(j, z || equals, str, map);
                }
                if (equals) {
                    SpannableStringBuilder a2 = a(str, map);
                    int length = a2.length() - 1;
                    while (length >= 0 && a2.charAt(length) == ' ') {
                        length--;
                    }
                    if (length >= 0 && a2.charAt(length) != '\n') {
                        a2.append('\n');
                    }
                }
                for (Map.Entry<String, b.a> entry2 : map.entrySet()) {
                    this.l.put(entry2.getKey(), Integer.valueOf(((CharSequence) a.b(entry2.getValue().f21738a)).length()));
                }
            }
        }
    }

    public final void a(d dVar) {
        if (this.m == null) {
            this.m = new ArrayList();
        }
        this.m.add(dVar);
    }

    public final long[] b() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it2 = treeSet.iterator();
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        return jArr;
    }
}

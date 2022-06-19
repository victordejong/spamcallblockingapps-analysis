package com.google.android.exoplayer2.text.p343g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.google.android.exoplayer2.text.g.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/h.class */
final class C11401h implements AbstractC11379e {

    /* renamed from: a */
    private final C11397d f37628a;

    /* renamed from: b */
    private final long[] f37629b;

    /* renamed from: c */
    private final Map<String, C11400g> f37630c;

    /* renamed from: d */
    private final Map<String, C11398e> f37631d;

    /* renamed from: e */
    private final Map<String, String> f37632e;

    public C11401h(C11397d c11397d, Map<String, C11400g> map, Map<String, C11398e> map2, Map<String, String> map3) {
        this.f37628a = c11397d;
        this.f37631d = map2;
        this.f37632e = map3;
        this.f37630c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f37629b = c11397d.m20677b();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: a */
    public final int mo20617a(long j) {
        int m19939b = C11599af.m19939b(this.f37629b, j, false);
        if (m19939b < this.f37629b.length) {
            return m19939b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final int mo20615b() {
        return this.f37629b.length;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final List<C11356b> mo20614b(long j) {
        C11397d c11397d = this.f37628a;
        Map<String, C11400g> map = this.f37630c;
        Map<String, C11398e> map2 = this.f37631d;
        Map<String, String> map3 = this.f37632e;
        ArrayList<Pair> arrayList = new ArrayList();
        c11397d.m20684a(j, c11397d.f37594h, arrayList);
        TreeMap treeMap = new TreeMap();
        c11397d.m20682a(j, false, c11397d.f37594h, treeMap);
        c11397d.m20683a(j, map, map2, c11397d.f37594h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                C11398e c11398e = (C11398e) C11593a.m20020b(map2.get(pair.first));
                C11356b.C11358a c11358a = new C11356b.C11358a();
                c11358a.f37429b = decodeByteArray;
                c11358a.f37432e = c11398e.f37601b;
                c11358a.f37433f = 0;
                C11356b.C11358a m20743a = c11358a.m20743a(c11398e.f37602c, 0);
                m20743a.f37431d = c11398e.f37604e;
                m20743a.f37434g = c11398e.f37605f;
                m20743a.f37435h = c11398e.f37606g;
                m20743a.f37438k = c11398e.f37609j;
                arrayList2.add(m20743a.m20744a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C11398e c11398e2 = (C11398e) C11593a.m20020b(map2.get(entry.getKey()));
            C11356b.C11358a c11358a2 = (C11356b.C11358a) entry.getValue();
            C11397d.m20681a((SpannableStringBuilder) C11593a.m20020b(c11358a2.f37428a));
            c11358a2.m20743a(c11398e2.f37602c, c11398e2.f37603d);
            c11358a2.f37431d = c11398e2.f37604e;
            c11358a2.f37432e = c11398e2.f37601b;
            c11358a2.f37434g = c11398e2.f37605f;
            c11358a2.m20742b(c11398e2.f37608i, c11398e2.f37607h);
            c11358a2.f37438k = c11398e2.f37609j;
            arrayList2.add(c11358a2.m20744a());
        }
        return arrayList2;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        return this.f37629b[i];
    }
}

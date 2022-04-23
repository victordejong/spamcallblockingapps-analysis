package com.google.android.exoplayer2.text.g;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/h.class */
final class h implements e {

    /* renamed from: a  reason: collision with root package name */
    private final d f21849a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f21850b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, g> f21851c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, e> f21852d;
    private final Map<String, String> e;

    public h(d dVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        this.f21849a = dVar;
        this.f21852d = map2;
        this.e = map3;
        this.f21851c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f21850b = dVar.b();
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        int b2 = af.b(this.f21850b, j, false);
        if (b2 < this.f21850b.length) {
            return b2;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return this.f21850b.length;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<b> b(long j) {
        d dVar = this.f21849a;
        Map<String, g> map = this.f21851c;
        Map<String, e> map2 = this.f21852d;
        Map<String, String> map3 = this.e;
        ArrayList<Pair> arrayList = new ArrayList();
        dVar.a(j, dVar.h, arrayList);
        TreeMap treeMap = new TreeMap();
        dVar.a(j, false, dVar.h, treeMap);
        dVar.a(j, map, map2, dVar.h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) a.b(map2.get(pair.first));
                b.a aVar = new b.a();
                aVar.f21739b = decodeByteArray;
                aVar.e = eVar.f21842b;
                aVar.f = 0;
                b.a a2 = aVar.a(eVar.f21843c, 0);
                a2.f21741d = eVar.e;
                a2.g = eVar.f;
                a2.h = eVar.g;
                a2.k = eVar.j;
                arrayList2.add(a2.a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) a.b(map2.get(entry.getKey()));
            b.a aVar2 = (b.a) entry.getValue();
            d.a((SpannableStringBuilder) a.b(aVar2.f21738a));
            aVar2.a(eVar2.f21843c, eVar2.f21844d);
            aVar2.f21741d = eVar2.e;
            aVar2.e = eVar2.f21842b;
            aVar2.g = eVar2.f;
            aVar2.b(eVar2.i, eVar2.h);
            aVar2.k = eVar2.j;
            arrayList2.add(aVar2.a());
        }
        return arrayList2;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        return this.f21850b[i];
    }
}

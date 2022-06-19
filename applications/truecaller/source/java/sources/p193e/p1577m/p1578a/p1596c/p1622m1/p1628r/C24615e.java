package p193e.p1577m.p1578a.p1596c.p1622m1.p1628r;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.TreeSet;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.m1.r.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/e.class */
public final class C24615e implements AbstractC24565e {

    /* renamed from: a */
    public final C24612b f68927a;

    /* renamed from: b */
    public final long[] f68928b;

    /* renamed from: c */
    public final Map<String, C24614d> f68929c;

    /* renamed from: d */
    public final Map<String, C24613c> f68930d;

    /* renamed from: e */
    public final Map<String, String> f68931e;

    public C24615e(C24612b c24612b, Map<String, C24614d> map, Map<String, C24613c> map2, Map<String, String> map3) {
        this.f68927a = c24612b;
        this.f68930d = map2;
        this.f68931e = map3;
        this.f68929c = Collections.unmodifiableMap(map);
        Objects.requireNonNull(c24612b);
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        c24612b.m4839e(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        this.f68928b = jArr;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: a */
    public long mo4813a(int i) {
        return this.f68928b[i];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: c */
    public int mo4812c() {
        return this.f68928b.length;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: d */
    public int mo4811d(long j) {
        int m4622b = C24773d0.m4622b(this.f68928b, j, false, false);
        if (m4622b >= this.f68928b.length) {
            m4622b = -1;
        }
        return m4622b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: e */
    public List<C24562b> mo4810e(long j) {
        int i;
        int i2;
        int i3;
        int i4;
        C24612b c24612b = this.f68927a;
        Map<String, C24614d> map = this.f68929c;
        Map<String, C24613c> map2 = this.f68930d;
        Map<String, String> map3 = this.f68931e;
        Objects.requireNonNull(c24612b);
        ArrayList arrayList = new ArrayList();
        c24612b.m4836h(j, c24612b.f68900h, arrayList);
        TreeMap treeMap = new TreeMap();
        c24612b.m4834j(j, false, c24612b.f68900h, treeMap);
        c24612b.m4835i(j, map, treeMap);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                C24613c c24613c = map2.get(pair.first);
                arrayList2.add(new C24562b(decodeByteArray, c24613c.f68906b, 0, c24613c.f68907c, c24613c.f68909e, c24613c.f68910f, c24613c.f68911g));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C24613c c24613c2 = map2.get(entry.getKey());
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) entry.getValue();
            int length = spannableStringBuilder.length();
            int i5 = 0;
            while (i5 < length) {
                int i6 = length;
                if (spannableStringBuilder.charAt(i5) == ' ') {
                    int i7 = i5 + 1;
                    int i8 = i7;
                    while (i8 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i8) == ' ') {
                        i8++;
                    }
                    int i9 = i8 - i7;
                    i6 = length;
                    if (i9 > 0) {
                        spannableStringBuilder.delete(i5, i5 + i9);
                        i6 = length - i9;
                    }
                }
                i5++;
                length = i6;
            }
            int i10 = length;
            if (length > 0) {
                i10 = length;
                if (spannableStringBuilder.charAt(0) == ' ') {
                    spannableStringBuilder.delete(0, 1);
                    i10 = length - 1;
                }
            }
            int i11 = 0;
            while (true) {
                i = i10;
                i2 = i - 1;
                if (i11 >= i2) {
                    break;
                }
                i10 = i;
                if (spannableStringBuilder.charAt(i11) == '\n') {
                    int i12 = i11 + 1;
                    i10 = i;
                    if (spannableStringBuilder.charAt(i12) == ' ') {
                        spannableStringBuilder.delete(i12, i11 + 2);
                        i10 = i2;
                    }
                }
                i11++;
            }
            if (i <= 0 || spannableStringBuilder.charAt(i2) != ' ') {
                i3 = 0;
            } else {
                spannableStringBuilder.delete(i2, i);
                i3 = 0;
                i = i2;
            }
            while (true) {
                i4 = i - 1;
                if (i3 >= i4) {
                    break;
                }
                int i13 = i;
                if (spannableStringBuilder.charAt(i3) == ' ') {
                    int i14 = i3 + 1;
                    i13 = i;
                    if (spannableStringBuilder.charAt(i14) == '\n') {
                        spannableStringBuilder.delete(i3, i14);
                        i13 = i4;
                    }
                }
                i3++;
                i = i13;
            }
            if (i > 0 && spannableStringBuilder.charAt(i4) == '\n') {
                spannableStringBuilder.delete(i4, i);
            }
            arrayList2.add(new C24562b(spannableStringBuilder, null, null, c24613c2.f68907c, c24613c2.f68908d, c24613c2.f68909e, c24613c2.f68906b, Integer.MIN_VALUE, c24613c2.f68912h, c24613c2.f68913i, c24613c2.f68910f, -3.4028235E38f, false, -16777216));
        }
        return arrayList2;
    }
}

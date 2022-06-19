package androidx.media2.exoplayer.external.text.p078h;

import android.text.SpannableStringBuilder;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.media2.exoplayer.external.text.h.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/i.class */
final class C1918i implements AbstractC1886d {

    /* renamed from: a */
    private final List<C1910e> f7713a;

    /* renamed from: b */
    private final int f7714b;

    /* renamed from: c */
    private final long[] f7715c;

    /* renamed from: d */
    private final long[] f7716d;

    public C1918i(List<C1910e> list) {
        this.f7713a = list;
        int size = list.size();
        this.f7714b = size;
        this.f7715c = new long[size * 2];
        for (int i = 0; i < this.f7714b; i++) {
            C1910e c1910e = list.get(i);
            int i2 = i * 2;
            this.f7715c[i2] = c1910e.f7684p;
            this.f7715c[i2 + 1] = c1910e.f7685q;
        }
        long[] jArr = this.f7715c;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        this.f7716d = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a */
    public final int mo41884a(long j) {
        int m41644a = C1996ac.m41644a(this.f7716d, j, false, false);
        if (m41644a < this.f7716d.length) {
            return m41644a;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: a_ */
    public final long mo41883a_(int i) {
        C1993a.m41688a(i >= 0);
        C1993a.m41688a(i < this.f7716d.length);
        return this.f7716d[i];
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final int mo41882b() {
        return this.f7716d.length;
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1886d
    /* renamed from: b */
    public final List<C1856a> mo41881b(long j) {
        SpannableStringBuilder spannableStringBuilder = null;
        C1910e c1910e = null;
        ArrayList arrayList = null;
        int i = 0;
        while (i < this.f7714b) {
            long[] jArr = this.f7715c;
            int i2 = i * 2;
            SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
            C1910e c1910e2 = c1910e;
            ArrayList arrayList2 = arrayList;
            if (jArr[i2] <= j) {
                spannableStringBuilder2 = spannableStringBuilder;
                c1910e2 = c1910e;
                arrayList2 = arrayList;
                if (j < jArr[i2 + 1]) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    c1910e2 = this.f7713a.get(i);
                    if (!(c1910e2.f7403e == Float.MIN_VALUE && c1910e2.f7406h == Float.MIN_VALUE)) {
                        arrayList2.add(c1910e2);
                        c1910e2 = c1910e;
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else if (c1910e == null) {
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else if (spannableStringBuilder == null) {
                        spannableStringBuilder2 = new SpannableStringBuilder();
                        spannableStringBuilder2.append(c1910e.f7400b).append((CharSequence) StringUtils.f67179LF).append(c1910e2.f7400b);
                        c1910e2 = c1910e;
                    } else {
                        spannableStringBuilder.append((CharSequence) StringUtils.f67179LF).append(c1910e2.f7400b);
                        spannableStringBuilder2 = spannableStringBuilder;
                        c1910e2 = c1910e;
                    }
                }
            }
            i++;
            spannableStringBuilder = spannableStringBuilder2;
            c1910e = c1910e2;
            arrayList = arrayList2;
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new C1910e(spannableStringBuilder));
        } else if (c1910e != null) {
            arrayList.add(c1910e);
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }
}

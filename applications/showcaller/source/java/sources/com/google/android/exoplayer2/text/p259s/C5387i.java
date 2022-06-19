package com.google.android.exoplayer2.text.p259s;

import android.text.SpannableStringBuilder;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.text.p259s.C5379e;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.s.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/i.class */
final class C5387i implements AbstractC5320e {

    /* renamed from: d */
    private final List<C5379e> f17245d;

    /* renamed from: e */
    private final int f17246e;

    /* renamed from: f */
    private final long[] f17247f;

    /* renamed from: g */
    private final long[] f17248g;

    public C5387i(List<C5379e> list) {
        this.f17245d = list;
        int size = list.size();
        this.f17246e = size;
        this.f17247f = new long[size * 2];
        for (int i = 0; i < this.f17246e; i++) {
            C5379e c5379e = list.get(i);
            int i2 = i * 2;
            long[] jArr = this.f17247f;
            jArr[i2] = c5379e.f17217s;
            jArr[i2 + 1] = c5379e.f17218t;
        }
        long[] jArr2 = this.f17247f;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f17248g = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: a */
    public int mo19371a(long j) {
        int m18839d = C5515h0.m18839d(this.f17248g, j, false, false);
        if (m18839d >= this.f17248g.length) {
            m18839d = -1;
        }
        return m18839d;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: d */
    public long mo19370d(int i) {
        C5508e.m18915a(i >= 0);
        C5508e.m18915a(i < this.f17248g.length);
        return this.f17248g[i];
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: e */
    public List<C5317b> mo19369e(long j) {
        ArrayList arrayList = new ArrayList();
        SpannableStringBuilder spannableStringBuilder = null;
        C5379e c5379e = null;
        int i = 0;
        while (i < this.f17246e) {
            long[] jArr = this.f17247f;
            int i2 = i * 2;
            SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
            C5379e c5379e2 = c5379e;
            if (jArr[i2] <= j) {
                spannableStringBuilder2 = spannableStringBuilder;
                c5379e2 = c5379e;
                if (j < jArr[i2 + 1]) {
                    c5379e2 = this.f17245d.get(i);
                    if (!c5379e2.m19415a()) {
                        arrayList.add(c5379e2);
                        c5379e2 = c5379e;
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else if (c5379e == null) {
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else if (spannableStringBuilder == null) {
                        spannableStringBuilder2 = new SpannableStringBuilder();
                        spannableStringBuilder2.append((CharSequence) C5508e.m18911e(c5379e.f16904e)).append((CharSequence) "\n").append((CharSequence) C5508e.m18911e(c5379e2.f16904e));
                        c5379e2 = c5379e;
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n").append((CharSequence) C5508e.m18911e(c5379e2.f16904e));
                        spannableStringBuilder2 = spannableStringBuilder;
                        c5379e2 = c5379e;
                    }
                }
            }
            i++;
            spannableStringBuilder = spannableStringBuilder2;
            c5379e = c5379e2;
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new C5379e.C5381b().m19400o(spannableStringBuilder).m19414a());
        } else if (c5379e != null) {
            arrayList.add(c5379e);
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return this.f17248g.length;
    }
}

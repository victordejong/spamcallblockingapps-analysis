package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import android.text.SpannableStringBuilder;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24622e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.m1.t.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/i.class */
public final class C24630i implements AbstractC24565e {

    /* renamed from: a */
    public final List<C24622e> f68988a;

    /* renamed from: b */
    public final int f68989b;

    /* renamed from: c */
    public final long[] f68990c;

    /* renamed from: d */
    public final long[] f68991d;

    public C24630i(List<C24622e> list) {
        this.f68988a = list;
        int size = list.size();
        this.f68989b = size;
        this.f68990c = new long[size * 2];
        for (int i = 0; i < this.f68989b; i++) {
            C24622e c24622e = list.get(i);
            int i2 = i * 2;
            long[] jArr = this.f68990c;
            jArr[i2] = c24622e.f68961p;
            jArr[i2 + 1] = c24622e.f68962q;
        }
        long[] jArr2 = this.f68990c;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f68991d = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: a */
    public long mo4813a(int i) {
        C26232y.m2310r(i >= 0);
        C26232y.m2310r(i < this.f68991d.length);
        return this.f68991d[i];
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: c */
    public int mo4812c() {
        return this.f68991d.length;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: d */
    public int mo4811d(long j) {
        int m4622b = C24773d0.m4622b(this.f68991d, j, false, false);
        if (m4622b >= this.f68991d.length) {
            m4622b = -1;
        }
        return m4622b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: e */
    public List<C24562b> mo4810e(long j) {
        C24622e c24622e;
        ArrayList arrayList = new ArrayList();
        SpannableStringBuilder spannableStringBuilder = null;
        int i = 0;
        C24622e c24622e2 = null;
        while (true) {
            c24622e = c24622e2;
            if (i >= this.f68989b) {
                break;
            }
            long[] jArr = this.f68990c;
            int i2 = i * 2;
            SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
            C24622e c24622e3 = c24622e;
            if (jArr[i2] <= j) {
                spannableStringBuilder2 = spannableStringBuilder;
                c24622e3 = c24622e;
                if (j < jArr[i2 + 1]) {
                    c24622e3 = this.f68988a.get(i);
                    if (!(c24622e3.f68662d == -3.4028235E38f && c24622e3.f68665g == 0.5f)) {
                        arrayList.add(c24622e3);
                        c24622e3 = c24622e;
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else if (c24622e == null) {
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else if (spannableStringBuilder == null) {
                        spannableStringBuilder2 = new SpannableStringBuilder();
                        CharSequence charSequence = c24622e.f68659a;
                        Objects.requireNonNull(charSequence);
                        SpannableStringBuilder append = spannableStringBuilder2.append(charSequence).append((CharSequence) StringConstant.NEW_LINE);
                        CharSequence charSequence2 = c24622e3.f68659a;
                        Objects.requireNonNull(charSequence2);
                        append.append(charSequence2);
                        c24622e3 = c24622e;
                    } else {
                        SpannableStringBuilder append2 = spannableStringBuilder.append((CharSequence) StringConstant.NEW_LINE);
                        CharSequence charSequence3 = c24622e3.f68659a;
                        Objects.requireNonNull(charSequence3);
                        append2.append(charSequence3);
                        spannableStringBuilder2 = spannableStringBuilder;
                        c24622e3 = c24622e;
                    }
                }
            }
            i++;
            spannableStringBuilder = spannableStringBuilder2;
            c24622e2 = c24622e3;
        }
        if (spannableStringBuilder != null) {
            C24622e.C24624b c24624b = new C24622e.C24624b();
            c24624b.f68965c = spannableStringBuilder;
            arrayList.add(c24624b.m4824a());
        } else if (c24622e != null) {
            arrayList.add(c24622e);
        }
        return arrayList;
    }
}

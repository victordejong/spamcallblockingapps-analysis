package com.google.android.exoplayer2.text.p345i;

import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.i.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/i.class */
final class C11419i implements AbstractC11379e {

    /* renamed from: a */
    private final List<C11410e> f37697a;

    /* renamed from: b */
    private final long[] f37698b;

    /* renamed from: c */
    private final long[] f37699c;

    public C11419i(List<C11410e> list) {
        this.f37697a = Collections.unmodifiableList(new ArrayList(list));
        this.f37698b = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            C11410e c11410e = list.get(i);
            int i2 = i * 2;
            this.f37698b[i2] = c11410e.f37668b;
            this.f37698b[i2 + 1] = c11410e.f37669c;
        }
        long[] jArr = this.f37698b;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        this.f37699c = copyOf;
        Arrays.sort(copyOf);
    }

    /* renamed from: a */
    public static /* synthetic */ int m20616a(C11410e c11410e, C11410e c11410e2) {
        return Long.compare(c11410e.f37668b, c11410e2.f37668b);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: a */
    public final int mo20617a(long j) {
        int m19939b = C11599af.m19939b(this.f37699c, j, false);
        if (m19939b < this.f37699c.length) {
            return m19939b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final int mo20615b() {
        return this.f37699c.length;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final List<C11356b> mo20614b(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.f37697a.size(); i++) {
            long[] jArr = this.f37698b;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                C11410e c11410e = this.f37697a.get(i);
                if (c11410e.f37667a.f37415e == -3.4028235E38f) {
                    arrayList2.add(c11410e);
                } else {
                    arrayList.add(c11410e.f37667a);
                }
            }
        }
        Collections.sort(arrayList2, _$$Lambda$i$tXqc5KJ6nlSQ_YbMMLKX56kDVlg.INSTANCE);
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((C11410e) arrayList2.get(i3)).f37667a.m20745a().m20743a((-1) - i3, 1).m20744a());
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        C11593a.m20022a(i >= 0);
        C11593a.m20022a(i < this.f37699c.length);
        return this.f37699c[i];
    }
}

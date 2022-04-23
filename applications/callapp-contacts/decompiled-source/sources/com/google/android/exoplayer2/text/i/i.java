package com.google.android.exoplayer2.text.i;

import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/i.class */
final class i implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f21892a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f21893b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f21894c;

    public i(List<e> list) {
        this.f21892a = Collections.unmodifiableList(new ArrayList(list));
        this.f21893b = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            e eVar = list.get(i);
            int i2 = i * 2;
            this.f21893b[i2] = eVar.f21870b;
            this.f21893b[i2 + 1] = eVar.f21871c;
        }
        long[] jArr = this.f21893b;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        this.f21894c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(e eVar, e eVar2) {
        return Long.compare(eVar.f21870b, eVar2.f21870b);
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        int b2 = af.b(this.f21894c, j, false);
        if (b2 < this.f21894c.length) {
            return b2;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return this.f21894c.length;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<b> b(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.f21892a.size(); i++) {
            long[] jArr = this.f21893b;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                e eVar = this.f21892a.get(i);
                if (eVar.f21869a.e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(eVar.f21869a);
                }
            }
        }
        Collections.sort(arrayList2, _$$Lambda$i$tXqc5KJ6nlSQ_YbMMLKX56kDVlg.INSTANCE);
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((e) arrayList2.get(i3)).f21869a.a().a((-1) - i3, 1).a());
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        boolean z = true;
        a.a(i >= 0);
        if (i >= this.f21894c.length) {
            z = false;
        }
        a.a(z);
        return this.f21894c[i];
    }
}

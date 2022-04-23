package androidx.media2.exoplayer.external.text.h;

import android.text.SpannableStringBuilder;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/i.class */
final class i implements d {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f3939a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3940b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f3941c;

    /* renamed from: d  reason: collision with root package name */
    private final long[] f3942d;

    public i(List<e> list) {
        this.f3939a = list;
        int size = list.size();
        this.f3940b = size;
        this.f3941c = new long[size * 2];
        for (int i = 0; i < this.f3940b; i++) {
            e eVar = list.get(i);
            int i2 = i * 2;
            this.f3941c[i2] = eVar.p;
            this.f3941c[i2 + 1] = eVar.q;
        }
        long[] jArr = this.f3941c;
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        this.f3942d = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int a(long j) {
        int a2 = ac.a(this.f3942d, j, false, false);
        if (a2 < this.f3942d.length) {
            return a2;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final long a_(int i) {
        boolean z = true;
        a.a(i >= 0);
        if (i >= this.f3942d.length) {
            z = false;
        }
        a.a(z);
        return this.f3942d[i];
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int b() {
        return this.f3942d.length;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final List<androidx.media2.exoplayer.external.text.a> b(long j) {
        SpannableStringBuilder spannableStringBuilder = null;
        e eVar = null;
        ArrayList arrayList = null;
        for (int i = 0; i < this.f3940b; i++) {
            long[] jArr = this.f3941c;
            int i2 = i * 2;
            spannableStringBuilder = spannableStringBuilder;
            eVar = eVar;
            arrayList = arrayList;
            if (jArr[i2] <= j) {
                spannableStringBuilder = spannableStringBuilder;
                eVar = eVar;
                arrayList = arrayList;
                if (j < jArr[i2 + 1]) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    eVar = this.f3939a.get(i);
                    if (!(eVar.e == Float.MIN_VALUE && eVar.h == Float.MIN_VALUE)) {
                        arrayList.add(eVar);
                        eVar = eVar;
                        spannableStringBuilder = spannableStringBuilder;
                    } else if (eVar == null) {
                        spannableStringBuilder = spannableStringBuilder;
                    } else if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        spannableStringBuilder.append(eVar.f3786b).append((CharSequence) StringUtils.LF).append(eVar.f3786b);
                        eVar = eVar;
                    } else {
                        spannableStringBuilder.append((CharSequence) StringUtils.LF).append(eVar.f3786b);
                        spannableStringBuilder = spannableStringBuilder;
                        eVar = eVar;
                    }
                }
            }
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new e(spannableStringBuilder));
        } else if (eVar != null) {
            arrayList.add(eVar);
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }
}

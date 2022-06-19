package androidx.media2.exoplayer.external.trackselection;

import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b.class */
public final class DefaultTrackSelector$b implements Comparable<DefaultTrackSelector$b> {

    /* renamed from: a */
    public final boolean f1093a;

    /* renamed from: b */
    public final String f1094b;

    /* renamed from: c */
    public final DefaultTrackSelector$Parameters f1095c;

    /* renamed from: d */
    public final boolean f1096d;

    /* renamed from: e */
    public final int f1097e;

    /* renamed from: f */
    public final int f1098f;

    /* renamed from: g */
    public final int f1099g;

    /* renamed from: h */
    public final boolean f1100h;

    /* renamed from: i */
    public final int f1101i;

    /* renamed from: j */
    public final int f1102j;

    /* renamed from: k */
    public final int f1103k;

    public DefaultTrackSelector$b(Format format, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters, int i) {
        int i2;
        int i3;
        this.f1095c = defaultTrackSelector$Parameters;
        this.f1094b = DefaultTrackSelector.k(format.f948A);
        this.f1096d = DefaultTrackSelector.h(i, false);
        this.f1097e = DefaultTrackSelector.f(format, defaultTrackSelector$Parameters.f1133a, false);
        this.f1100h = (format.f954c & 1) != 0;
        int i4 = format.f973v;
        this.f1101i = i4;
        this.f1102j = format.f974w;
        int i5 = format.f956e;
        this.f1103k = i5;
        this.f1093a = (i5 == -1 || i5 <= defaultTrackSelector$Parameters.f1075q) && (i4 == -1 || i4 <= defaultTrackSelector$Parameters.f1074p);
        int i6 = C27445x.f77229a;
        Configuration configuration = Resources.getSystem().getConfiguration();
        int i7 = C27445x.f77229a;
        String[] m292B = i7 >= 24 ? C27445x.m292B(configuration.getLocales().toLanguageTags(), ",") : i7 >= 21 ? new String[]{configuration.locale.toLanguageTag()} : new String[]{configuration.locale.toString()};
        for (int i8 = 0; i8 < m292B.length; i8++) {
            m292B[i8] = C27445x.m264w(m292B[i8]);
        }
        int i9 = 0;
        while (true) {
            i2 = 0;
            i3 = Integer.MAX_VALUE;
            if (i9 >= m292B.length) {
                break;
            }
            i2 = DefaultTrackSelector.f(format, m292B[i9], false);
            if (i2 > 0) {
                i3 = i9;
                break;
            }
            i9++;
        }
        this.f1098f = i3;
        this.f1099g = i2;
    }

    /* renamed from: a */
    public int compareTo(DefaultTrackSelector$b defaultTrackSelector$b) {
        int e;
        boolean z = this.f1096d;
        int i = 1;
        if (z != defaultTrackSelector$b.f1096d) {
            return z ? 1 : -1;
        }
        int i2 = this.f1097e;
        int i3 = defaultTrackSelector$b.f1097e;
        if (i2 != i3) {
            return DefaultTrackSelector.c(i2, i3);
        }
        boolean z2 = this.f1093a;
        if (z2 != defaultTrackSelector$b.f1093a) {
            return z2 ? 1 : -1;
        } else if (this.f1095c.f1080v && (e = DefaultTrackSelector.e(this.f1103k, defaultTrackSelector$b.f1103k)) != 0) {
            int i4 = 1;
            if (e > 0) {
                i4 = -1;
            }
            return i4;
        } else {
            boolean z3 = this.f1100h;
            if (z3 != defaultTrackSelector$b.f1100h) {
                return z3 ? 1 : -1;
            }
            int i5 = this.f1098f;
            int i6 = defaultTrackSelector$b.f1098f;
            if (i5 != i6) {
                return -DefaultTrackSelector.c(i5, i6);
            }
            int i7 = this.f1099g;
            int i8 = defaultTrackSelector$b.f1099g;
            if (i7 != i8) {
                return DefaultTrackSelector.c(i7, i8);
            }
            if (!this.f1093a || !this.f1096d) {
                i = -1;
            }
            int i9 = this.f1101i;
            int i10 = defaultTrackSelector$b.f1101i;
            if (i9 != i10) {
                return DefaultTrackSelector.c(i9, i10) * i;
            }
            int i11 = this.f1102j;
            int i12 = defaultTrackSelector$b.f1102j;
            if (i11 != i12) {
                return DefaultTrackSelector.c(i11, i12) * i;
            }
            if (!C27445x.m286a(this.f1094b, defaultTrackSelector$b.f1094b)) {
                return 0;
            }
            return DefaultTrackSelector.c(this.f1103k, defaultTrackSelector$b.f1103k) * i;
        }
    }
}

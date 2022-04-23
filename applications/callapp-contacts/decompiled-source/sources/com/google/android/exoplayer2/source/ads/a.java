package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import com.google.android.exoplayer2.util.af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f21560a = new a(null, new long[0], null, 0, -9223372036854775807L);

    /* renamed from: b  reason: collision with root package name */
    public final Object f21561b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21562c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f21563d;
    public final C0435a[] e;
    public final long f;
    public final long g;

    /* renamed from: com.google.android.exoplayer2.source.ads.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/a$a.class */
    public static final class C0435a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21564a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri[] f21565b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f21566c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f21567d;

        public C0435a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0435a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            com.google.android.exoplayer2.util.a.a(iArr.length == uriArr.length);
            this.f21564a = i;
            this.f21566c = iArr;
            this.f21565b = uriArr;
            this.f21567d = jArr;
        }

        public final int a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f21566c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        public final boolean a() {
            return this.f21564a == -1 || a(-1) < this.f21564a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0435a aVar = (C0435a) obj;
            return this.f21564a == aVar.f21564a && Arrays.equals(this.f21565b, aVar.f21565b) && Arrays.equals(this.f21566c, aVar.f21566c) && Arrays.equals(this.f21567d, aVar.f21567d);
        }

        public final int hashCode() {
            return (((((this.f21564a * 31) + Arrays.hashCode(this.f21565b)) * 31) + Arrays.hashCode(this.f21566c)) * 31) + Arrays.hashCode(this.f21567d);
        }
    }

    public a(Object obj, long... jArr) {
        this(obj, jArr, null, 0L, -9223372036854775807L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Object obj, long[] jArr, C0435a[] aVarArr, long j, long j2) {
        this.f21561b = obj;
        this.f21563d = jArr;
        this.f = j;
        this.g = j2;
        int length = jArr.length;
        this.f21562c = length;
        C0435a[] aVarArr2 = aVarArr;
        if (aVarArr == null) {
            C0435a[] aVarArr3 = new C0435a[length];
            int i = 0;
            while (true) {
                aVarArr2 = aVarArr3;
                if (i >= this.f21562c) {
                    break;
                }
                aVarArr3[i] = new C0435a();
                i++;
            }
        }
        this.e = aVarArr2;
    }

    private boolean a(long j, long j2, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j3 = this.f21563d[i];
        return j3 == Long.MIN_VALUE ? j2 == -9223372036854775807L || j < j2 : j < j3;
    }

    public final int a(long j, long j2) {
        int length = this.f21563d.length - 1;
        while (length >= 0 && a(j, j2, length)) {
            length--;
        }
        if (length < 0 || !this.e[length].a()) {
            return -1;
        }
        return length;
    }

    public final int b(long j, long j2) {
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        if (j2 != -9223372036854775807L && j >= j2) {
            return -1;
        }
        int i = 0;
        while (true) {
            long[] jArr = this.f21563d;
            if (i >= jArr.length || jArr[i] == Long.MIN_VALUE || (j < jArr[i] && this.e[i].a())) {
                break;
            }
            i++;
        }
        if (i < this.f21563d.length) {
            return i;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return af.a(this.f21561b, aVar.f21561b) && this.f21562c == aVar.f21562c && this.f == aVar.f && this.g == aVar.g && Arrays.equals(this.f21563d, aVar.f21563d) && Arrays.equals(this.e, aVar.e);
    }

    public final int hashCode() {
        int i = this.f21562c;
        Object obj = this.f21561b;
        return (((((((((i * 31) + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f)) * 31) + ((int) this.g)) * 31) + Arrays.hashCode(this.f21563d)) * 31) + Arrays.hashCode(this.e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.f21561b);
        sb.append(", adResumePositionUs=");
        sb.append(this.f);
        sb.append(", adGroups=[");
        for (int i = 0; i < this.e.length; i++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.f21563d[i]);
            sb.append(", ads=[");
            for (int i2 = 0; i2 < this.e[i].f21566c.length; i2++) {
                sb.append("ad(state=");
                int i3 = this.e[i].f21566c[i2];
                if (i3 == 0) {
                    sb.append('_');
                } else if (i3 == 1) {
                    sb.append('R');
                } else if (i3 == 2) {
                    sb.append('S');
                } else if (i3 == 3) {
                    sb.append('P');
                } else if (i3 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.e[i].f21567d[i2]);
                sb.append(')');
                if (i2 < this.e[i].f21566c.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i < this.e.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }
}

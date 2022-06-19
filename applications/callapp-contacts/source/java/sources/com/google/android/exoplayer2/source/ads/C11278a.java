package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.source.ads.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/a.class */
public final class C11278a {

    /* renamed from: a */
    public static final C11278a f37024a = new C11278a(null, new long[0], null, 0, -9223372036854775807L);

    /* renamed from: b */
    public final Object f37025b;

    /* renamed from: c */
    public final int f37026c;

    /* renamed from: d */
    public final long[] f37027d;

    /* renamed from: e */
    public final C11279a[] f37028e;

    /* renamed from: f */
    public final long f37029f;

    /* renamed from: g */
    public final long f37030g;

    /* renamed from: com.google.android.exoplayer2.source.ads.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/a$a.class */
    public static final class C11279a {

        /* renamed from: a */
        public final int f37031a;

        /* renamed from: b */
        public final Uri[] f37032b;

        /* renamed from: c */
        public final int[] f37033c;

        /* renamed from: d */
        public final long[] f37034d;

        public C11279a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        public C11279a(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            C11593a.m20022a(iArr.length == uriArr.length);
            this.f37031a = i;
            this.f37033c = iArr;
            this.f37032b = uriArr;
            this.f37034d = jArr;
        }

        /* renamed from: a */
        public final int m20984a(int i) {
            while (true) {
                i++;
                int[] iArr = this.f37033c;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        /* renamed from: a */
        public final boolean m20985a() {
            return this.f37031a == -1 || m20984a(-1) < this.f37031a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C11279a c11279a = (C11279a) obj;
            return this.f37031a == c11279a.f37031a && Arrays.equals(this.f37032b, c11279a.f37032b) && Arrays.equals(this.f37033c, c11279a.f37033c) && Arrays.equals(this.f37034d, c11279a.f37034d);
        }

        public final int hashCode() {
            return (((((this.f37031a * 31) + Arrays.hashCode(this.f37032b)) * 31) + Arrays.hashCode(this.f37033c)) * 31) + Arrays.hashCode(this.f37034d);
        }
    }

    public C11278a(Object obj, long... jArr) {
        this(obj, jArr, null, 0L, -9223372036854775807L);
    }

    public C11278a(Object obj, long[] jArr, C11279a[] c11279aArr, long j, long j2) {
        this.f37025b = obj;
        this.f37027d = jArr;
        this.f37029f = j;
        this.f37030g = j2;
        int length = jArr.length;
        this.f37026c = length;
        C11279a[] c11279aArr2 = c11279aArr;
        if (c11279aArr == null) {
            C11279a[] c11279aArr3 = new C11279a[length];
            int i = 0;
            while (true) {
                c11279aArr2 = c11279aArr3;
                if (i >= this.f37026c) {
                    break;
                }
                c11279aArr3[i] = new C11279a();
                i++;
            }
        }
        this.f37028e = c11279aArr2;
    }

    /* renamed from: a */
    private boolean m20987a(long j, long j2, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j3 = this.f37027d[i];
        return j3 == Long.MIN_VALUE ? j2 == -9223372036854775807L || j < j2 : j < j3;
    }

    /* renamed from: a */
    public final int m20988a(long j, long j2) {
        int length = this.f37027d.length - 1;
        while (length >= 0 && m20987a(j, j2, length)) {
            length--;
        }
        if (length < 0 || !this.f37028e[length].m20985a()) {
            return -1;
        }
        return length;
    }

    /* renamed from: b */
    public final int m20986b(long j, long j2) {
        if (j != Long.MIN_VALUE) {
            if (j2 != -9223372036854775807L && j >= j2) {
                return -1;
            }
            int i = 0;
            while (true) {
                long[] jArr = this.f37027d;
                if (i >= jArr.length || jArr[i] == Long.MIN_VALUE || (j < jArr[i] && this.f37028e[i].m20985a())) {
                    break;
                }
                i++;
            }
            if (i >= this.f37027d.length) {
                return -1;
            }
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
        C11278a c11278a = (C11278a) obj;
        return C11599af.m19973a(this.f37025b, c11278a.f37025b) && this.f37026c == c11278a.f37026c && this.f37029f == c11278a.f37029f && this.f37030g == c11278a.f37030g && Arrays.equals(this.f37027d, c11278a.f37027d) && Arrays.equals(this.f37028e, c11278a.f37028e);
    }

    public final int hashCode() {
        int i = this.f37026c;
        Object obj = this.f37025b;
        return (((((((((i * 31) + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f37029f)) * 31) + ((int) this.f37030g)) * 31) + Arrays.hashCode(this.f37027d)) * 31) + Arrays.hashCode(this.f37028e);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.f37025b);
        sb.append(", adResumePositionUs=");
        sb.append(this.f37029f);
        sb.append(", adGroups=[");
        for (int i = 0; i < this.f37028e.length; i++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.f37027d[i]);
            sb.append(", ads=[");
            for (int i2 = 0; i2 < this.f37028e[i].f37033c.length; i2++) {
                sb.append("ad(state=");
                int i3 = this.f37028e[i].f37033c[i2];
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
                sb.append(this.f37028e[i].f37034d[i2]);
                sb.append(')');
                if (i2 < this.f37028e[i].f37033c.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i < this.f37028e.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }
}

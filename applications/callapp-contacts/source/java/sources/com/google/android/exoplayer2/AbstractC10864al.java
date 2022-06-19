package com.google.android.exoplayer2;

import android.net.Uri;
import android.util.Pair;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.ads.C11278a;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.al */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/al.class */
public abstract class AbstractC10864al {

    /* renamed from: b */
    public static final AbstractC10864al f34997b = new AbstractC10864al() { // from class: com.google.android.exoplayer2.al.1
        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final int mo20949a() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final C10866a mo20947a(int i, C10866a c10866a, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final C10867b mo20853a(int i, C10867b c10867b, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final Object mo20948a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: b */
        public final int mo20946b() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: c */
        public final int mo20945c(Object obj) {
            return -1;
        }
    };

    /* renamed from: com.google.android.exoplayer2.al$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/al$a.class */
    public static final class C10866a {

        /* renamed from: a */
        public Object f34998a;

        /* renamed from: b */
        public Object f34999b;

        /* renamed from: c */
        public int f35000c;

        /* renamed from: d */
        public long f35001d;

        /* renamed from: e */
        public long f35002e;

        /* renamed from: f */
        public C11278a f35003f = C11278a.f37024a;

        /* renamed from: a */
        public final int m22176a(int i, int i2) {
            return this.f35003f.f37028e[i].m20984a(i2);
        }

        /* renamed from: a */
        public final int m22175a(long j) {
            return this.f35003f.m20988a(j, this.f35001d);
        }

        /* renamed from: a */
        public final long m22177a(int i) {
            return this.f35003f.f37027d[i];
        }

        /* renamed from: a */
        public final C10866a m22174a(Object obj, Object obj2, int i, long j, long j2, C11278a c11278a) {
            this.f34998a = obj;
            this.f34999b = obj2;
            this.f35000c = i;
            this.f35001d = j;
            this.f35002e = j2;
            this.f35003f = c11278a;
            return this;
        }

        /* renamed from: a */
        public final C10866a m22173a(Object obj, Object obj2, long j, long j2) {
            return m22174a(obj, obj2, 0, j, j2, C11278a.f37024a);
        }

        /* renamed from: b */
        public final int m22172b(int i) {
            return this.f35003f.f37028e[i].m20984a(-1);
        }

        /* renamed from: b */
        public final int m22170b(long j) {
            return this.f35003f.m20986b(j, this.f35001d);
        }

        /* renamed from: b */
        public final long m22171b(int i, int i2) {
            C11278a.C11279a c11279a = this.f35003f.f37028e[i];
            if (c11279a.f37031a != -1) {
                return c11279a.f37034d[i2];
            }
            return -9223372036854775807L;
        }

        /* renamed from: c */
        public final boolean m22169c(int i) {
            return !this.f35003f.f37028e[i].m20985a();
        }

        /* renamed from: d */
        public final int m22168d(int i) {
            return this.f35003f.f37028e[i].f37031a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            C10866a c10866a = (C10866a) obj;
            return C11599af.m19973a(this.f34998a, c10866a.f34998a) && C11599af.m19973a(this.f34999b, c10866a.f34999b) && this.f35000c == c10866a.f35000c && this.f35001d == c10866a.f35001d && this.f35002e == c10866a.f35002e && C11599af.m19973a(this.f35003f, c10866a.f35003f);
        }

        public final int hashCode() {
            Object obj = this.f34998a;
            int i = 0;
            int hashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f34999b;
            if (obj2 != null) {
                i = obj2.hashCode();
            }
            int i2 = this.f35000c;
            long j = this.f35001d;
            int i3 = (int) (j ^ (j >>> 32));
            long j2 = this.f35002e;
            return ((((((((((hashCode + 217) * 31) + i) * 31) + i2) * 31) + i3) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f35003f.hashCode();
        }
    }

    /* renamed from: com.google.android.exoplayer2.al$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/al$b.class */
    public static final class C10867b {

        /* renamed from: a */
        public static final Object f35004a = new Object();

        /* renamed from: s */
        private static final MediaItem f35005s;
        @Deprecated

        /* renamed from: c */
        public Object f35007c;

        /* renamed from: e */
        public Object f35009e;

        /* renamed from: f */
        public long f35010f;

        /* renamed from: g */
        public long f35011g;

        /* renamed from: h */
        public long f35012h;

        /* renamed from: i */
        public boolean f35013i;

        /* renamed from: j */
        public boolean f35014j;
        @Deprecated

        /* renamed from: k */
        public boolean f35015k;

        /* renamed from: l */
        public MediaItem.LiveConfiguration f35016l;

        /* renamed from: m */
        public boolean f35017m;

        /* renamed from: n */
        public int f35018n;

        /* renamed from: o */
        public int f35019o;

        /* renamed from: p */
        public long f35020p;

        /* renamed from: q */
        public long f35021q;

        /* renamed from: r */
        public long f35022r;

        /* renamed from: b */
        public Object f35006b = f35004a;

        /* renamed from: d */
        public MediaItem f35008d = f35005s;

        static {
            MediaItem.C10830a c10830a = new MediaItem.C10830a();
            c10830a.f34818a = "com.google.android.exoplayer2.Timeline";
            c10830a.f34819b = Uri.EMPTY;
            f35005s = c10830a.m22318a();
        }

        /* renamed from: a */
        public final C10867b m22166a(Object obj, MediaItem mediaItem, Object obj2, long j, long j2, long j3, boolean z, boolean z2, MediaItem.LiveConfiguration liveConfiguration, long j4, long j5, long j6) {
            this.f35006b = obj;
            this.f35008d = mediaItem != null ? mediaItem : f35005s;
            this.f35007c = (mediaItem == null || mediaItem.f34812b == null) ? null : mediaItem.f34812b.f34856h;
            this.f35009e = obj2;
            this.f35010f = j;
            this.f35011g = j2;
            this.f35012h = j3;
            this.f35013i = z;
            this.f35014j = z2;
            this.f35015k = liveConfiguration != null;
            this.f35016l = liveConfiguration;
            this.f35020p = j4;
            this.f35021q = j5;
            this.f35018n = 0;
            this.f35019o = 0;
            this.f35022r = j6;
            this.f35017m = false;
            return this;
        }

        /* renamed from: a */
        public final boolean m22167a() {
            C11593a.m20019b(this.f35015k == (this.f35016l != null));
            return this.f35016l != null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            C10867b c10867b = (C10867b) obj;
            return C11599af.m19973a(this.f35006b, c10867b.f35006b) && C11599af.m19973a(this.f35008d, c10867b.f35008d) && C11599af.m19973a(this.f35009e, c10867b.f35009e) && C11599af.m19973a(this.f35016l, c10867b.f35016l) && this.f35010f == c10867b.f35010f && this.f35011g == c10867b.f35011g && this.f35012h == c10867b.f35012h && this.f35013i == c10867b.f35013i && this.f35014j == c10867b.f35014j && this.f35017m == c10867b.f35017m && this.f35020p == c10867b.f35020p && this.f35021q == c10867b.f35021q && this.f35018n == c10867b.f35018n && this.f35019o == c10867b.f35019o && this.f35022r == c10867b.f35022r;
        }

        public final int hashCode() {
            int hashCode = this.f35006b.hashCode();
            int hashCode2 = this.f35008d.hashCode();
            Object obj = this.f35009e;
            int i = 0;
            int hashCode3 = obj == null ? 0 : obj.hashCode();
            MediaItem.LiveConfiguration liveConfiguration = this.f35016l;
            if (liveConfiguration != null) {
                i = liveConfiguration.hashCode();
            }
            long j = this.f35010f;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f35011g;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            long j3 = this.f35012h;
            int i4 = (int) (j3 ^ (j3 >>> 32));
            boolean z = this.f35013i;
            boolean z2 = this.f35014j;
            boolean z3 = this.f35017m;
            long j4 = this.f35020p;
            int i5 = (int) (j4 ^ (j4 >>> 32));
            long j5 = this.f35021q;
            int i6 = (int) (j5 ^ (j5 >>> 32));
            int i7 = this.f35018n;
            int i8 = this.f35019o;
            long j6 = this.f35022r;
            return ((((((((((((((((((((((((((((hashCode + 217) * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (j6 ^ (j6 >>> 32)));
        }
    }

    /* renamed from: a */
    public abstract int mo20949a();

    /* renamed from: a */
    public int mo20969a(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i != mo20968a(z)) {
                return i + 1;
            }
            return -1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == mo20968a(z) ? mo20966b(z) : i + 1;
        }
    }

    /* renamed from: a */
    public final int m22183a(int i, C10866a c10866a, C10867b c10867b, int i2, boolean z) {
        int i3 = mo20947a(i, c10866a, false).f35000c;
        if (mo20853a(i3, c10867b, 0L).f35019o == i) {
            int mo20969a = mo20969a(i3, i2, z);
            if (mo20969a != -1) {
                return mo20853a(mo20969a, c10867b, 0L).f35018n;
            }
            return -1;
        }
        return i + 1;
    }

    /* renamed from: a */
    public int mo20968a(boolean z) {
        if (m22178c()) {
            return -1;
        }
        return mo20949a() - 1;
    }

    /* renamed from: a */
    public final Pair<Object, Long> m22182a(C10867b c10867b, C10866a c10866a, int i, long j) {
        return (Pair) C11593a.m20020b(m22181a(c10867b, c10866a, i, j, 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* renamed from: a */
    public final Pair<Object, Long> m22181a(C10867b c10867b, C10866a c10866a, int i, long j, long j2) {
        C11593a.m20025a(i, mo20949a());
        mo20853a(i, c10867b, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            ?? r0 = c10867b.f35020p;
            c = r0;
            if (r0 == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c10867b.f35018n;
        char c2 = c10867b.f35022r + c;
        ?? r02 = mo20947a(i2, c10866a, true).f35001d;
        while (true) {
            char c3 = r02;
            if (c3 == -9223372036854775807L || c2 < c3 || i2 >= c10867b.f35019o) {
                break;
            }
            c2 -= c3;
            i2++;
            r02 = mo20947a(i2, c10866a, true).f35001d;
        }
        return Pair.create(C11593a.m20020b(c10866a.f34999b), Long.valueOf(c2));
    }

    /* renamed from: a */
    public abstract C10866a mo20947a(int i, C10866a c10866a, boolean z);

    /* renamed from: a */
    public C10866a mo22180a(Object obj, C10866a c10866a) {
        return mo20947a(mo20945c(obj), c10866a, true);
    }

    /* renamed from: a */
    public abstract C10867b mo20853a(int i, C10867b c10867b, long j);

    /* renamed from: a */
    public abstract Object mo20948a(int i);

    /* renamed from: b */
    public abstract int mo20946b();

    /* renamed from: b */
    public int mo20967b(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i != mo20966b(z)) {
                return i - 1;
            }
            return -1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == mo20966b(z) ? mo20968a(z) : i - 1;
        }
    }

    /* renamed from: b */
    public int mo20966b(boolean z) {
        return m22178c() ? -1 : 0;
    }

    /* renamed from: b */
    public final boolean m22179b(int i, C10866a c10866a, C10867b c10867b, int i2, boolean z) {
        return m22183a(i, c10866a, c10867b, i2, z) == -1;
    }

    /* renamed from: c */
    public abstract int mo20945c(Object obj);

    /* renamed from: c */
    public final boolean m22178c() {
        return mo20949a() == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC10864al)) {
            return false;
        }
        AbstractC10864al abstractC10864al = (AbstractC10864al) obj;
        if (abstractC10864al.mo20949a() != mo20949a() || abstractC10864al.mo20946b() != mo20946b()) {
            return false;
        }
        C10867b c10867b = new C10867b();
        C10866a c10866a = new C10866a();
        C10867b c10867b2 = new C10867b();
        C10866a c10866a2 = new C10866a();
        for (int i = 0; i < mo20949a(); i++) {
            if (!mo20853a(i, c10867b, 0L).equals(abstractC10864al.mo20853a(i, c10867b2, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < mo20946b(); i2++) {
            if (!mo20947a(i2, c10866a, true).equals(abstractC10864al.mo20947a(i2, c10866a2, true))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        C10867b c10867b = new C10867b();
        C10866a c10866a = new C10866a();
        int mo20949a = mo20949a() + 217;
        for (int i = 0; i < mo20949a(); i++) {
            mo20949a = (mo20949a * 31) + mo20853a(i, c10867b, 0L).hashCode();
        }
        int mo20946b = (mo20949a * 31) + mo20946b();
        for (int i2 = 0; i2 < mo20946b(); i2++) {
            mo20946b = (mo20946b * 31) + mo20947a(i2, c10866a, true).hashCode();
        }
        return mo20946b;
    }
}

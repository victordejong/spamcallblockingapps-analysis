package com.google.android.exoplayer2.extractor;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a.class */
public abstract class AbstractC10977a {

    /* renamed from: a */
    protected final C10978a f35504a;

    /* renamed from: b */
    protected final AbstractC10983f f35505b;

    /* renamed from: c */
    protected C10980c f35506c;

    /* renamed from: d */
    private final int f35507d;

    /* renamed from: com.google.android.exoplayer2.extractor.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$a.class */
    public static final class C10978a implements AbstractC11146v {

        /* renamed from: a */
        final AbstractC10981d f35508a;

        /* renamed from: b */
        final long f35509b;

        /* renamed from: c */
        final long f35510c;

        /* renamed from: d */
        final long f35511d;

        /* renamed from: e */
        final long f35512e;

        /* renamed from: f */
        final long f35513f;

        /* renamed from: g */
        private final long f35514g;

        public C10978a(AbstractC10981d abstractC10981d, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f35508a = abstractC10981d;
            this.f35514g = j;
            this.f35509b = j2;
            this.f35510c = j3;
            this.f35511d = j4;
            this.f35512e = j5;
            this.f35513f = j6;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: a */
        public final AbstractC11146v.C11147a mo21388a(long j) {
            return new AbstractC11146v.C11147a(new C11149w(j, C10980c.m21775a(this.f35508a.timeUsToTargetTime(j), this.f35509b, this.f35510c, this.f35511d, this.f35512e, this.f35513f)));
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: a */
        public final boolean mo21389a() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: b */
        public final long mo21387b() {
            return this.f35514g;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$b.class */
    public static final class C10979b implements AbstractC10981d {
        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10981d
        public final long timeUsToTargetTime(long j) {
            return j;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.a$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$c.class */
    public static final class C10980c {

        /* renamed from: a */
        final long f35515a;

        /* renamed from: b */
        final long f35516b;

        /* renamed from: c */
        long f35517c;

        /* renamed from: d */
        long f35518d;

        /* renamed from: e */
        long f35519e;

        /* renamed from: f */
        long f35520f;

        /* renamed from: g */
        long f35521g;

        /* renamed from: h */
        private final long f35522h;

        protected C10980c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f35515a = j;
            this.f35516b = j2;
            this.f35517c = j3;
            this.f35518d = j4;
            this.f35519e = j5;
            this.f35520f = j6;
            this.f35522h = j7;
            this.f35521g = m21775a(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: a */
        protected static long m21775a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C11599af.m19993a(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* renamed from: a */
        final void m21776a() {
            this.f35521g = m21775a(this.f35516b, this.f35517c, this.f35518d, this.f35519e, this.f35520f, this.f35522h);
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.a$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$d.class */
    public interface AbstractC10981d {
        long timeUsToTargetTime(long j);
    }

    /* renamed from: com.google.android.exoplayer2.extractor.a$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$e.class */
    public static final class C10982e {

        /* renamed from: a */
        public static final C10982e f35523a = new C10982e(-3, -9223372036854775807L, -1);

        /* renamed from: b */
        private final int f35524b;

        /* renamed from: c */
        private final long f35525c;

        /* renamed from: d */
        private final long f35526d;

        private C10982e(int i, long j, long j2) {
            this.f35524b = i;
            this.f35525c = j;
            this.f35526d = j2;
        }

        /* renamed from: a */
        public static C10982e m21774a(long j) {
            return new C10982e(0, -9223372036854775807L, j);
        }

        /* renamed from: a */
        public static C10982e m21773a(long j, long j2) {
            return new C10982e(-1, j, j2);
        }

        /* renamed from: b */
        public static C10982e m21771b(long j, long j2) {
            return new C10982e(-2, j, j2);
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.a$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$f.class */
    public interface AbstractC10983f {

        /* renamed from: com.google.android.exoplayer2.extractor.a$f$_CC */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a$f$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(AbstractC10983f abstractC10983f) {
            }
        }

        /* renamed from: a */
        C10982e mo21454a(AbstractC11121i abstractC11121i, long j) throws IOException;

        /* renamed from: a */
        void mo21455a();
    }

    public AbstractC10977a(AbstractC10981d abstractC10981d, AbstractC10983f abstractC10983f, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f35505b = abstractC10983f;
        this.f35507d = i;
        this.f35504a = new C10978a(abstractC10981d, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    private static int m21784a(AbstractC11121i abstractC11121i, long j, C11145u c11145u) {
        if (j == abstractC11121i.mo21398c()) {
            return 0;
        }
        c11145u.f36501a = j;
        return 1;
    }

    /* renamed from: a */
    private static boolean m21785a(AbstractC11121i abstractC11121i, long j) throws IOException {
        long mo21398c = j - abstractC11121i.mo21398c();
        if (mo21398c < 0 || mo21398c > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        abstractC11121i.mo21401b((int) mo21398c);
        return true;
    }

    /* renamed from: c */
    private void m21781c() {
        this.f35506c = null;
        this.f35505b.mo21455a();
    }

    /* renamed from: a */
    public final int m21783a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        while (true) {
            C10980c c10980c = (C10980c) C11593a.m20024a(this.f35506c);
            long j = c10980c.f35519e;
            long j2 = c10980c.f35520f;
            long j3 = c10980c.f35521g;
            if (j2 - j <= this.f35507d) {
                m21781c();
                return m21784a(abstractC11121i, j, c11145u);
            } else if (!m21785a(abstractC11121i, j3)) {
                return m21784a(abstractC11121i, j3, c11145u);
            } else {
                abstractC11121i.mo21406a();
                C10982e mo21454a = this.f35505b.mo21454a(abstractC11121i, c10980c.f35516b);
                int i = mo21454a.f35524b;
                if (i == -3) {
                    m21781c();
                    return m21784a(abstractC11121i, j3, c11145u);
                } else if (i == -2) {
                    long j4 = mo21454a.f35525c;
                    long j5 = mo21454a.f35526d;
                    c10980c.f35517c = j4;
                    c10980c.f35519e = j5;
                    c10980c.m21776a();
                } else if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    m21785a(abstractC11121i, mo21454a.f35526d);
                    long unused = mo21454a.f35526d;
                    m21781c();
                    return m21784a(abstractC11121i, mo21454a.f35526d, c11145u);
                } else {
                    long j6 = mo21454a.f35525c;
                    long j7 = mo21454a.f35526d;
                    c10980c.f35518d = j6;
                    c10980c.f35520f = j7;
                    c10980c.m21776a();
                }
            }
        }
    }

    /* renamed from: a */
    public final AbstractC11146v m21787a() {
        return this.f35504a;
    }

    /* renamed from: a */
    public final void m21786a(long j) {
        C10980c c10980c = this.f35506c;
        if (c10980c == null || c10980c.f35515a != j) {
            this.f35506c = new C10980c(j, this.f35504a.f35508a.timeUsToTargetTime(j), this.f35504a.f35509b, this.f35504a.f35510c, this.f35504a.f35511d, this.f35504a.f35512e, this.f35504a.f35513f);
        }
    }

    /* renamed from: b */
    public final boolean m21782b() {
        return this.f35506c != null;
    }
}

package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11599af;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.source.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/n.class */
public final class C11308n extends AbstractC11293d<Void> {

    /* renamed from: a */
    public C11309a f37128a;

    /* renamed from: b */
    private final AbstractC11315r f37129b;

    /* renamed from: c */
    private final boolean f37130c;

    /* renamed from: d */
    private final AbstractC10864al.C10867b f37131d = new AbstractC10864al.C10867b();

    /* renamed from: e */
    private final AbstractC10864al.C10866a f37132e = new AbstractC10864al.C10866a();

    /* renamed from: f */
    private C11306m f37133f;

    /* renamed from: g */
    private boolean f37134g;

    /* renamed from: h */
    private boolean f37135h;

    /* renamed from: i */
    private boolean f37136i;

    /* renamed from: com.google.android.exoplayer2.source.n$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/n$a.class */
    public static final class C11309a extends AbstractC11302j {

        /* renamed from: c */
        public static final Object f37137c = new Object();

        /* renamed from: d */
        private final Object f37138d;

        /* renamed from: e */
        private final Object f37139e;

        private C11309a(AbstractC10864al abstractC10864al, Object obj, Object obj2) {
            super(abstractC10864al);
            this.f37138d = obj;
            this.f37139e = obj2;
        }

        /* renamed from: a */
        public static C11309a m20953a(MediaItem mediaItem) {
            return new C11309a(new C11310b(mediaItem), AbstractC10864al.C10867b.f35004a, f37137c);
        }

        /* renamed from: a */
        public static C11309a m20951a(AbstractC10864al abstractC10864al, Object obj, Object obj2) {
            return new C11309a(abstractC10864al, obj, obj2);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
            this.f37105a.mo20947a(i, c10866a, z);
            if (C11599af.m19973a(c10866a.f34999b, this.f37139e) && z) {
                c10866a.f34999b = f37137c;
            }
            return c10866a;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10867b mo20853a(int i, AbstractC10864al.C10867b c10867b, long j) {
            this.f37105a.mo20853a(i, c10867b, j);
            if (C11599af.m19973a(c10867b.f35006b, this.f37138d)) {
                c10867b.f35006b = AbstractC10864al.C10867b.f35004a;
            }
            return c10867b;
        }

        /* renamed from: a */
        public final C11309a m20952a(AbstractC10864al abstractC10864al) {
            return new C11309a(abstractC10864al, this.f37138d, this.f37139e);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final Object mo20948a(int i) {
            Object mo20948a = this.f37105a.mo20948a(i);
            Object obj = mo20948a;
            if (C11599af.m19973a(mo20948a, this.f37139e)) {
                obj = f37137c;
            }
            return obj;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: c */
        public final int mo20945c(Object obj) {
            AbstractC10864al abstractC10864al = this.f37105a;
            Object obj2 = obj;
            if (f37137c.equals(obj)) {
                Object obj3 = this.f37139e;
                obj2 = obj;
                if (obj3 != null) {
                    obj2 = obj3;
                }
            }
            return abstractC10864al.mo20945c(obj2);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.n$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/n$b.class */
    public static final class C11310b extends AbstractC10864al {

        /* renamed from: a */
        private final MediaItem f37140a;

        public C11310b(MediaItem mediaItem) {
            this.f37140a = mediaItem;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final int mo20949a() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
            Object obj = null;
            Integer num = z ? 0 : null;
            if (z) {
                obj = C11309a.f37137c;
            }
            return c10866a.m22173a(num, obj, -9223372036854775807L, 0L);
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10867b mo20853a(int i, AbstractC10864al.C10867b c10867b, long j) {
            c10867b.m22166a(AbstractC10864al.C10867b.f35004a, this.f37140a, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0L);
            c10867b.f35017m = true;
            return c10867b;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final Object mo20948a(int i) {
            return C11309a.f37137c;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: b */
        public final int mo20946b() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: c */
        public final int mo20945c(Object obj) {
            return obj == C11309a.f37137c ? 0 : -1;
        }
    }

    public C11308n(AbstractC11315r abstractC11315r, boolean z) {
        this.f37129b = abstractC11315r;
        this.f37130c = z;
        this.f37128a = C11309a.m20953a(abstractC11315r.mo20856e());
    }

    /* renamed from: b */
    private Object m20954b(Object obj) {
        Object obj2 = obj;
        if (this.f37128a.f37139e != null) {
            obj2 = obj;
            if (obj.equals(C11309a.f37137c)) {
                obj2 = this.f37128a.f37139e;
            }
        }
        return obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    /* renamed from: b */
    private void m20956b(long j) {
        C11306m c11306m = this.f37133f;
        int mo20945c = this.f37128a.mo20945c(c11306m.f37119a.f37148a);
        if (mo20945c == -1) {
            return;
        }
        long j2 = this.f37128a.mo20947a(mo20945c, this.f37132e, false).f35001d;
        char c = j;
        if (j2 != -9223372036854775807L) {
            c = j;
            if (j >= j2) {
                c = Math.max(0L, j2 - 1);
            }
        }
        c11306m.f37122d = c;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    protected final /* synthetic */ AbstractC11315r.C11316a mo20958a(Void r4, AbstractC11315r.C11316a c11316a) {
        Object obj = c11316a.f37148a;
        Object obj2 = obj;
        if (this.f37128a.f37139e != null) {
            obj2 = obj;
            if (this.f37128a.f37139e.equals(obj)) {
                obj2 = C11309a.f37137c;
            }
        }
        return c11316a.mo20936a(obj2);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20860a(AbstractC11312p abstractC11312p) {
        ((C11306m) abstractC11312p).m20961g();
        if (abstractC11312p == this.f37133f) {
            this.f37133f = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    public final void mo20858a(AbstractC11590v abstractC11590v) {
        super.mo20858a(abstractC11590v);
        if (!this.f37130c) {
            this.f37134g = true;
            m20977a((C11308n) null, this.f37129b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void mo20957a(java.lang.Void r9, com.google.android.exoplayer2.source.AbstractC11315r r10, com.google.android.exoplayer2.AbstractC10864al r11) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11308n.mo20957a(java.lang.Object, com.google.android.exoplayer2.source.r, com.google.android.exoplayer2.al):void");
    }

    /* renamed from: b */
    public final C11306m mo20859a(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        C11306m c11306m = new C11306m(c11316a, abstractC11533b, j);
        c11306m.m20963a(this.f37129b);
        if (this.f37135h) {
            c11306m.m20964a(c11316a.mo20936a(m20954b(c11316a.f37148a)));
        } else {
            this.f37133f = c11306m;
            if (!this.f37134g) {
                this.f37134g = true;
                m20977a((C11308n) null, this.f37129b);
            }
        }
        return c11306m;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    public final void mo20857c() {
        this.f37135h = false;
        this.f37134g = false;
        super.mo20857c();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: e */
    public final MediaItem mo20856e() {
        return this.f37129b.mo20856e();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: f */
    public final void mo20855f() {
    }
}

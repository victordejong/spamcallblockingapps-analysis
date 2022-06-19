package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import com.google.android.exoplayer2.AbstractC10851af;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.C10847ad;
import com.google.android.exoplayer2.C11165k;
import com.google.android.exoplayer2.C11667y;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p323a.C10835a;
import com.google.android.exoplayer2.source.AbstractC11272ac;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.C11421k;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.trackselection.AbstractC11444h;
import com.google.android.exoplayer2.trackselection.C11446i;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.AbstractC11611k;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.common.base.AbstractC15399q;
import com.google.common.collect.AbstractC15549v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.exoplayer2.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o.class */
public final class C11241o implements Handler.Callback, C10847ad.AbstractC10848a, C11165k.AbstractC11166a, AbstractC11312p.AbstractC11313a, AbstractC11444h.AbstractC11445a, C11667y.AbstractC11671d {

    /* renamed from: A */
    private boolean f36834A;

    /* renamed from: B */
    private boolean f36835B;

    /* renamed from: C */
    private boolean f36836C;

    /* renamed from: D */
    private int f36837D;

    /* renamed from: E */
    private boolean f36838E;

    /* renamed from: F */
    private boolean f36839F;

    /* renamed from: G */
    private boolean f36840G;

    /* renamed from: H */
    private boolean f36841H;

    /* renamed from: I */
    private int f36842I;

    /* renamed from: J */
    private C11249g f36843J;

    /* renamed from: K */
    private long f36844K;

    /* renamed from: L */
    private int f36845L;

    /* renamed from: M */
    private boolean f36846M;

    /* renamed from: N */
    private ExoPlaybackException f36847N;

    /* renamed from: O */
    private long f36848O;

    /* renamed from: a */
    final AbstractC11611k f36849a;

    /* renamed from: b */
    final Looper f36850b;

    /* renamed from: c */
    private final AbstractC10851af[] f36851c;

    /* renamed from: d */
    private final AbstractC10853ag[] f36852d;

    /* renamed from: e */
    private final AbstractC11444h f36853e;

    /* renamed from: f */
    private final C11446i f36854f;

    /* renamed from: g */
    private final AbstractC11260s f36855g;

    /* renamed from: h */
    private final AbstractC11534c f36856h;

    /* renamed from: i */
    private final HandlerThread f36857i;

    /* renamed from: j */
    private final AbstractC10864al.C10867b f36858j;

    /* renamed from: k */
    private final AbstractC10864al.C10866a f36859k;

    /* renamed from: l */
    private final long f36860l;

    /* renamed from: m */
    private final boolean f36861m;

    /* renamed from: n */
    private final C11165k f36862n;

    /* renamed from: o */
    private final ArrayList<C11245c> f36863o;

    /* renamed from: p */
    private final AbstractC11603c f36864p;

    /* renamed from: q */
    private final AbstractC11247e f36865q;

    /* renamed from: r */
    private final C11665w f36866r;

    /* renamed from: s */
    private final C11667y f36867s;

    /* renamed from: t */
    private final AbstractC11259r f36868t;

    /* renamed from: u */
    private final long f36869u;

    /* renamed from: v */
    private C10855ai f36870v;

    /* renamed from: w */
    private C11672z f36871w;

    /* renamed from: x */
    private C11246d f36872x;

    /* renamed from: y */
    private boolean f36873y;

    /* renamed from: z */
    private boolean f36874z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.o$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$a.class */
    public static final class C11243a {

        /* renamed from: a */
        final List<C11667y.C11670c> f36876a;

        /* renamed from: b */
        final AbstractC11272ac f36877b;

        /* renamed from: c */
        final int f36878c;

        /* renamed from: d */
        final long f36879d;

        private C11243a(List<C11667y.C11670c> list, AbstractC11272ac abstractC11272ac, int i, long j) {
            this.f36876a = list;
            this.f36877b = abstractC11272ac;
            this.f36878c = i;
            this.f36879d = j;
        }
    }

    /* renamed from: com.google.android.exoplayer2.o$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$b.class */
    static final class C11244b {

        /* renamed from: a */
        public final int f36880a;

        /* renamed from: b */
        public final int f36881b;

        /* renamed from: c */
        public final int f36882c;

        /* renamed from: d */
        public final AbstractC11272ac f36883d;

        public C11244b(int i, int i2, int i3, AbstractC11272ac abstractC11272ac) {
            this.f36880a = i;
            this.f36881b = i2;
            this.f36882c = i3;
            this.f36883d = abstractC11272ac;
        }
    }

    /* renamed from: com.google.android.exoplayer2.o$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$c.class */
    public static final class C11245c implements Comparable<C11245c> {

        /* renamed from: a */
        public final C10847ad f36884a;

        /* renamed from: b */
        public int f36885b;

        /* renamed from: c */
        public long f36886c;

        /* renamed from: d */
        public Object f36887d;

        public C11245c(C10847ad c10847ad) {
            this.f36884a = c10847ad;
        }

        /* renamed from: a */
        public final void m21038a(int i, long j, Object obj) {
            this.f36885b = i;
            this.f36886c = j;
            this.f36887d = obj;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C11245c c11245c) {
            C11245c c11245c2 = c11245c;
            Object obj = this.f36887d;
            if ((obj == null) != (c11245c2.f36887d == null)) {
                return obj != null ? -1 : 1;
            } else if (obj == null) {
                return 0;
            } else {
                int i = this.f36885b - c11245c2.f36885b;
                return i != 0 ? i : C11599af.m19933c(this.f36886c, c11245c2.f36886c);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.o$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$d.class */
    public static final class C11246d {

        /* renamed from: a */
        boolean f36888a;

        /* renamed from: b */
        public C11672z f36889b;

        /* renamed from: c */
        public int f36890c;

        /* renamed from: d */
        public boolean f36891d;

        /* renamed from: e */
        public int f36892e;

        /* renamed from: f */
        public boolean f36893f;

        /* renamed from: g */
        public int f36894g;

        public C11246d(C11672z c11672z) {
            this.f36889b = c11672z;
        }

        /* renamed from: a */
        public final void m21037a(int i) {
            this.f36888a |= i > 0;
            this.f36890c += i;
        }

        /* renamed from: a */
        public final void m21036a(C11672z c11672z) {
            this.f36888a |= this.f36889b != c11672z;
            this.f36889b = c11672z;
        }

        /* renamed from: b */
        public final void m21035b(int i) {
            boolean z = true;
            if (!this.f36891d || this.f36892e == 4) {
                this.f36888a = true;
                this.f36891d = true;
                this.f36892e = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            C11593a.m20022a(z);
        }

        /* renamed from: c */
        public final void m21034c(int i) {
            this.f36888a = true;
            this.f36893f = true;
            this.f36894g = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.o$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$e.class */
    public interface AbstractC11247e {
        void onPlaybackInfoUpdate(C11246d c11246d);
    }

    /* renamed from: com.google.android.exoplayer2.o$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$f.class */
    public static final class C11248f {

        /* renamed from: a */
        public final AbstractC11315r.C11316a f36895a;

        /* renamed from: b */
        public final long f36896b;

        /* renamed from: c */
        public final long f36897c;

        /* renamed from: d */
        public final boolean f36898d;

        /* renamed from: e */
        public final boolean f36899e;

        /* renamed from: f */
        public final boolean f36900f;

        public C11248f(AbstractC11315r.C11316a c11316a, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f36895a = c11316a;
            this.f36896b = j;
            this.f36897c = j2;
            this.f36898d = z;
            this.f36899e = z2;
            this.f36900f = z3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.o$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$g.class */
    public static final class C11249g {

        /* renamed from: a */
        public final AbstractC10864al f36901a;

        /* renamed from: b */
        public final int f36902b;

        /* renamed from: c */
        public final long f36903c;

        public C11249g(AbstractC10864al abstractC10864al, int i, long j) {
            this.f36901a = abstractC10864al;
            this.f36902b = i;
            this.f36903c = j;
        }
    }

    public C11241o(AbstractC10851af[] abstractC10851afArr, AbstractC11444h abstractC11444h, C11446i c11446i, AbstractC11260s abstractC11260s, AbstractC11534c abstractC11534c, int i, boolean z, C10835a c10835a, C10855ai c10855ai, AbstractC11259r abstractC11259r, long j, boolean z2, Looper looper, AbstractC11603c abstractC11603c, AbstractC11247e abstractC11247e) {
        this.f36865q = abstractC11247e;
        this.f36851c = abstractC10851afArr;
        this.f36853e = abstractC11444h;
        this.f36854f = c11446i;
        this.f36855g = abstractC11260s;
        this.f36856h = abstractC11534c;
        this.f36837D = i;
        this.f36838E = z;
        this.f36870v = c10855ai;
        this.f36868t = abstractC11259r;
        this.f36869u = j;
        this.f36848O = j;
        this.f36874z = z2;
        this.f36864p = abstractC11603c;
        this.f36860l = abstractC11260s.mo21017e();
        this.f36861m = abstractC11260s.mo21016f();
        C11672z m19583a = C11672z.m19583a(c11446i);
        this.f36871w = m19583a;
        this.f36872x = new C11246d(m19583a);
        this.f36852d = new AbstractC10853ag[abstractC10851afArr.length];
        for (int i2 = 0; i2 < abstractC10851afArr.length; i2++) {
            abstractC10851afArr[i2].mo21811a(i2);
            this.f36852d[i2] = abstractC10851afArr[i2].mo21804b();
        }
        this.f36862n = new C11165k(this, abstractC11603c);
        this.f36863o = new ArrayList<>();
        this.f36858j = new AbstractC10864al.C10867b();
        this.f36859k = new AbstractC10864al.C10866a();
        abstractC11444h.m20556a(this, abstractC11534c);
        this.f36846M = true;
        Handler handler = new Handler(looper);
        this.f36866r = new C11665w(c10835a, handler);
        this.f36867s = new C11667y(this, c10835a, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f36857i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f36850b = looper2;
        this.f36849a = abstractC11603c.mo19909a(looper2, this);
    }

    /* renamed from: a */
    private long m21088a(AbstractC10864al abstractC10864al, Object obj, long j) {
        abstractC10864al.mo20853a(abstractC10864al.mo22180a(obj, this.f36859k).f35000c, this.f36858j, 0L);
        if (this.f36858j.f35011g == -9223372036854775807L || !this.f36858j.m22167a() || !this.f36858j.f35014j) {
            return -9223372036854775807L;
        }
        return C11158f.m21372b(C11599af.m19996a(this.f36858j.f35012h) - this.f36858j.f35011g) - (j + this.f36859k.f35002e);
    }

    /* renamed from: a */
    private long m21084a(AbstractC11315r.C11316a c11316a, long j, boolean z) throws ExoPlaybackException {
        return m21083a(c11316a, j, this.f36866r.f38914c != this.f36866r.f38915d, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: a */
    private long m21083a(AbstractC11315r.C11316a c11316a, long j, boolean z, boolean z2) throws ExoPlaybackException {
        C11447u c11447u;
        char c;
        char c2;
        m21055g();
        this.f36835B = false;
        if (z2 || this.f36871w.f38952d == 3) {
            m21106a(2);
        }
        C11447u c11447u2 = this.f36866r.f38914c;
        C11447u c11447u3 = c11447u2;
        while (true) {
            c11447u = c11447u3;
            if (c11447u == null || c11316a.equals(c11447u.f37842f.f38758a)) {
                break;
            }
            c11447u3 = c11447u.f37844h;
        }
        if (z || c11447u2 != c11447u || (c11447u != null && c11447u.f37847k + j < 0)) {
            for (AbstractC10851af abstractC10851af : this.f36851c) {
                m21065b(abstractC10851af);
            }
            if (c11447u != null) {
                while (this.f36866r.f38914c != c11447u) {
                    this.f36866r.m19640a();
                }
                this.f36866r.m19625a(c11447u);
                c11447u.f37847k = 0L;
                m21044r();
            }
        }
        if (c11447u != null) {
            this.f36866r.m19625a(c11447u);
            if (!c11447u.f37840d) {
                c11447u.f37842f = c11447u.f37842f.m19757a(j);
                c2 = j;
            } else {
                char c3 = j;
                if (c11447u.f37842f.f38762e != -9223372036854775807L) {
                    c3 = j;
                    if (j >= c11447u.f37842f.f38762e) {
                        c3 = Math.max(0L, c11447u.f37842f.f38762e - 1);
                    }
                }
                c2 = c3;
                if (c11447u.f37841e) {
                    char mo20891b = c11447u.f37837a.mo20891b(c3);
                    c11447u.f37837a.mo20902a(mo20891b - this.f36860l, this.f36861m);
                    c2 = mo20891b;
                }
            }
            m21103a((long) c2);
            m21048n();
            c = c2;
        } else {
            this.f36866r.m19623b();
            m21103a(j);
            c = j;
        }
        m21062b(false);
        this.f36849a.mo19879b(2);
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    private Pair<AbstractC11315r.C11316a, Long> m21094a(AbstractC10864al abstractC10864al) {
        if (abstractC10864al.m22178c()) {
            return Pair.create(C11672z.m19590a(), 0L);
        }
        Pair<Object, Long> m22182a = abstractC10864al.m22182a(this.f36858j, this.f36859k, abstractC10864al.mo20966b(this.f36838E), -9223372036854775807L);
        AbstractC11315r.C11316a m19630a = this.f36866r.m19630a(abstractC10864al, m22182a.first, 0L);
        char longValue = ((Long) m22182a.second).longValue();
        if (m19630a.m20944a()) {
            abstractC10864al.mo22180a(m19630a.f37148a, this.f36859k);
            longValue = 0;
            if (m19630a.f37150c == this.f36859k.m22172b(m19630a.f37149b)) {
                longValue = this.f36859k.f35003f.f37029f;
            }
        }
        return Pair.create(m19630a, Long.valueOf(longValue));
    }

    /* renamed from: a */
    private static Pair<Object, Long> m21091a(AbstractC10864al abstractC10864al, C11249g c11249g, boolean z, int i, boolean z2, AbstractC10864al.C10867b c10867b, AbstractC10864al.C10866a c10866a) {
        Object m21095a;
        AbstractC10864al abstractC10864al2 = c11249g.f36901a;
        if (abstractC10864al.m22178c()) {
            return null;
        }
        if (abstractC10864al2.m22178c()) {
            abstractC10864al2 = abstractC10864al;
        }
        try {
            Pair<Object, Long> m22182a = abstractC10864al2.m22182a(c10867b, c10866a, c11249g.f36902b, c11249g.f36903c);
            if (abstractC10864al.equals(abstractC10864al2)) {
                return m22182a;
            }
            if (abstractC10864al.mo20945c(m22182a.first) == -1) {
                if (z && (m21095a = m21095a(c10867b, c10866a, i, z2, m22182a.first, abstractC10864al2, abstractC10864al)) != null) {
                    return abstractC10864al.m22182a(c10867b, c10866a, abstractC10864al.mo22180a(m21095a, c10866a).f35000c, -9223372036854775807L);
                }
                return null;
            }
            abstractC10864al2.mo22180a(m22182a.first, c10866a);
            Pair<Object, Long> pair = m22182a;
            if (abstractC10864al2.mo20853a(c10866a.f35000c, c10867b, 0L).f35017m) {
                pair = abstractC10864al.m22182a(c10867b, c10866a, abstractC10864al.mo22180a(m22182a.first, c10866a).f35000c, c11249g.f36903c);
            }
            return pair;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* renamed from: a */
    private C11672z m21085a(AbstractC11315r.C11316a c11316a, long j, long j2) {
        TrackGroupArray trackGroupArray;
        this.f36846M = this.f36846M || j != this.f36871w.f38966r || !c11316a.equals(this.f36871w.f38950b);
        m21049m();
        TrackGroupArray trackGroupArray2 = this.f36871w.f38955g;
        C11446i c11446i = this.f36871w.f38956h;
        AbstractC15549v<Metadata> abstractC15549v = this.f36871w.f38957i;
        if (this.f36867s.f38933i) {
            C11447u c11447u = this.f36866r.f38914c;
            TrackGroupArray trackGroupArray3 = c11447u == null ? TrackGroupArray.EMPTY : c11447u.f37845i;
            c11446i = c11447u == null ? this.f36854f : c11447u.f37846j;
            AbstractC15549v<Metadata> m21071a = m21071a(c11446i.f37835c);
            if (c11447u != null && c11447u.f37842f.f38760c != j2) {
                c11447u.f37842f = c11447u.f37842f.m19756b(j2);
            }
            trackGroupArray = trackGroupArray3;
            abstractC15549v = m21071a;
        } else {
            if (!c11316a.equals(this.f36871w.f38950b)) {
                trackGroupArray2 = TrackGroupArray.EMPTY;
                c11446i = this.f36854f;
                abstractC15549v = AbstractC15549v.m8720g();
            }
            trackGroupArray = trackGroupArray2;
        }
        return this.f36871w.m19584a(c11316a, j, j2, m21043s(), trackGroupArray, c11446i, abstractC15549v);
    }

    /* renamed from: a */
    private static AbstractC15549v<Metadata> m21071a(AbstractC11436c[] abstractC11436cArr) {
        boolean z;
        AbstractC15549v.C15550a c15550a = new AbstractC15549v.C15550a();
        int length = abstractC11436cArr.length;
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i >= length) {
                break;
            }
            AbstractC11436c abstractC11436c = abstractC11436cArr[i];
            boolean z3 = z;
            if (abstractC11436c != null) {
                Format a = abstractC11436c.mo20561a(0);
                if (a.metadata == null) {
                    c15550a.m8715b(new Metadata(new Metadata.Entry[0]));
                    z3 = z;
                } else {
                    c15550a.m8715b(a.metadata);
                    z3 = true;
                }
            }
            i++;
            z2 = z3;
        }
        return z ? c15550a.m8717a() : AbstractC15549v.m8720g();
    }

    /* renamed from: a */
    public static Object m21095a(AbstractC10864al.C10867b c10867b, AbstractC10864al.C10866a c10866a, int i, boolean z, Object obj, AbstractC10864al abstractC10864al, AbstractC10864al abstractC10864al2) {
        int mo20945c = abstractC10864al.mo20945c(obj);
        int mo20946b = abstractC10864al.mo20946b();
        int i2 = -1;
        for (int i3 = 0; i3 < mo20946b && i2 == -1; i3++) {
            mo20945c = abstractC10864al.m22183a(mo20945c, c10866a, c10867b, i, z);
            if (mo20945c == -1) {
                break;
            }
            i2 = abstractC10864al2.mo20945c(abstractC10864al.mo20948a(mo20945c));
        }
        if (i2 == -1) {
            return null;
        }
        return abstractC10864al2.mo20948a(i2);
    }

    /* renamed from: a */
    private void m21107a(float f) {
        AbstractC11436c[] abstractC11436cArr;
        C11447u c11447u = this.f36866r.f38914c;
        while (true) {
            C11447u c11447u2 = c11447u;
            if (c11447u2 != null) {
                for (AbstractC11436c abstractC11436c : c11447u2.f37846j.f37835c) {
                    if (abstractC11436c != null) {
                        abstractC11436c.mo20570a(f);
                    }
                }
                c11447u = c11447u2.f37844h;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m21106a(int i) {
        if (this.f36871w.f38952d != i) {
            this.f36871w = this.f36871w.m19589a(i);
        }
    }

    /* renamed from: a */
    private void m21104a(int i, boolean z) throws ExoPlaybackException {
        AbstractC10851af abstractC10851af = this.f36851c[i];
        if (m21059c(abstractC10851af)) {
            return;
        }
        C11447u c11447u = this.f36866r.f38915d;
        boolean z2 = c11447u == this.f36866r.f38914c;
        C11446i c11446i = c11447u.f37846j;
        RendererConfiguration rendererConfiguration = c11446i.f37834b[i];
        Format[] m21082a = m21082a(c11446i.f37835c[i]);
        boolean z3 = m21042t() && this.f36871w.f38952d == 3;
        boolean z4 = !z && z3;
        this.f36842I++;
        abstractC10851af.mo21809a(rendererConfiguration, m21082a, c11447u.f37839c[i], this.f36844K, z4, z2, c11447u.m20549a(), c11447u.f37847k);
        abstractC10851af.mo19719a(103, new AbstractC10851af.AbstractC10852a() { // from class: com.google.android.exoplayer2.o.1
            @Override // com.google.android.exoplayer2.AbstractC10851af.AbstractC10852a
            /* renamed from: a */
            public final void mo21040a() {
                C11241o.this.f36849a.mo19879b(2);
            }

            @Override // com.google.android.exoplayer2.AbstractC10851af.AbstractC10852a
            /* renamed from: a */
            public final void mo21039a(long j) {
                if (j >= 2000) {
                    C11241o.this.f36840G = true;
                }
            }
        });
        this.f36862n.m21352a(abstractC10851af);
        if (!z3) {
            return;
        }
        abstractC10851af.mo21801e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.exoplayer2.k] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: a */
    private void m21103a(long j) throws ExoPlaybackException {
        AbstractC10851af[] abstractC10851afArr;
        C11447u c11447u = this.f36866r.f38914c;
        ?? r6 = j;
        if (c11447u != null) {
            r6 = j + c11447u.f37847k;
        }
        this.f36844K = r6;
        this.f36862n.m21353a(r6);
        for (AbstractC10851af abstractC10851af : this.f36851c) {
            if (m21059c(abstractC10851af)) {
                abstractC10851af.mo21810a(this.f36844K);
            }
        }
    }

    /* renamed from: a */
    private void m21102a(long j, long j2) {
        this.f36849a.mo19880b();
        this.f36849a.mo19882a(j + j2);
    }

    /* renamed from: a */
    private void m21100a(C10840aa c10840aa, float f, boolean z, boolean z2) throws ExoPlaybackException {
        AbstractC10851af[] abstractC10851afArr;
        if (z) {
            if (z2) {
                this.f36872x.m21037a(1);
            }
            this.f36871w = this.f36871w.m19587a(c10840aa);
        }
        m21107a(c10840aa.f34892b);
        for (AbstractC10851af abstractC10851af : this.f36851c) {
            if (abstractC10851af != null) {
                abstractC10851af.mo19721a(f, c10840aa.f34892b);
            }
        }
    }

    /* renamed from: a */
    private void m21099a(C10840aa c10840aa, boolean z) throws ExoPlaybackException {
        m21100a(c10840aa, c10840aa.f34892b, true, z);
    }

    /* renamed from: a */
    private static void m21097a(AbstractC10851af abstractC10851af) throws ExoPlaybackException {
        if (abstractC10851af.mo21813C_() == 2) {
            abstractC10851af.mo21794l();
        }
    }

    /* renamed from: a */
    private static void m21096a(AbstractC10851af abstractC10851af, long j) {
        abstractC10851af.mo21797i();
        if (abstractC10851af instanceof C11421k) {
            ((C11421k) abstractC10851af).m20604c(j);
        }
    }

    /* renamed from: a */
    private void m21093a(AbstractC10864al abstractC10864al, AbstractC10864al abstractC10864al2) {
        if (!abstractC10864al.m22178c() || !abstractC10864al2.m22178c()) {
            for (int size = this.f36863o.size() - 1; size >= 0; size--) {
                if (!m21087a(this.f36863o.get(size), abstractC10864al, abstractC10864al2, this.f36837D, this.f36838E, this.f36858j, this.f36859k)) {
                    this.f36863o.get(size).f36884a.m22233a(false);
                    this.f36863o.remove(size);
                }
            }
            Collections.sort(this.f36863o);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* renamed from: a */
    private static void m21092a(AbstractC10864al abstractC10864al, C11245c c11245c, AbstractC10864al.C10867b c10867b, AbstractC10864al.C10866a c10866a) {
        int i = abstractC10864al.mo20853a(abstractC10864al.mo22180a(c11245c.f36887d, c10866a).f35000c, c10867b, 0L).f35019o;
        c11245c.m21038a(i, ((c10866a.f35001d > (-9223372036854775807L) ? 1 : (c10866a.f35001d == (-9223372036854775807L) ? 0 : -1)) != 0 ? c10866a.f35001d - 1 : true) == true ? 1L : 0L, abstractC10864al.mo20947a(i, c10866a, true).f34999b);
    }

    /* renamed from: a */
    private void m21089a(AbstractC10864al abstractC10864al, AbstractC11315r.C11316a c11316a, AbstractC10864al abstractC10864al2, AbstractC11315r.C11316a c11316a2, long j) {
        if (abstractC10864al.m22178c() || !m21090a(abstractC10864al, c11316a)) {
            if (this.f36862n.mo19758d().f34892b == this.f36871w.f38961m.f34892b) {
                return;
            }
            this.f36862n.mo19760a(this.f36871w.f38961m);
            return;
        }
        abstractC10864al.mo20853a(abstractC10864al.mo22180a(c11316a.f37148a, this.f36859k).f35000c, this.f36858j, 0L);
        this.f36868t.mo21026a((MediaItem.LiveConfiguration) C11599af.m19974a(this.f36858j.f35016l));
        if (j != -9223372036854775807L) {
            this.f36868t.mo21028a(m21088a(abstractC10864al, c11316a.f37148a, j));
            return;
        }
        Object obj = this.f36858j.f35006b;
        Object obj2 = null;
        if (!abstractC10864al2.m22178c()) {
            obj2 = abstractC10864al2.mo20853a(abstractC10864al2.mo22180a(c11316a2.f37148a, this.f36859k).f35000c, this.f36858j, 0L).f35006b;
        }
        if (C11599af.m19973a(obj2, obj)) {
            return;
        }
        this.f36868t.mo21028a(-9223372036854775807L);
    }

    /* renamed from: a */
    private void m21081a(C11446i c11446i) {
        this.f36855g.mo21021a(this.f36851c, c11446i.f37835c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: a */
    private void m21079a(AbstractC15399q<Boolean> abstractC15399q, long j) {
        synchronized (this) {
            long mo19910a = this.f36864p.mo19910a();
            boolean z = false;
            char c = j;
            while (!abstractC15399q.get().booleanValue() && c > 0) {
                try {
                    wait(c);
                } catch (InterruptedException e) {
                    z = true;
                }
                c = (mo19910a + j) - this.f36864p.mo19910a();
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: a */
    private void m21077a(boolean z) throws ExoPlaybackException {
        AbstractC11315r.C11316a c11316a = this.f36866r.f38914c.f37842f.f38758a;
        long m21083a = m21083a(c11316a, this.f36871w.f38966r, true, false);
        if (m21083a != this.f36871w.f38966r) {
            this.f36871w = m21085a(c11316a, m21083a, this.f36871w.f38951c);
            if (!z) {
                return;
            }
            this.f36872x.m21035b(4);
        }
    }

    /* renamed from: a */
    private void m21075a(boolean z, int i, boolean z2, int i2) throws ExoPlaybackException {
        this.f36872x.m21037a(z2 ? 1 : 0);
        this.f36872x.m21034c(i2);
        this.f36871w = this.f36871w.m19581a(z, i);
        this.f36835B = false;
        if (!m21042t()) {
            m21055g();
            m21054h();
        } else if (this.f36871w.f38952d == 3) {
            m21056f();
            this.f36849a.mo19879b(2);
        } else if (this.f36871w.f38952d != 2) {
        } else {
            this.f36849a.mo19879b(2);
        }
    }

    /* renamed from: a */
    private void m21074a(boolean z, AtomicBoolean atomicBoolean) {
        AbstractC10851af[] abstractC10851afArr;
        if (this.f36839F != z) {
            this.f36839F = z;
            if (!z) {
                for (AbstractC10851af abstractC10851af : this.f36851c) {
                    if (!m21059c(abstractC10851af)) {
                        abstractC10851af.mo21792n();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* renamed from: a */
    private void m21073a(boolean z, boolean z2) {
        m21072a(z || !this.f36839F, false, true, false);
        this.f36872x.m21037a(z2 ? 1 : 0);
        this.f36855g.mo21020b();
        m21106a(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01e6  */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21072a(boolean r27, boolean r28, boolean r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11241o.m21072a(boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: a */
    private void m21070a(boolean[] zArr) throws ExoPlaybackException {
        int i;
        C11447u c11447u = this.f36866r.f38915d;
        C11446i c11446i = c11447u.f37846j;
        int i2 = 0;
        while (true) {
            if (i2 < this.f36851c.length) {
                if (!c11446i.m20551a(i2)) {
                    this.f36851c[i2].mo21792n();
                }
                i2++;
            }
        }
        for (i = 0; i < this.f36851c.length; i++) {
            if (c11446i.m20551a(i)) {
                m21104a(i, zArr[i]);
            }
        }
        c11447u.f37843g = true;
    }

    /* renamed from: a */
    private boolean m21090a(AbstractC10864al abstractC10864al, AbstractC11315r.C11316a c11316a) {
        if (c11316a.m20944a() || abstractC10864al.m22178c()) {
            return false;
        }
        abstractC10864al.mo20853a(abstractC10864al.mo22180a(c11316a.f37148a, this.f36859k).f35000c, this.f36858j, 0L);
        return this.f36858j.m22167a() && this.f36858j.f35014j && this.f36858j.f35011g != -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* renamed from: a */
    private static boolean m21087a(C11245c c11245c, AbstractC10864al abstractC10864al, AbstractC10864al abstractC10864al2, int i, boolean z, AbstractC10864al.C10867b c10867b, AbstractC10864al.C10866a c10866a) {
        if (c11245c.f36887d == null) {
            Pair<Object, Long> m21091a = m21091a(abstractC10864al, new C11249g(c11245c.f36884a.f34896b, c11245c.f36884a.f34900f, c11245c.f36884a.f34901g == Long.MIN_VALUE ? (char) 1 : C11158f.m21372b(c11245c.f36884a.f34901g)), false, i, z, c10867b, c10866a);
            if (m21091a == null) {
                return false;
            }
            c11245c.m21038a(abstractC10864al.mo20945c(m21091a.first), ((Long) m21091a.second).longValue(), m21091a.first);
            if (c11245c.f36884a.f34901g != Long.MIN_VALUE) {
                return true;
            }
            m21092a(abstractC10864al, c11245c, c10867b, c10866a);
            return true;
        }
        int mo20945c = abstractC10864al.mo20945c(c11245c.f36887d);
        if (mo20945c == -1) {
            return false;
        }
        if (c11245c.f36884a.f34901g == Long.MIN_VALUE) {
            m21092a(abstractC10864al, c11245c, c10867b, c10866a);
            return true;
        }
        c11245c.f36885b = mo20945c;
        abstractC10864al2.mo22180a(c11245c.f36887d, c10866a);
        if (!abstractC10864al2.mo20853a(c10866a.f35000c, c10867b, 0L).f35017m) {
            return true;
        }
        Pair<Object, Long> m22182a = abstractC10864al.m22182a(c10867b, c10866a, abstractC10864al.mo22180a(c11245c.f36887d, c10866a).f35000c, c11245c.f36886c + c10866a.f35002e);
        c11245c.m21038a(abstractC10864al.mo20945c(m22182a.first), ((Long) m22182a.second).longValue(), m22182a.first);
        return true;
    }

    /* renamed from: a */
    private static boolean m21080a(C11672z c11672z, AbstractC10864al.C10866a c10866a, AbstractC10864al.C10867b c10867b) {
        AbstractC11315r.C11316a c11316a = c11672z.f38950b;
        AbstractC10864al abstractC10864al = c11672z.f38949a;
        return c11316a.m20944a() || abstractC10864al.m22178c() || abstractC10864al.mo20853a(abstractC10864al.mo22180a(c11316a.f37148a, c10866a).f35000c, c10867b, 0L).f35017m;
    }

    /* renamed from: a */
    private static Format[] m21082a(AbstractC11436c abstractC11436c) {
        int e = abstractC11436c != null ? abstractC11436c.mo20557e() : 0;
        Format[] formatArr = new Format[e];
        for (int i = 0; i < e; i++) {
            formatArr[i] = abstractC11436c.mo20561a(i);
        }
        return formatArr;
    }

    /* renamed from: b */
    private long m21068b(long j) {
        C11447u c11447u = this.f36866r.f38916e;
        if (c11447u == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.f36844K - c11447u.f37847k));
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016b A[EDGE_INSN: B:80:0x016b->B:95:0x016b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0077 -> B:13:0x007d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00ee -> B:28:0x00f8). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21067b(long r6, long r8) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11241o.m21067b(long, long):void");
    }

    /* renamed from: b */
    private void m21066b(C10847ad c10847ad) throws ExoPlaybackException {
        if (c10847ad.f34899e != this.f36850b) {
            this.f36849a.mo19883a(15, c10847ad).sendToTarget();
            return;
        }
        m21060c(c10847ad);
        if (this.f36871w.f38952d != 3 && this.f36871w.f38952d != 2) {
            return;
        }
        this.f36849a.mo19879b(2);
    }

    /* renamed from: b */
    private void m21065b(AbstractC10851af abstractC10851af) throws ExoPlaybackException {
        if (!m21059c(abstractC10851af)) {
            return;
        }
        this.f36862n.m21349b(abstractC10851af);
        m21097a(abstractC10851af);
        abstractC10851af.mo21793m();
        this.f36842I--;
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x0492, code lost:
        r38 = r27;
        r40 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x04a1, code lost:
        if (r0.m19625a(r15) == false) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x04a5, code lost:
        r35 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0503, code lost:
        if (r0.m19625a(r15) != false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05d8, code lost:
        if (r35 != false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0702, code lost:
        if ((r23 ? 1 : 0) != r11.f36871w.f38951c) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0794, code lost:
        if ((r23 ? 1 : 0) != r11.f36871w.f38951c) goto L268;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 40, insn: 0x0747: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r40 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:257:0x0743 */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x062f  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x06f8  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x076d  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x07c8  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x04f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0345  */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v232, types: [long] */
    /* JADX WARN: Type inference failed for: r0v275, types: [long] */
    /* JADX WARN: Type inference failed for: r0v319, types: [long] */
    /* JADX WARN: Type inference failed for: r0v321, types: [long] */
    /* JADX WARN: Type inference failed for: r0v344, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v407, types: [long] */
    /* JADX WARN: Type inference failed for: r0v417, types: [long] */
    /* JADX WARN: Type inference failed for: r0v419, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.exoplayer2.o] */
    /* JADX WARN: Type inference failed for: r27v0, types: [long] */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r3v3, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21064b(com.google.android.exoplayer2.AbstractC10864al r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 2005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11241o.m21064b(com.google.android.exoplayer2.al):void");
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: b */
    private void m21062b(boolean z) {
        C11447u c11447u = this.f36866r.f38916e;
        AbstractC11315r.C11316a c11316a = c11447u == null ? this.f36871w.f38950b : c11447u.f37842f.f38758a;
        boolean z2 = !this.f36871w.f38958j.equals(c11316a);
        if (z2) {
            this.f36871w = this.f36871w.m19585a(c11316a);
        }
        C11672z c11672z = this.f36871w;
        c11672z.f38964p = c11447u == null ? c11672z.f38966r : c11447u.m20539c();
        this.f36871w.f38965q = m21043s();
        if ((z2 || z) && c11447u != null && c11447u.f37840d) {
            m21081a(c11447u.f37846j);
        }
    }

    /* renamed from: c */
    private static void m21060c(C10847ad c10847ad) throws ExoPlaybackException {
        if (c10847ad.m22232b()) {
            return;
        }
        try {
            c10847ad.f34895a.mo19719a(c10847ad.f34897c, c10847ad.f34898d);
        } finally {
            c10847ad.m22233a(true);
        }
    }

    /* renamed from: c */
    private static boolean m21059c(AbstractC10851af abstractC10851af) {
        return abstractC10851af.mo21813C_() != 0;
    }

    /* renamed from: d */
    public /* synthetic */ void m21058d(C10847ad c10847ad) {
        try {
            m21060c(c10847ad);
        } catch (ExoPlaybackException e) {
            C11617n.m19857b("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* renamed from: e */
    private void m21057e() {
        this.f36872x.m21036a(this.f36871w);
        if (this.f36872x.f36888a) {
            this.f36865q.onPlaybackInfoUpdate(this.f36872x);
            this.f36872x = new C11246d(this.f36871w);
        }
    }

    /* renamed from: f */
    private void m21056f() throws ExoPlaybackException {
        AbstractC10851af[] abstractC10851afArr;
        this.f36835B = false;
        this.f36862n.m21354a();
        for (AbstractC10851af abstractC10851af : this.f36851c) {
            if (m21059c(abstractC10851af)) {
                abstractC10851af.mo21801e();
            }
        }
    }

    /* renamed from: g */
    private void m21055g() throws ExoPlaybackException {
        AbstractC10851af[] abstractC10851afArr;
        this.f36862n.m21350b();
        for (AbstractC10851af abstractC10851af : this.f36851c) {
            if (m21059c(abstractC10851af)) {
                m21097a(abstractC10851af);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: h */
    private void m21054h() throws ExoPlaybackException {
        C11447u c11447u = this.f36866r.f38914c;
        if (c11447u == null) {
            return;
        }
        char mo20888c = c11447u.f37840d ? c11447u.f37837a.mo20888c() : (char) 1;
        if (mo20888c != -9223372036854775807L) {
            m21103a((long) mo20888c);
            if (mo20888c != this.f36871w.f38966r) {
                this.f36871w = m21085a(this.f36871w.f38950b, mo20888c, this.f36871w.f38951c);
                this.f36872x.m21035b(4);
            }
        } else {
            long m21351a = this.f36862n.m21351a(c11447u != this.f36866r.f38915d);
            this.f36844K = m21351a;
            long j = m21351a - c11447u.f37847k;
            m21067b(this.f36871w.f38966r, j);
            this.f36871w.f38966r = j;
        }
        this.f36871w.f38964p = this.f36866r.f38916e.m20539c();
        this.f36871w.f38965q = m21043s();
        if (!this.f36871w.f38959k || this.f36871w.f38952d != 3 || !m21090a(this.f36871w.f38949a, this.f36871w.f38950b) || this.f36871w.f38961m.f34892b != 1.0f) {
            return;
        }
        float mo21027a = this.f36868t.mo21027a(m21053i(), m21043s());
        if (this.f36862n.mo19758d().f34892b == mo21027a) {
            return;
        }
        this.f36862n.mo19760a(this.f36871w.f38961m.m22238a(mo21027a));
        m21100a(this.f36871w.f38961m, this.f36862n.mo19758d().f34892b, false, false);
    }

    /* renamed from: i */
    private long m21053i() {
        return m21088a(this.f36871w.f38949a, this.f36871w.f38950b.f37148a, this.f36871w.f38966r);
    }

    /* renamed from: j */
    private void m21052j() {
        m21072a(true, false, true, false);
        this.f36855g.mo21019c();
        m21106a(1);
        this.f36857i.quit();
        synchronized (this) {
            this.f36873y = true;
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x009b A[SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21051k() throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11241o.m21051k():void");
    }

    /* renamed from: l */
    private boolean m21050l() {
        C11447u c11447u = this.f36866r.f38914c;
        long j = c11447u.f37842f.f38762e;
        if (c11447u.f37840d) {
            return j == -9223372036854775807L || this.f36871w.f38966r < j || !m21042t();
        }
        return false;
    }

    /* renamed from: m */
    private void m21049m() {
        C11447u c11447u = this.f36866r.f38914c;
        this.f36834A = c11447u != null && c11447u.f37842f.f38764g && this.f36874z;
    }

    /* renamed from: n */
    private void m21048n() {
        boolean m21047o = m21047o();
        this.f36836C = m21047o;
        if (m21047o) {
            this.f36866r.f38916e.m20541b(this.f36844K);
        }
        m21045q();
    }

    /* renamed from: o */
    private boolean m21047o() {
        if (!m21046p()) {
            return false;
        }
        return this.f36855g.mo21023a(m21068b(this.f36866r.f38916e.m20538d()), this.f36862n.mo19758d().f34892b);
    }

    /* renamed from: p */
    private boolean m21046p() {
        C11447u c11447u = this.f36866r.f38916e;
        return (c11447u == null || c11447u.m20538d() == Long.MIN_VALUE) ? false : true;
    }

    /* renamed from: q */
    private void m21045q() {
        C11447u c11447u = this.f36866r.f38916e;
        boolean z = this.f36836C || (c11447u != null && c11447u.f37837a.mo20881f());
        if (z != this.f36871w.f38954f) {
            this.f36871w = this.f36871w.m19582a(z);
        }
    }

    /* renamed from: r */
    private void m21044r() throws ExoPlaybackException {
        m21070a(new boolean[this.f36851c.length]);
    }

    /* renamed from: s */
    private long m21043s() {
        return m21068b(this.f36871w.f38964p);
    }

    /* renamed from: t */
    private boolean m21042t() {
        return this.f36871w.f38959k && this.f36871w.f38960l == 0;
    }

    /* renamed from: u */
    public /* synthetic */ Boolean m21041u() {
        return Boolean.valueOf(this.f36873y);
    }

    /* renamed from: a */
    public final void m21108a() {
        this.f36849a.mo19886a(0).sendToTarget();
    }

    /* renamed from: a */
    public final void m21105a(int i, int i2, AbstractC11272ac abstractC11272ac) {
        this.f36849a.mo19884a(20, 0, i2, abstractC11272ac).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.C11165k.AbstractC11166a
    /* renamed from: a */
    public final void mo21101a(C10840aa c10840aa) {
        this.f36849a.mo19883a(16, c10840aa).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.C10847ad.AbstractC10848a
    /* renamed from: a */
    public final void mo21098a(C10847ad c10847ad) {
        synchronized (this) {
            if (!this.f36873y && this.f36857i.isAlive()) {
                this.f36849a.mo19883a(14, c10847ad).sendToTarget();
                return;
            }
            C11617n.m19863a("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            c10847ad.m22233a(false);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab.AbstractC11271a
    /* renamed from: a */
    public final /* synthetic */ void mo20916a(AbstractC11312p abstractC11312p) {
        this.f36849a.mo19883a(9, abstractC11312p).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p.AbstractC11313a
    /* renamed from: a */
    public final void mo20915a(AbstractC11312p abstractC11312p) {
        this.f36849a.mo19883a(8, abstractC11312p).sendToTarget();
    }

    /* renamed from: a */
    public final void m21078a(List<C11667y.C11670c> list, int i, long j, AbstractC11272ac abstractC11272ac) {
        this.f36849a.mo19883a(17, new C11243a(list, abstractC11272ac, i, j)).sendToTarget();
    }

    /* renamed from: a */
    public final void m21076a(boolean z, int i) {
        this.f36849a.mo19885a(1, z ? 1 : 0, i).sendToTarget();
    }

    /* renamed from: b */
    public final void m21069b() {
        this.f36849a.mo19886a(6).sendToTarget();
    }

    /* renamed from: c */
    public final boolean m21061c() {
        synchronized (this) {
            if (!this.f36873y && this.f36857i.isAlive()) {
                this.f36849a.mo19879b(7);
                m21079a(new AbstractC15399q() { // from class: com.google.android.exoplayer2._$$Lambda$o$LQRMnE3eDLRsmHYxjsI_c0oVSVw
                    @Override // com.google.common.base.AbstractC15399q
                    public final Object get() {
                        Boolean m21041u;
                        m21041u = C11241o.this.m21041u();
                        return m21041u;
                    }
                }, this.f36869u);
                return this.f36873y;
            }
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.C11667y.AbstractC11671d
    /* renamed from: d */
    public final void mo19591d() {
        this.f36849a.mo19879b(22);
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x079b, code lost:
        if (r25.f36871w.f38952d == 3) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x10ff, code lost:
        if (r27 == false) goto L584;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0836 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x08f8 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0a3f A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0a4e A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0a5e A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0cc9  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0dac  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0f60 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:593:0x1130  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x11b3 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:619:0x11cd A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:636:0x1216 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:644:0x1245 A[Catch: RuntimeException -> 0x1335, IOException -> 0x1339, ExoPlaybackException -> 0x1347, TRY_LEAVE, TryCatch #22 {ExoPlaybackException -> 0x1347, IOException -> 0x1339, RuntimeException -> 0x1335, blocks: (B:233:0x0879, B:448:0x0e2f, B:450:0x0e3a, B:453:0x0e48, B:456:0x0e60, B:507:0x0f7e, B:509:0x0f8c, B:531:0x0ff6, B:574:0x10de, B:590:0x1124, B:612:0x119e, B:617:0x11c3, B:622:0x11da, B:634:0x120d, B:639:0x122d, B:642:0x1239, B:644:0x1245), top: B:747:0x0879 }] */
    /* JADX WARN: Removed duplicated region for block: B:710:0x14a5  */
    /* JADX WARN: Removed duplicated region for block: B:716:0x14f2  */
    /* JADX WARN: Removed duplicated region for block: B:721:0x151a  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x1558  */
    /* JADX WARN: Removed duplicated region for block: B:775:0x0d5c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:781:0x0e2f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:785:0x0f6e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v268, types: [long] */
    /* JADX WARN: Type inference failed for: r0v478, types: [long] */
    /* JADX WARN: Type inference failed for: r0v628, types: [long] */
    /* JADX WARN: Type inference failed for: r0v637, types: [long] */
    /* JADX WARN: Type inference failed for: r0v735, types: [long] */
    /* JADX WARN: Type inference failed for: r0v786, types: [long] */
    /* JADX WARN: Type inference failed for: r0v798, types: [long] */
    /* JADX WARN: Type inference failed for: r0v830, types: [long] */
    /* JADX WARN: Type inference failed for: r0v841, types: [long] */
    /* JADX WARN: Type inference failed for: r0v879, types: [long] */
    /* JADX WARN: Type inference failed for: r0v899, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r26) {
        /*
            Method dump skipped, instructions count: 5513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C11241o.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11444h.AbstractC11445a
    public final void onTrackSelectionsInvalidated() {
        this.f36849a.mo19879b(10);
    }
}

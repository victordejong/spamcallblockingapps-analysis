package kotlin.reflect.jvm.internal.impl.p539b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19669b;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r;
import kotlin.reflect.jvm.internal.impl.protobuf.C19676e;
import kotlin.reflect.jvm.internal.impl.protobuf.C19678f;
import kotlin.reflect.jvm.internal.impl.protobuf.C19692j;
import kotlin.reflect.jvm.internal.impl.protobuf.C19700m;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a.class */
public final class C18702a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a.class */
    public static final class C18704a extends AbstractC19683h implements AbstractC18865d {

        /* renamed from: a */
        public static AbstractC19708r<C18704a> f63811a = new AbstractC19669b<C18704a>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18704a(c19676e, c19678f);
            }
        };

        /* renamed from: d */
        private static final C18704a f63812d;

        /* renamed from: b */
        public int f63813b;

        /* renamed from: c */
        public List<C18706a> f63814c;

        /* renamed from: e */
        private final AbstractC19673d f63815e;

        /* renamed from: f */
        private int f63816f;

        /* renamed from: g */
        private byte f63817g;

        /* renamed from: h */
        private int f63818h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a.class */
        public static final class C18706a extends AbstractC19683h implements AbstractC18826c {

            /* renamed from: a */
            public static AbstractC19708r<C18706a> f63819a = new AbstractC19669b<C18706a>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.a.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
                /* renamed from: a */
                public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                    return new C18706a(c19676e, c19678f);
                }
            };

            /* renamed from: d */
            private static final C18706a f63820d;

            /* renamed from: b */
            public int f63821b;

            /* renamed from: c */
            public C18709b f63822c;

            /* renamed from: e */
            private final AbstractC19673d f63823e;

            /* renamed from: f */
            private int f63824f;

            /* renamed from: g */
            private byte f63825g;

            /* renamed from: h */
            private int f63826h;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$a */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$a.class */
            public static final class C18708a extends AbstractC19683h.AbstractC19685a<C18706a, C18708a> implements AbstractC18826c {

                /* renamed from: b */
                private int f63827b;

                /* renamed from: c */
                private int f63828c;

                /* renamed from: d */
                private C18709b f63829d = C18709b.m3675a();

                private C18708a() {
                }

                /* renamed from: a */
                private C18708a m3682a(int i) {
                    this.f63827b |= 1;
                    this.f63828c = i;
                    return this;
                }

                /* renamed from: a */
                private C18708a m3681a(C18709b c18709b) {
                    if ((this.f63827b & 2) != 2 || this.f63829d == C18709b.m3675a()) {
                        this.f63829d = c18709b;
                    } else {
                        this.f63829d = C18709b.m3673a(this.f63829d).mo1702a(c18709b).m3635f();
                    }
                    this.f63827b |= 2;
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18708a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$a$a> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.f63819a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        kotlin.reflect.jvm.internal.impl.b.a$a$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$a$a$a r0 = r0.mo1702a(r1)
                        r0 = r4
                        return r0
                    L18:
                        r6 = move-exception
                        r0 = r7
                        r5 = r0
                        goto L2a
                    L1e:
                        r6 = move-exception
                        r0 = r6
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                        kotlin.reflect.jvm.internal.impl.b.a$a$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a) r0     // Catch: java.lang.Throwable -> L18
                        r5 = r0
                        r0 = r6
                        throw r0     // Catch: java.lang.Throwable -> L29
                    L29:
                        r6 = move-exception
                    L2a:
                        r0 = r5
                        if (r0 == 0) goto L34
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$a$a$a r0 = r0.mo1702a(r1)
                    L34:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18708a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$a$a$a");
                }

                /* renamed from: f */
                static /* synthetic */ C18708a m3678f() {
                    return new C18708a();
                }

                /* renamed from: g */
                public C18708a clone() {
                    return new C18708a().mo1702a(m3676h());
                }

                /* renamed from: h */
                private C18706a m3676h() {
                    C18706a c18706a = new C18706a(this);
                    int i = this.f63827b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    c18706a.f63821b = this.f63828c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    c18706a.f63822c = this.f63829d;
                    c18706a.f63824f = i3;
                    return c18706a;
                }

                /* renamed from: a */
                public final C18708a mo1702a(C18706a c18706a) {
                    if (c18706a == C18706a.m3690a()) {
                        return this;
                    }
                    if (c18706a.m3685c()) {
                        m3682a(c18706a.f63821b);
                    }
                    if (c18706a.m3684d()) {
                        m3681a(c18706a.f63822c);
                    }
                    this.f65839a = this.f65839a.m1769a(c18706a.f63823e);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ C18706a mo1703a() {
                    return C18706a.m3690a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
                /* renamed from: d */
                public final /* synthetic */ AbstractC19705p mo1656d() {
                    C18706a m3676h = m3676h();
                    if (m3676h.mo1655e()) {
                        return m3676h;
                    }
                    throw m1778a((AbstractC19705p) m3676h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: e */
                public final boolean mo1655e() {
                    int i = this.f63827b;
                    if (!((i & 1) == 1)) {
                        return false;
                    }
                    return ((i & 2) == 2) && this.f63829d.mo1655e();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: j */
                public final /* synthetic */ AbstractC19705p mo1654j() {
                    return C18706a.m3690a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$b */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$b.class */
            public static final class C18709b extends AbstractC19683h implements AbstractC18805b {

                /* renamed from: a */
                public static AbstractC19708r<C18709b> f63830a = new AbstractC19669b<C18709b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.a.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
                    /* renamed from: a */
                    public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                        return new C18709b(c19676e, c19678f);
                    }
                };

                /* renamed from: m */
                private static final C18709b f63831m;

                /* renamed from: b */
                public EnumC18712b f63832b;

                /* renamed from: c */
                public long f63833c;

                /* renamed from: d */
                public float f63834d;

                /* renamed from: e */
                public double f63835e;

                /* renamed from: f */
                public int f63836f;

                /* renamed from: g */
                public int f63837g;

                /* renamed from: h */
                public int f63838h;

                /* renamed from: i */
                public C18704a f63839i;

                /* renamed from: j */
                public List<C18709b> f63840j;

                /* renamed from: k */
                public int f63841k;

                /* renamed from: l */
                public int f63842l;

                /* renamed from: n */
                private final AbstractC19673d f63843n;

                /* renamed from: o */
                private int f63844o;

                /* renamed from: p */
                private byte f63845p;

                /* renamed from: q */
                private int f63846q;

                /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a */
                /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$b$a.class */
                public static final class C18711a extends AbstractC19683h.AbstractC19685a<C18709b, C18711a> implements AbstractC18805b {

                    /* renamed from: b */
                    private int f63847b;

                    /* renamed from: d */
                    private long f63849d;

                    /* renamed from: e */
                    private float f63850e;

                    /* renamed from: f */
                    private double f63851f;

                    /* renamed from: g */
                    private int f63852g;

                    /* renamed from: h */
                    private int f63853h;

                    /* renamed from: i */
                    private int f63854i;

                    /* renamed from: l */
                    private int f63857l;

                    /* renamed from: m */
                    private int f63858m;

                    /* renamed from: c */
                    private EnumC18712b f63848c = EnumC18712b.BYTE;

                    /* renamed from: j */
                    private C18704a f63855j = C18704a.m3702a();

                    /* renamed from: k */
                    private List<C18709b> f63856k = Collections.emptyList();

                    private C18711a() {
                    }

                    /* renamed from: a */
                    private C18711a m3647a(double d) {
                        this.f63847b |= 8;
                        this.f63851f = d;
                        return this;
                    }

                    /* renamed from: a */
                    private C18711a m3646a(float f) {
                        this.f63847b |= 4;
                        this.f63850e = f;
                        return this;
                    }

                    /* renamed from: a */
                    private C18711a m3645a(int i) {
                        this.f63847b |= 16;
                        this.f63852g = i;
                        return this;
                    }

                    /* renamed from: a */
                    private C18711a m3644a(long j) {
                        this.f63847b |= 2;
                        this.f63849d = j;
                        return this;
                    }

                    /* renamed from: a */
                    private C18711a m3643a(EnumC18712b enumC18712b) {
                        Objects.requireNonNull(enumC18712b);
                        this.f63847b |= 1;
                        this.f63848c = enumC18712b;
                        return this;
                    }

                    /* renamed from: a */
                    private C18711a m3641a(C18704a c18704a) {
                        if ((this.f63847b & 128) != 128 || this.f63855j == C18704a.m3702a()) {
                            this.f63855j = c18704a;
                        } else {
                            this.f63855j = C18704a.m3700a(this.f63855j).mo1702a(c18704a).m3628f();
                        }
                        this.f63847b |= 128;
                        return this;
                    }

                    /* renamed from: b */
                    private C18711a m3640b(int i) {
                        this.f63847b |= 32;
                        this.f63853h = i;
                        return this;
                    }

                    /* renamed from: c */
                    private C18711a m3639c(int i) {
                        this.f63847b |= 64;
                        this.f63854i = i;
                        return this;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                    /* renamed from: c */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18709b.C18711a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$a$a$b> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18709b.f63830a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18709b) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                            r5 = r0
                            r0 = r4
                            r1 = r5
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a r0 = r0.mo1702a(r1)
                            r0 = r4
                            return r0
                        L18:
                            r6 = move-exception
                            r0 = r7
                            r5 = r0
                            goto L2a
                        L1e:
                            r6 = move-exception
                            r0 = r6
                            kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18709b) r0     // Catch: java.lang.Throwable -> L18
                            r5 = r0
                            r0 = r6
                            throw r0     // Catch: java.lang.Throwable -> L29
                        L29:
                            r6 = move-exception
                        L2a:
                            r0 = r5
                            if (r0 == 0) goto L34
                            r0 = r4
                            r1 = r5
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a r0 = r0.mo1702a(r1)
                        L34:
                            r0 = r6
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18706a.C18709b.C18711a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a");
                    }

                    /* renamed from: d */
                    private C18711a m3637d(int i) {
                        this.f63847b |= 512;
                        this.f63857l = i;
                        return this;
                    }

                    /* renamed from: e */
                    private C18711a m3636e(int i) {
                        this.f63847b |= 1024;
                        this.f63858m = i;
                        return this;
                    }

                    /* renamed from: g */
                    static /* synthetic */ C18711a m3634g() {
                        return new C18711a();
                    }

                    /* renamed from: h */
                    public C18711a clone() {
                        return new C18711a().mo1702a(m3635f());
                    }

                    /* renamed from: i */
                    private void m3632i() {
                        if ((this.f63847b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                            this.f63856k = new ArrayList(this.f63856k);
                            this.f63847b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                        }
                    }

                    /* renamed from: a */
                    public final C18711a mo1702a(C18709b c18709b) {
                        if (c18709b == C18709b.m3675a()) {
                            return this;
                        }
                        if (c18709b.m3663c()) {
                            m3643a(c18709b.f63832b);
                        }
                        if (c18709b.m3660d()) {
                            m3644a(c18709b.f63833c);
                        }
                        if (c18709b.m3656g()) {
                            m3646a(c18709b.f63834d);
                        }
                        if (c18709b.m3655k()) {
                            m3647a(c18709b.f63835e);
                        }
                        if (c18709b.m3654l()) {
                            m3645a(c18709b.f63836f);
                        }
                        if (c18709b.m3653m()) {
                            m3640b(c18709b.f63837g);
                        }
                        if (c18709b.m3652n()) {
                            m3639c(c18709b.f63838h);
                        }
                        if (c18709b.m3651o()) {
                            m3641a(c18709b.f63839i);
                        }
                        if (!c18709b.f63840j.isEmpty()) {
                            if (this.f63856k.isEmpty()) {
                                this.f63856k = c18709b.f63840j;
                                this.f63847b &= -257;
                            } else {
                                m3632i();
                                this.f63856k.addAll(c18709b.f63840j);
                            }
                        }
                        if (c18709b.m3650p()) {
                            m3637d(c18709b.f63841k);
                        }
                        if (c18709b.m3649q()) {
                            m3636e(c18709b.f63842l);
                        }
                        this.f65839a = this.f65839a.m1769a(c18709b.f63843n);
                        return this;
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
                    /* renamed from: a */
                    public final /* bridge */ /* synthetic */ C18709b mo1703a() {
                        return C18709b.m3675a();
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
                    /* renamed from: d */
                    public final /* synthetic */ AbstractC19705p mo1656d() {
                        C18709b m3635f = m3635f();
                        if (m3635f.mo1655e()) {
                            return m3635f;
                        }
                        throw m1778a((AbstractC19705p) m3635f);
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                    /* renamed from: e */
                    public final boolean mo1655e() {
                        if (!((this.f63847b & 128) == 128) || this.f63855j.mo1655e()) {
                            for (int i = 0; i < this.f63856k.size(); i++) {
                                if (!this.f63856k.get(i).mo1655e()) {
                                    return false;
                                }
                            }
                            return true;
                        }
                        return false;
                    }

                    /* renamed from: f */
                    public final C18709b m3635f() {
                        C18709b c18709b = new C18709b(this);
                        int i = this.f63847b;
                        int i2 = 1;
                        if ((i & 1) != 1) {
                            i2 = 0;
                        }
                        c18709b.f63832b = this.f63848c;
                        int i3 = i2;
                        if ((i & 2) == 2) {
                            i3 = i2 | 2;
                        }
                        c18709b.f63833c = this.f63849d;
                        int i4 = i3;
                        if ((i & 4) == 4) {
                            i4 = i3 | 4;
                        }
                        c18709b.f63834d = this.f63850e;
                        int i5 = i4;
                        if ((i & 8) == 8) {
                            i5 = i4 | 8;
                        }
                        c18709b.f63835e = this.f63851f;
                        int i6 = i5;
                        if ((i & 16) == 16) {
                            i6 = i5 | 16;
                        }
                        c18709b.f63836f = this.f63852g;
                        int i7 = i6;
                        if ((i & 32) == 32) {
                            i7 = i6 | 32;
                        }
                        c18709b.f63837g = this.f63853h;
                        int i8 = i7;
                        if ((i & 64) == 64) {
                            i8 = i7 | 64;
                        }
                        c18709b.f63838h = this.f63854i;
                        int i9 = i8;
                        if ((i & 128) == 128) {
                            i9 = i8 | 128;
                        }
                        c18709b.f63839i = this.f63855j;
                        if ((this.f63847b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                            this.f63856k = Collections.unmodifiableList(this.f63856k);
                            this.f63847b &= -257;
                        }
                        c18709b.f63840j = this.f63856k;
                        int i10 = i9;
                        if ((i & 512) == 512) {
                            i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                        }
                        c18709b.f63841k = this.f63857l;
                        int i11 = i10;
                        if ((i & 1024) == 1024) {
                            i11 = i10 | 512;
                        }
                        c18709b.f63842l = this.f63858m;
                        c18709b.f63844o = i11;
                        return c18709b;
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                    /* renamed from: j */
                    public final /* synthetic */ AbstractC19705p mo1654j() {
                        return C18709b.m3675a();
                    }
                }

                /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$b$b */
                /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$b$b.class */
                public enum EnumC18712b implements C19692j.AbstractC19693a {
                    BYTE(0, 0),
                    CHAR(1, 1),
                    SHORT(2, 2),
                    INT(3, 3),
                    LONG(4, 4),
                    FLOAT(5, 5),
                    DOUBLE(6, 6),
                    BOOLEAN(7, 7),
                    STRING(8, 8),
                    CLASS(9, 9),
                    ENUM(10, 10),
                    ANNOTATION(11, 11),
                    ARRAY(12, 12);
                    
                    private static C19692j.AbstractC19694b<EnumC18712b> internalValueMap = new C19692j.AbstractC19694b<EnumC18712b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.a.b.b.1
                        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                        /* renamed from: a */
                        public final /* synthetic */ EnumC18712b mo1672a(int i) {
                            return EnumC18712b.valueOf(i);
                        }
                    };
                    private final int value;

                    EnumC18712b(int i, int i2) {
                        this.value = i2;
                    }

                    public static EnumC18712b valueOf(int i) {
                        switch (i) {
                            case 0:
                                return BYTE;
                            case 1:
                                return CHAR;
                            case 2:
                                return SHORT;
                            case 3:
                                return INT;
                            case 4:
                                return LONG;
                            case 5:
                                return FLOAT;
                            case 6:
                                return DOUBLE;
                            case 7:
                                return BOOLEAN;
                            case 8:
                                return STRING;
                            case 9:
                                return CLASS;
                            case 10:
                                return ENUM;
                            case 11:
                                return ANNOTATION;
                            case 12:
                                return ARRAY;
                            default:
                                return null;
                        }
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
                    public final int getNumber() {
                        return this.value;
                    }
                }

                static {
                    C18709b c18709b = new C18709b(true);
                    f63831m = c18709b;
                    c18709b.m3648r();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private C18709b(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                    this.f63845p = (byte) (-1);
                    this.f63846q = -1;
                    m3648r();
                    AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
                    CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
                    boolean z = false;
                    boolean z2 = false;
                    while (!z) {
                        boolean z3 = z2;
                        try {
                            try {
                                int m1759a = c19676e.m1759a();
                                switch (m1759a) {
                                    case 0:
                                        break;
                                    case 8:
                                        int m1748d = c19676e.m1748d();
                                        boolean z4 = z2;
                                        EnumC18712b valueOf = EnumC18712b.valueOf(m1748d);
                                        if (valueOf == null) {
                                            m1823a.m1795e(m1759a);
                                            boolean z5 = z2;
                                            m1823a.m1795e(m1748d);
                                            continue;
                                        } else {
                                            this.f63844o |= 1;
                                            boolean z6 = z2;
                                            this.f63832b = valueOf;
                                        }
                                    case 16:
                                        this.f63844o |= 2;
                                        boolean z7 = z2;
                                        this.f63833c = C19676e.m1756a(c19676e.m1746e());
                                        continue;
                                    case 29:
                                        this.f63844o |= 4;
                                        boolean z8 = z2;
                                        this.f63834d = Float.intBitsToFloat(c19676e.m1744f());
                                        continue;
                                    case 33:
                                        this.f63844o |= 8;
                                        boolean z9 = z2;
                                        this.f63835e = Double.longBitsToDouble(c19676e.m1742g());
                                        continue;
                                    case 40:
                                        this.f63844o |= 16;
                                        boolean z10 = z2;
                                        this.f63836f = c19676e.m1748d();
                                        continue;
                                    case 48:
                                        this.f63844o |= 32;
                                        boolean z11 = z2;
                                        this.f63837g = c19676e.m1748d();
                                        continue;
                                    case 56:
                                        this.f63844o |= 64;
                                        boolean z12 = z2;
                                        this.f63838h = c19676e.m1748d();
                                        continue;
                                    case 66:
                                        C18714b c18714b = null;
                                        if ((this.f63844o & 128) == 128) {
                                            boolean z13 = z2;
                                            c18714b = this.f63839i.mo1659h();
                                        }
                                        boolean z14 = z2;
                                        C18704a c18704a = (C18704a) c19676e.m1753a(C18704a.f63811a, c19678f);
                                        boolean z15 = z2;
                                        this.f63839i = c18704a;
                                        if (c18714b != null) {
                                            c18714b.mo1702a(c18704a);
                                            boolean z16 = z2;
                                            this.f63839i = c18714b.m3628f();
                                        }
                                        boolean z17 = z2;
                                        this.f63844o |= 128;
                                        continue;
                                    case 74:
                                        boolean z18 = z2;
                                        if (!(z2 & true)) {
                                            boolean z19 = z2;
                                            boolean z20 = z2;
                                            this.f63840j = new ArrayList();
                                            z18 = z2 | true;
                                        }
                                        this.f63840j.add(c19676e.m1753a(f63830a, c19678f));
                                        z2 = z18;
                                        continue;
                                    case 80:
                                        this.f63844o |= 512;
                                        boolean z21 = z2;
                                        this.f63842l = c19676e.m1748d();
                                        continue;
                                    case 88:
                                        this.f63844o |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                        boolean z22 = z2;
                                        this.f63841k = c19676e.m1748d();
                                        continue;
                                    default:
                                        if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                            break;
                                        } else {
                                            continue;
                                        }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                e.f65795a = this;
                                throw e;
                            } catch (IOException e2) {
                                InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                                invalidProtocolBufferException.f65795a = this;
                                throw invalidProtocolBufferException;
                            }
                        } catch (Throwable th) {
                            if (z3 & true) {
                                this.f63840j = Collections.unmodifiableList(this.f63840j);
                            }
                            try {
                                m1823a.m1832a();
                            } catch (IOException e3) {
                            } catch (Throwable th2) {
                                this.f63843n = m1763h.m1762a();
                                throw th2;
                            }
                            this.f63843n = m1763h.m1762a();
                            mo1688w();
                            throw th;
                        }
                    }
                    if (z2 & true) {
                        this.f63840j = Collections.unmodifiableList(this.f63840j);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e4) {
                    } catch (Throwable th3) {
                        this.f63843n = m1763h.m1762a();
                        throw th3;
                    }
                    this.f63843n = m1763h.m1762a();
                    mo1688w();
                }

                private C18709b(AbstractC19683h.AbstractC19685a abstractC19685a) {
                    super(abstractC19685a);
                    this.f63845p = (byte) (-1);
                    this.f63846q = -1;
                    this.f63843n = abstractC19685a.f65839a;
                }

                private C18709b(boolean z) {
                    this.f63845p = (byte) (-1);
                    this.f63846q = -1;
                    this.f63843n = AbstractC19673d.f65805b;
                }

                /* renamed from: a */
                public static C18711a m3673a(C18709b c18709b) {
                    return C18711a.m3634g().mo1702a(c18709b);
                }

                /* renamed from: a */
                public static C18709b m3675a() {
                    return f63831m;
                }

                /* renamed from: r */
                private void m3648r() {
                    this.f63832b = EnumC18712b.BYTE;
                    this.f63833c = 0L;
                    this.f63834d = BitmapDescriptorFactory.HUE_RED;
                    this.f63835e = 0.0d;
                    this.f63836f = 0;
                    this.f63837g = 0;
                    this.f63838h = 0;
                    this.f63839i = C18704a.m3702a();
                    this.f63840j = Collections.emptyList();
                    this.f63841k = 0;
                    this.f63842l = 0;
                }

                /* renamed from: a */
                public final C18709b m3674a(int i) {
                    return this.f63840j.get(i);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
                /* renamed from: a */
                public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
                    mo1660f();
                    if ((this.f63844o & 1) == 1) {
                        codedOutputStream.m1812b(1, this.f63832b.getNumber());
                    }
                    if ((this.f63844o & 2) == 2) {
                        long j = this.f63833c;
                        codedOutputStream.m1794e(2, 0);
                        codedOutputStream.m1824a(j);
                    }
                    if ((this.f63844o & 4) == 4) {
                        float f = this.f63834d;
                        codedOutputStream.m1794e(3, 5);
                        codedOutputStream.m1829a(f);
                    }
                    if ((this.f63844o & 8) == 8) {
                        double d = this.f63835e;
                        codedOutputStream.m1794e(4, 1);
                        codedOutputStream.m1830a(d);
                    }
                    if ((this.f63844o & 16) == 16) {
                        codedOutputStream.m1827a(5, this.f63836f);
                    }
                    if ((this.f63844o & 32) == 32) {
                        codedOutputStream.m1827a(6, this.f63837g);
                    }
                    if ((this.f63844o & 64) == 64) {
                        codedOutputStream.m1827a(7, this.f63838h);
                    }
                    int i = 0;
                    if ((this.f63844o & 128) == 128) {
                        codedOutputStream.m1825a(8, this.f63839i);
                        i = 0;
                    }
                    while (i < this.f63840j.size()) {
                        codedOutputStream.m1825a(9, this.f63840j.get(i));
                        i++;
                    }
                    if ((this.f63844o & 512) == 512) {
                        codedOutputStream.m1827a(10, this.f63842l);
                    }
                    if ((this.f63844o & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                        codedOutputStream.m1827a(11, this.f63841k);
                    }
                    codedOutputStream.m1796d(this.f63843n);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
                /* renamed from: b */
                public final AbstractC19708r<C18709b> mo1661b() {
                    return f63830a;
                }

                /* renamed from: c */
                public final boolean m3663c() {
                    return (this.f63844o & 1) == 1;
                }

                /* renamed from: d */
                public final boolean m3660d() {
                    return (this.f63844o & 2) == 2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: e */
                public final boolean mo1655e() {
                    byte b = this.f63845p;
                    if (b == 1) {
                        return true;
                    }
                    if (b == 0) {
                        return false;
                    }
                    if (m3651o() && !this.f63839i.mo1655e()) {
                        this.f63845p = (byte) 0;
                        return false;
                    }
                    for (int i = 0; i < this.f63840j.size(); i++) {
                        if (!m3674a(i).mo1655e()) {
                            this.f63845p = (byte) 0;
                            return false;
                        }
                    }
                    this.f63845p = (byte) 1;
                    return true;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
                /* renamed from: f */
                public final int mo1660f() {
                    int i = this.f63846q;
                    if (i != -1) {
                        return i;
                    }
                    int m1798d = (this.f63844o & 1) == 1 ? CodedOutputStream.m1798d(1, this.f63832b.getNumber()) + 0 : 0;
                    int i2 = m1798d;
                    if ((this.f63844o & 2) == 2) {
                        i2 = m1798d + CodedOutputStream.m1810b(this.f63833c);
                    }
                    int i3 = i2;
                    if ((this.f63844o & 4) == 4) {
                        i3 = i2 + CodedOutputStream.m1799d(3) + 4;
                    }
                    int i4 = i3;
                    if ((this.f63844o & 8) == 8) {
                        i4 = i3 + CodedOutputStream.m1799d(4) + 8;
                    }
                    int i5 = i4;
                    if ((this.f63844o & 16) == 16) {
                        i5 = i4 + CodedOutputStream.m1803c(5, this.f63836f);
                    }
                    int i6 = i5;
                    if ((this.f63844o & 32) == 32) {
                        i6 = i5 + CodedOutputStream.m1803c(6, this.f63837g);
                    }
                    int i7 = i6;
                    if ((this.f63844o & 64) == 64) {
                        i7 = i6 + CodedOutputStream.m1803c(7, this.f63838h);
                    }
                    int i8 = i7;
                    int i9 = 0;
                    if ((this.f63844o & 128) == 128) {
                        i8 = i7 + CodedOutputStream.m1802c(8, this.f63839i);
                        i9 = 0;
                    }
                    while (i9 < this.f63840j.size()) {
                        i8 += CodedOutputStream.m1802c(9, this.f63840j.get(i9));
                        i9++;
                    }
                    int i10 = i8;
                    if ((this.f63844o & 512) == 512) {
                        i10 = i8 + CodedOutputStream.m1803c(10, this.f63842l);
                    }
                    int i11 = i10;
                    if ((this.f63844o & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                        i11 = i10 + CodedOutputStream.m1803c(11, this.f63841k);
                    }
                    int mo1649a = i11 + this.f63843n.mo1649a();
                    this.f63846q = mo1649a;
                    return mo1649a;
                }

                /* renamed from: g */
                public final boolean m3656g() {
                    return (this.f63844o & 4) == 4;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
                /* renamed from: h */
                public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
                    return C18711a.m3634g().mo1702a(this);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
                /* renamed from: i */
                public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
                    return C18711a.m3634g();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: j */
                public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
                    return f63831m;
                }

                /* renamed from: k */
                public final boolean m3655k() {
                    return (this.f63844o & 8) == 8;
                }

                /* renamed from: l */
                public final boolean m3654l() {
                    return (this.f63844o & 16) == 16;
                }

                /* renamed from: m */
                public final boolean m3653m() {
                    return (this.f63844o & 32) == 32;
                }

                /* renamed from: n */
                public final boolean m3652n() {
                    return (this.f63844o & 64) == 64;
                }

                /* renamed from: o */
                public final boolean m3651o() {
                    return (this.f63844o & 128) == 128;
                }

                /* renamed from: p */
                public final boolean m3650p() {
                    return (this.f63844o & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
                }

                /* renamed from: q */
                public final boolean m3649q() {
                    return (this.f63844o & 512) == 512;
                }
            }

            static {
                C18706a c18706a = new C18706a(true);
                f63820d = c18706a;
                c18706a.m3683g();
            }

            private C18706a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                this.f63825g = (byte) (-1);
                this.f63826h = -1;
                m3683g();
                AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
                CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 8) {
                                    this.f63824f |= 1;
                                    this.f63821b = c19676e.m1748d();
                                } else if (m1759a == 18) {
                                    C18709b.C18711a m3673a = (this.f63824f & 2) == 2 ? C18709b.m3673a(this.f63822c) : null;
                                    C18709b c18709b = (C18709b) c19676e.m1753a(C18709b.f63830a, c19678f);
                                    this.f63822c = c18709b;
                                    if (m3673a != null) {
                                        m3673a.mo1702a(c18709b);
                                        this.f63822c = m3673a.m3635f();
                                    }
                                    this.f63824f |= 2;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        try {
                            m1823a.m1832a();
                        } catch (IOException e3) {
                        } catch (Throwable th2) {
                            this.f63823e = m1763h.m1762a();
                            throw th2;
                        }
                        this.f63823e = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                }
                try {
                    m1823a.m1832a();
                } catch (IOException e4) {
                } catch (Throwable th3) {
                    this.f63823e = m1763h.m1762a();
                    throw th3;
                }
                this.f63823e = m1763h.m1762a();
                mo1688w();
            }

            private C18706a(AbstractC19683h.AbstractC19685a abstractC19685a) {
                super(abstractC19685a);
                this.f63825g = (byte) (-1);
                this.f63826h = -1;
                this.f63823e = abstractC19685a.f65839a;
            }

            private C18706a(boolean z) {
                this.f63825g = (byte) (-1);
                this.f63826h = -1;
                this.f63823e = AbstractC19673d.f65805b;
            }

            /* renamed from: a */
            public static C18706a m3690a() {
                return f63820d;
            }

            /* renamed from: g */
            private void m3683g() {
                this.f63821b = 0;
                this.f63822c = C18709b.m3675a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: a */
            public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
                mo1660f();
                if ((this.f63824f & 1) == 1) {
                    codedOutputStream.m1827a(1, this.f63821b);
                }
                if ((this.f63824f & 2) == 2) {
                    codedOutputStream.m1825a(2, this.f63822c);
                }
                codedOutputStream.m1796d(this.f63823e);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: b */
            public final AbstractC19708r<C18706a> mo1661b() {
                return f63819a;
            }

            /* renamed from: c */
            public final boolean m3685c() {
                return (this.f63824f & 1) == 1;
            }

            /* renamed from: d */
            public final boolean m3684d() {
                return (this.f63824f & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                byte b = this.f63825g;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                if (!m3685c()) {
                    this.f63825g = (byte) 0;
                    return false;
                } else if (!m3684d()) {
                    this.f63825g = (byte) 0;
                    return false;
                } else if (!this.f63822c.mo1655e()) {
                    this.f63825g = (byte) 0;
                    return false;
                } else {
                    this.f63825g = (byte) 1;
                    return true;
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: f */
            public final int mo1660f() {
                int i = this.f63826h;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f63824f & 1) == 1) {
                    i2 = 0 + CodedOutputStream.m1803c(1, this.f63821b);
                }
                int i3 = i2;
                if ((this.f63824f & 2) == 2) {
                    i3 = i2 + CodedOutputStream.m1802c(2, this.f63822c);
                }
                int mo1649a = i3 + this.f63823e.mo1649a();
                this.f63826h = mo1649a;
                return mo1649a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: h */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
                return C18708a.m3678f().mo1702a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: i */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
                return C18708a.m3678f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
                return f63820d;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$b.class */
        public static final class C18714b extends AbstractC19683h.AbstractC19685a<C18704a, C18714b> implements AbstractC18865d {

            /* renamed from: b */
            private int f63859b;

            /* renamed from: c */
            private int f63860c;

            /* renamed from: d */
            private List<C18706a> f63861d = Collections.emptyList();

            private C18714b() {
            }

            /* renamed from: a */
            private C18714b m3631a(int i) {
                this.f63859b |= 1;
                this.f63860c = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18714b mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$a> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.f63811a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$a$b r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$a$b r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18704a.C18714b.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$a$b");
            }

            /* renamed from: g */
            static /* synthetic */ C18714b m3627g() {
                return new C18714b();
            }

            /* renamed from: h */
            public C18714b clone() {
                return new C18714b().mo1702a(m3628f());
            }

            /* renamed from: i */
            private void m3625i() {
                if ((this.f63859b & 2) != 2) {
                    this.f63861d = new ArrayList(this.f63861d);
                    this.f63859b |= 2;
                }
            }

            /* renamed from: a */
            public final C18714b mo1702a(C18704a c18704a) {
                if (c18704a == C18704a.m3702a()) {
                    return this;
                }
                if (c18704a.m3695c()) {
                    m3631a(c18704a.f63813b);
                }
                if (!c18704a.f63814c.isEmpty()) {
                    if (this.f63861d.isEmpty()) {
                        this.f63861d = c18704a.f63814c;
                        this.f63859b &= -3;
                    } else {
                        m3625i();
                        this.f63861d.addAll(c18704a.f63814c);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18704a.f63815e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18704a mo1703a() {
                return C18704a.m3702a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18704a m3628f = m3628f();
                if (m3628f.mo1655e()) {
                    return m3628f;
                }
                throw m1778a((AbstractC19705p) m3628f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                if (!((this.f63859b & 1) == 1)) {
                    return false;
                }
                for (int i = 0; i < this.f63861d.size(); i++) {
                    if (!this.f63861d.get(i).mo1655e()) {
                        return false;
                    }
                }
                return true;
            }

            /* renamed from: f */
            public final C18704a m3628f() {
                C18704a c18704a = new C18704a(this);
                int i = 1;
                if ((this.f63859b & 1) != 1) {
                    i = 0;
                }
                c18704a.f63813b = this.f63860c;
                if ((this.f63859b & 2) == 2) {
                    this.f63861d = Collections.unmodifiableList(this.f63861d);
                    this.f63859b &= -3;
                }
                c18704a.f63814c = this.f63861d;
                c18704a.f63816f = i;
                return c18704a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18704a.m3702a();
            }
        }

        static {
            C18704a c18704a = new C18704a(true);
            f63812d = c18704a;
            c18704a.m3691k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18704a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63817g = (byte) (-1);
            this.f63818h = -1;
            m3691k();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 8) {
                                    this.f63816f |= 1;
                                    boolean z4 = z2;
                                    this.f63813b = c19676e.m1748d();
                                } else if (m1759a == 18) {
                                    boolean z5 = z2;
                                    if (!(z2 & true)) {
                                        boolean z6 = z2;
                                        boolean z7 = z2;
                                        this.f63814c = new ArrayList();
                                        z5 = z2 | true;
                                    }
                                    this.f63814c.add(c19676e.m1753a(C18706a.f63819a, c19678f));
                                    z2 = z5;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f63814c = Collections.unmodifiableList(this.f63814c);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f63815e = m1763h.m1762a();
                        throw th2;
                    }
                    this.f63815e = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f63814c = Collections.unmodifiableList(this.f63814c);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63815e = m1763h.m1762a();
                throw th3;
            }
            this.f63815e = m1763h.m1762a();
            mo1688w();
        }

        private C18704a(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f63817g = (byte) (-1);
            this.f63818h = -1;
            this.f63815e = abstractC19685a.f65839a;
        }

        private C18704a(boolean z) {
            this.f63817g = (byte) (-1);
            this.f63818h = -1;
            this.f63815e = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18714b m3700a(C18704a c18704a) {
            return C18714b.m3627g().mo1702a(c18704a);
        }

        /* renamed from: a */
        public static C18704a m3702a() {
            return f63812d;
        }

        /* renamed from: k */
        private void m3691k() {
            this.f63813b = 0;
            this.f63814c = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            if ((this.f63816f & 1) == 1) {
                codedOutputStream.m1827a(1, this.f63813b);
            }
            for (int i = 0; i < this.f63814c.size(); i++) {
                codedOutputStream.m1825a(2, this.f63814c.get(i));
            }
            codedOutputStream.m1796d(this.f63815e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18704a> mo1661b() {
            return f63811a;
        }

        /* renamed from: c */
        public final boolean m3695c() {
            return (this.f63816f & 1) == 1;
        }

        /* renamed from: d */
        public final int m3693d() {
            return this.f63814c.size();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63817g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3695c()) {
                this.f63817g = (byte) 0;
                return false;
            }
            for (int i = 0; i < m3693d(); i++) {
                if (!this.f63814c.get(i).mo1655e()) {
                    this.f63817g = (byte) 0;
                    return false;
                }
            }
            this.f63817g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63818h;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f63816f & 1) == 1 ? CodedOutputStream.m1803c(1, this.f63813b) + 0 : 0;
            for (int i2 = 0; i2 < this.f63814c.size(); i2++) {
                m1803c += CodedOutputStream.m1802c(2, this.f63814c.get(i2));
            }
            int mo1649a = m1803c + this.f63815e.mo1649a();
            this.f63818h = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final C18714b mo1659h() {
            return C18714b.m3627g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18714b.m3627g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63812d;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$b.class */
    public static final class C18715b extends AbstractC19683h.AbstractC19687c<C18715b> implements AbstractC18866e {

        /* renamed from: a */
        public static AbstractC19708r<C18715b> f63862a = new AbstractC19669b<C18715b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.b.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18715b(c19676e, c19678f);
            }
        };

        /* renamed from: s */
        private static final C18715b f63863s;

        /* renamed from: b */
        public int f63864b;

        /* renamed from: c */
        public int f63865c;

        /* renamed from: d */
        public int f63866d;

        /* renamed from: e */
        public List<C18779r> f63867e;

        /* renamed from: f */
        public List<C18768p> f63868f;

        /* renamed from: g */
        public List<Integer> f63869g;

        /* renamed from: h */
        public List<Integer> f63870h;

        /* renamed from: i */
        public List<C18720c> f63871i;

        /* renamed from: j */
        public List<C18741h> f63872j;

        /* renamed from: k */
        public List<C18754m> f63873k;

        /* renamed from: l */
        public List<C18776q> f63874l;

        /* renamed from: m */
        public List<C18733f> f63875m;

        /* renamed from: n */
        public List<Integer> f63876n;

        /* renamed from: o */
        public C18784s f63877o;

        /* renamed from: p */
        public List<Integer> f63878p;

        /* renamed from: q */
        public C18797v f63879q;

        /* renamed from: t */
        private final AbstractC19673d f63880t;

        /* renamed from: u */
        private int f63881u;

        /* renamed from: v */
        private int f63882v;

        /* renamed from: w */
        private int f63883w;

        /* renamed from: x */
        private int f63884x;

        /* renamed from: y */
        private byte f63885y;

        /* renamed from: z */
        private int f63886z;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$b$a.class */
        public static final class C18717a extends AbstractC19683h.AbstractC19686b<C18715b, C18717a> implements AbstractC18866e {

            /* renamed from: b */
            private int f63887b;

            /* renamed from: d */
            private int f63889d;

            /* renamed from: e */
            private int f63890e;

            /* renamed from: c */
            private int f63888c = 6;

            /* renamed from: f */
            private List<C18779r> f63891f = Collections.emptyList();

            /* renamed from: g */
            private List<C18768p> f63892g = Collections.emptyList();

            /* renamed from: h */
            private List<Integer> f63893h = Collections.emptyList();

            /* renamed from: i */
            private List<Integer> f63894i = Collections.emptyList();

            /* renamed from: j */
            private List<C18720c> f63895j = Collections.emptyList();

            /* renamed from: k */
            private List<C18741h> f63896k = Collections.emptyList();

            /* renamed from: l */
            private List<C18754m> f63897l = Collections.emptyList();

            /* renamed from: m */
            private List<C18776q> f63898m = Collections.emptyList();

            /* renamed from: n */
            private List<C18733f> f63899n = Collections.emptyList();

            /* renamed from: o */
            private List<Integer> f63900o = Collections.emptyList();

            /* renamed from: p */
            private C18784s f63901p = C18784s.m3153a();

            /* renamed from: q */
            private List<Integer> f63902q = Collections.emptyList();

            /* renamed from: r */
            private C18797v f63903r = C18797v.m3082a();

            private C18717a() {
            }

            /* renamed from: a */
            private C18717a m3586a(int i) {
                this.f63887b |= 1;
                this.f63888c = i;
                return this;
            }

            /* renamed from: a */
            private C18717a m3584a(C18784s c18784s) {
                if ((this.f63887b & PropertyFlags.UNSIGNED) != 8192 || this.f63901p == C18784s.m3153a()) {
                    this.f63901p = c18784s;
                } else {
                    this.f63901p = C18784s.m3152a(this.f63901p).mo1702a(c18784s).m3141f();
                }
                this.f63887b |= PropertyFlags.UNSIGNED;
                return this;
            }

            /* renamed from: a */
            private C18717a m3583a(C18797v c18797v) {
                if ((this.f63887b & 32768) != 32768 || this.f63903r == C18797v.m3082a()) {
                    this.f63903r = c18797v;
                } else {
                    this.f63903r = C18797v.m3081a(this.f63903r).mo1702a(c18797v).m3075f();
                }
                this.f63887b |= 32768;
                return this;
            }

            /* renamed from: b */
            private C18717a m3582b(int i) {
                this.f63887b |= 2;
                this.f63889d = i;
                return this;
            }

            /* renamed from: c */
            private C18717a m3581c(int i) {
                this.f63887b |= 4;
                this.f63890e = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18715b.C18717a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$b> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18715b.f63862a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18715b) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$b$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18715b) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$b$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18715b.C18717a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$b$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18717a m3579g() {
                return new C18717a();
            }

            /* renamed from: h */
            public C18717a mo1697f() {
                return new C18717a().mo1702a(m3577i());
            }

            /* renamed from: i */
            private C18715b m3577i() {
                C18715b c18715b = new C18715b(this);
                int i = this.f63887b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18715b.f63864b = this.f63888c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18715b.f63865c = this.f63889d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18715b.f63866d = this.f63890e;
                if ((this.f63887b & 8) == 8) {
                    this.f63891f = Collections.unmodifiableList(this.f63891f);
                    this.f63887b &= -9;
                }
                c18715b.f63867e = this.f63891f;
                if ((this.f63887b & 16) == 16) {
                    this.f63892g = Collections.unmodifiableList(this.f63892g);
                    this.f63887b &= -17;
                }
                c18715b.f63868f = this.f63892g;
                if ((this.f63887b & 32) == 32) {
                    this.f63893h = Collections.unmodifiableList(this.f63893h);
                    this.f63887b &= -33;
                }
                c18715b.f63869g = this.f63893h;
                if ((this.f63887b & 64) == 64) {
                    this.f63894i = Collections.unmodifiableList(this.f63894i);
                    this.f63887b &= -65;
                }
                c18715b.f63870h = this.f63894i;
                if ((this.f63887b & 128) == 128) {
                    this.f63895j = Collections.unmodifiableList(this.f63895j);
                    this.f63887b &= -129;
                }
                c18715b.f63871i = this.f63895j;
                if ((this.f63887b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    this.f63896k = Collections.unmodifiableList(this.f63896k);
                    this.f63887b &= -257;
                }
                c18715b.f63872j = this.f63896k;
                if ((this.f63887b & 512) == 512) {
                    this.f63897l = Collections.unmodifiableList(this.f63897l);
                    this.f63887b &= -513;
                }
                c18715b.f63873k = this.f63897l;
                if ((this.f63887b & 1024) == 1024) {
                    this.f63898m = Collections.unmodifiableList(this.f63898m);
                    this.f63887b &= -1025;
                }
                c18715b.f63874l = this.f63898m;
                if ((this.f63887b & 2048) == 2048) {
                    this.f63899n = Collections.unmodifiableList(this.f63899n);
                    this.f63887b &= -2049;
                }
                c18715b.f63875m = this.f63899n;
                if ((this.f63887b & 4096) == 4096) {
                    this.f63900o = Collections.unmodifiableList(this.f63900o);
                    this.f63887b &= -4097;
                }
                c18715b.f63876n = this.f63900o;
                int i5 = i4;
                if ((i & PropertyFlags.UNSIGNED) == 8192) {
                    i5 = i4 | 8;
                }
                c18715b.f63877o = this.f63901p;
                if ((this.f63887b & 16384) == 16384) {
                    this.f63902q = Collections.unmodifiableList(this.f63902q);
                    this.f63887b &= -16385;
                }
                c18715b.f63878p = this.f63902q;
                int i6 = i5;
                if ((i & 32768) == 32768) {
                    i6 = i5 | 16;
                }
                c18715b.f63879q = this.f63903r;
                c18715b.f63881u = i6;
                return c18715b;
            }

            /* renamed from: l */
            private void m3576l() {
                if ((this.f63887b & 8) != 8) {
                    this.f63891f = new ArrayList(this.f63891f);
                    this.f63887b |= 8;
                }
            }

            /* renamed from: m */
            private void m3575m() {
                if ((this.f63887b & 16) != 16) {
                    this.f63892g = new ArrayList(this.f63892g);
                    this.f63887b |= 16;
                }
            }

            /* renamed from: n */
            private void m3574n() {
                if ((this.f63887b & 32) != 32) {
                    this.f63893h = new ArrayList(this.f63893h);
                    this.f63887b |= 32;
                }
            }

            /* renamed from: o */
            private void m3573o() {
                if ((this.f63887b & 64) != 64) {
                    this.f63894i = new ArrayList(this.f63894i);
                    this.f63887b |= 64;
                }
            }

            /* renamed from: p */
            private void m3572p() {
                if ((this.f63887b & 128) != 128) {
                    this.f63895j = new ArrayList(this.f63895j);
                    this.f63887b |= 128;
                }
            }

            /* renamed from: q */
            private void m3571q() {
                if ((this.f63887b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                    this.f63896k = new ArrayList(this.f63896k);
                    this.f63887b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
            }

            /* renamed from: r */
            private void m3570r() {
                if ((this.f63887b & 512) != 512) {
                    this.f63897l = new ArrayList(this.f63897l);
                    this.f63887b |= 512;
                }
            }

            /* renamed from: s */
            private void m3569s() {
                if ((this.f63887b & 1024) != 1024) {
                    this.f63898m = new ArrayList(this.f63898m);
                    this.f63887b |= 1024;
                }
            }

            /* renamed from: t */
            private void m3568t() {
                if ((this.f63887b & 2048) != 2048) {
                    this.f63899n = new ArrayList(this.f63899n);
                    this.f63887b |= 2048;
                }
            }

            /* renamed from: u */
            private void m3567u() {
                if ((this.f63887b & 4096) != 4096) {
                    this.f63900o = new ArrayList(this.f63900o);
                    this.f63887b |= 4096;
                }
            }

            /* renamed from: v */
            private void m3566v() {
                if ((this.f63887b & 16384) != 16384) {
                    this.f63902q = new ArrayList(this.f63902q);
                    this.f63887b |= 16384;
                }
            }

            /* renamed from: a */
            public final C18717a mo1702a(C18715b c18715b) {
                if (c18715b == C18715b.m3624a()) {
                    return this;
                }
                if (c18715b.m3613c()) {
                    m3586a(c18715b.f63864b);
                }
                if (c18715b.m3609d()) {
                    m3582b(c18715b.f63865c);
                }
                if (c18715b.m3601g()) {
                    m3581c(c18715b.f63866d);
                }
                if (!c18715b.f63867e.isEmpty()) {
                    if (this.f63891f.isEmpty()) {
                        this.f63891f = c18715b.f63867e;
                        this.f63887b &= -9;
                    } else {
                        m3576l();
                        this.f63891f.addAll(c18715b.f63867e);
                    }
                }
                if (!c18715b.f63868f.isEmpty()) {
                    if (this.f63892g.isEmpty()) {
                        this.f63892g = c18715b.f63868f;
                        this.f63887b &= -17;
                    } else {
                        m3575m();
                        this.f63892g.addAll(c18715b.f63868f);
                    }
                }
                if (!c18715b.f63869g.isEmpty()) {
                    if (this.f63893h.isEmpty()) {
                        this.f63893h = c18715b.f63869g;
                        this.f63887b &= -33;
                    } else {
                        m3574n();
                        this.f63893h.addAll(c18715b.f63869g);
                    }
                }
                if (!c18715b.f63870h.isEmpty()) {
                    if (this.f63894i.isEmpty()) {
                        this.f63894i = c18715b.f63870h;
                        this.f63887b &= -65;
                    } else {
                        m3573o();
                        this.f63894i.addAll(c18715b.f63870h);
                    }
                }
                if (!c18715b.f63871i.isEmpty()) {
                    if (this.f63895j.isEmpty()) {
                        this.f63895j = c18715b.f63871i;
                        this.f63887b &= -129;
                    } else {
                        m3572p();
                        this.f63895j.addAll(c18715b.f63871i);
                    }
                }
                if (!c18715b.f63872j.isEmpty()) {
                    if (this.f63896k.isEmpty()) {
                        this.f63896k = c18715b.f63872j;
                        this.f63887b &= -257;
                    } else {
                        m3571q();
                        this.f63896k.addAll(c18715b.f63872j);
                    }
                }
                if (!c18715b.f63873k.isEmpty()) {
                    if (this.f63897l.isEmpty()) {
                        this.f63897l = c18715b.f63873k;
                        this.f63887b &= -513;
                    } else {
                        m3570r();
                        this.f63897l.addAll(c18715b.f63873k);
                    }
                }
                if (!c18715b.f63874l.isEmpty()) {
                    if (this.f63898m.isEmpty()) {
                        this.f63898m = c18715b.f63874l;
                        this.f63887b &= -1025;
                    } else {
                        m3569s();
                        this.f63898m.addAll(c18715b.f63874l);
                    }
                }
                if (!c18715b.f63875m.isEmpty()) {
                    if (this.f63899n.isEmpty()) {
                        this.f63899n = c18715b.f63875m;
                        this.f63887b &= -2049;
                    } else {
                        m3568t();
                        this.f63899n.addAll(c18715b.f63875m);
                    }
                }
                if (!c18715b.f63876n.isEmpty()) {
                    if (this.f63900o.isEmpty()) {
                        this.f63900o = c18715b.f63876n;
                        this.f63887b &= -4097;
                    } else {
                        m3567u();
                        this.f63900o.addAll(c18715b.f63876n);
                    }
                }
                if (c18715b.m3592k()) {
                    m3584a(c18715b.f63877o);
                }
                if (!c18715b.f63878p.isEmpty()) {
                    if (this.f63902q.isEmpty()) {
                        this.f63902q = c18715b.f63878p;
                        this.f63887b &= -16385;
                    } else {
                        m3566v();
                        this.f63902q.addAll(c18715b.f63878p);
                    }
                }
                if (c18715b.m3589l()) {
                    m3583a(c18715b.f63879q);
                }
                m1700a((C18717a) c18715b);
                this.f65839a = this.f65839a.m1769a(c18715b.f63880t);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18715b.m3624a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18715b m3577i = m3577i();
                if (m3577i.mo1655e()) {
                    return m3577i;
                }
                throw m1778a((AbstractC19705p) m3577i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                if (!((this.f63887b & 2) == 2)) {
                    return false;
                }
                for (int i = 0; i < this.f63891f.size(); i++) {
                    if (!this.f63891f.get(i).mo1655e()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < this.f63892g.size(); i2++) {
                    if (!this.f63892g.get(i2).mo1655e()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < this.f63895j.size(); i3++) {
                    if (!this.f63895j.get(i3).mo1655e()) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < this.f63896k.size(); i4++) {
                    if (!this.f63896k.get(i4).mo1655e()) {
                        return false;
                    }
                }
                for (int i5 = 0; i5 < this.f63897l.size(); i5++) {
                    if (!this.f63897l.get(i5).mo1655e()) {
                        return false;
                    }
                }
                for (int i6 = 0; i6 < this.f63898m.size(); i6++) {
                    if (!this.f63898m.get(i6).mo1655e()) {
                        return false;
                    }
                }
                for (int i7 = 0; i7 < this.f63899n.size(); i7++) {
                    if (!this.f63899n.get(i7).mo1655e()) {
                        return false;
                    }
                }
                return (!((this.f63887b & PropertyFlags.UNSIGNED) == 8192) || this.f63901p.mo1655e()) && m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18715b.m3624a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$b$b.class */
        public enum EnumC18718b implements C19692j.AbstractC19693a {
            CLASS(0, 0),
            INTERFACE(1, 1),
            ENUM_CLASS(2, 2),
            ENUM_ENTRY(3, 3),
            ANNOTATION_CLASS(4, 4),
            OBJECT(5, 5),
            COMPANION_OBJECT(6, 6);
            
            private static C19692j.AbstractC19694b<EnumC18718b> internalValueMap = new C19692j.AbstractC19694b<EnumC18718b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.b.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18718b mo1672a(int i) {
                    return EnumC18718b.valueOf(i);
                }
            };
            private final int value;

            EnumC18718b(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18718b valueOf(int i) {
                switch (i) {
                    case 0:
                        return CLASS;
                    case 1:
                        return INTERFACE;
                    case 2:
                        return ENUM_CLASS;
                    case 3:
                        return ENUM_ENTRY;
                    case 4:
                        return ANNOTATION_CLASS;
                    case 5:
                        return OBJECT;
                    case 6:
                        return COMPANION_OBJECT;
                    default:
                        return null;
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            C18715b c18715b = new C18715b(true);
            f63863s = c18715b;
            c18715b.m3587m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18715b(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            boolean z;
            this.f63882v = -1;
            this.f63883w = -1;
            this.f63884x = -1;
            this.f63885y = (byte) (-1);
            this.f63886z = -1;
            m3587m();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z2 = false;
            boolean z3 = false;
            while (!z2) {
                boolean z4 = z3;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        C18797v.C18799a c18799a = null;
                        switch (m1759a) {
                            case 0:
                                z2 = true;
                            case 8:
                                this.f63881u |= 1;
                                boolean z5 = z3;
                                this.f63864b = c19676e.m1748d();
                                z = z3;
                                z3 = z;
                            case 16:
                                boolean z6 = z3;
                                if (!(z3 & true)) {
                                    boolean z7 = z3;
                                    boolean z8 = z3;
                                    this.f63869g = new ArrayList();
                                    z6 = z3 | true;
                                }
                                this.f63869g.add(Integer.valueOf(c19676e.m1748d()));
                                z = z6;
                                z3 = z;
                            case 18:
                                int m1751b = c19676e.m1751b(c19676e.m1748d());
                                boolean z9 = z3;
                                if (!(z3 & true)) {
                                    z9 = z3;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z10 = z3;
                                        boolean z11 = z3;
                                        boolean z12 = z3;
                                        this.f63869g = new ArrayList();
                                        z9 = z3 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z13 = z9;
                                    this.f63869g.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b);
                                z = z9;
                                z3 = z;
                            case 24:
                                this.f63881u |= 2;
                                boolean z14 = z3;
                                this.f63865c = c19676e.m1748d();
                                z = z3;
                                z3 = z;
                            case 32:
                                this.f63881u |= 4;
                                boolean z15 = z3;
                                this.f63866d = c19676e.m1748d();
                                z = z3;
                                z3 = z;
                            case 42:
                                boolean z16 = z3;
                                if (!(z3 & true)) {
                                    boolean z17 = z3;
                                    boolean z18 = z3;
                                    this.f63867e = new ArrayList();
                                    z16 = z3 | true;
                                }
                                this.f63867e.add(c19676e.m1753a(C18779r.f64167a, c19678f));
                                z = z16;
                                z3 = z;
                            case 50:
                                boolean z19 = z3;
                                if (!(z3 & true)) {
                                    boolean z20 = z3;
                                    boolean z21 = z3;
                                    this.f63868f = new ArrayList();
                                    z19 = z3 | true;
                                }
                                this.f63868f.add(c19676e.m1753a(C18768p.f64093a, c19678f));
                                z = z19;
                                z3 = z;
                            case 56:
                                boolean z22 = z3;
                                if (!(z3 & true)) {
                                    boolean z23 = z3;
                                    boolean z24 = z3;
                                    this.f63870h = new ArrayList();
                                    z22 = z3 | true;
                                }
                                this.f63870h.add(Integer.valueOf(c19676e.m1748d()));
                                z = z22;
                                z3 = z;
                            case 58:
                                int m1751b2 = c19676e.m1751b(c19676e.m1748d());
                                boolean z25 = z3;
                                if (!(z3 & true)) {
                                    z25 = z3;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z26 = z3;
                                        boolean z27 = z3;
                                        boolean z28 = z3;
                                        this.f63870h = new ArrayList();
                                        z25 = z3 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z29 = z25;
                                    this.f63870h.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b2);
                                z = z25;
                                z3 = z;
                            case 66:
                                boolean z30 = z3;
                                if (!(z3 & true)) {
                                    boolean z31 = z3;
                                    boolean z32 = z3;
                                    this.f63871i = new ArrayList();
                                    z30 = z3 | true;
                                }
                                this.f63871i.add(c19676e.m1753a(C18720c.f63904a, c19678f));
                                z = z30;
                                z3 = z;
                            case 74:
                                boolean z33 = z3;
                                if (!(z3 & true)) {
                                    boolean z34 = z3;
                                    boolean z35 = z3;
                                    this.f63872j = new ArrayList();
                                    z33 = z3 | true;
                                }
                                this.f63872j.add(c19676e.m1753a(C18741h.f63970a, c19678f));
                                z = z33;
                                z3 = z;
                            case 82:
                                boolean z36 = z3;
                                if (!(z3 & true)) {
                                    boolean z37 = z3;
                                    boolean z38 = z3;
                                    this.f63873k = new ArrayList();
                                    z36 = z3 | true;
                                }
                                this.f63873k.add(c19676e.m1753a(C18754m.f64033a, c19678f));
                                z = z36;
                                z3 = z;
                            case 90:
                                boolean z39 = z3;
                                if (!(z3 & true)) {
                                    boolean z40 = z3;
                                    boolean z41 = z3;
                                    this.f63874l = new ArrayList();
                                    z39 = z3 | true;
                                }
                                this.f63874l.add(c19676e.m1753a(C18776q.f64142a, c19678f));
                                z = z39;
                                z3 = z;
                            case 106:
                                boolean z42 = z3;
                                if (!(z3 & true)) {
                                    boolean z43 = z3;
                                    boolean z44 = z3;
                                    this.f63875m = new ArrayList();
                                    z42 = z3 | true;
                                }
                                this.f63875m.add(c19676e.m1753a(C18733f.f63940a, c19678f));
                                z = z42;
                                z3 = z;
                            case 128:
                                boolean z45 = z3;
                                if (!(z3 & true)) {
                                    boolean z46 = z3;
                                    boolean z47 = z3;
                                    this.f63876n = new ArrayList();
                                    z45 = z3 | true;
                                }
                                this.f63876n.add(Integer.valueOf(c19676e.m1748d()));
                                z = z45;
                                z3 = z;
                            case 130:
                                int m1751b3 = c19676e.m1751b(c19676e.m1748d());
                                boolean z48 = z3;
                                if (!(z3 & true)) {
                                    z48 = z3;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z49 = z3;
                                        boolean z50 = z3;
                                        boolean z51 = z3;
                                        this.f63876n = new ArrayList();
                                        z48 = z3 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z52 = z48;
                                    this.f63876n.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b3);
                                z = z48;
                                z3 = z;
                            case 242:
                                C18784s.C18786a c18786a = null;
                                if ((this.f63881u & 8) == 8) {
                                    boolean z53 = z3;
                                    c18786a = C18784s.m3152a(this.f63877o);
                                }
                                boolean z54 = z3;
                                C18784s c18784s = (C18784s) c19676e.m1753a(C18784s.f64188a, c19678f);
                                boolean z55 = z3;
                                this.f63877o = c18784s;
                                if (c18786a != null) {
                                    c18786a.mo1702a(c18784s);
                                    boolean z56 = z3;
                                    this.f63877o = c18786a.m3141f();
                                }
                                boolean z57 = z3;
                                this.f63881u |= 8;
                                z = z3;
                                z3 = z;
                            case 248:
                                boolean z58 = z3;
                                if (!(z3 & true)) {
                                    boolean z59 = z3;
                                    boolean z60 = z3;
                                    this.f63878p = new ArrayList();
                                    z58 = z3 | true;
                                }
                                this.f63878p.add(Integer.valueOf(c19676e.m1748d()));
                                z = z58;
                                z3 = z;
                            case 250:
                                int m1751b4 = c19676e.m1751b(c19676e.m1748d());
                                boolean z61 = z3;
                                if (!(z3 & true)) {
                                    z61 = z3;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z62 = z3;
                                        boolean z63 = z3;
                                        boolean z64 = z3;
                                        this.f63878p = new ArrayList();
                                        z61 = z3 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z65 = z61;
                                    this.f63878p.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b4);
                                z = z61;
                                z3 = z;
                            case 258:
                                if ((this.f63881u & 16) == 16) {
                                    boolean z66 = z3;
                                    c18799a = C18797v.m3081a(this.f63879q);
                                }
                                boolean z67 = z3;
                                C18797v c18797v = (C18797v) c19676e.m1753a(C18797v.f64237a, c19678f);
                                boolean z68 = z3;
                                this.f63879q = c18797v;
                                if (c18799a != null) {
                                    c18799a.mo1702a(c18797v);
                                    boolean z69 = z3;
                                    this.f63879q = c18799a.m3075f();
                                }
                                boolean z70 = z3;
                                this.f63881u |= 16;
                                z = z3;
                                z3 = z;
                            default:
                                z = z3;
                                if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                    z2 = true;
                                } else {
                                    z3 = z;
                                }
                        }
                    } catch (Throwable th) {
                        if (z4 & true) {
                            this.f63869g = Collections.unmodifiableList(this.f63869g);
                        }
                        if (z4 & true) {
                            this.f63867e = Collections.unmodifiableList(this.f63867e);
                        }
                        if (z4 & true) {
                            this.f63868f = Collections.unmodifiableList(this.f63868f);
                        }
                        if (z4 & true) {
                            this.f63870h = Collections.unmodifiableList(this.f63870h);
                        }
                        if (z4 & true) {
                            this.f63871i = Collections.unmodifiableList(this.f63871i);
                        }
                        if (z4 & true) {
                            this.f63872j = Collections.unmodifiableList(this.f63872j);
                        }
                        if (z4 & true) {
                            this.f63873k = Collections.unmodifiableList(this.f63873k);
                        }
                        if (z4 & true) {
                            this.f63874l = Collections.unmodifiableList(this.f63874l);
                        }
                        if (z4 & true) {
                            this.f63875m = Collections.unmodifiableList(this.f63875m);
                        }
                        if (z4 & true) {
                            this.f63876n = Collections.unmodifiableList(this.f63876n);
                        }
                        if (z4 & true) {
                            this.f63878p = Collections.unmodifiableList(this.f63878p);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f63880t = m1763h.m1762a();
                            throw th2;
                        }
                        this.f63880t = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z3 & true) {
                this.f63869g = Collections.unmodifiableList(this.f63869g);
            }
            if (z3 & true) {
                this.f63867e = Collections.unmodifiableList(this.f63867e);
            }
            if (z3 & true) {
                this.f63868f = Collections.unmodifiableList(this.f63868f);
            }
            if (z3 & true) {
                this.f63870h = Collections.unmodifiableList(this.f63870h);
            }
            if (z3 & true) {
                this.f63871i = Collections.unmodifiableList(this.f63871i);
            }
            if (z3 & true) {
                this.f63872j = Collections.unmodifiableList(this.f63872j);
            }
            if (z3 & true) {
                this.f63873k = Collections.unmodifiableList(this.f63873k);
            }
            if (z3 & true) {
                this.f63874l = Collections.unmodifiableList(this.f63874l);
            }
            if (z3 & true) {
                this.f63875m = Collections.unmodifiableList(this.f63875m);
            }
            if (z3 & true) {
                this.f63876n = Collections.unmodifiableList(this.f63876n);
            }
            if (z3 & true) {
                this.f63878p = Collections.unmodifiableList(this.f63878p);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63880t = m1763h.m1762a();
                throw th3;
            }
            this.f63880t = m1763h.m1762a();
            mo1688w();
        }

        private C18715b(AbstractC19683h.AbstractC19686b<C18715b, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f63882v = -1;
            this.f63883w = -1;
            this.f63884x = -1;
            this.f63885y = (byte) (-1);
            this.f63886z = -1;
            this.f63880t = abstractC19686b.f65839a;
        }

        private C18715b(boolean z) {
            this.f63882v = -1;
            this.f63883w = -1;
            this.f63884x = -1;
            this.f63885y = (byte) (-1);
            this.f63886z = -1;
            this.f63880t = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18715b m3624a() {
            return f63863s;
        }

        /* renamed from: a */
        public static C18715b m3623a(InputStream inputStream, C19678f c19678f) throws IOException {
            return f63862a.mo1650b(inputStream, c19678f);
        }

        /* renamed from: m */
        private void m3587m() {
            this.f63864b = 6;
            this.f63865c = 0;
            this.f63866d = 0;
            this.f63867e = Collections.emptyList();
            this.f63868f = Collections.emptyList();
            this.f63869g = Collections.emptyList();
            this.f63870h = Collections.emptyList();
            this.f63871i = Collections.emptyList();
            this.f63872j = Collections.emptyList();
            this.f63873k = Collections.emptyList();
            this.f63874l = Collections.emptyList();
            this.f63875m = Collections.emptyList();
            this.f63876n = Collections.emptyList();
            this.f63877o = C18784s.m3153a();
            this.f63878p = Collections.emptyList();
            this.f63879q = C18797v.m3082a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f63881u & 1) == 1) {
                codedOutputStream.m1827a(1, this.f63864b);
            }
            if (this.f63869g.size() > 0) {
                codedOutputStream.m1795e(18);
                codedOutputStream.m1795e(this.f63882v);
            }
            for (int i = 0; i < this.f63869g.size(); i++) {
                codedOutputStream.m1828a(this.f63869g.get(i).intValue());
            }
            if ((this.f63881u & 2) == 2) {
                codedOutputStream.m1827a(3, this.f63865c);
            }
            if ((this.f63881u & 4) == 4) {
                codedOutputStream.m1827a(4, this.f63866d);
            }
            for (int i2 = 0; i2 < this.f63867e.size(); i2++) {
                codedOutputStream.m1825a(5, this.f63867e.get(i2));
            }
            for (int i3 = 0; i3 < this.f63868f.size(); i3++) {
                codedOutputStream.m1825a(6, this.f63868f.get(i3));
            }
            if (this.f63870h.size() > 0) {
                codedOutputStream.m1795e(58);
                codedOutputStream.m1795e(this.f63883w);
            }
            for (int i4 = 0; i4 < this.f63870h.size(); i4++) {
                codedOutputStream.m1828a(this.f63870h.get(i4).intValue());
            }
            for (int i5 = 0; i5 < this.f63871i.size(); i5++) {
                codedOutputStream.m1825a(8, this.f63871i.get(i5));
            }
            for (int i6 = 0; i6 < this.f63872j.size(); i6++) {
                codedOutputStream.m1825a(9, this.f63872j.get(i6));
            }
            for (int i7 = 0; i7 < this.f63873k.size(); i7++) {
                codedOutputStream.m1825a(10, this.f63873k.get(i7));
            }
            for (int i8 = 0; i8 < this.f63874l.size(); i8++) {
                codedOutputStream.m1825a(11, this.f63874l.get(i8));
            }
            for (int i9 = 0; i9 < this.f63875m.size(); i9++) {
                codedOutputStream.m1825a(13, this.f63875m.get(i9));
            }
            if (this.f63876n.size() > 0) {
                codedOutputStream.m1795e(130);
                codedOutputStream.m1795e(this.f63884x);
            }
            for (int i10 = 0; i10 < this.f63876n.size(); i10++) {
                codedOutputStream.m1828a(this.f63876n.get(i10).intValue());
            }
            int i11 = 0;
            if ((this.f63881u & 8) == 8) {
                codedOutputStream.m1825a(30, this.f63877o);
                i11 = 0;
            }
            while (i11 < this.f63878p.size()) {
                codedOutputStream.m1827a(31, this.f63878p.get(i11).intValue());
                i11++;
            }
            if ((this.f63881u & 16) == 16) {
                codedOutputStream.m1825a(32, this.f63879q);
            }
            y.m1684a(19000, codedOutputStream);
            codedOutputStream.m1796d(this.f63880t);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18715b> mo1661b() {
            return f63862a;
        }

        /* renamed from: c */
        public final boolean m3613c() {
            return (this.f63881u & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3609d() {
            return (this.f63881u & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63885y;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3609d()) {
                this.f63885y = (byte) 0;
                return false;
            }
            for (int i = 0; i < this.f63867e.size(); i++) {
                if (!this.f63867e.get(i).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < this.f63868f.size(); i2++) {
                if (!this.f63868f.get(i2).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < this.f63871i.size(); i3++) {
                if (!this.f63871i.get(i3).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < this.f63872j.size(); i4++) {
                if (!this.f63872j.get(i4).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            for (int i5 = 0; i5 < this.f63873k.size(); i5++) {
                if (!this.f63873k.get(i5).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            for (int i6 = 0; i6 < this.f63874l.size(); i6++) {
                if (!this.f63874l.get(i6).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            for (int i7 = 0; i7 < this.f63875m.size(); i7++) {
                if (!this.f63875m.get(i7).mo1655e()) {
                    this.f63885y = (byte) 0;
                    return false;
                }
            }
            if (m3592k() && !this.f63877o.mo1655e()) {
                this.f63885y = (byte) 0;
                return false;
            } else if (!m1687x()) {
                this.f63885y = (byte) 0;
                return false;
            } else {
                this.f63885y = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63886z;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f63881u & 1) == 1 ? CodedOutputStream.m1803c(1, this.f63864b) + 0 : 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.f63869g.size(); i3++) {
                i2 += CodedOutputStream.m1804c(this.f63869g.get(i3).intValue());
            }
            int i4 = m1803c + i2;
            int i5 = i4;
            if (!this.f63869g.isEmpty()) {
                i5 = i4 + 1 + CodedOutputStream.m1804c(i2);
            }
            this.f63882v = i2;
            int i6 = i5;
            if ((this.f63881u & 2) == 2) {
                i6 = i5 + CodedOutputStream.m1803c(3, this.f63865c);
            }
            int i7 = i6;
            if ((this.f63881u & 4) == 4) {
                i7 = i6 + CodedOutputStream.m1803c(4, this.f63866d);
            }
            for (int i8 = 0; i8 < this.f63867e.size(); i8++) {
                i7 += CodedOutputStream.m1802c(5, this.f63867e.get(i8));
            }
            for (int i9 = 0; i9 < this.f63868f.size(); i9++) {
                i7 += CodedOutputStream.m1802c(6, this.f63868f.get(i9));
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.f63870h.size(); i11++) {
                i10 += CodedOutputStream.m1804c(this.f63870h.get(i11).intValue());
            }
            int i12 = i7 + i10;
            int i13 = i12;
            if (!this.f63870h.isEmpty()) {
                i13 = i12 + 1 + CodedOutputStream.m1804c(i10);
            }
            this.f63883w = i10;
            for (int i14 = 0; i14 < this.f63871i.size(); i14++) {
                i13 += CodedOutputStream.m1802c(8, this.f63871i.get(i14));
            }
            for (int i15 = 0; i15 < this.f63872j.size(); i15++) {
                i13 += CodedOutputStream.m1802c(9, this.f63872j.get(i15));
            }
            for (int i16 = 0; i16 < this.f63873k.size(); i16++) {
                i13 += CodedOutputStream.m1802c(10, this.f63873k.get(i16));
            }
            for (int i17 = 0; i17 < this.f63874l.size(); i17++) {
                i13 += CodedOutputStream.m1802c(11, this.f63874l.get(i17));
            }
            for (int i18 = 0; i18 < this.f63875m.size(); i18++) {
                i13 += CodedOutputStream.m1802c(13, this.f63875m.get(i18));
            }
            int i19 = 0;
            for (int i20 = 0; i20 < this.f63876n.size(); i20++) {
                i19 += CodedOutputStream.m1804c(this.f63876n.get(i20).intValue());
            }
            int i21 = i13 + i19;
            int i22 = i21;
            if (!this.f63876n.isEmpty()) {
                i22 = i21 + 2 + CodedOutputStream.m1804c(i19);
            }
            this.f63884x = i19;
            int i23 = i22;
            if ((this.f63881u & 8) == 8) {
                i23 = i22 + CodedOutputStream.m1802c(30, this.f63877o);
            }
            int i24 = 0;
            for (int i25 = 0; i25 < this.f63878p.size(); i25++) {
                i24 += CodedOutputStream.m1804c(this.f63878p.get(i25).intValue());
            }
            int size = i23 + i24 + (this.f63878p.size() * 2);
            int i26 = size;
            if ((this.f63881u & 16) == 16) {
                i26 = size + CodedOutputStream.m1802c(32, this.f63879q);
            }
            int z = i26 + m1685z() + this.f63880t.mo1649a();
            this.f63886z = z;
            return z;
        }

        /* renamed from: g */
        public final boolean m3601g() {
            return (this.f63881u & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18717a.m3579g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18717a.m3579g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63863s;
        }

        /* renamed from: k */
        public final boolean m3592k() {
            return (this.f63881u & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3589l() {
            return (this.f63881u & 16) == 16;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$c.class */
    public static final class C18720c extends AbstractC19683h.AbstractC19687c<C18720c> implements AbstractC18867f {

        /* renamed from: a */
        public static AbstractC19708r<C18720c> f63904a = new AbstractC19669b<C18720c>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.c.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18720c(c19676e, c19678f);
            }
        };

        /* renamed from: e */
        private static final C18720c f63905e;

        /* renamed from: b */
        public int f63906b;

        /* renamed from: c */
        public List<C18787t> f63907c;

        /* renamed from: d */
        public List<Integer> f63908d;

        /* renamed from: f */
        private final AbstractC19673d f63909f;

        /* renamed from: g */
        private int f63910g;

        /* renamed from: h */
        private byte f63911h;

        /* renamed from: i */
        private int f63912i;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$c$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$c$a.class */
        public static final class C18722a extends AbstractC19683h.AbstractC19686b<C18720c, C18722a> implements AbstractC18867f {

            /* renamed from: b */
            private int f63913b;

            /* renamed from: c */
            private int f63914c = 6;

            /* renamed from: d */
            private List<C18787t> f63915d = Collections.emptyList();

            /* renamed from: e */
            private List<Integer> f63916e = Collections.emptyList();

            private C18722a() {
            }

            /* renamed from: a */
            private C18722a m3555a(int i) {
                this.f63913b |= 1;
                this.f63914c = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18720c.C18722a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$c> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18720c.f63904a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$c r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18720c) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$c$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$c r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18720c) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$c$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18720c.C18722a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$c$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18722a m3552g() {
                return new C18722a();
            }

            /* renamed from: h */
            public C18722a mo1697f() {
                return new C18722a().mo1702a(m3550i());
            }

            /* renamed from: i */
            private C18720c m3550i() {
                C18720c c18720c = new C18720c(this);
                int i = 1;
                if ((this.f63913b & 1) != 1) {
                    i = 0;
                }
                c18720c.f63906b = this.f63914c;
                if ((this.f63913b & 2) == 2) {
                    this.f63915d = Collections.unmodifiableList(this.f63915d);
                    this.f63913b &= -3;
                }
                c18720c.f63907c = this.f63915d;
                if ((this.f63913b & 4) == 4) {
                    this.f63916e = Collections.unmodifiableList(this.f63916e);
                    this.f63913b &= -5;
                }
                c18720c.f63908d = this.f63916e;
                c18720c.f63910g = i;
                return c18720c;
            }

            /* renamed from: l */
            private void m3549l() {
                if ((this.f63913b & 2) != 2) {
                    this.f63915d = new ArrayList(this.f63915d);
                    this.f63913b |= 2;
                }
            }

            /* renamed from: m */
            private void m3548m() {
                if ((this.f63913b & 4) != 4) {
                    this.f63916e = new ArrayList(this.f63916e);
                    this.f63913b |= 4;
                }
            }

            /* renamed from: a */
            public final C18722a mo1702a(C18720c c18720c) {
                if (c18720c == C18720c.m3565a()) {
                    return this;
                }
                if (c18720c.m3558c()) {
                    m3555a(c18720c.f63906b);
                }
                if (!c18720c.f63907c.isEmpty()) {
                    if (this.f63915d.isEmpty()) {
                        this.f63915d = c18720c.f63907c;
                        this.f63913b &= -3;
                    } else {
                        m3549l();
                        this.f63915d.addAll(c18720c.f63907c);
                    }
                }
                if (!c18720c.f63908d.isEmpty()) {
                    if (this.f63916e.isEmpty()) {
                        this.f63916e = c18720c.f63908d;
                        this.f63913b &= -5;
                    } else {
                        m3548m();
                        this.f63916e.addAll(c18720c.f63908d);
                    }
                }
                m1700a((C18722a) c18720c);
                this.f65839a = this.f65839a.m1769a(c18720c.f63909f);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18720c.m3565a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18720c m3550i = m3550i();
                if (m3550i.mo1655e()) {
                    return m3550i;
                }
                throw m1778a((AbstractC19705p) m3550i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f63915d.size(); i++) {
                    if (!this.f63915d.get(i).mo1655e()) {
                        return false;
                    }
                }
                return m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18720c.m3565a();
            }
        }

        static {
            C18720c c18720c = new C18720c(true);
            f63905e = c18720c;
            c18720c.m3556d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18720c(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63911h = (byte) (-1);
            this.f63912i = -1;
            m3556d();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 8) {
                                    this.f63910g |= 1;
                                    boolean z4 = z2;
                                    this.f63906b = c19676e.m1748d();
                                } else if (m1759a == 18) {
                                    boolean z5 = z2;
                                    if (!(z2 & true)) {
                                        boolean z6 = z2;
                                        boolean z7 = z2;
                                        this.f63907c = new ArrayList();
                                        z5 = z2 | true;
                                    }
                                    this.f63907c.add(c19676e.m1753a(C18787t.f64199a, c19678f));
                                    z2 = z5;
                                } else if (m1759a == 248) {
                                    boolean z8 = z2;
                                    if (!(z2 & true)) {
                                        boolean z9 = z2;
                                        boolean z10 = z2;
                                        this.f63908d = new ArrayList();
                                        z8 = z2 | true;
                                    }
                                    this.f63908d.add(Integer.valueOf(c19676e.m1748d()));
                                    z2 = z8;
                                } else if (m1759a == 250) {
                                    int m1751b = c19676e.m1751b(c19676e.m1748d());
                                    boolean z11 = z2;
                                    if (!(z2 & true)) {
                                        z11 = z2;
                                        if (c19676e.m1740h() > 0) {
                                            boolean z12 = z2;
                                            boolean z13 = z2;
                                            boolean z14 = z2;
                                            this.f63908d = new ArrayList();
                                            z11 = z2 | true;
                                        }
                                    }
                                    while (c19676e.m1740h() > 0) {
                                        boolean z15 = z11;
                                        this.f63908d.add(Integer.valueOf(c19676e.m1748d()));
                                    }
                                    c19676e.m1749c(m1751b);
                                    z2 = z11;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f65795a = this;
                        throw e2;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f63907c = Collections.unmodifiableList(this.f63907c);
                    }
                    if (z3 & true) {
                        this.f63908d = Collections.unmodifiableList(this.f63908d);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f63909f = m1763h.m1762a();
                        throw th2;
                    }
                    this.f63909f = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f63907c = Collections.unmodifiableList(this.f63907c);
            }
            if (z2 & true) {
                this.f63908d = Collections.unmodifiableList(this.f63908d);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63909f = m1763h.m1762a();
                throw th3;
            }
            this.f63909f = m1763h.m1762a();
            mo1688w();
        }

        private C18720c(AbstractC19683h.AbstractC19686b<C18720c, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f63911h = (byte) (-1);
            this.f63912i = -1;
            this.f63909f = abstractC19686b.f65839a;
        }

        private C18720c(boolean z) {
            this.f63911h = (byte) (-1);
            this.f63912i = -1;
            this.f63909f = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18720c m3565a() {
            return f63905e;
        }

        /* renamed from: d */
        private void m3556d() {
            this.f63906b = 6;
            this.f63907c = Collections.emptyList();
            this.f63908d = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f63910g & 1) == 1) {
                codedOutputStream.m1827a(1, this.f63906b);
            }
            int i2 = 0;
            while (true) {
                if (i2 < this.f63907c.size()) {
                    codedOutputStream.m1825a(2, this.f63907c.get(i2));
                    i2++;
                }
            }
            for (i = 0; i < this.f63908d.size(); i++) {
                codedOutputStream.m1827a(31, this.f63908d.get(i).intValue());
            }
            y.m1684a(19000, codedOutputStream);
            codedOutputStream.m1796d(this.f63909f);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18720c> mo1661b() {
            return f63904a;
        }

        /* renamed from: c */
        public final boolean m3558c() {
            return (this.f63910g & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63911h;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < this.f63907c.size(); i++) {
                if (!this.f63907c.get(i).mo1655e()) {
                    this.f63911h = (byte) 0;
                    return false;
                }
            }
            if (!m1687x()) {
                this.f63911h = (byte) 0;
                return false;
            }
            this.f63911h = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63912i;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f63910g & 1) == 1 ? CodedOutputStream.m1803c(1, this.f63906b) + 0 : 0;
            for (int i2 = 0; i2 < this.f63907c.size(); i2++) {
                m1803c += CodedOutputStream.m1802c(2, this.f63907c.get(i2));
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f63908d.size(); i4++) {
                i3 += CodedOutputStream.m1804c(this.f63908d.get(i4).intValue());
            }
            int size = m1803c + i3 + (this.f63908d.size() * 2) + m1685z() + this.f63909f.mo1649a();
            this.f63912i = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18722a.m3552g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18722a.m3552g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63905e;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$d.class */
    public static final class C18723d extends AbstractC19683h implements AbstractC18868g {

        /* renamed from: a */
        public static AbstractC19708r<C18723d> f63917a = new AbstractC19669b<C18723d>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.d.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18723d(c19676e, c19678f);
            }
        };

        /* renamed from: b */
        private static final C18723d f63918b;

        /* renamed from: c */
        private final AbstractC19673d f63919c;

        /* renamed from: d */
        private List<C18726e> f63920d;

        /* renamed from: e */
        private byte f63921e;

        /* renamed from: f */
        private int f63922f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$d$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$d$a.class */
        public static final class C18725a extends AbstractC19683h.AbstractC19685a<C18723d, C18725a> implements AbstractC18868g {

            /* renamed from: b */
            private int f63923b;

            /* renamed from: c */
            private List<C18726e> f63924c = Collections.emptyList();

            private C18725a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18723d.C18725a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$d> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18723d.f63917a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$d r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18723d) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$d$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$d r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18723d) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$d$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18723d.C18725a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$d$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18725a m3538g() {
                return new C18725a();
            }

            /* renamed from: h */
            public C18725a clone() {
                return new C18725a().mo1702a(m3539f());
            }

            /* renamed from: i */
            private void m3536i() {
                if ((this.f63923b & 1) != 1) {
                    this.f63924c = new ArrayList(this.f63924c);
                    this.f63923b |= 1;
                }
            }

            /* renamed from: a */
            public final C18725a mo1702a(C18723d c18723d) {
                if (c18723d == C18723d.m3547a()) {
                    return this;
                }
                if (!c18723d.f63920d.isEmpty()) {
                    if (this.f63924c.isEmpty()) {
                        this.f63924c = c18723d.f63920d;
                        this.f63923b &= -2;
                    } else {
                        m3536i();
                        this.f63924c.addAll(c18723d.f63920d);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18723d.f63919c);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18723d mo1703a() {
                return C18723d.m3547a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18723d m3539f = m3539f();
                if (m3539f.mo1655e()) {
                    return m3539f;
                }
                throw m1778a((AbstractC19705p) m3539f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f63924c.size(); i++) {
                    if (!this.f63924c.get(i).mo1655e()) {
                        return false;
                    }
                }
                return true;
            }

            /* renamed from: f */
            public final C18723d m3539f() {
                C18723d c18723d = new C18723d(this);
                if ((this.f63923b & 1) == 1) {
                    this.f63924c = Collections.unmodifiableList(this.f63924c);
                    this.f63923b &= -2;
                }
                c18723d.f63920d = this.f63924c;
                return c18723d;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18723d.m3547a();
            }
        }

        static {
            C18723d c18723d = new C18723d(true);
            f63918b = c18723d;
            c18723d.f63920d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18723d(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63921e = (byte) (-1);
            this.f63922f = -1;
            this.f63920d = Collections.emptyList();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 10) {
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.f63920d = new ArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.f63920d.add(c19676e.m1753a(C18726e.f63925a, c19678f));
                                    z2 = z4;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f63920d = Collections.unmodifiableList(this.f63920d);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f63919c = m1763h.m1762a();
                        throw th2;
                    }
                    this.f63919c = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f63920d = Collections.unmodifiableList(this.f63920d);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63919c = m1763h.m1762a();
                throw th3;
            }
            this.f63919c = m1763h.m1762a();
            mo1688w();
        }

        private C18723d(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f63921e = (byte) (-1);
            this.f63922f = -1;
            this.f63919c = abstractC19685a.f65839a;
        }

        private C18723d(boolean z) {
            this.f63921e = (byte) (-1);
            this.f63922f = -1;
            this.f63919c = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18725a m3546a(C18723d c18723d) {
            return C18725a.m3538g().mo1702a(c18723d);
        }

        /* renamed from: a */
        public static C18723d m3547a() {
            return f63918b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            for (int i = 0; i < this.f63920d.size(); i++) {
                codedOutputStream.m1825a(1, this.f63920d.get(i));
            }
            codedOutputStream.m1796d(this.f63919c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18723d> mo1661b() {
            return f63917a;
        }

        /* renamed from: c */
        public final C18725a mo1659h() {
            return C18725a.m3538g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63921e;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < this.f63920d.size(); i++) {
                if (!this.f63920d.get(i).mo1655e()) {
                    this.f63921e = (byte) 0;
                    return false;
                }
            }
            this.f63921e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63922f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f63920d.size(); i3++) {
                i2 += CodedOutputStream.m1802c(1, this.f63920d.get(i3));
            }
            int mo1649a = i2 + this.f63919c.mo1649a();
            this.f63922f = mo1649a;
            return mo1649a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18725a.m3538g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63918b;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e.class */
    public static final class C18726e extends AbstractC19683h implements AbstractC18869h {

        /* renamed from: a */
        public static AbstractC19708r<C18726e> f63925a = new AbstractC19669b<C18726e>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.e.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18726e(c19676e, c19678f);
            }
        };

        /* renamed from: e */
        private static final C18726e f63926e;

        /* renamed from: b */
        EnumC18729b f63927b;

        /* renamed from: c */
        C18736g f63928c;

        /* renamed from: d */
        EnumC18731c f63929d;

        /* renamed from: f */
        private final AbstractC19673d f63930f;

        /* renamed from: g */
        private int f63931g;

        /* renamed from: h */
        private List<C18736g> f63932h;

        /* renamed from: i */
        private byte f63933i;

        /* renamed from: j */
        private int f63934j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$e$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e$a.class */
        public static final class C18728a extends AbstractC19683h.AbstractC19685a<C18726e, C18728a> implements AbstractC18869h {

            /* renamed from: b */
            private int f63935b;

            /* renamed from: c */
            private EnumC18729b f63936c = EnumC18729b.RETURNS_CONSTANT;

            /* renamed from: d */
            private List<C18736g> f63937d = Collections.emptyList();

            /* renamed from: e */
            private C18736g f63938e = C18736g.m3503a();

            /* renamed from: f */
            private EnumC18731c f63939f = EnumC18731c.AT_MOST_ONCE;

            private C18728a() {
            }

            /* renamed from: a */
            private C18728a m3523a(EnumC18729b enumC18729b) {
                Objects.requireNonNull(enumC18729b);
                this.f63935b |= 1;
                this.f63936c = enumC18729b;
                return this;
            }

            /* renamed from: a */
            private C18728a m3522a(EnumC18731c enumC18731c) {
                Objects.requireNonNull(enumC18731c);
                this.f63935b |= 8;
                this.f63939f = enumC18731c;
                return this;
            }

            /* renamed from: a */
            private C18728a m3520a(C18736g c18736g) {
                if ((this.f63935b & 4) != 4 || this.f63938e == C18736g.m3503a()) {
                    this.f63938e = c18736g;
                } else {
                    this.f63938e = C18736g.m3502a(this.f63938e).mo1702a(c18736g).m3477f();
                }
                this.f63935b |= 4;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18726e.C18728a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$e> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18726e.f63925a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L20
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L20
                    kotlin.reflect.jvm.internal.impl.b.a$e r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18726e) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L20
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$e$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L30
                L20:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$e r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18726e) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L2b
                L2b:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L30:
                    r0 = r6
                    if (r0 == 0) goto L3a
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$e$a r0 = r0.mo1702a(r1)
                L3a:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18726e.C18728a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$e$a");
            }

            /* renamed from: f */
            static /* synthetic */ C18728a m3518f() {
                return new C18728a();
            }

            /* renamed from: g */
            public C18728a clone() {
                return new C18728a().mo1702a(m3516h());
            }

            /* renamed from: h */
            private C18726e m3516h() {
                C18726e c18726e = new C18726e(this);
                int i = this.f63935b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18726e.f63927b = this.f63936c;
                if ((this.f63935b & 2) == 2) {
                    this.f63937d = Collections.unmodifiableList(this.f63937d);
                    this.f63935b &= -3;
                }
                c18726e.f63932h = this.f63937d;
                int i3 = i2;
                if ((i & 4) == 4) {
                    i3 = i2 | 2;
                }
                c18726e.f63928c = this.f63938e;
                int i4 = i3;
                if ((i & 8) == 8) {
                    i4 = i3 | 4;
                }
                c18726e.f63929d = this.f63939f;
                c18726e.f63931g = i4;
                return c18726e;
            }

            /* renamed from: i */
            private void m3515i() {
                if ((this.f63935b & 2) != 2) {
                    this.f63937d = new ArrayList(this.f63937d);
                    this.f63935b |= 2;
                }
            }

            /* renamed from: a */
            public final C18728a mo1702a(C18726e c18726e) {
                if (c18726e == C18726e.m3535a()) {
                    return this;
                }
                if (c18726e.m3527c()) {
                    m3523a(c18726e.f63927b);
                }
                if (!c18726e.f63932h.isEmpty()) {
                    if (this.f63937d.isEmpty()) {
                        this.f63937d = c18726e.f63932h;
                        this.f63935b &= -3;
                    } else {
                        m3515i();
                        this.f63937d.addAll(c18726e.f63932h);
                    }
                }
                if (c18726e.m3526d()) {
                    m3520a(c18726e.f63928c);
                }
                if (c18726e.m3525g()) {
                    m3522a(c18726e.f63929d);
                }
                this.f65839a = this.f65839a.m1769a(c18726e.f63930f);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18726e mo1703a() {
                return C18726e.m3535a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18726e m3516h = m3516h();
                if (m3516h.mo1655e()) {
                    return m3516h;
                }
                throw m1778a((AbstractC19705p) m3516h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f63937d.size(); i++) {
                    if (!this.f63937d.get(i).mo1655e()) {
                        return false;
                    }
                }
                return !((this.f63935b & 4) == 4) || this.f63938e.mo1655e();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18726e.m3535a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$e$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e$b.class */
        public enum EnumC18729b implements C19692j.AbstractC19693a {
            RETURNS_CONSTANT(0, 0),
            CALLS(1, 1),
            RETURNS_NOT_NULL(2, 2);
            
            private static C19692j.AbstractC19694b<EnumC18729b> internalValueMap = new C19692j.AbstractC19694b<EnumC18729b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.e.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18729b mo1672a(int i) {
                    return EnumC18729b.valueOf(i);
                }
            };
            private final int value;

            EnumC18729b(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18729b valueOf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return CALLS;
                    }
                    if (i == 2) {
                        return RETURNS_NOT_NULL;
                    }
                    return null;
                }
                return RETURNS_CONSTANT;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$e$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e$c.class */
        public enum EnumC18731c implements C19692j.AbstractC19693a {
            AT_MOST_ONCE(0, 0),
            EXACTLY_ONCE(1, 1),
            AT_LEAST_ONCE(2, 2);
            
            private static C19692j.AbstractC19694b<EnumC18731c> internalValueMap = new C19692j.AbstractC19694b<EnumC18731c>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.e.c.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18731c mo1672a(int i) {
                    return EnumC18731c.valueOf(i);
                }
            };
            private final int value;

            EnumC18731c(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18731c valueOf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return EXACTLY_ONCE;
                    }
                    if (i == 2) {
                        return AT_LEAST_ONCE;
                    }
                    return null;
                }
                return AT_MOST_ONCE;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            C18726e c18726e = new C18726e(true);
            f63926e = c18726e;
            c18726e.m3524k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18726e(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63933i = (byte) (-1);
            this.f63934j = -1;
            m3524k();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                int m1748d = c19676e.m1748d();
                                boolean z4 = z2;
                                EnumC18729b valueOf = EnumC18729b.valueOf(m1748d);
                                if (valueOf == null) {
                                    m1823a.m1795e(m1759a);
                                    boolean z5 = z2;
                                    m1823a.m1795e(m1748d);
                                } else {
                                    this.f63931g |= 1;
                                    boolean z6 = z2;
                                    this.f63927b = valueOf;
                                }
                            } else if (m1759a == 18) {
                                boolean z7 = z2;
                                if (!(z2 & true)) {
                                    boolean z8 = z2;
                                    boolean z9 = z2;
                                    this.f63932h = new ArrayList();
                                    z7 = z2 | true;
                                }
                                this.f63932h.add(c19676e.m1753a(C18736g.f63949a, c19678f));
                                z2 = z7;
                            } else if (m1759a == 26) {
                                C18736g.C18738a c18738a = null;
                                if ((this.f63931g & 2) == 2) {
                                    boolean z10 = z2;
                                    c18738a = C18736g.m3502a(this.f63928c);
                                }
                                boolean z11 = z2;
                                C18736g c18736g = (C18736g) c19676e.m1753a(C18736g.f63949a, c19678f);
                                boolean z12 = z2;
                                this.f63928c = c18736g;
                                if (c18738a != null) {
                                    c18738a.mo1702a(c18736g);
                                    boolean z13 = z2;
                                    this.f63928c = c18738a.m3477f();
                                }
                                boolean z14 = z2;
                                this.f63931g |= 2;
                            } else if (m1759a == 32) {
                                int m1748d2 = c19676e.m1748d();
                                boolean z15 = z2;
                                EnumC18731c valueOf2 = EnumC18731c.valueOf(m1748d2);
                                if (valueOf2 == null) {
                                    m1823a.m1795e(m1759a);
                                    boolean z16 = z2;
                                    m1823a.m1795e(m1748d2);
                                } else {
                                    this.f63931g |= 4;
                                    boolean z17 = z2;
                                    this.f63929d = valueOf2;
                                }
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f63932h = Collections.unmodifiableList(this.f63932h);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f63930f = m1763h.m1762a();
                            throw th2;
                        }
                        this.f63930f = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f63932h = Collections.unmodifiableList(this.f63932h);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63930f = m1763h.m1762a();
                throw th3;
            }
            this.f63930f = m1763h.m1762a();
            mo1688w();
        }

        private C18726e(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f63933i = (byte) (-1);
            this.f63934j = -1;
            this.f63930f = abstractC19685a.f65839a;
        }

        private C18726e(boolean z) {
            this.f63933i = (byte) (-1);
            this.f63934j = -1;
            this.f63930f = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18726e m3535a() {
            return f63926e;
        }

        /* renamed from: k */
        private void m3524k() {
            this.f63927b = EnumC18729b.RETURNS_CONSTANT;
            this.f63932h = Collections.emptyList();
            this.f63928c = C18736g.m3503a();
            this.f63929d = EnumC18731c.AT_MOST_ONCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            if ((this.f63931g & 1) == 1) {
                codedOutputStream.m1812b(1, this.f63927b.getNumber());
            }
            for (int i = 0; i < this.f63932h.size(); i++) {
                codedOutputStream.m1825a(2, this.f63932h.get(i));
            }
            if ((this.f63931g & 2) == 2) {
                codedOutputStream.m1825a(3, this.f63928c);
            }
            if ((this.f63931g & 4) == 4) {
                codedOutputStream.m1812b(4, this.f63929d.getNumber());
            }
            codedOutputStream.m1796d(this.f63930f);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18726e> mo1661b() {
            return f63925a;
        }

        /* renamed from: c */
        public final boolean m3527c() {
            return (this.f63931g & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3526d() {
            return (this.f63931g & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63933i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < this.f63932h.size(); i++) {
                if (!this.f63932h.get(i).mo1655e()) {
                    this.f63933i = (byte) 0;
                    return false;
                }
            }
            if (!m3526d() || this.f63928c.mo1655e()) {
                this.f63933i = (byte) 1;
                return true;
            }
            this.f63933i = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63934j;
            if (i != -1) {
                return i;
            }
            int m1798d = (this.f63931g & 1) == 1 ? CodedOutputStream.m1798d(1, this.f63927b.getNumber()) + 0 : 0;
            for (int i2 = 0; i2 < this.f63932h.size(); i2++) {
                m1798d += CodedOutputStream.m1802c(2, this.f63932h.get(i2));
            }
            int i3 = m1798d;
            if ((this.f63931g & 2) == 2) {
                i3 = m1798d + CodedOutputStream.m1802c(3, this.f63928c);
            }
            int i4 = i3;
            if ((this.f63931g & 4) == 4) {
                i4 = i3 + CodedOutputStream.m1798d(4, this.f63929d.getNumber());
            }
            int mo1649a = i4 + this.f63930f.mo1649a();
            this.f63934j = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final boolean m3525g() {
            return (this.f63931g & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18728a.m3518f().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18728a.m3518f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63926e;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$f.class */
    public static final class C18733f extends AbstractC19683h.AbstractC19687c<C18733f> implements AbstractC18870i {

        /* renamed from: a */
        public static AbstractC19708r<C18733f> f63940a = new AbstractC19669b<C18733f>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.f.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18733f(c19676e, c19678f);
            }
        };

        /* renamed from: c */
        private static final C18733f f63941c;

        /* renamed from: b */
        public int f63942b;

        /* renamed from: d */
        private final AbstractC19673d f63943d;

        /* renamed from: e */
        private int f63944e;

        /* renamed from: f */
        private byte f63945f;

        /* renamed from: g */
        private int f63946g;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$f$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$f$a.class */
        public static final class C18735a extends AbstractC19683h.AbstractC19686b<C18733f, C18735a> implements AbstractC18870i {

            /* renamed from: b */
            private int f63947b;

            /* renamed from: c */
            private int f63948c;

            private C18735a() {
            }

            /* renamed from: a */
            private C18735a m3509a(int i) {
                this.f63947b |= 1;
                this.f63948c = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18733f.C18735a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$f> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18733f.f63940a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$f r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18733f) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$f$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$f r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18733f) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$f$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18733f.C18735a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$f$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18735a m3506g() {
                return new C18735a();
            }

            /* renamed from: h */
            public C18735a mo1697f() {
                return new C18735a().mo1702a(m3504i());
            }

            /* renamed from: i */
            private C18733f m3504i() {
                C18733f c18733f = new C18733f(this);
                int i = 1;
                if ((this.f63947b & 1) != 1) {
                    i = 0;
                }
                c18733f.f63942b = this.f63948c;
                c18733f.f63944e = i;
                return c18733f;
            }

            /* renamed from: a */
            public final C18735a mo1702a(C18733f c18733f) {
                if (c18733f == C18733f.m3514a()) {
                    return this;
                }
                if (c18733f.m3510c()) {
                    m3509a(c18733f.f63942b);
                }
                m1700a((C18735a) c18733f);
                this.f65839a = this.f65839a.m1769a(c18733f.f63943d);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18733f.m3514a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18733f m3504i = m3504i();
                if (m3504i.mo1655e()) {
                    return m3504i;
                }
                throw m1778a((AbstractC19705p) m3504i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18733f.m3514a();
            }
        }

        static {
            C18733f c18733f = new C18733f(true);
            f63941c = c18733f;
            c18733f.f63942b = 0;
        }

        private C18733f(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63945f = (byte) (-1);
            this.f63946g = -1;
            boolean z = false;
            this.f63942b = 0;
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            while (!z) {
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                this.f63944e |= 1;
                                this.f63942b = c19676e.m1748d();
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        e.f65795a = this;
                        throw e;
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f63943d = m1763h.m1762a();
                        throw th2;
                    }
                    this.f63943d = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63943d = m1763h.m1762a();
                throw th3;
            }
            this.f63943d = m1763h.m1762a();
            mo1688w();
        }

        private C18733f(AbstractC19683h.AbstractC19686b<C18733f, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f63945f = (byte) (-1);
            this.f63946g = -1;
            this.f63943d = abstractC19686b.f65839a;
        }

        private C18733f(boolean z) {
            this.f63945f = (byte) (-1);
            this.f63946g = -1;
            this.f63943d = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18733f m3514a() {
            return f63941c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f63944e & 1) == 1) {
                codedOutputStream.m1827a(1, this.f63942b);
            }
            y.m1684a(200, codedOutputStream);
            codedOutputStream.m1796d(this.f63943d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18733f> mo1661b() {
            return f63940a;
        }

        /* renamed from: c */
        public final boolean m3510c() {
            return (this.f63944e & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63945f;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m1687x()) {
                this.f63945f = (byte) 0;
                return false;
            }
            this.f63945f = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63946g;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f63944e & 1) == 1) {
                i2 = 0 + CodedOutputStream.m1803c(1, this.f63942b);
            }
            int z = i2 + m1685z() + this.f63943d.mo1649a();
            this.f63946g = z;
            return z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18735a.m3506g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18735a.m3506g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63941c;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$g.class */
    public static final class C18736g extends AbstractC19683h implements AbstractC18871j {

        /* renamed from: a */
        public static AbstractC19708r<C18736g> f63949a = new AbstractC19669b<C18736g>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.g.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18736g(c19676e, c19678f);
            }
        };

        /* renamed from: g */
        private static final C18736g f63950g;

        /* renamed from: b */
        int f63951b;

        /* renamed from: c */
        int f63952c;

        /* renamed from: d */
        EnumC18739b f63953d;

        /* renamed from: e */
        C18768p f63954e;

        /* renamed from: f */
        int f63955f;

        /* renamed from: h */
        private final AbstractC19673d f63956h;

        /* renamed from: i */
        private int f63957i;

        /* renamed from: j */
        private List<C18736g> f63958j;

        /* renamed from: k */
        private List<C18736g> f63959k;

        /* renamed from: l */
        private byte f63960l;

        /* renamed from: m */
        private int f63961m;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$g$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$g$a.class */
        public static final class C18738a extends AbstractC19683h.AbstractC19685a<C18736g, C18738a> implements AbstractC18871j {

            /* renamed from: b */
            private int f63962b;

            /* renamed from: c */
            private int f63963c;

            /* renamed from: d */
            private int f63964d;

            /* renamed from: g */
            private int f63967g;

            /* renamed from: e */
            private EnumC18739b f63965e = EnumC18739b.TRUE;

            /* renamed from: f */
            private C18768p f63966f = C18768p.m3289a();

            /* renamed from: h */
            private List<C18736g> f63968h = Collections.emptyList();

            /* renamed from: i */
            private List<C18736g> f63969i = Collections.emptyList();

            private C18738a() {
            }

            /* renamed from: a */
            private C18738a m3484a(int i) {
                this.f63962b |= 1;
                this.f63963c = i;
                return this;
            }

            /* renamed from: a */
            private C18738a m3483a(EnumC18739b enumC18739b) {
                Objects.requireNonNull(enumC18739b);
                this.f63962b |= 4;
                this.f63965e = enumC18739b;
                return this;
            }

            /* renamed from: a */
            private C18738a m3481a(C18768p c18768p) {
                if ((this.f63962b & 8) != 8 || this.f63966f == C18768p.m3289a()) {
                    this.f63966f = c18768p;
                } else {
                    this.f63966f = C18768p.m3288a(this.f63966f).mo1702a(c18768p).m3223h();
                }
                this.f63962b |= 8;
                return this;
            }

            /* renamed from: b */
            private C18738a m3480b(int i) {
                this.f63962b |= 2;
                this.f63964d = i;
                return this;
            }

            /* renamed from: c */
            private C18738a m3479c(int i) {
                this.f63962b |= 16;
                this.f63967g = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18736g.C18738a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$g> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18736g.f63949a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$g r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18736g) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$g$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$g r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18736g) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$g$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18736g.C18738a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$g$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18738a m3476g() {
                return new C18738a();
            }

            /* renamed from: h */
            public C18738a clone() {
                return new C18738a().mo1702a(m3477f());
            }

            /* renamed from: i */
            private void m3474i() {
                if ((this.f63962b & 32) != 32) {
                    this.f63968h = new ArrayList(this.f63968h);
                    this.f63962b |= 32;
                }
            }

            /* renamed from: k */
            private void m3473k() {
                if ((this.f63962b & 64) != 64) {
                    this.f63969i = new ArrayList(this.f63969i);
                    this.f63962b |= 64;
                }
            }

            /* renamed from: a */
            public final C18738a mo1702a(C18736g c18736g) {
                if (c18736g == C18736g.m3503a()) {
                    return this;
                }
                if (c18736g.m3494c()) {
                    m3484a(c18736g.f63951b);
                }
                if (c18736g.m3491d()) {
                    m3480b(c18736g.f63952c);
                }
                if (c18736g.m3488g()) {
                    m3483a(c18736g.f63953d);
                }
                if (c18736g.m3487k()) {
                    m3481a(c18736g.f63954e);
                }
                if (c18736g.m3486l()) {
                    m3479c(c18736g.f63955f);
                }
                if (!c18736g.f63958j.isEmpty()) {
                    if (this.f63968h.isEmpty()) {
                        this.f63968h = c18736g.f63958j;
                        this.f63962b &= -33;
                    } else {
                        m3474i();
                        this.f63968h.addAll(c18736g.f63958j);
                    }
                }
                if (!c18736g.f63959k.isEmpty()) {
                    if (this.f63969i.isEmpty()) {
                        this.f63969i = c18736g.f63959k;
                        this.f63962b &= -65;
                    } else {
                        m3473k();
                        this.f63969i.addAll(c18736g.f63959k);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18736g.f63956h);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18736g mo1703a() {
                return C18736g.m3503a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18736g m3477f = m3477f();
                if (m3477f.mo1655e()) {
                    return m3477f;
                }
                throw m1778a((AbstractC19705p) m3477f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                if (!((this.f63962b & 8) == 8) || this.f63966f.mo1655e()) {
                    for (int i = 0; i < this.f63968h.size(); i++) {
                        if (!this.f63968h.get(i).mo1655e()) {
                            return false;
                        }
                    }
                    for (int i2 = 0; i2 < this.f63969i.size(); i2++) {
                        if (!this.f63969i.get(i2).mo1655e()) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }

            /* renamed from: f */
            public final C18736g m3477f() {
                C18736g c18736g = new C18736g(this);
                int i = this.f63962b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18736g.f63951b = this.f63963c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18736g.f63952c = this.f63964d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18736g.f63953d = this.f63965e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18736g.f63954e = this.f63966f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                c18736g.f63955f = this.f63967g;
                if ((this.f63962b & 32) == 32) {
                    this.f63968h = Collections.unmodifiableList(this.f63968h);
                    this.f63962b &= -33;
                }
                c18736g.f63958j = this.f63968h;
                if ((this.f63962b & 64) == 64) {
                    this.f63969i = Collections.unmodifiableList(this.f63969i);
                    this.f63962b &= -65;
                }
                c18736g.f63959k = this.f63969i;
                c18736g.f63957i = i6;
                return c18736g;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18736g.m3503a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$g$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$g$b.class */
        public enum EnumC18739b implements C19692j.AbstractC19693a {
            TRUE(0, 0),
            FALSE(1, 1),
            NULL(2, 2);
            
            private static C19692j.AbstractC19694b<EnumC18739b> internalValueMap = new C19692j.AbstractC19694b<EnumC18739b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.g.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18739b mo1672a(int i) {
                    return EnumC18739b.valueOf(i);
                }
            };
            private final int value;

            EnumC18739b(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18739b valueOf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return FALSE;
                    }
                    if (i == 2) {
                        return NULL;
                    }
                    return null;
                }
                return TRUE;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            C18736g c18736g = new C18736g(true);
            f63950g = c18736g;
            c18736g.m3485m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18736g(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63960l = (byte) (-1);
            this.f63961m = -1;
            m3485m();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 8) {
                                    this.f63957i |= 1;
                                    boolean z4 = z2;
                                    this.f63951b = c19676e.m1748d();
                                } else if (m1759a == 16) {
                                    this.f63957i |= 2;
                                    boolean z5 = z2;
                                    this.f63952c = c19676e.m1748d();
                                } else if (m1759a == 24) {
                                    int m1748d = c19676e.m1748d();
                                    boolean z6 = z2;
                                    EnumC18739b valueOf = EnumC18739b.valueOf(m1748d);
                                    if (valueOf == null) {
                                        m1823a.m1795e(m1759a);
                                        boolean z7 = z2;
                                        m1823a.m1795e(m1748d);
                                    } else {
                                        this.f63957i |= 4;
                                        boolean z8 = z2;
                                        this.f63953d = valueOf;
                                    }
                                } else if (m1759a == 34) {
                                    C18768p.C18775b c18775b = null;
                                    if ((this.f63957i & 8) == 8) {
                                        boolean z9 = z2;
                                        c18775b = C18768p.m3288a(this.f63954e);
                                    }
                                    boolean z10 = z2;
                                    C18768p c18768p = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                    boolean z11 = z2;
                                    this.f63954e = c18768p;
                                    if (c18775b != null) {
                                        c18775b.mo1702a(c18768p);
                                        boolean z12 = z2;
                                        this.f63954e = c18775b.m3223h();
                                    }
                                    boolean z13 = z2;
                                    this.f63957i |= 8;
                                } else if (m1759a == 40) {
                                    this.f63957i |= 16;
                                    boolean z14 = z2;
                                    this.f63955f = c19676e.m1748d();
                                } else if (m1759a == 50) {
                                    boolean z15 = z2;
                                    if (!(z2 & true)) {
                                        boolean z16 = z2;
                                        boolean z17 = z2;
                                        this.f63958j = new ArrayList();
                                        z15 = z2 | true;
                                    }
                                    this.f63958j.add(c19676e.m1753a(f63949a, c19678f));
                                    z2 = z15;
                                } else if (m1759a == 58) {
                                    boolean z18 = z2;
                                    if (!(z2 & true)) {
                                        boolean z19 = z2;
                                        boolean z20 = z2;
                                        this.f63959k = new ArrayList();
                                        z18 = z2 | true;
                                    }
                                    this.f63959k.add(c19676e.m1753a(f63949a, c19678f));
                                    z2 = z18;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f63958j = Collections.unmodifiableList(this.f63958j);
                    }
                    if (z3 & true) {
                        this.f63959k = Collections.unmodifiableList(this.f63959k);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f63956h = m1763h.m1762a();
                        throw th2;
                    }
                    this.f63956h = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f63958j = Collections.unmodifiableList(this.f63958j);
            }
            if (z2 & true) {
                this.f63959k = Collections.unmodifiableList(this.f63959k);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63956h = m1763h.m1762a();
                throw th3;
            }
            this.f63956h = m1763h.m1762a();
            mo1688w();
        }

        private C18736g(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f63960l = (byte) (-1);
            this.f63961m = -1;
            this.f63956h = abstractC19685a.f65839a;
        }

        private C18736g(boolean z) {
            this.f63960l = (byte) (-1);
            this.f63961m = -1;
            this.f63956h = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18738a m3502a(C18736g c18736g) {
            return C18738a.m3476g().mo1702a(c18736g);
        }

        /* renamed from: a */
        public static C18736g m3503a() {
            return f63950g;
        }

        /* renamed from: m */
        private void m3485m() {
            this.f63951b = 0;
            this.f63952c = 0;
            this.f63953d = EnumC18739b.TRUE;
            this.f63954e = C18768p.m3289a();
            this.f63955f = 0;
            this.f63958j = Collections.emptyList();
            this.f63959k = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            mo1660f();
            if ((this.f63957i & 1) == 1) {
                codedOutputStream.m1827a(1, this.f63951b);
            }
            if ((this.f63957i & 2) == 2) {
                codedOutputStream.m1827a(2, this.f63952c);
            }
            if ((this.f63957i & 4) == 4) {
                codedOutputStream.m1812b(3, this.f63953d.getNumber());
            }
            if ((this.f63957i & 8) == 8) {
                codedOutputStream.m1825a(4, this.f63954e);
            }
            if ((this.f63957i & 16) == 16) {
                codedOutputStream.m1827a(5, this.f63955f);
            }
            int i2 = 0;
            while (true) {
                if (i2 < this.f63958j.size()) {
                    codedOutputStream.m1825a(6, this.f63958j.get(i2));
                    i2++;
                }
            }
            for (i = 0; i < this.f63959k.size(); i++) {
                codedOutputStream.m1825a(7, this.f63959k.get(i));
            }
            codedOutputStream.m1796d(this.f63956h);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18736g> mo1661b() {
            return f63949a;
        }

        /* renamed from: c */
        public final boolean m3494c() {
            return (this.f63957i & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3491d() {
            return (this.f63957i & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63960l;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (m3487k() && !this.f63954e.mo1655e()) {
                this.f63960l = (byte) 0;
                return false;
            }
            for (int i = 0; i < this.f63958j.size(); i++) {
                if (!this.f63958j.get(i).mo1655e()) {
                    this.f63960l = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < this.f63959k.size(); i2++) {
                if (!this.f63959k.get(i2).mo1655e()) {
                    this.f63960l = (byte) 0;
                    return false;
                }
            }
            this.f63960l = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i;
            int i2;
            int i3 = this.f63961m;
            if (i3 != -1) {
                return i3;
            }
            int m1803c = (this.f63957i & 1) == 1 ? CodedOutputStream.m1803c(1, this.f63951b) + 0 : 0;
            int i4 = m1803c;
            if ((this.f63957i & 2) == 2) {
                i4 = m1803c + CodedOutputStream.m1803c(2, this.f63952c);
            }
            int i5 = i4;
            if ((this.f63957i & 4) == 4) {
                i5 = i4 + CodedOutputStream.m1798d(3, this.f63953d.getNumber());
            }
            int i6 = i5;
            if ((this.f63957i & 8) == 8) {
                i6 = i5 + CodedOutputStream.m1802c(4, this.f63954e);
            }
            int i7 = i6;
            if ((this.f63957i & 16) == 16) {
                i7 = i6 + CodedOutputStream.m1803c(5, this.f63955f);
            }
            int i8 = 0;
            while (true) {
                i = i7;
                if (i8 < this.f63958j.size()) {
                    i7 += CodedOutputStream.m1802c(6, this.f63958j.get(i8));
                    i8++;
                }
            }
            for (i2 = 0; i2 < this.f63959k.size(); i2++) {
                i += CodedOutputStream.m1802c(7, this.f63959k.get(i2));
            }
            int mo1649a = i + this.f63956h.mo1649a();
            this.f63961m = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final boolean m3488g() {
            return (this.f63957i & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18738a.m3476g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18738a.m3476g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63950g;
        }

        /* renamed from: k */
        public final boolean m3487k() {
            return (this.f63957i & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3486l() {
            return (this.f63957i & 16) == 16;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$h.class */
    public static final class C18741h extends AbstractC19683h.AbstractC19687c<C18741h> implements AbstractC18872k {

        /* renamed from: a */
        public static AbstractC19708r<C18741h> f63970a = new AbstractC19669b<C18741h>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.h.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18741h(c19676e, c19678f);
            }
        };

        /* renamed from: n */
        private static final C18741h f63971n;

        /* renamed from: b */
        public int f63972b;

        /* renamed from: c */
        public int f63973c;

        /* renamed from: d */
        public int f63974d;

        /* renamed from: e */
        public C18768p f63975e;

        /* renamed from: f */
        public int f63976f;

        /* renamed from: g */
        public List<C18779r> f63977g;

        /* renamed from: h */
        public C18768p f63978h;

        /* renamed from: i */
        public int f63979i;

        /* renamed from: j */
        public List<C18787t> f63980j;

        /* renamed from: k */
        public C18784s f63981k;

        /* renamed from: l */
        public List<Integer> f63982l;

        /* renamed from: m */
        C18723d f63983m;

        /* renamed from: o */
        private final AbstractC19673d f63984o;

        /* renamed from: p */
        private int f63985p;

        /* renamed from: q */
        private byte f63986q;

        /* renamed from: s */
        private int f63987s;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$h$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$h$a.class */
        public static final class C18743a extends AbstractC19683h.AbstractC19686b<C18741h, C18743a> implements AbstractC18872k {

            /* renamed from: b */
            private int f63988b;

            /* renamed from: e */
            private int f63991e;

            /* renamed from: g */
            private int f63993g;

            /* renamed from: j */
            private int f63996j;

            /* renamed from: c */
            private int f63989c = 6;

            /* renamed from: d */
            private int f63990d = 6;

            /* renamed from: f */
            private C18768p f63992f = C18768p.m3289a();

            /* renamed from: h */
            private List<C18779r> f63994h = Collections.emptyList();

            /* renamed from: i */
            private C18768p f63995i = C18768p.m3289a();

            /* renamed from: k */
            private List<C18787t> f63997k = Collections.emptyList();

            /* renamed from: l */
            private C18784s f63998l = C18784s.m3153a();

            /* renamed from: m */
            private List<Integer> f63999m = Collections.emptyList();

            /* renamed from: n */
            private C18723d f64000n = C18723d.m3547a();

            private C18743a() {
            }

            /* renamed from: a */
            private C18743a m3443a(int i) {
                this.f63988b |= 1;
                this.f63989c = i;
                return this;
            }

            /* renamed from: a */
            private C18743a m3442a(C18723d c18723d) {
                if ((this.f63988b & 2048) != 2048 || this.f64000n == C18723d.m3547a()) {
                    this.f64000n = c18723d;
                } else {
                    this.f64000n = C18723d.m3546a(this.f64000n).mo1702a(c18723d).m3539f();
                }
                this.f63988b |= 2048;
                return this;
            }

            /* renamed from: a */
            private C18743a m3440a(C18768p c18768p) {
                if ((this.f63988b & 8) != 8 || this.f63992f == C18768p.m3289a()) {
                    this.f63992f = c18768p;
                } else {
                    this.f63992f = C18768p.m3288a(this.f63992f).mo1702a(c18768p).m3223h();
                }
                this.f63988b |= 8;
                return this;
            }

            /* renamed from: a */
            private C18743a m3439a(C18784s c18784s) {
                if ((this.f63988b & 512) != 512 || this.f63998l == C18784s.m3153a()) {
                    this.f63998l = c18784s;
                } else {
                    this.f63998l = C18784s.m3152a(this.f63998l).mo1702a(c18784s).m3141f();
                }
                this.f63988b |= 512;
                return this;
            }

            /* renamed from: b */
            private C18743a m3438b(int i) {
                this.f63988b |= 2;
                this.f63990d = i;
                return this;
            }

            /* renamed from: b */
            private C18743a m3437b(C18768p c18768p) {
                if ((this.f63988b & 64) != 64 || this.f63995i == C18768p.m3289a()) {
                    this.f63995i = c18768p;
                } else {
                    this.f63995i = C18768p.m3288a(this.f63995i).mo1702a(c18768p).m3223h();
                }
                this.f63988b |= 64;
                return this;
            }

            /* renamed from: c */
            private C18743a m3436c(int i) {
                this.f63988b |= 4;
                this.f63991e = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h.C18743a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$h> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h.f63970a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$h r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$h$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$h r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$h$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h.C18743a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$h$a");
            }

            /* renamed from: d */
            private C18743a m3434d(int i) {
                this.f63988b |= 16;
                this.f63993g = i;
                return this;
            }

            /* renamed from: e */
            private C18743a m3433e(int i) {
                this.f63988b |= 128;
                this.f63996j = i;
                return this;
            }

            /* renamed from: g */
            static /* synthetic */ C18743a m3432g() {
                return new C18743a();
            }

            /* renamed from: h */
            public C18743a mo1697f() {
                return new C18743a().mo1702a(m3430i());
            }

            /* renamed from: i */
            private C18741h m3430i() {
                C18741h c18741h = new C18741h(this);
                int i = this.f63988b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18741h.f63972b = this.f63989c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18741h.f63973c = this.f63990d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18741h.f63974d = this.f63991e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18741h.f63975e = this.f63992f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                c18741h.f63976f = this.f63993g;
                if ((this.f63988b & 32) == 32) {
                    this.f63994h = Collections.unmodifiableList(this.f63994h);
                    this.f63988b &= -33;
                }
                c18741h.f63977g = this.f63994h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                c18741h.f63978h = this.f63995i;
                int i8 = i7;
                if ((i & 128) == 128) {
                    i8 = i7 | 64;
                }
                c18741h.f63979i = this.f63996j;
                if ((this.f63988b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    this.f63997k = Collections.unmodifiableList(this.f63997k);
                    this.f63988b &= -257;
                }
                c18741h.f63980j = this.f63997k;
                int i9 = i8;
                if ((i & 512) == 512) {
                    i9 = i8 | 128;
                }
                c18741h.f63981k = this.f63998l;
                if ((this.f63988b & 1024) == 1024) {
                    this.f63999m = Collections.unmodifiableList(this.f63999m);
                    this.f63988b &= -1025;
                }
                c18741h.f63982l = this.f63999m;
                int i10 = i9;
                if ((i & 2048) == 2048) {
                    i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                c18741h.f63983m = this.f64000n;
                c18741h.f63985p = i10;
                return c18741h;
            }

            /* renamed from: l */
            private void m3429l() {
                if ((this.f63988b & 32) != 32) {
                    this.f63994h = new ArrayList(this.f63994h);
                    this.f63988b |= 32;
                }
            }

            /* renamed from: m */
            private void m3428m() {
                if ((this.f63988b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                    this.f63997k = new ArrayList(this.f63997k);
                    this.f63988b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
            }

            /* renamed from: n */
            private void m3427n() {
                if ((this.f63988b & 1024) != 1024) {
                    this.f63999m = new ArrayList(this.f63999m);
                    this.f63988b |= 1024;
                }
            }

            /* renamed from: a */
            public final C18743a mo1702a(C18741h c18741h) {
                if (c18741h == C18741h.m3472a()) {
                    return this;
                }
                if (c18741h.m3460c()) {
                    m3443a(c18741h.f63972b);
                }
                if (c18741h.m3456d()) {
                    m3438b(c18741h.f63973c);
                }
                if (c18741h.m3451g()) {
                    m3436c(c18741h.f63974d);
                }
                if (c18741h.m3450k()) {
                    m3440a(c18741h.f63975e);
                }
                if (c18741h.m3449l()) {
                    m3434d(c18741h.f63976f);
                }
                if (!c18741h.f63977g.isEmpty()) {
                    if (this.f63994h.isEmpty()) {
                        this.f63994h = c18741h.f63977g;
                        this.f63988b &= -33;
                    } else {
                        m3429l();
                        this.f63994h.addAll(c18741h.f63977g);
                    }
                }
                if (c18741h.m3448m()) {
                    m3437b(c18741h.f63978h);
                }
                if (c18741h.m3447n()) {
                    m3433e(c18741h.f63979i);
                }
                if (!c18741h.f63980j.isEmpty()) {
                    if (this.f63997k.isEmpty()) {
                        this.f63997k = c18741h.f63980j;
                        this.f63988b &= -257;
                    } else {
                        m3428m();
                        this.f63997k.addAll(c18741h.f63980j);
                    }
                }
                if (c18741h.m3446o()) {
                    m3439a(c18741h.f63981k);
                }
                if (!c18741h.f63982l.isEmpty()) {
                    if (this.f63999m.isEmpty()) {
                        this.f63999m = c18741h.f63982l;
                        this.f63988b &= -1025;
                    } else {
                        m3427n();
                        this.f63999m.addAll(c18741h.f63982l);
                    }
                }
                if (c18741h.m3445p()) {
                    m3442a(c18741h.f63983m);
                }
                m1700a((C18743a) c18741h);
                this.f65839a = this.f65839a.m1769a(c18741h.f63984o);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18741h.m3472a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18741h m3430i = m3430i();
                if (m3430i.mo1655e()) {
                    return m3430i;
                }
                throw m1778a((AbstractC19705p) m3430i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                int i = this.f63988b;
                if (!((i & 4) == 4)) {
                    return false;
                }
                if (((i & 8) == 8) && !this.f63992f.mo1655e()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.f63994h.size(); i2++) {
                    if (!this.f63994h.get(i2).mo1655e()) {
                        return false;
                    }
                }
                if (((this.f63988b & 64) == 64) && !this.f63995i.mo1655e()) {
                    return false;
                }
                for (int i3 = 0; i3 < this.f63997k.size(); i3++) {
                    if (!this.f63997k.get(i3).mo1655e()) {
                        return false;
                    }
                }
                if (((this.f63988b & 512) == 512) && !this.f63998l.mo1655e()) {
                    return false;
                }
                return (!((this.f63988b & 2048) == 2048) || this.f64000n.mo1655e()) && m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18741h.m3472a();
            }
        }

        static {
            C18741h c18741h = new C18741h(true);
            f63971n = c18741h;
            c18741h.m3444q();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18741h(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f63986q = (byte) (-1);
            this.f63987s = -1;
            m3444q();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        C18723d.C18725a c18725a = null;
                        switch (m1759a) {
                            case 0:
                                break;
                            case 8:
                                this.f63985p |= 2;
                                boolean z4 = z2;
                                this.f63973c = c19676e.m1748d();
                                continue;
                            case 16:
                                this.f63985p |= 4;
                                boolean z5 = z2;
                                this.f63974d = c19676e.m1748d();
                                continue;
                            case 26:
                                C18768p.C18775b c18775b = null;
                                if ((this.f63985p & 8) == 8) {
                                    boolean z6 = z2;
                                    c18775b = C18768p.m3288a(this.f63975e);
                                }
                                boolean z7 = z2;
                                C18768p c18768p = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                boolean z8 = z2;
                                this.f63975e = c18768p;
                                if (c18775b != null) {
                                    c18775b.mo1702a(c18768p);
                                    boolean z9 = z2;
                                    this.f63975e = c18775b.m3223h();
                                }
                                boolean z10 = z2;
                                this.f63985p |= 8;
                                continue;
                            case 34:
                                boolean z11 = z2;
                                if (!(z2 & true)) {
                                    boolean z12 = z2;
                                    boolean z13 = z2;
                                    this.f63977g = new ArrayList();
                                    z11 = z2 | true;
                                }
                                this.f63977g.add(c19676e.m1753a(C18779r.f64167a, c19678f));
                                z2 = z11;
                                continue;
                            case 42:
                                C18768p.C18775b c18775b2 = null;
                                if ((this.f63985p & 32) == 32) {
                                    boolean z14 = z2;
                                    c18775b2 = C18768p.m3288a(this.f63978h);
                                }
                                boolean z15 = z2;
                                C18768p c18768p2 = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                boolean z16 = z2;
                                this.f63978h = c18768p2;
                                if (c18775b2 != null) {
                                    c18775b2.mo1702a(c18768p2);
                                    boolean z17 = z2;
                                    this.f63978h = c18775b2.m3223h();
                                }
                                boolean z18 = z2;
                                this.f63985p |= 32;
                                continue;
                            case 50:
                                boolean z19 = z2;
                                if (!(z2 & true)) {
                                    boolean z20 = z2;
                                    boolean z21 = z2;
                                    this.f63980j = new ArrayList();
                                    z19 = z2 | true;
                                }
                                this.f63980j.add(c19676e.m1753a(C18787t.f64199a, c19678f));
                                z2 = z19;
                                continue;
                            case 56:
                                this.f63985p |= 16;
                                boolean z22 = z2;
                                this.f63976f = c19676e.m1748d();
                                continue;
                            case 64:
                                this.f63985p |= 64;
                                boolean z23 = z2;
                                this.f63979i = c19676e.m1748d();
                                continue;
                            case 72:
                                this.f63985p |= 1;
                                boolean z24 = z2;
                                this.f63972b = c19676e.m1748d();
                                continue;
                            case 242:
                                C18784s.C18786a c18786a = null;
                                if ((this.f63985p & 128) == 128) {
                                    boolean z25 = z2;
                                    c18786a = C18784s.m3152a(this.f63981k);
                                }
                                boolean z26 = z2;
                                C18784s c18784s = (C18784s) c19676e.m1753a(C18784s.f64188a, c19678f);
                                boolean z27 = z2;
                                this.f63981k = c18784s;
                                if (c18786a != null) {
                                    c18786a.mo1702a(c18784s);
                                    boolean z28 = z2;
                                    this.f63981k = c18786a.m3141f();
                                }
                                boolean z29 = z2;
                                this.f63985p |= 128;
                                continue;
                            case 248:
                                boolean z30 = z2;
                                if (!(z2 & true)) {
                                    boolean z31 = z2;
                                    boolean z32 = z2;
                                    this.f63982l = new ArrayList();
                                    z30 = z2 | true;
                                }
                                this.f63982l.add(Integer.valueOf(c19676e.m1748d()));
                                z2 = z30;
                                continue;
                            case 250:
                                int m1751b = c19676e.m1751b(c19676e.m1748d());
                                boolean z33 = z2;
                                if (!(z2 & true)) {
                                    z33 = z2;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z34 = z2;
                                        boolean z35 = z2;
                                        boolean z36 = z2;
                                        this.f63982l = new ArrayList();
                                        z33 = z2 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z37 = z33;
                                    this.f63982l.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b);
                                z2 = z33;
                                continue;
                            case 258:
                                if ((this.f63985p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                                    boolean z38 = z2;
                                    c18725a = this.f63983m.mo1659h();
                                }
                                boolean z39 = z2;
                                C18723d c18723d = (C18723d) c19676e.m1753a(C18723d.f63917a, c19678f);
                                boolean z40 = z2;
                                this.f63983m = c18723d;
                                if (c18725a != null) {
                                    c18725a.mo1702a(c18723d);
                                    boolean z41 = z2;
                                    this.f63983m = c18725a.m3539f();
                                }
                                boolean z42 = z2;
                                this.f63985p |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                continue;
                            default:
                                if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f63977g = Collections.unmodifiableList(this.f63977g);
                        }
                        if (z3 & true) {
                            this.f63980j = Collections.unmodifiableList(this.f63980j);
                        }
                        if (z3 & true) {
                            this.f63982l = Collections.unmodifiableList(this.f63982l);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f63984o = m1763h.m1762a();
                            throw th2;
                        }
                        this.f63984o = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f63977g = Collections.unmodifiableList(this.f63977g);
            }
            if (z2 & true) {
                this.f63980j = Collections.unmodifiableList(this.f63980j);
            }
            if (z2 & true) {
                this.f63982l = Collections.unmodifiableList(this.f63982l);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f63984o = m1763h.m1762a();
                throw th3;
            }
            this.f63984o = m1763h.m1762a();
            mo1688w();
        }

        private C18741h(AbstractC19683h.AbstractC19686b<C18741h, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f63986q = (byte) (-1);
            this.f63987s = -1;
            this.f63984o = abstractC19686b.f65839a;
        }

        private C18741h(boolean z) {
            this.f63986q = (byte) (-1);
            this.f63987s = -1;
            this.f63984o = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18741h m3472a() {
            return f63971n;
        }

        /* renamed from: a */
        public static C18741h m3471a(InputStream inputStream, C19678f c19678f) throws IOException {
            return f63970a.mo1650b(inputStream, c19678f);
        }

        /* renamed from: q */
        private void m3444q() {
            this.f63972b = 6;
            this.f63973c = 6;
            this.f63974d = 0;
            this.f63975e = C18768p.m3289a();
            this.f63976f = 0;
            this.f63977g = Collections.emptyList();
            this.f63978h = C18768p.m3289a();
            this.f63979i = 0;
            this.f63980j = Collections.emptyList();
            this.f63981k = C18784s.m3153a();
            this.f63982l = Collections.emptyList();
            this.f63983m = C18723d.m3547a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f63985p & 2) == 2) {
                codedOutputStream.m1827a(1, this.f63973c);
            }
            if ((this.f63985p & 4) == 4) {
                codedOutputStream.m1827a(2, this.f63974d);
            }
            if ((this.f63985p & 8) == 8) {
                codedOutputStream.m1825a(3, this.f63975e);
            }
            for (int i = 0; i < this.f63977g.size(); i++) {
                codedOutputStream.m1825a(4, this.f63977g.get(i));
            }
            if ((this.f63985p & 32) == 32) {
                codedOutputStream.m1825a(5, this.f63978h);
            }
            for (int i2 = 0; i2 < this.f63980j.size(); i2++) {
                codedOutputStream.m1825a(6, this.f63980j.get(i2));
            }
            if ((this.f63985p & 16) == 16) {
                codedOutputStream.m1827a(7, this.f63976f);
            }
            if ((this.f63985p & 64) == 64) {
                codedOutputStream.m1827a(8, this.f63979i);
            }
            if ((this.f63985p & 1) == 1) {
                codedOutputStream.m1827a(9, this.f63972b);
            }
            int i3 = 0;
            if ((this.f63985p & 128) == 128) {
                codedOutputStream.m1825a(30, this.f63981k);
                i3 = 0;
            }
            while (i3 < this.f63982l.size()) {
                codedOutputStream.m1827a(31, this.f63982l.get(i3).intValue());
                i3++;
            }
            if ((this.f63985p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                codedOutputStream.m1825a(32, this.f63983m);
            }
            y.m1684a(19000, codedOutputStream);
            codedOutputStream.m1796d(this.f63984o);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18741h> mo1661b() {
            return f63970a;
        }

        /* renamed from: c */
        public final boolean m3460c() {
            return (this.f63985p & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3456d() {
            return (this.f63985p & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f63986q;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3451g()) {
                this.f63986q = (byte) 0;
                return false;
            } else if (m3450k() && !this.f63975e.mo1655e()) {
                this.f63986q = (byte) 0;
                return false;
            } else {
                for (int i = 0; i < this.f63977g.size(); i++) {
                    if (!this.f63977g.get(i).mo1655e()) {
                        this.f63986q = (byte) 0;
                        return false;
                    }
                }
                if (m3448m() && !this.f63978h.mo1655e()) {
                    this.f63986q = (byte) 0;
                    return false;
                }
                for (int i2 = 0; i2 < this.f63980j.size(); i2++) {
                    if (!this.f63980j.get(i2).mo1655e()) {
                        this.f63986q = (byte) 0;
                        return false;
                    }
                }
                if (m3446o() && !this.f63981k.mo1655e()) {
                    this.f63986q = (byte) 0;
                    return false;
                } else if (m3445p() && !this.f63983m.mo1655e()) {
                    this.f63986q = (byte) 0;
                    return false;
                } else if (!m1687x()) {
                    this.f63986q = (byte) 0;
                    return false;
                } else {
                    this.f63986q = (byte) 1;
                    return true;
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f63987s;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f63985p & 2) == 2 ? CodedOutputStream.m1803c(1, this.f63973c) + 0 : 0;
            int i2 = m1803c;
            if ((this.f63985p & 4) == 4) {
                i2 = m1803c + CodedOutputStream.m1803c(2, this.f63974d);
            }
            int i3 = i2;
            if ((this.f63985p & 8) == 8) {
                i3 = i2 + CodedOutputStream.m1802c(3, this.f63975e);
            }
            for (int i4 = 0; i4 < this.f63977g.size(); i4++) {
                i3 += CodedOutputStream.m1802c(4, this.f63977g.get(i4));
            }
            int i5 = i3;
            if ((this.f63985p & 32) == 32) {
                i5 = i3 + CodedOutputStream.m1802c(5, this.f63978h);
            }
            int i6 = i5;
            for (int i7 = 0; i7 < this.f63980j.size(); i7++) {
                i6 += CodedOutputStream.m1802c(6, this.f63980j.get(i7));
            }
            int i8 = i6;
            if ((this.f63985p & 16) == 16) {
                i8 = i6 + CodedOutputStream.m1803c(7, this.f63976f);
            }
            int i9 = i8;
            if ((this.f63985p & 64) == 64) {
                i9 = i8 + CodedOutputStream.m1803c(8, this.f63979i);
            }
            int i10 = i9;
            if ((this.f63985p & 1) == 1) {
                i10 = i9 + CodedOutputStream.m1803c(9, this.f63972b);
            }
            int i11 = i10;
            if ((this.f63985p & 128) == 128) {
                i11 = i10 + CodedOutputStream.m1802c(30, this.f63981k);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.f63982l.size(); i13++) {
                i12 += CodedOutputStream.m1804c(this.f63982l.get(i13).intValue());
            }
            int size = i11 + i12 + (this.f63982l.size() * 2);
            int i14 = size;
            if ((this.f63985p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                i14 = size + CodedOutputStream.m1802c(32, this.f63983m);
            }
            int z = i14 + m1685z() + this.f63984o.mo1649a();
            this.f63987s = z;
            return z;
        }

        /* renamed from: g */
        public final boolean m3451g() {
            return (this.f63985p & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18743a.m3432g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18743a.m3432g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f63971n;
        }

        /* renamed from: k */
        public final boolean m3450k() {
            return (this.f63985p & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3449l() {
            return (this.f63985p & 16) == 16;
        }

        /* renamed from: m */
        public final boolean m3448m() {
            return (this.f63985p & 32) == 32;
        }

        /* renamed from: n */
        public final boolean m3447n() {
            return (this.f63985p & 64) == 64;
        }

        /* renamed from: o */
        public final boolean m3446o() {
            return (this.f63985p & 128) == 128;
        }

        /* renamed from: p */
        public final boolean m3445p() {
            return (this.f63985p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$i.class */
    public enum EnumC18744i implements C19692j.AbstractC19693a {
        DECLARATION(0, 0),
        FAKE_OVERRIDE(1, 1),
        DELEGATION(2, 2),
        SYNTHESIZED(3, 3);
        
        private static C19692j.AbstractC19694b<EnumC18744i> internalValueMap = new C19692j.AbstractC19694b<EnumC18744i>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.i.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
            /* renamed from: a */
            public final /* synthetic */ EnumC18744i mo1672a(int i) {
                return EnumC18744i.valueOf(i);
            }
        };
        private final int value;

        EnumC18744i(int i, int i2) {
            this.value = i2;
        }

        public static EnumC18744i valueOf(int i) {
            if (i != 0) {
                if (i == 1) {
                    return FAKE_OVERRIDE;
                }
                if (i == 2) {
                    return DELEGATION;
                }
                if (i == 3) {
                    return SYNTHESIZED;
                }
                return null;
            }
            return DECLARATION;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$j */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$j.class */
    public enum EnumC18746j implements C19692j.AbstractC19693a {
        FINAL(0, 0),
        OPEN(1, 1),
        ABSTRACT(2, 2),
        SEALED(3, 3);
        
        private static C19692j.AbstractC19694b<EnumC18746j> internalValueMap = new C19692j.AbstractC19694b<EnumC18746j>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.j.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
            /* renamed from: a */
            public final /* synthetic */ EnumC18746j mo1672a(int i) {
                return EnumC18746j.valueOf(i);
            }
        };
        private final int value;

        EnumC18746j(int i, int i2) {
            this.value = i2;
        }

        public static EnumC18746j valueOf(int i) {
            if (i != 0) {
                if (i == 1) {
                    return OPEN;
                }
                if (i == 2) {
                    return ABSTRACT;
                }
                if (i == 3) {
                    return SEALED;
                }
                return null;
            }
            return FINAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$k */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$k.class */
    public static final class C18748k extends AbstractC19683h.AbstractC19687c<C18748k> implements AbstractC18874m {

        /* renamed from: a */
        public static AbstractC19708r<C18748k> f64001a = new AbstractC19669b<C18748k>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.k.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18748k(c19676e, c19678f);
            }
        };

        /* renamed from: g */
        private static final C18748k f64002g;

        /* renamed from: b */
        public List<C18741h> f64003b;

        /* renamed from: c */
        public List<C18754m> f64004c;

        /* renamed from: d */
        public List<C18776q> f64005d;

        /* renamed from: e */
        public C18784s f64006e;

        /* renamed from: f */
        public C18797v f64007f;

        /* renamed from: h */
        private final AbstractC19673d f64008h;

        /* renamed from: i */
        private int f64009i;

        /* renamed from: j */
        private byte f64010j;

        /* renamed from: k */
        private int f64011k;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$k$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$k$a.class */
        public static final class C18750a extends AbstractC19683h.AbstractC19686b<C18748k, C18750a> implements AbstractC18874m {

            /* renamed from: b */
            private int f64012b;

            /* renamed from: c */
            private List<C18741h> f64013c = Collections.emptyList();

            /* renamed from: d */
            private List<C18754m> f64014d = Collections.emptyList();

            /* renamed from: e */
            private List<C18776q> f64015e = Collections.emptyList();

            /* renamed from: f */
            private C18784s f64016f = C18784s.m3153a();

            /* renamed from: g */
            private C18797v f64017g = C18797v.m3082a();

            private C18750a() {
            }

            /* renamed from: a */
            private C18750a m3408a(C18784s c18784s) {
                if ((this.f64012b & 8) != 8 || this.f64016f == C18784s.m3153a()) {
                    this.f64016f = c18784s;
                } else {
                    this.f64016f = C18784s.m3152a(this.f64016f).mo1702a(c18784s).m3141f();
                }
                this.f64012b |= 8;
                return this;
            }

            /* renamed from: a */
            private C18750a m3407a(C18797v c18797v) {
                if ((this.f64012b & 16) != 16 || this.f64017g == C18797v.m3082a()) {
                    this.f64017g = c18797v;
                } else {
                    this.f64017g = C18797v.m3081a(this.f64017g).mo1702a(c18797v).m3075f();
                }
                this.f64012b |= 16;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k.C18750a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$k> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k.f64001a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L20
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L20
                    kotlin.reflect.jvm.internal.impl.b.a$k r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L20
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$k$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L30
                L20:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$k r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L2b
                L2b:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L30:
                    r0 = r6
                    if (r0 == 0) goto L3a
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$k$a r0 = r0.mo1702a(r1)
                L3a:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k.C18750a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$k$a");
            }

            /* renamed from: h */
            static /* synthetic */ C18750a m3404h() {
                return new C18750a();
            }

            /* renamed from: i */
            public C18750a mo1697f() {
                return new C18750a().mo1702a(m3405g());
            }

            /* renamed from: l */
            private void m3402l() {
                if ((this.f64012b & 1) != 1) {
                    this.f64013c = new ArrayList(this.f64013c);
                    this.f64012b |= 1;
                }
            }

            /* renamed from: m */
            private void m3401m() {
                if ((this.f64012b & 2) != 2) {
                    this.f64014d = new ArrayList(this.f64014d);
                    this.f64012b |= 2;
                }
            }

            /* renamed from: n */
            private void m3400n() {
                if ((this.f64012b & 4) != 4) {
                    this.f64015e = new ArrayList(this.f64015e);
                    this.f64012b |= 4;
                }
            }

            /* renamed from: a */
            public final C18750a mo1702a(C18748k c18748k) {
                if (c18748k == C18748k.m3426a()) {
                    return this;
                }
                if (!c18748k.f64003b.isEmpty()) {
                    if (this.f64013c.isEmpty()) {
                        this.f64013c = c18748k.f64003b;
                        this.f64012b &= -2;
                    } else {
                        m3402l();
                        this.f64013c.addAll(c18748k.f64003b);
                    }
                }
                if (!c18748k.f64004c.isEmpty()) {
                    if (this.f64014d.isEmpty()) {
                        this.f64014d = c18748k.f64004c;
                        this.f64012b &= -3;
                    } else {
                        m3401m();
                        this.f64014d.addAll(c18748k.f64004c);
                    }
                }
                if (!c18748k.f64005d.isEmpty()) {
                    if (this.f64015e.isEmpty()) {
                        this.f64015e = c18748k.f64005d;
                        this.f64012b &= -5;
                    } else {
                        m3400n();
                        this.f64015e.addAll(c18748k.f64005d);
                    }
                }
                if (c18748k.m3417c()) {
                    m3408a(c18748k.f64006e);
                }
                if (c18748k.m3414d()) {
                    m3407a(c18748k.f64007f);
                }
                m1700a((C18750a) c18748k);
                this.f65839a = this.f65839a.m1769a(c18748k.f64008h);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18748k.m3426a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18748k m3405g = m3405g();
                if (m3405g.mo1655e()) {
                    return m3405g;
                }
                throw m1778a((AbstractC19705p) m3405g);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f64013c.size(); i++) {
                    if (!this.f64013c.get(i).mo1655e()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < this.f64014d.size(); i2++) {
                    if (!this.f64014d.get(i2).mo1655e()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < this.f64015e.size(); i3++) {
                    if (!this.f64015e.get(i3).mo1655e()) {
                        return false;
                    }
                }
                return (!((this.f64012b & 8) == 8) || this.f64016f.mo1655e()) && m1696k();
            }

            /* renamed from: g */
            public final C18748k m3405g() {
                C18748k c18748k = new C18748k(this);
                int i = this.f64012b;
                int i2 = 1;
                if ((i & 1) == 1) {
                    this.f64013c = Collections.unmodifiableList(this.f64013c);
                    this.f64012b &= -2;
                }
                c18748k.f64003b = this.f64013c;
                if ((this.f64012b & 2) == 2) {
                    this.f64014d = Collections.unmodifiableList(this.f64014d);
                    this.f64012b &= -3;
                }
                c18748k.f64004c = this.f64014d;
                if ((this.f64012b & 4) == 4) {
                    this.f64015e = Collections.unmodifiableList(this.f64015e);
                    this.f64012b &= -5;
                }
                c18748k.f64005d = this.f64015e;
                if ((i & 8) != 8) {
                    i2 = 0;
                }
                c18748k.f64006e = this.f64016f;
                int i3 = i2;
                if ((i & 16) == 16) {
                    i3 = i2 | 2;
                }
                c18748k.f64007f = this.f64017g;
                c18748k.f64009i = i3;
                return c18748k;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18748k.m3426a();
            }
        }

        static {
            C18748k c18748k = new C18748k(true);
            f64002g = c18748k;
            c18748k.m3410k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18748k(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64010j = (byte) (-1);
            this.f64011k = -1;
            m3410k();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 26) {
                                boolean z4 = z2;
                                if (!(z2 & true)) {
                                    boolean z5 = z2;
                                    boolean z6 = z2;
                                    this.f64003b = new ArrayList();
                                    z4 = z2 | true;
                                }
                                this.f64003b.add(c19676e.m1753a(C18741h.f63970a, c19678f));
                                z2 = z4;
                            } else if (m1759a == 34) {
                                boolean z7 = z2;
                                if (!(z2 & true)) {
                                    boolean z8 = z2;
                                    boolean z9 = z2;
                                    this.f64004c = new ArrayList();
                                    z7 = z2 | true;
                                }
                                this.f64004c.add(c19676e.m1753a(C18754m.f64033a, c19678f));
                                z2 = z7;
                            } else if (m1759a != 42) {
                                C18797v.C18799a c18799a = null;
                                if (m1759a == 242) {
                                    C18784s.C18786a c18786a = null;
                                    if ((this.f64009i & 1) == 1) {
                                        boolean z10 = z2;
                                        c18786a = C18784s.m3152a(this.f64006e);
                                    }
                                    boolean z11 = z2;
                                    C18784s c18784s = (C18784s) c19676e.m1753a(C18784s.f64188a, c19678f);
                                    boolean z12 = z2;
                                    this.f64006e = c18784s;
                                    if (c18786a != null) {
                                        c18786a.mo1702a(c18784s);
                                        boolean z13 = z2;
                                        this.f64006e = c18786a.m3141f();
                                    }
                                    boolean z14 = z2;
                                    this.f64009i |= 1;
                                } else if (m1759a == 258) {
                                    if ((this.f64009i & 2) == 2) {
                                        boolean z15 = z2;
                                        c18799a = C18797v.m3081a(this.f64007f);
                                    }
                                    boolean z16 = z2;
                                    C18797v c18797v = (C18797v) c19676e.m1753a(C18797v.f64237a, c19678f);
                                    boolean z17 = z2;
                                    this.f64007f = c18797v;
                                    if (c18799a != null) {
                                        c18799a.mo1702a(c18797v);
                                        boolean z18 = z2;
                                        this.f64007f = c18799a.m3075f();
                                    }
                                    boolean z19 = z2;
                                    this.f64009i |= 2;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            } else {
                                boolean z20 = z2;
                                if (!(z2 & true)) {
                                    boolean z21 = z2;
                                    boolean z22 = z2;
                                    this.f64005d = new ArrayList();
                                    z20 = z2 | true;
                                }
                                this.f64005d.add(c19676e.m1753a(C18776q.f64142a, c19678f));
                                z2 = z20;
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f64003b = Collections.unmodifiableList(this.f64003b);
                        }
                        if (z3 & true) {
                            this.f64004c = Collections.unmodifiableList(this.f64004c);
                        }
                        if (z3 & true) {
                            this.f64005d = Collections.unmodifiableList(this.f64005d);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64008h = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64008h = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f64003b = Collections.unmodifiableList(this.f64003b);
            }
            if (z2 & true) {
                this.f64004c = Collections.unmodifiableList(this.f64004c);
            }
            if (z2 & true) {
                this.f64005d = Collections.unmodifiableList(this.f64005d);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64008h = m1763h.m1762a();
                throw th3;
            }
            this.f64008h = m1763h.m1762a();
            mo1688w();
        }

        private C18748k(AbstractC19683h.AbstractC19686b<C18748k, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64010j = (byte) (-1);
            this.f64011k = -1;
            this.f64008h = abstractC19686b.f65839a;
        }

        private C18748k(boolean z) {
            this.f64010j = (byte) (-1);
            this.f64011k = -1;
            this.f64008h = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18750a m3424a(C18748k c18748k) {
            return C18750a.m3404h().mo1702a(c18748k);
        }

        /* renamed from: a */
        public static C18748k m3426a() {
            return f64002g;
        }

        /* renamed from: a */
        public static C18748k m3425a(InputStream inputStream, C19678f c19678f) throws IOException {
            return f64001a.mo1650b(inputStream, c19678f);
        }

        /* renamed from: k */
        private void m3410k() {
            this.f64003b = Collections.emptyList();
            this.f64004c = Collections.emptyList();
            this.f64005d = Collections.emptyList();
            this.f64006e = C18784s.m3153a();
            this.f64007f = C18797v.m3082a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            for (int i2 = 0; i2 < this.f64003b.size(); i2++) {
                codedOutputStream.m1825a(3, this.f64003b.get(i2));
            }
            int i3 = 0;
            while (true) {
                if (i3 < this.f64004c.size()) {
                    codedOutputStream.m1825a(4, this.f64004c.get(i3));
                    i3++;
                }
            }
            for (i = 0; i < this.f64005d.size(); i++) {
                codedOutputStream.m1825a(5, this.f64005d.get(i));
            }
            if ((this.f64009i & 1) == 1) {
                codedOutputStream.m1825a(30, this.f64006e);
            }
            if ((this.f64009i & 2) == 2) {
                codedOutputStream.m1825a(32, this.f64007f);
            }
            y.m1684a(200, codedOutputStream);
            codedOutputStream.m1796d(this.f64008h);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18748k> mo1661b() {
            return f64001a;
        }

        /* renamed from: c */
        public final boolean m3417c() {
            return (this.f64009i & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3414d() {
            return (this.f64009i & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64010j;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < this.f64003b.size(); i++) {
                if (!this.f64003b.get(i).mo1655e()) {
                    this.f64010j = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < this.f64004c.size(); i2++) {
                if (!this.f64004c.get(i2).mo1655e()) {
                    this.f64010j = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < this.f64005d.size(); i3++) {
                if (!this.f64005d.get(i3).mo1655e()) {
                    this.f64010j = (byte) 0;
                    return false;
                }
            }
            if (m3417c() && !this.f64006e.mo1655e()) {
                this.f64010j = (byte) 0;
                return false;
            } else if (!m1687x()) {
                this.f64010j = (byte) 0;
                return false;
            } else {
                this.f64010j = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i;
            int i2;
            int i3 = this.f64011k;
            if (i3 != -1) {
                return i3;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.f64003b.size(); i5++) {
                i4 += CodedOutputStream.m1802c(3, this.f64003b.get(i5));
            }
            int i6 = 0;
            while (true) {
                i2 = i4;
                if (i6 < this.f64004c.size()) {
                    i4 += CodedOutputStream.m1802c(4, this.f64004c.get(i6));
                    i6++;
                }
            }
            for (i = 0; i < this.f64005d.size(); i++) {
                i2 += CodedOutputStream.m1802c(5, this.f64005d.get(i));
            }
            int i7 = i2;
            if ((this.f64009i & 1) == 1) {
                i7 = i2 + CodedOutputStream.m1802c(30, this.f64006e);
            }
            int i8 = i7;
            if ((this.f64009i & 2) == 2) {
                i8 = i7 + CodedOutputStream.m1802c(32, this.f64007f);
            }
            int z = i8 + m1685z() + this.f64008h.mo1649a();
            this.f64011k = z;
            return z;
        }

        /* renamed from: g */
        public final C18750a mo1659h() {
            return C18750a.m3404h().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18750a.m3404h();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64002g;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$l */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$l.class */
    public static final class C18751l extends AbstractC19683h.AbstractC19687c<C18751l> implements AbstractC18873l {

        /* renamed from: a */
        public static AbstractC19708r<C18751l> f64018a = new AbstractC19669b<C18751l>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.l.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18751l(c19676e, c19678f);
            }
        };

        /* renamed from: f */
        private static final C18751l f64019f;

        /* renamed from: b */
        public C18765o f64020b;

        /* renamed from: c */
        public C18757n f64021c;

        /* renamed from: d */
        public C18748k f64022d;

        /* renamed from: e */
        public List<C18715b> f64023e;

        /* renamed from: g */
        private final AbstractC19673d f64024g;

        /* renamed from: h */
        private int f64025h;

        /* renamed from: i */
        private byte f64026i;

        /* renamed from: j */
        private int f64027j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$l$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$l$a.class */
        public static final class C18753a extends AbstractC19683h.AbstractC19686b<C18751l, C18753a> implements AbstractC18873l {

            /* renamed from: b */
            private int f64028b;

            /* renamed from: c */
            private C18765o f64029c = C18765o.m3302a();

            /* renamed from: d */
            private C18757n f64030d = C18757n.m3332a();

            /* renamed from: e */
            private C18748k f64031e = C18748k.m3426a();

            /* renamed from: f */
            private List<C18715b> f64032f = Collections.emptyList();

            private C18753a() {
            }

            /* renamed from: a */
            private C18753a m3386a(C18748k c18748k) {
                if ((this.f64028b & 4) != 4 || this.f64031e == C18748k.m3426a()) {
                    this.f64031e = c18748k;
                } else {
                    this.f64031e = C18748k.m3424a(this.f64031e).mo1702a(c18748k).m3405g();
                }
                this.f64028b |= 4;
                return this;
            }

            /* renamed from: a */
            private C18753a m3384a(C18757n c18757n) {
                if ((this.f64028b & 2) != 2 || this.f64030d == C18757n.m3332a()) {
                    this.f64030d = c18757n;
                } else {
                    this.f64030d = C18757n.m3330a(this.f64030d).mo1702a(c18757n).m3324f();
                }
                this.f64028b |= 2;
                return this;
            }

            /* renamed from: a */
            private C18753a m3383a(C18765o c18765o) {
                if ((this.f64028b & 1) != 1 || this.f64029c == C18765o.m3302a()) {
                    this.f64029c = c18765o;
                } else {
                    this.f64029c = C18765o.m3300a(this.f64029c).mo1702a(c18765o).m3294f();
                }
                this.f64028b |= 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18751l.C18753a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$l> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18751l.f64018a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$l r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18751l) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$l$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$l r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18751l) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$l$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18751l.C18753a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$l$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18753a m3381g() {
                return new C18753a();
            }

            /* renamed from: h */
            public C18753a mo1697f() {
                return new C18753a().mo1702a(m3379i());
            }

            /* renamed from: i */
            private C18751l m3379i() {
                C18751l c18751l = new C18751l(this);
                int i = this.f64028b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18751l.f64020b = this.f64029c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18751l.f64021c = this.f64030d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18751l.f64022d = this.f64031e;
                if ((this.f64028b & 8) == 8) {
                    this.f64032f = Collections.unmodifiableList(this.f64032f);
                    this.f64028b &= -9;
                }
                c18751l.f64023e = this.f64032f;
                c18751l.f64025h = i4;
                return c18751l;
            }

            /* renamed from: l */
            private void m3378l() {
                if ((this.f64028b & 8) != 8) {
                    this.f64032f = new ArrayList(this.f64032f);
                    this.f64028b |= 8;
                }
            }

            /* renamed from: a */
            public final C18753a mo1702a(C18751l c18751l) {
                if (c18751l == C18751l.m3399a()) {
                    return this;
                }
                if (c18751l.m3390c()) {
                    m3383a(c18751l.f64020b);
                }
                if (c18751l.m3389d()) {
                    m3384a(c18751l.f64021c);
                }
                if (c18751l.m3388g()) {
                    m3386a(c18751l.f64022d);
                }
                if (!c18751l.f64023e.isEmpty()) {
                    if (this.f64032f.isEmpty()) {
                        this.f64032f = c18751l.f64023e;
                        this.f64028b &= -9;
                    } else {
                        m3378l();
                        this.f64032f.addAll(c18751l.f64023e);
                    }
                }
                m1700a((C18753a) c18751l);
                this.f65839a = this.f65839a.m1769a(c18751l.f64024g);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18751l.m3399a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18751l m3379i = m3379i();
                if (m3379i.mo1655e()) {
                    return m3379i;
                }
                throw m1778a((AbstractC19705p) m3379i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                if (!((this.f64028b & 2) == 2) || this.f64030d.mo1655e()) {
                    if (((this.f64028b & 4) == 4) && !this.f64031e.mo1655e()) {
                        return false;
                    }
                    for (int i = 0; i < this.f64032f.size(); i++) {
                        if (!this.f64032f.get(i).mo1655e()) {
                            return false;
                        }
                    }
                    return m1696k();
                }
                return false;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18751l.m3399a();
            }
        }

        static {
            C18751l c18751l = new C18751l(true);
            f64019f = c18751l;
            c18751l.m3387k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18751l(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64026i = (byte) (-1);
            this.f64027j = -1;
            m3387k();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            C18748k.C18750a c18750a = null;
                            if (m1759a == 10) {
                                C18765o.C18767a c18767a = null;
                                if ((this.f64025h & 1) == 1) {
                                    boolean z4 = z2;
                                    c18767a = C18765o.m3300a(this.f64020b);
                                }
                                boolean z5 = z2;
                                C18765o c18765o = (C18765o) c19676e.m1753a(C18765o.f64085a, c19678f);
                                boolean z6 = z2;
                                this.f64020b = c18765o;
                                if (c18767a != null) {
                                    c18767a.mo1702a(c18765o);
                                    boolean z7 = z2;
                                    this.f64020b = c18767a.m3294f();
                                }
                                boolean z8 = z2;
                                this.f64025h |= 1;
                            } else if (m1759a == 18) {
                                C18757n.C18759a c18759a = null;
                                if ((this.f64025h & 2) == 2) {
                                    boolean z9 = z2;
                                    c18759a = C18757n.m3330a(this.f64021c);
                                }
                                boolean z10 = z2;
                                C18757n c18757n = (C18757n) c19676e.m1753a(C18757n.f64064a, c19678f);
                                boolean z11 = z2;
                                this.f64021c = c18757n;
                                if (c18759a != null) {
                                    c18759a.mo1702a(c18757n);
                                    boolean z12 = z2;
                                    this.f64021c = c18759a.m3324f();
                                }
                                boolean z13 = z2;
                                this.f64025h |= 2;
                            } else if (m1759a == 26) {
                                if ((this.f64025h & 4) == 4) {
                                    boolean z14 = z2;
                                    c18750a = this.f64022d.mo1659h();
                                }
                                boolean z15 = z2;
                                C18748k c18748k = (C18748k) c19676e.m1753a(C18748k.f64001a, c19678f);
                                boolean z16 = z2;
                                this.f64022d = c18748k;
                                if (c18750a != null) {
                                    c18750a.mo1702a(c18748k);
                                    boolean z17 = z2;
                                    this.f64022d = c18750a.m3405g();
                                }
                                boolean z18 = z2;
                                this.f64025h |= 4;
                            } else if (m1759a == 34) {
                                boolean z19 = z2;
                                if (!(z2 & true)) {
                                    boolean z20 = z2;
                                    boolean z21 = z2;
                                    this.f64023e = new ArrayList();
                                    z19 = z2 | true;
                                }
                                this.f64023e.add(c19676e.m1753a(C18715b.f63862a, c19678f));
                                z2 = z19;
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f64023e = Collections.unmodifiableList(this.f64023e);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64024g = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64024g = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f64023e = Collections.unmodifiableList(this.f64023e);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64024g = m1763h.m1762a();
                throw th3;
            }
            this.f64024g = m1763h.m1762a();
            mo1688w();
        }

        private C18751l(AbstractC19683h.AbstractC19686b<C18751l, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64026i = (byte) (-1);
            this.f64027j = -1;
            this.f64024g = abstractC19686b.f65839a;
        }

        private C18751l(boolean z) {
            this.f64026i = (byte) (-1);
            this.f64027j = -1;
            this.f64024g = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18751l m3399a() {
            return f64019f;
        }

        /* renamed from: a */
        public static C18751l m3398a(InputStream inputStream, C19678f c19678f) throws IOException {
            return f64018a.mo1650b(inputStream, c19678f);
        }

        /* renamed from: k */
        private void m3387k() {
            this.f64020b = C18765o.m3302a();
            this.f64021c = C18757n.m3332a();
            this.f64022d = C18748k.m3426a();
            this.f64023e = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f64025h & 1) == 1) {
                codedOutputStream.m1825a(1, this.f64020b);
            }
            if ((this.f64025h & 2) == 2) {
                codedOutputStream.m1825a(2, this.f64021c);
            }
            if ((this.f64025h & 4) == 4) {
                codedOutputStream.m1825a(3, this.f64022d);
            }
            for (int i = 0; i < this.f64023e.size(); i++) {
                codedOutputStream.m1825a(4, this.f64023e.get(i));
            }
            y.m1684a(200, codedOutputStream);
            codedOutputStream.m1796d(this.f64024g);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18751l> mo1661b() {
            return f64018a;
        }

        /* renamed from: c */
        public final boolean m3390c() {
            return (this.f64025h & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3389d() {
            return (this.f64025h & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64026i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (m3389d() && !this.f64021c.mo1655e()) {
                this.f64026i = (byte) 0;
                return false;
            } else if (m3388g() && !this.f64022d.mo1655e()) {
                this.f64026i = (byte) 0;
                return false;
            } else {
                for (int i = 0; i < this.f64023e.size(); i++) {
                    if (!this.f64023e.get(i).mo1655e()) {
                        this.f64026i = (byte) 0;
                        return false;
                    }
                }
                if (!m1687x()) {
                    this.f64026i = (byte) 0;
                    return false;
                }
                this.f64026i = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64027j;
            if (i != -1) {
                return i;
            }
            int m1802c = (this.f64025h & 1) == 1 ? CodedOutputStream.m1802c(1, this.f64020b) + 0 : 0;
            int i2 = m1802c;
            if ((this.f64025h & 2) == 2) {
                i2 = m1802c + CodedOutputStream.m1802c(2, this.f64021c);
            }
            int i3 = i2;
            int i4 = 0;
            if ((this.f64025h & 4) == 4) {
                i3 = i2 + CodedOutputStream.m1802c(3, this.f64022d);
                i4 = 0;
            }
            while (i4 < this.f64023e.size()) {
                i3 += CodedOutputStream.m1802c(4, this.f64023e.get(i4));
                i4++;
            }
            int z = i3 + m1685z() + this.f64024g.mo1649a();
            this.f64027j = z;
            return z;
        }

        /* renamed from: g */
        public final boolean m3388g() {
            return (this.f64025h & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18753a.m3381g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18753a.m3381g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64019f;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$m */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$m.class */
    public static final class C18754m extends AbstractC19683h.AbstractC19687c<C18754m> implements AbstractC18875n {

        /* renamed from: a */
        public static AbstractC19708r<C18754m> f64033a = new AbstractC19669b<C18754m>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.m.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18754m(c19676e, c19678f);
            }
        };

        /* renamed from: n */
        private static final C18754m f64034n;

        /* renamed from: b */
        public int f64035b;

        /* renamed from: c */
        public int f64036c;

        /* renamed from: d */
        public int f64037d;

        /* renamed from: e */
        public C18768p f64038e;

        /* renamed from: f */
        public int f64039f;

        /* renamed from: g */
        public List<C18779r> f64040g;

        /* renamed from: h */
        public C18768p f64041h;

        /* renamed from: i */
        public int f64042i;

        /* renamed from: j */
        public C18787t f64043j;

        /* renamed from: k */
        public int f64044k;

        /* renamed from: l */
        public int f64045l;

        /* renamed from: m */
        public List<Integer> f64046m;

        /* renamed from: o */
        private final AbstractC19673d f64047o;

        /* renamed from: p */
        private int f64048p;

        /* renamed from: q */
        private byte f64049q;

        /* renamed from: s */
        private int f64050s;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$m$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$m$a.class */
        public static final class C18756a extends AbstractC19683h.AbstractC19686b<C18754m, C18756a> implements AbstractC18875n {

            /* renamed from: b */
            private int f64051b;

            /* renamed from: e */
            private int f64054e;

            /* renamed from: g */
            private int f64056g;

            /* renamed from: j */
            private int f64059j;

            /* renamed from: l */
            private int f64061l;

            /* renamed from: m */
            private int f64062m;

            /* renamed from: c */
            private int f64052c = 518;

            /* renamed from: d */
            private int f64053d = 2054;

            /* renamed from: f */
            private C18768p f64055f = C18768p.m3289a();

            /* renamed from: h */
            private List<C18779r> f64057h = Collections.emptyList();

            /* renamed from: i */
            private C18768p f64058i = C18768p.m3289a();

            /* renamed from: k */
            private C18787t f64060k = C18787t.m3137a();

            /* renamed from: n */
            private List<Integer> f64063n = Collections.emptyList();

            private C18756a() {
            }

            /* renamed from: a */
            private C18756a m3349a(int i) {
                this.f64051b |= 1;
                this.f64052c = i;
                return this;
            }

            /* renamed from: a */
            private C18756a m3347a(C18768p c18768p) {
                if ((this.f64051b & 8) != 8 || this.f64055f == C18768p.m3289a()) {
                    this.f64055f = c18768p;
                } else {
                    this.f64055f = C18768p.m3288a(this.f64055f).mo1702a(c18768p).m3223h();
                }
                this.f64051b |= 8;
                return this;
            }

            /* renamed from: a */
            private C18756a m3346a(C18787t c18787t) {
                if ((this.f64051b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256 || this.f64060k == C18787t.m3137a()) {
                    this.f64060k = c18787t;
                } else {
                    this.f64060k = C18787t.m3136a(this.f64060k).mo1702a(c18787t).m3112g();
                }
                this.f64051b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                return this;
            }

            /* renamed from: b */
            private C18756a m3345b(int i) {
                this.f64051b |= 2;
                this.f64053d = i;
                return this;
            }

            /* renamed from: b */
            private C18756a m3344b(C18768p c18768p) {
                if ((this.f64051b & 64) != 64 || this.f64058i == C18768p.m3289a()) {
                    this.f64058i = c18768p;
                } else {
                    this.f64058i = C18768p.m3288a(this.f64058i).mo1702a(c18768p).m3223h();
                }
                this.f64051b |= 64;
                return this;
            }

            /* renamed from: c */
            private C18756a m3343c(int i) {
                this.f64051b |= 4;
                this.f64054e = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m.C18756a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$m> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m.f64033a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$m r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$m$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$m r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$m$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m.C18756a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$m$a");
            }

            /* renamed from: d */
            private C18756a m3341d(int i) {
                this.f64051b |= 16;
                this.f64056g = i;
                return this;
            }

            /* renamed from: e */
            private C18756a m3340e(int i) {
                this.f64051b |= 128;
                this.f64059j = i;
                return this;
            }

            /* renamed from: f */
            private C18756a m3339f(int i) {
                this.f64051b |= 512;
                this.f64061l = i;
                return this;
            }

            /* renamed from: g */
            static /* synthetic */ C18756a m3338g() {
                return new C18756a();
            }

            /* renamed from: g */
            private C18756a m3337g(int i) {
                this.f64051b |= 1024;
                this.f64062m = i;
                return this;
            }

            /* renamed from: h */
            public C18756a mo1697f() {
                return new C18756a().mo1702a(m3335i());
            }

            /* renamed from: i */
            private C18754m m3335i() {
                C18754m c18754m = new C18754m(this);
                int i = this.f64051b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18754m.f64035b = this.f64052c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18754m.f64036c = this.f64053d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18754m.f64037d = this.f64054e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18754m.f64038e = this.f64055f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                c18754m.f64039f = this.f64056g;
                if ((this.f64051b & 32) == 32) {
                    this.f64057h = Collections.unmodifiableList(this.f64057h);
                    this.f64051b &= -33;
                }
                c18754m.f64040g = this.f64057h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                c18754m.f64041h = this.f64058i;
                int i8 = i7;
                if ((i & 128) == 128) {
                    i8 = i7 | 64;
                }
                c18754m.f64042i = this.f64059j;
                int i9 = i8;
                if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    i9 = i8 | 128;
                }
                c18754m.f64043j = this.f64060k;
                int i10 = i9;
                if ((i & 512) == 512) {
                    i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                c18754m.f64044k = this.f64061l;
                int i11 = i10;
                if ((i & 1024) == 1024) {
                    i11 = i10 | 512;
                }
                c18754m.f64045l = this.f64062m;
                if ((this.f64051b & 2048) == 2048) {
                    this.f64063n = Collections.unmodifiableList(this.f64063n);
                    this.f64051b &= -2049;
                }
                c18754m.f64046m = this.f64063n;
                c18754m.f64048p = i11;
                return c18754m;
            }

            /* renamed from: l */
            private void m3334l() {
                if ((this.f64051b & 32) != 32) {
                    this.f64057h = new ArrayList(this.f64057h);
                    this.f64051b |= 32;
                }
            }

            /* renamed from: m */
            private void m3333m() {
                if ((this.f64051b & 2048) != 2048) {
                    this.f64063n = new ArrayList(this.f64063n);
                    this.f64051b |= 2048;
                }
            }

            /* renamed from: a */
            public final C18756a mo1702a(C18754m c18754m) {
                if (c18754m == C18754m.m3377a()) {
                    return this;
                }
                if (c18754m.m3367c()) {
                    m3349a(c18754m.f64035b);
                }
                if (c18754m.m3364d()) {
                    m3345b(c18754m.f64036c);
                }
                if (c18754m.m3360g()) {
                    m3343c(c18754m.f64037d);
                }
                if (c18754m.m3357k()) {
                    m3347a(c18754m.f64038e);
                }
                if (c18754m.m3356l()) {
                    m3341d(c18754m.f64039f);
                }
                if (!c18754m.f64040g.isEmpty()) {
                    if (this.f64057h.isEmpty()) {
                        this.f64057h = c18754m.f64040g;
                        this.f64051b &= -33;
                    } else {
                        m3334l();
                        this.f64057h.addAll(c18754m.f64040g);
                    }
                }
                if (c18754m.m3355m()) {
                    m3344b(c18754m.f64041h);
                }
                if (c18754m.m3354n()) {
                    m3340e(c18754m.f64042i);
                }
                if (c18754m.m3353o()) {
                    m3346a(c18754m.f64043j);
                }
                if (c18754m.m3352p()) {
                    m3339f(c18754m.f64044k);
                }
                if (c18754m.m3351q()) {
                    m3337g(c18754m.f64045l);
                }
                if (!c18754m.f64046m.isEmpty()) {
                    if (this.f64063n.isEmpty()) {
                        this.f64063n = c18754m.f64046m;
                        this.f64051b &= -2049;
                    } else {
                        m3333m();
                        this.f64063n.addAll(c18754m.f64046m);
                    }
                }
                m1700a((C18756a) c18754m);
                this.f65839a = this.f65839a.m1769a(c18754m.f64047o);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18754m.m3377a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18754m m3335i = m3335i();
                if (m3335i.mo1655e()) {
                    return m3335i;
                }
                throw m1778a((AbstractC19705p) m3335i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                int i = this.f64051b;
                if (!((i & 4) == 4)) {
                    return false;
                }
                if (((i & 8) == 8) && !this.f64055f.mo1655e()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.f64057h.size(); i2++) {
                    if (!this.f64057h.get(i2).mo1655e()) {
                        return false;
                    }
                }
                if (((this.f64051b & 64) == 64) && !this.f64058i.mo1655e()) {
                    return false;
                }
                return (!((this.f64051b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) || this.f64060k.mo1655e()) && m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18754m.m3377a();
            }
        }

        static {
            C18754m c18754m = new C18754m(true);
            f64034n = c18754m;
            c18754m.m3350r();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18754m(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64049q = (byte) (-1);
            this.f64050s = -1;
            m3350r();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            C18787t.C18789a c18789a = null;
                            switch (m1759a) {
                                case 0:
                                    break;
                                case 8:
                                    this.f64048p |= 2;
                                    boolean z4 = z2;
                                    this.f64036c = c19676e.m1748d();
                                    continue;
                                case 16:
                                    this.f64048p |= 4;
                                    boolean z5 = z2;
                                    this.f64037d = c19676e.m1748d();
                                    continue;
                                case 26:
                                    C18768p.C18775b c18775b = null;
                                    if ((this.f64048p & 8) == 8) {
                                        boolean z6 = z2;
                                        c18775b = C18768p.m3288a(this.f64038e);
                                    }
                                    boolean z7 = z2;
                                    C18768p c18768p = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                    boolean z8 = z2;
                                    this.f64038e = c18768p;
                                    if (c18775b != null) {
                                        c18775b.mo1702a(c18768p);
                                        boolean z9 = z2;
                                        this.f64038e = c18775b.m3223h();
                                    }
                                    boolean z10 = z2;
                                    this.f64048p |= 8;
                                    continue;
                                case 34:
                                    boolean z11 = z2;
                                    if (!(z2 & true)) {
                                        boolean z12 = z2;
                                        boolean z13 = z2;
                                        this.f64040g = new ArrayList();
                                        z11 = z2 | true;
                                    }
                                    this.f64040g.add(c19676e.m1753a(C18779r.f64167a, c19678f));
                                    z2 = z11;
                                    continue;
                                case 42:
                                    C18768p.C18775b c18775b2 = null;
                                    if ((this.f64048p & 32) == 32) {
                                        boolean z14 = z2;
                                        c18775b2 = C18768p.m3288a(this.f64041h);
                                    }
                                    boolean z15 = z2;
                                    C18768p c18768p2 = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                    boolean z16 = z2;
                                    this.f64041h = c18768p2;
                                    if (c18775b2 != null) {
                                        c18775b2.mo1702a(c18768p2);
                                        boolean z17 = z2;
                                        this.f64041h = c18775b2.m3223h();
                                    }
                                    boolean z18 = z2;
                                    this.f64048p |= 32;
                                    continue;
                                case 50:
                                    if ((this.f64048p & 128) == 128) {
                                        boolean z19 = z2;
                                        c18789a = C18787t.m3136a(this.f64043j);
                                    }
                                    boolean z20 = z2;
                                    C18787t c18787t = (C18787t) c19676e.m1753a(C18787t.f64199a, c19678f);
                                    boolean z21 = z2;
                                    this.f64043j = c18787t;
                                    if (c18789a != null) {
                                        c18789a.mo1702a(c18787t);
                                        boolean z22 = z2;
                                        this.f64043j = c18789a.m3112g();
                                    }
                                    boolean z23 = z2;
                                    this.f64048p |= 128;
                                    continue;
                                case 56:
                                    this.f64048p |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                    boolean z24 = z2;
                                    this.f64044k = c19676e.m1748d();
                                    continue;
                                case 64:
                                    this.f64048p |= 512;
                                    boolean z25 = z2;
                                    this.f64045l = c19676e.m1748d();
                                    continue;
                                case 72:
                                    this.f64048p |= 16;
                                    boolean z26 = z2;
                                    this.f64039f = c19676e.m1748d();
                                    continue;
                                case 80:
                                    this.f64048p |= 64;
                                    boolean z27 = z2;
                                    this.f64042i = c19676e.m1748d();
                                    continue;
                                case 88:
                                    this.f64048p |= 1;
                                    boolean z28 = z2;
                                    this.f64035b = c19676e.m1748d();
                                    continue;
                                case 248:
                                    boolean z29 = z2;
                                    if (!(z2 & true)) {
                                        boolean z30 = z2;
                                        boolean z31 = z2;
                                        this.f64046m = new ArrayList();
                                        z29 = z2 | true;
                                    }
                                    this.f64046m.add(Integer.valueOf(c19676e.m1748d()));
                                    z2 = z29;
                                    continue;
                                case 250:
                                    int m1751b = c19676e.m1751b(c19676e.m1748d());
                                    boolean z32 = z2;
                                    if (!(z2 & true)) {
                                        z32 = z2;
                                        if (c19676e.m1740h() > 0) {
                                            boolean z33 = z2;
                                            boolean z34 = z2;
                                            boolean z35 = z2;
                                            this.f64046m = new ArrayList();
                                            z32 = z2 | true;
                                        }
                                    }
                                    while (c19676e.m1740h() > 0) {
                                        boolean z36 = z32;
                                        this.f64046m.add(Integer.valueOf(c19676e.m1748d()));
                                    }
                                    c19676e.m1749c(m1751b);
                                    z2 = z32;
                                    continue;
                                default:
                                    if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                        break;
                                    } else {
                                        continue;
                                    }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64040g = Collections.unmodifiableList(this.f64040g);
                    }
                    if (z3 & true) {
                        this.f64046m = Collections.unmodifiableList(this.f64046m);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64047o = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64047o = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64040g = Collections.unmodifiableList(this.f64040g);
            }
            if (z2 & true) {
                this.f64046m = Collections.unmodifiableList(this.f64046m);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64047o = m1763h.m1762a();
                throw th3;
            }
            this.f64047o = m1763h.m1762a();
            mo1688w();
        }

        private C18754m(AbstractC19683h.AbstractC19686b<C18754m, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64049q = (byte) (-1);
            this.f64050s = -1;
            this.f64047o = abstractC19686b.f65839a;
        }

        private C18754m(boolean z) {
            this.f64049q = (byte) (-1);
            this.f64050s = -1;
            this.f64047o = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18754m m3377a() {
            return f64034n;
        }

        /* renamed from: r */
        private void m3350r() {
            this.f64035b = 518;
            this.f64036c = 2054;
            this.f64037d = 0;
            this.f64038e = C18768p.m3289a();
            this.f64039f = 0;
            this.f64040g = Collections.emptyList();
            this.f64041h = C18768p.m3289a();
            this.f64042i = 0;
            this.f64043j = C18787t.m3137a();
            this.f64044k = 0;
            this.f64045l = 0;
            this.f64046m = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f64048p & 2) == 2) {
                codedOutputStream.m1827a(1, this.f64036c);
            }
            if ((this.f64048p & 4) == 4) {
                codedOutputStream.m1827a(2, this.f64037d);
            }
            if ((this.f64048p & 8) == 8) {
                codedOutputStream.m1825a(3, this.f64038e);
            }
            for (int i = 0; i < this.f64040g.size(); i++) {
                codedOutputStream.m1825a(4, this.f64040g.get(i));
            }
            if ((this.f64048p & 32) == 32) {
                codedOutputStream.m1825a(5, this.f64041h);
            }
            if ((this.f64048p & 128) == 128) {
                codedOutputStream.m1825a(6, this.f64043j);
            }
            if ((this.f64048p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                codedOutputStream.m1827a(7, this.f64044k);
            }
            if ((this.f64048p & 512) == 512) {
                codedOutputStream.m1827a(8, this.f64045l);
            }
            if ((this.f64048p & 16) == 16) {
                codedOutputStream.m1827a(9, this.f64039f);
            }
            if ((this.f64048p & 64) == 64) {
                codedOutputStream.m1827a(10, this.f64042i);
            }
            int i2 = 0;
            if ((this.f64048p & 1) == 1) {
                codedOutputStream.m1827a(11, this.f64035b);
                i2 = 0;
            }
            while (i2 < this.f64046m.size()) {
                codedOutputStream.m1827a(31, this.f64046m.get(i2).intValue());
                i2++;
            }
            y.m1684a(19000, codedOutputStream);
            codedOutputStream.m1796d(this.f64047o);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18754m> mo1661b() {
            return f64033a;
        }

        /* renamed from: c */
        public final boolean m3367c() {
            return (this.f64048p & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3364d() {
            return (this.f64048p & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64049q;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3360g()) {
                this.f64049q = (byte) 0;
                return false;
            } else if (m3357k() && !this.f64038e.mo1655e()) {
                this.f64049q = (byte) 0;
                return false;
            } else {
                for (int i = 0; i < this.f64040g.size(); i++) {
                    if (!this.f64040g.get(i).mo1655e()) {
                        this.f64049q = (byte) 0;
                        return false;
                    }
                }
                if (m3355m() && !this.f64041h.mo1655e()) {
                    this.f64049q = (byte) 0;
                    return false;
                } else if (m3353o() && !this.f64043j.mo1655e()) {
                    this.f64049q = (byte) 0;
                    return false;
                } else if (!m1687x()) {
                    this.f64049q = (byte) 0;
                    return false;
                } else {
                    this.f64049q = (byte) 1;
                    return true;
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64050s;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f64048p & 2) == 2 ? CodedOutputStream.m1803c(1, this.f64036c) + 0 : 0;
            int i2 = m1803c;
            if ((this.f64048p & 4) == 4) {
                i2 = m1803c + CodedOutputStream.m1803c(2, this.f64037d);
            }
            int i3 = i2;
            if ((this.f64048p & 8) == 8) {
                i3 = i2 + CodedOutputStream.m1802c(3, this.f64038e);
            }
            for (int i4 = 0; i4 < this.f64040g.size(); i4++) {
                i3 += CodedOutputStream.m1802c(4, this.f64040g.get(i4));
            }
            int i5 = i3;
            if ((this.f64048p & 32) == 32) {
                i5 = i3 + CodedOutputStream.m1802c(5, this.f64041h);
            }
            int i6 = i5;
            if ((this.f64048p & 128) == 128) {
                i6 = i5 + CodedOutputStream.m1802c(6, this.f64043j);
            }
            int i7 = i6;
            if ((this.f64048p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                i7 = i6 + CodedOutputStream.m1803c(7, this.f64044k);
            }
            int i8 = i7;
            if ((this.f64048p & 512) == 512) {
                i8 = i7 + CodedOutputStream.m1803c(8, this.f64045l);
            }
            int i9 = i8;
            if ((this.f64048p & 16) == 16) {
                i9 = i8 + CodedOutputStream.m1803c(9, this.f64039f);
            }
            int i10 = i9;
            if ((this.f64048p & 64) == 64) {
                i10 = i9 + CodedOutputStream.m1803c(10, this.f64042i);
            }
            int i11 = i10;
            if ((this.f64048p & 1) == 1) {
                i11 = i10 + CodedOutputStream.m1803c(11, this.f64035b);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.f64046m.size(); i13++) {
                i12 += CodedOutputStream.m1804c(this.f64046m.get(i13).intValue());
            }
            int size = i11 + i12 + (this.f64046m.size() * 2) + m1685z() + this.f64047o.mo1649a();
            this.f64050s = size;
            return size;
        }

        /* renamed from: g */
        public final boolean m3360g() {
            return (this.f64048p & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18756a.m3338g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18756a.m3338g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64034n;
        }

        /* renamed from: k */
        public final boolean m3357k() {
            return (this.f64048p & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3356l() {
            return (this.f64048p & 16) == 16;
        }

        /* renamed from: m */
        public final boolean m3355m() {
            return (this.f64048p & 32) == 32;
        }

        /* renamed from: n */
        public final boolean m3354n() {
            return (this.f64048p & 64) == 64;
        }

        /* renamed from: o */
        public final boolean m3353o() {
            return (this.f64048p & 128) == 128;
        }

        /* renamed from: p */
        public final boolean m3352p() {
            return (this.f64048p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
        }

        /* renamed from: q */
        public final boolean m3351q() {
            return (this.f64048p & 512) == 512;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n.class */
    public static final class C18757n extends AbstractC19683h implements AbstractC18877p {

        /* renamed from: a */
        public static AbstractC19708r<C18757n> f64064a = new AbstractC19669b<C18757n>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.n.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18757n(c19676e, c19678f);
            }
        };

        /* renamed from: b */
        private static final C18757n f64065b;

        /* renamed from: c */
        private final AbstractC19673d f64066c;

        /* renamed from: d */
        private List<C18760b> f64067d;

        /* renamed from: e */
        private byte f64068e;

        /* renamed from: f */
        private int f64069f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$a.class */
        public static final class C18759a extends AbstractC19683h.AbstractC19685a<C18757n, C18759a> implements AbstractC18877p {

            /* renamed from: b */
            private int f64070b;

            /* renamed from: c */
            private List<C18760b> f64071c = Collections.emptyList();

            private C18759a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18759a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$n> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.f64064a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$n r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$n$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r5
                    r6 = r0
                    goto L2c
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$n r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                    r0 = r5
                    r7 = r0
                L2c:
                    r0 = r7
                    if (r0 == 0) goto L36
                    r0 = r4
                    r1 = r7
                    kotlin.reflect.jvm.internal.impl.b.a$n$a r0 = r0.mo1702a(r1)
                L36:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18759a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$n$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18759a m3323g() {
                return new C18759a();
            }

            /* renamed from: h */
            public C18759a clone() {
                return new C18759a().mo1702a(m3324f());
            }

            /* renamed from: i */
            private void m3321i() {
                if ((this.f64070b & 1) != 1) {
                    this.f64071c = new ArrayList(this.f64071c);
                    this.f64070b |= 1;
                }
            }

            /* renamed from: a */
            public final C18759a mo1702a(C18757n c18757n) {
                if (c18757n == C18757n.m3332a()) {
                    return this;
                }
                if (!c18757n.f64067d.isEmpty()) {
                    if (this.f64071c.isEmpty()) {
                        this.f64071c = c18757n.f64067d;
                        this.f64070b &= -2;
                    } else {
                        m3321i();
                        this.f64071c.addAll(c18757n.f64067d);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18757n.f64066c);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18757n mo1703a() {
                return C18757n.m3332a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18757n m3324f = m3324f();
                if (m3324f.mo1655e()) {
                    return m3324f;
                }
                throw m1778a((AbstractC19705p) m3324f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f64071c.size(); i++) {
                    if (!this.f64071c.get(i).mo1655e()) {
                        return false;
                    }
                }
                return true;
            }

            /* renamed from: f */
            public final C18757n m3324f() {
                C18757n c18757n = new C18757n(this);
                if ((this.f64070b & 1) == 1) {
                    this.f64071c = Collections.unmodifiableList(this.f64071c);
                    this.f64070b &= -2;
                }
                c18757n.f64067d = this.f64071c;
                return c18757n;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18757n.m3332a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$b.class */
        public static final class C18760b extends AbstractC19683h implements AbstractC18876o {

            /* renamed from: a */
            public static AbstractC19708r<C18760b> f64072a = new AbstractC19669b<C18760b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.n.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
                /* renamed from: a */
                public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                    return new C18760b(c19676e, c19678f);
                }
            };

            /* renamed from: e */
            private static final C18760b f64073e;

            /* renamed from: b */
            public int f64074b;

            /* renamed from: c */
            public int f64075c;

            /* renamed from: d */
            public EnumC18763b f64076d;

            /* renamed from: f */
            private final AbstractC19673d f64077f;

            /* renamed from: g */
            private int f64078g;

            /* renamed from: h */
            private byte f64079h;

            /* renamed from: i */
            private int f64080i;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$b$a */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$b$a.class */
            public static final class C18762a extends AbstractC19683h.AbstractC19685a<C18760b, C18762a> implements AbstractC18876o {

                /* renamed from: b */
                private int f64081b;

                /* renamed from: d */
                private int f64083d;

                /* renamed from: c */
                private int f64082c = -1;

                /* renamed from: e */
                private EnumC18763b f64084e = EnumC18763b.PACKAGE;

                private C18762a() {
                }

                /* renamed from: a */
                private C18762a m3310a(int i) {
                    this.f64081b |= 1;
                    this.f64082c = i;
                    return this;
                }

                /* renamed from: a */
                private C18762a m3309a(EnumC18763b enumC18763b) {
                    Objects.requireNonNull(enumC18763b);
                    this.f64081b |= 4;
                    this.f64084e = enumC18763b;
                    return this;
                }

                /* renamed from: b */
                private C18762a m3307b(int i) {
                    this.f64081b |= 2;
                    this.f64083d = i;
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18760b.C18762a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$n$b> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18760b.f64072a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        kotlin.reflect.jvm.internal.impl.b.a$n$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18760b) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$n$b$a r0 = r0.mo1702a(r1)
                        r0 = r4
                        return r0
                    L18:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L2a
                    L1e:
                        r5 = move-exception
                        r0 = r5
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                        kotlin.reflect.jvm.internal.impl.b.a$n$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18760b) r0     // Catch: java.lang.Throwable -> L18
                        r6 = r0
                        r0 = r5
                        throw r0     // Catch: java.lang.Throwable -> L29
                    L29:
                        r5 = move-exception
                    L2a:
                        r0 = r6
                        if (r0 == 0) goto L34
                        r0 = r4
                        r1 = r6
                        kotlin.reflect.jvm.internal.impl.b.a$n$b$a r0 = r0.mo1702a(r1)
                    L34:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18757n.C18760b.C18762a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$n$b$a");
                }

                /* renamed from: f */
                static /* synthetic */ C18762a m3305f() {
                    return new C18762a();
                }

                /* renamed from: g */
                public C18762a clone() {
                    return new C18762a().mo1702a(m3303h());
                }

                /* renamed from: h */
                private C18760b m3303h() {
                    C18760b c18760b = new C18760b(this);
                    int i = this.f64081b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    c18760b.f64074b = this.f64082c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    c18760b.f64075c = this.f64083d;
                    int i4 = i3;
                    if ((i & 4) == 4) {
                        i4 = i3 | 4;
                    }
                    c18760b.f64076d = this.f64084e;
                    c18760b.f64078g = i4;
                    return c18760b;
                }

                /* renamed from: a */
                public final C18762a mo1702a(C18760b c18760b) {
                    if (c18760b == C18760b.m3320a()) {
                        return this;
                    }
                    if (c18760b.m3315c()) {
                        m3310a(c18760b.f64074b);
                    }
                    if (c18760b.m3313d()) {
                        m3307b(c18760b.f64075c);
                    }
                    if (c18760b.m3312g()) {
                        m3309a(c18760b.f64076d);
                    }
                    this.f65839a = this.f65839a.m1769a(c18760b.f64077f);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ C18760b mo1703a() {
                    return C18760b.m3320a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
                /* renamed from: d */
                public final /* synthetic */ AbstractC19705p mo1656d() {
                    C18760b m3303h = m3303h();
                    if (m3303h.mo1655e()) {
                        return m3303h;
                    }
                    throw m1778a((AbstractC19705p) m3303h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: e */
                public final boolean mo1655e() {
                    return (this.f64081b & 2) == 2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: j */
                public final /* synthetic */ AbstractC19705p mo1654j() {
                    return C18760b.m3320a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$b$b */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$b$b.class */
            public enum EnumC18763b implements C19692j.AbstractC19693a {
                CLASS(0, 0),
                PACKAGE(1, 1),
                LOCAL(2, 2);
                
                private static C19692j.AbstractC19694b<EnumC18763b> internalValueMap = new C19692j.AbstractC19694b<EnumC18763b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.n.b.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                    /* renamed from: a */
                    public final /* synthetic */ EnumC18763b mo1672a(int i) {
                        return EnumC18763b.valueOf(i);
                    }
                };
                private final int value;

                EnumC18763b(int i, int i2) {
                    this.value = i2;
                }

                public static EnumC18763b valueOf(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return PACKAGE;
                        }
                        if (i == 2) {
                            return LOCAL;
                        }
                        return null;
                    }
                    return CLASS;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                C18760b c18760b = new C18760b(true);
                f64073e = c18760b;
                c18760b.m3311k();
            }

            private C18760b(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                this.f64079h = (byte) (-1);
                this.f64080i = -1;
                m3311k();
                AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
                CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 8) {
                                    this.f64078g |= 1;
                                    this.f64074b = c19676e.m1748d();
                                } else if (m1759a == 16) {
                                    this.f64078g |= 2;
                                    this.f64075c = c19676e.m1748d();
                                } else if (m1759a == 24) {
                                    int m1748d = c19676e.m1748d();
                                    EnumC18763b valueOf = EnumC18763b.valueOf(m1748d);
                                    if (valueOf == null) {
                                        m1823a.m1795e(m1759a);
                                        m1823a.m1795e(m1748d);
                                    } else {
                                        this.f64078g |= 4;
                                        this.f64076d = valueOf;
                                    }
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        try {
                            m1823a.m1832a();
                        } catch (IOException e3) {
                        } catch (Throwable th2) {
                            this.f64077f = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64077f = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                }
                try {
                    m1823a.m1832a();
                } catch (IOException e4) {
                } catch (Throwable th3) {
                    this.f64077f = m1763h.m1762a();
                    throw th3;
                }
                this.f64077f = m1763h.m1762a();
                mo1688w();
            }

            private C18760b(AbstractC19683h.AbstractC19685a abstractC19685a) {
                super(abstractC19685a);
                this.f64079h = (byte) (-1);
                this.f64080i = -1;
                this.f64077f = abstractC19685a.f65839a;
            }

            private C18760b(boolean z) {
                this.f64079h = (byte) (-1);
                this.f64080i = -1;
                this.f64077f = AbstractC19673d.f65805b;
            }

            /* renamed from: a */
            public static C18760b m3320a() {
                return f64073e;
            }

            /* renamed from: k */
            private void m3311k() {
                this.f64074b = -1;
                this.f64075c = 0;
                this.f64076d = EnumC18763b.PACKAGE;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: a */
            public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
                mo1660f();
                if ((this.f64078g & 1) == 1) {
                    codedOutputStream.m1827a(1, this.f64074b);
                }
                if ((this.f64078g & 2) == 2) {
                    codedOutputStream.m1827a(2, this.f64075c);
                }
                if ((this.f64078g & 4) == 4) {
                    codedOutputStream.m1812b(3, this.f64076d.getNumber());
                }
                codedOutputStream.m1796d(this.f64077f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: b */
            public final AbstractC19708r<C18760b> mo1661b() {
                return f64072a;
            }

            /* renamed from: c */
            public final boolean m3315c() {
                return (this.f64078g & 1) == 1;
            }

            /* renamed from: d */
            public final boolean m3313d() {
                return (this.f64078g & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                byte b = this.f64079h;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                if (!m3313d()) {
                    this.f64079h = (byte) 0;
                    return false;
                }
                this.f64079h = (byte) 1;
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: f */
            public final int mo1660f() {
                int i = this.f64080i;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f64078g & 1) == 1) {
                    i2 = 0 + CodedOutputStream.m1803c(1, this.f64074b);
                }
                int i3 = i2;
                if ((this.f64078g & 2) == 2) {
                    i3 = i2 + CodedOutputStream.m1803c(2, this.f64075c);
                }
                int i4 = i3;
                if ((this.f64078g & 4) == 4) {
                    i4 = i3 + CodedOutputStream.m1798d(3, this.f64076d.getNumber());
                }
                int mo1649a = i4 + this.f64077f.mo1649a();
                this.f64080i = mo1649a;
                return mo1649a;
            }

            /* renamed from: g */
            public final boolean m3312g() {
                return (this.f64078g & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: h */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
                return C18762a.m3305f().mo1702a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: i */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
                return C18762a.m3305f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
                return f64073e;
            }
        }

        static {
            C18757n c18757n = new C18757n(true);
            f64065b = c18757n;
            c18757n.f64067d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18757n(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64068e = (byte) (-1);
            this.f64069f = -1;
            this.f64067d = Collections.emptyList();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 10) {
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.f64067d = new ArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.f64067d.add(c19676e.m1753a(C18760b.f64072a, c19678f));
                                    z2 = z4;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64067d = Collections.unmodifiableList(this.f64067d);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64066c = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64066c = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64067d = Collections.unmodifiableList(this.f64067d);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64066c = m1763h.m1762a();
                throw th3;
            }
            this.f64066c = m1763h.m1762a();
            mo1688w();
        }

        private C18757n(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64068e = (byte) (-1);
            this.f64069f = -1;
            this.f64066c = abstractC19685a.f65839a;
        }

        private C18757n(boolean z) {
            this.f64068e = (byte) (-1);
            this.f64069f = -1;
            this.f64066c = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18759a m3330a(C18757n c18757n) {
            return C18759a.m3323g().mo1702a(c18757n);
        }

        /* renamed from: a */
        public static C18757n m3332a() {
            return f64065b;
        }

        /* renamed from: a */
        public final C18760b m3331a(int i) {
            return this.f64067d.get(i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            for (int i = 0; i < this.f64067d.size(); i++) {
                codedOutputStream.m1825a(1, this.f64067d.get(i));
            }
            codedOutputStream.m1796d(this.f64066c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18757n> mo1661b() {
            return f64064a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64068e;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < this.f64067d.size(); i++) {
                if (!m3331a(i).mo1655e()) {
                    this.f64068e = (byte) 0;
                    return false;
                }
            }
            this.f64068e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64069f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f64067d.size(); i3++) {
                i2 += CodedOutputStream.m1802c(1, this.f64067d.get(i3));
            }
            int mo1649a = i2 + this.f64066c.mo1649a();
            this.f64069f = mo1649a;
            return mo1649a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18759a.m3323g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18759a.m3323g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64065b;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$o */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$o.class */
    public static final class C18765o extends AbstractC19683h implements AbstractC18878q {

        /* renamed from: a */
        public static AbstractC19708r<C18765o> f64085a = new AbstractC19669b<C18765o>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.o.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18765o(c19676e, c19678f);
            }
        };

        /* renamed from: b */
        private static final C18765o f64086b;

        /* renamed from: c */
        private final AbstractC19673d f64087c;

        /* renamed from: d */
        private AbstractC19701n f64088d;

        /* renamed from: e */
        private byte f64089e;

        /* renamed from: f */
        private int f64090f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$o$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$o$a.class */
        public static final class C18767a extends AbstractC19683h.AbstractC19685a<C18765o, C18767a> implements AbstractC18878q {

            /* renamed from: b */
            private int f64091b;

            /* renamed from: c */
            private AbstractC19701n f64092c = C19700m.f65867a;

            private C18767a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18765o.C18767a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$o> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18765o.f64085a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$o r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18765o) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$o$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$o r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18765o) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$o$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18765o.C18767a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$o$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18767a m3293g() {
                return new C18767a();
            }

            /* renamed from: h */
            public C18767a clone() {
                return new C18767a().mo1702a(m3294f());
            }

            /* renamed from: i */
            private void m3291i() {
                if ((this.f64091b & 1) != 1) {
                    this.f64092c = new C19700m(this.f64092c);
                    this.f64091b |= 1;
                }
            }

            /* renamed from: a */
            public final C18767a mo1702a(C18765o c18765o) {
                if (c18765o == C18765o.m3302a()) {
                    return this;
                }
                if (!c18765o.f64088d.isEmpty()) {
                    if (this.f64092c.isEmpty()) {
                        this.f64092c = c18765o.f64088d;
                        this.f64091b &= -2;
                    } else {
                        m3291i();
                        this.f64092c.addAll(c18765o.f64088d);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18765o.f64087c);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18765o mo1703a() {
                return C18765o.m3302a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18765o m3294f = m3294f();
                if (m3294f.mo1655e()) {
                    return m3294f;
                }
                throw m1778a((AbstractC19705p) m3294f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            /* renamed from: f */
            public final C18765o m3294f() {
                C18765o c18765o = new C18765o(this);
                if ((this.f64091b & 1) == 1) {
                    this.f64092c = this.f64092c.mo1599b();
                    this.f64091b &= -2;
                }
                c18765o.f64088d = this.f64092c;
                return c18765o;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18765o.m3302a();
            }
        }

        static {
            C18765o c18765o = new C18765o(true);
            f64086b = c18765o;
            c18765o.f64088d = C19700m.f65867a;
        }

        private C18765o(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64089e = (byte) (-1);
            this.f64090f = -1;
            this.f64088d = C19700m.f65867a;
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 10) {
                                    AbstractC19673d m1750c = c19676e.m1750c();
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.f64088d = new C19700m();
                                        z4 = z2 | true;
                                    }
                                    this.f64088d.mo1601a(m1750c);
                                    z2 = z4;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f65795a = this;
                        throw e2;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64088d = this.f64088d.mo1599b();
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64087c = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64087c = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64088d = this.f64088d.mo1599b();
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64087c = m1763h.m1762a();
                throw th3;
            }
            this.f64087c = m1763h.m1762a();
            mo1688w();
        }

        private C18765o(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64089e = (byte) (-1);
            this.f64090f = -1;
            this.f64087c = abstractC19685a.f65839a;
        }

        private C18765o(boolean z) {
            this.f64089e = (byte) (-1);
            this.f64090f = -1;
            this.f64087c = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18767a m3300a(C18765o c18765o) {
            return C18767a.m3293g().mo1702a(c18765o);
        }

        /* renamed from: a */
        public static C18765o m3302a() {
            return f64086b;
        }

        /* renamed from: a */
        public final String m3301a(int i) {
            return (String) this.f64088d.get(i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            for (int i = 0; i < this.f64088d.size(); i++) {
                codedOutputStream.m1826a(1, this.f64088d.mo1602a(i));
            }
            codedOutputStream.m1796d(this.f64087c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18765o> mo1661b() {
            return f64085a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64089e;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64089e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64090f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f64088d.size(); i3++) {
                i2 += CodedOutputStream.m1800c(this.f64088d.mo1602a(i3));
            }
            int size = i2 + 0 + (this.f64088d.size() * 1) + this.f64087c.mo1649a();
            this.f64090f = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18767a.m3293g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18767a.m3293g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64086b;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p.class */
    public static final class C18768p extends AbstractC19683h.AbstractC19687c<C18768p> implements AbstractC18881t {

        /* renamed from: a */
        public static AbstractC19708r<C18768p> f64093a = new AbstractC19669b<C18768p>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.p.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18768p(c19676e, c19678f);
            }
        };

        /* renamed from: p */
        private static final C18768p f64094p;

        /* renamed from: b */
        public List<C18770a> f64095b;

        /* renamed from: c */
        public boolean f64096c;

        /* renamed from: d */
        public int f64097d;

        /* renamed from: e */
        public C18768p f64098e;

        /* renamed from: f */
        public int f64099f;

        /* renamed from: g */
        public int f64100g;

        /* renamed from: h */
        public int f64101h;

        /* renamed from: i */
        public int f64102i;

        /* renamed from: j */
        public int f64103j;

        /* renamed from: k */
        public C18768p f64104k;

        /* renamed from: l */
        public int f64105l;

        /* renamed from: m */
        public C18768p f64106m;

        /* renamed from: n */
        public int f64107n;

        /* renamed from: o */
        public int f64108o;

        /* renamed from: q */
        private final AbstractC19673d f64109q;

        /* renamed from: s */
        private int f64110s;

        /* renamed from: t */
        private byte f64111t;

        /* renamed from: u */
        private int f64112u;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$a.class */
        public static final class C18770a extends AbstractC19683h implements AbstractC18879r {

            /* renamed from: a */
            public static AbstractC19708r<C18770a> f64113a = new AbstractC19669b<C18770a>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.p.a.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
                /* renamed from: a */
                public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                    return new C18770a(c19676e, c19678f);
                }
            };

            /* renamed from: e */
            private static final C18770a f64114e;

            /* renamed from: b */
            public EnumC18773b f64115b;

            /* renamed from: c */
            public C18768p f64116c;

            /* renamed from: d */
            public int f64117d;

            /* renamed from: f */
            private final AbstractC19673d f64118f;

            /* renamed from: g */
            private int f64119g;

            /* renamed from: h */
            private byte f64120h;

            /* renamed from: i */
            private int f64121i;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$a$a */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$a$a.class */
            public static final class C18772a extends AbstractC19683h.AbstractC19685a<C18770a, C18772a> implements AbstractC18879r {

                /* renamed from: b */
                private int f64122b;

                /* renamed from: c */
                private EnumC18773b f64123c = EnumC18773b.INV;

                /* renamed from: d */
                private C18768p f64124d = C18768p.m3289a();

                /* renamed from: e */
                private int f64125e;

                private C18772a() {
                }

                /* renamed from: a */
                private C18772a m3245a(int i) {
                    this.f64122b |= 4;
                    this.f64125e = i;
                    return this;
                }

                /* renamed from: a */
                private C18772a m3244a(EnumC18773b enumC18773b) {
                    Objects.requireNonNull(enumC18773b);
                    this.f64122b |= 1;
                    this.f64123c = enumC18773b;
                    return this;
                }

                /* renamed from: a */
                private C18772a m3242a(C18768p c18768p) {
                    if ((this.f64122b & 2) != 2 || this.f64124d == C18768p.m3289a()) {
                        this.f64124d = c18768p;
                    } else {
                        this.f64124d = C18768p.m3288a(this.f64124d).mo1702a(c18768p).m3223h();
                    }
                    this.f64122b |= 2;
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18770a.C18772a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$p$a> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18770a.f64113a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        kotlin.reflect.jvm.internal.impl.b.a$p$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18770a) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$p$a$a r0 = r0.mo1702a(r1)
                        r0 = r4
                        return r0
                    L18:
                        r5 = move-exception
                        r0 = r5
                        r6 = r0
                        goto L2c
                    L1e:
                        r6 = move-exception
                        r0 = r6
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                        kotlin.reflect.jvm.internal.impl.b.a$p$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18770a) r0     // Catch: java.lang.Throwable -> L18
                        r5 = r0
                        r0 = r6
                        throw r0     // Catch: java.lang.Throwable -> L29
                    L29:
                        r6 = move-exception
                        r0 = r5
                        r7 = r0
                    L2c:
                        r0 = r7
                        if (r0 == 0) goto L36
                        r0 = r4
                        r1 = r7
                        kotlin.reflect.jvm.internal.impl.b.a$p$a$a r0 = r0.mo1702a(r1)
                    L36:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18770a.C18772a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$p$a$a");
                }

                /* renamed from: f */
                static /* synthetic */ C18772a m3240f() {
                    return new C18772a();
                }

                /* renamed from: g */
                public C18772a clone() {
                    return new C18772a().mo1702a(m3238h());
                }

                /* renamed from: h */
                private C18770a m3238h() {
                    C18770a c18770a = new C18770a(this);
                    int i = this.f64122b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    c18770a.f64115b = this.f64123c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    c18770a.f64116c = this.f64124d;
                    int i4 = i3;
                    if ((i & 4) == 4) {
                        i4 = i3 | 4;
                    }
                    c18770a.f64117d = this.f64125e;
                    c18770a.f64119g = i4;
                    return c18770a;
                }

                /* renamed from: a */
                public final C18772a mo1702a(C18770a c18770a) {
                    if (c18770a == C18770a.m3255a()) {
                        return this;
                    }
                    if (c18770a.m3249c()) {
                        m3244a(c18770a.f64115b);
                    }
                    if (c18770a.m3248d()) {
                        m3242a(c18770a.f64116c);
                    }
                    if (c18770a.m3247g()) {
                        m3245a(c18770a.f64117d);
                    }
                    this.f65839a = this.f65839a.m1769a(c18770a.f64118f);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ C18770a mo1703a() {
                    return C18770a.m3255a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
                /* renamed from: d */
                public final /* synthetic */ AbstractC19705p mo1656d() {
                    C18770a m3238h = m3238h();
                    if (m3238h.mo1655e()) {
                        return m3238h;
                    }
                    throw m1778a((AbstractC19705p) m3238h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: e */
                public final boolean mo1655e() {
                    return !((this.f64122b & 2) == 2) || this.f64124d.mo1655e();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: j */
                public final /* synthetic */ AbstractC19705p mo1654j() {
                    return C18770a.m3255a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$a$b */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$a$b.class */
            public enum EnumC18773b implements C19692j.AbstractC19693a {
                IN(0, 0),
                OUT(1, 1),
                INV(2, 2),
                STAR(3, 3);
                
                private static C19692j.AbstractC19694b<EnumC18773b> internalValueMap = new C19692j.AbstractC19694b<EnumC18773b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.p.a.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                    /* renamed from: a */
                    public final /* synthetic */ EnumC18773b mo1672a(int i) {
                        return EnumC18773b.valueOf(i);
                    }
                };
                private final int value;

                EnumC18773b(int i, int i2) {
                    this.value = i2;
                }

                public static EnumC18773b valueOf(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return OUT;
                        }
                        if (i == 2) {
                            return INV;
                        }
                        if (i == 3) {
                            return STAR;
                        }
                        return null;
                    }
                    return IN;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                C18770a c18770a = new C18770a(true);
                f64114e = c18770a;
                c18770a.m3246k();
            }

            private C18770a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                this.f64120h = (byte) (-1);
                this.f64121i = -1;
                m3246k();
                AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
                CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 8) {
                                    int m1748d = c19676e.m1748d();
                                    EnumC18773b valueOf = EnumC18773b.valueOf(m1748d);
                                    if (valueOf == null) {
                                        m1823a.m1795e(m1759a);
                                        m1823a.m1795e(m1748d);
                                    } else {
                                        this.f64119g |= 1;
                                        this.f64115b = valueOf;
                                    }
                                } else if (m1759a == 18) {
                                    C18775b mo1659h = (this.f64119g & 2) == 2 ? this.f64116c.mo1659h() : null;
                                    C18768p c18768p = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                    this.f64116c = c18768p;
                                    if (mo1659h != null) {
                                        mo1659h.mo1702a(c18768p);
                                        this.f64116c = mo1659h.m3223h();
                                    }
                                    this.f64119g |= 2;
                                } else if (m1759a == 24) {
                                    this.f64119g |= 4;
                                    this.f64117d = c19676e.m1748d();
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        try {
                            m1823a.m1832a();
                        } catch (IOException e3) {
                        } catch (Throwable th2) {
                            this.f64118f = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64118f = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                }
                try {
                    m1823a.m1832a();
                } catch (IOException e4) {
                } catch (Throwable th3) {
                    this.f64118f = m1763h.m1762a();
                    throw th3;
                }
                this.f64118f = m1763h.m1762a();
                mo1688w();
            }

            private C18770a(AbstractC19683h.AbstractC19685a abstractC19685a) {
                super(abstractC19685a);
                this.f64120h = (byte) (-1);
                this.f64121i = -1;
                this.f64118f = abstractC19685a.f65839a;
            }

            private C18770a(boolean z) {
                this.f64120h = (byte) (-1);
                this.f64121i = -1;
                this.f64118f = AbstractC19673d.f65805b;
            }

            /* renamed from: a */
            public static C18770a m3255a() {
                return f64114e;
            }

            /* renamed from: k */
            private void m3246k() {
                this.f64115b = EnumC18773b.INV;
                this.f64116c = C18768p.m3289a();
                this.f64117d = 0;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: a */
            public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
                mo1660f();
                if ((this.f64119g & 1) == 1) {
                    codedOutputStream.m1812b(1, this.f64115b.getNumber());
                }
                if ((this.f64119g & 2) == 2) {
                    codedOutputStream.m1825a(2, this.f64116c);
                }
                if ((this.f64119g & 4) == 4) {
                    codedOutputStream.m1827a(3, this.f64117d);
                }
                codedOutputStream.m1796d(this.f64118f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: b */
            public final AbstractC19708r<C18770a> mo1661b() {
                return f64113a;
            }

            /* renamed from: c */
            public final boolean m3249c() {
                return (this.f64119g & 1) == 1;
            }

            /* renamed from: d */
            public final boolean m3248d() {
                return (this.f64119g & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                byte b = this.f64120h;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                if (!m3248d() || this.f64116c.mo1655e()) {
                    this.f64120h = (byte) 1;
                    return true;
                }
                this.f64120h = (byte) 0;
                return false;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: f */
            public final int mo1660f() {
                int i = this.f64121i;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f64119g & 1) == 1) {
                    i2 = 0 + CodedOutputStream.m1798d(1, this.f64115b.getNumber());
                }
                int i3 = i2;
                if ((this.f64119g & 2) == 2) {
                    i3 = i2 + CodedOutputStream.m1802c(2, this.f64116c);
                }
                int i4 = i3;
                if ((this.f64119g & 4) == 4) {
                    i4 = i3 + CodedOutputStream.m1803c(3, this.f64117d);
                }
                int mo1649a = i4 + this.f64118f.mo1649a();
                this.f64121i = mo1649a;
                return mo1649a;
            }

            /* renamed from: g */
            public final boolean m3247g() {
                return (this.f64119g & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: h */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
                return C18772a.m3240f().mo1702a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: i */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
                return C18772a.m3240f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
                return f64114e;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$b.class */
        public static final class C18775b extends AbstractC19683h.AbstractC19686b<C18768p, C18775b> implements AbstractC18881t {

            /* renamed from: b */
            private int f64127b;

            /* renamed from: d */
            private boolean f64129d;

            /* renamed from: e */
            private int f64130e;

            /* renamed from: g */
            private int f64132g;

            /* renamed from: h */
            private int f64133h;

            /* renamed from: i */
            private int f64134i;

            /* renamed from: j */
            private int f64135j;

            /* renamed from: k */
            private int f64136k;

            /* renamed from: m */
            private int f64138m;

            /* renamed from: o */
            private int f64140o;

            /* renamed from: p */
            private int f64141p;

            /* renamed from: c */
            private List<C18770a> f64128c = Collections.emptyList();

            /* renamed from: f */
            private C18768p f64131f = C18768p.m3289a();

            /* renamed from: l */
            private C18768p f64137l = C18768p.m3289a();

            /* renamed from: n */
            private C18768p f64139n = C18768p.m3289a();

            private C18775b() {
            }

            /* renamed from: a */
            private C18775b m3237a(int i) {
                this.f64127b |= 4;
                this.f64130e = i;
                return this;
            }

            /* renamed from: b */
            private C18775b m3234b(int i) {
                this.f64127b |= 16;
                this.f64132g = i;
                return this;
            }

            /* renamed from: b */
            private C18775b m3233b(C18768p c18768p) {
                if ((this.f64127b & 8) != 8 || this.f64131f == C18768p.m3289a()) {
                    this.f64131f = c18768p;
                } else {
                    this.f64131f = C18768p.m3288a(this.f64131f).mo1702a(c18768p).m3223h();
                }
                this.f64127b |= 8;
                return this;
            }

            /* renamed from: c */
            private C18775b m3232c(int i) {
                this.f64127b |= 32;
                this.f64133h = i;
                return this;
            }

            /* renamed from: c */
            private C18775b m3231c(C18768p c18768p) {
                if ((this.f64127b & 512) != 512 || this.f64137l == C18768p.m3289a()) {
                    this.f64137l = c18768p;
                } else {
                    this.f64137l = C18768p.m3288a(this.f64137l).mo1702a(c18768p).m3223h();
                }
                this.f64127b |= 512;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18775b mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$p> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.f64093a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$p r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$p$b r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$p r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$p$b r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18768p.C18775b.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$p$b");
            }

            /* renamed from: d */
            private C18775b m3229d(int i) {
                this.f64127b |= 64;
                this.f64134i = i;
                return this;
            }

            /* renamed from: d */
            private C18775b m3228d(C18768p c18768p) {
                if ((this.f64127b & 2048) != 2048 || this.f64139n == C18768p.m3289a()) {
                    this.f64139n = c18768p;
                } else {
                    this.f64139n = C18768p.m3288a(this.f64139n).mo1702a(c18768p).m3223h();
                }
                this.f64127b |= 2048;
                return this;
            }

            /* renamed from: e */
            private C18775b m3227e(int i) {
                this.f64127b |= 128;
                this.f64135j = i;
                return this;
            }

            /* renamed from: f */
            private C18775b m3226f(int i) {
                this.f64127b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                this.f64136k = i;
                return this;
            }

            /* renamed from: g */
            private C18775b m3224g(int i) {
                this.f64127b |= 1024;
                this.f64138m = i;
                return this;
            }

            /* renamed from: h */
            private C18775b m3222h(int i) {
                this.f64127b |= 4096;
                this.f64140o = i;
                return this;
            }

            /* renamed from: i */
            static /* synthetic */ C18775b m3221i() {
                return new C18775b();
            }

            /* renamed from: i */
            private C18775b m3220i(int i) {
                this.f64127b |= PropertyFlags.UNSIGNED;
                this.f64141p = i;
                return this;
            }

            /* renamed from: l */
            public C18775b mo1697f() {
                return new C18775b().mo1702a(m3223h());
            }

            /* renamed from: m */
            private void m3218m() {
                if ((this.f64127b & 1) != 1) {
                    this.f64128c = new ArrayList(this.f64128c);
                    this.f64127b |= 1;
                }
            }

            /* renamed from: a */
            public final C18775b mo1702a(C18768p c18768p) {
                if (c18768p == C18768p.m3289a()) {
                    return this;
                }
                if (!c18768p.f64095b.isEmpty()) {
                    if (this.f64128c.isEmpty()) {
                        this.f64128c = c18768p.f64095b;
                        this.f64127b &= -2;
                    } else {
                        m3218m();
                        this.f64128c.addAll(c18768p.f64095b);
                    }
                }
                if (c18768p.m3276d()) {
                    m3235a(c18768p.f64096c);
                }
                if (c18768p.m3272g()) {
                    m3237a(c18768p.f64097d);
                }
                if (c18768p.m3267k()) {
                    m3233b(c18768p.f64098e);
                }
                if (c18768p.m3266l()) {
                    m3234b(c18768p.f64099f);
                }
                if (c18768p.m3265m()) {
                    m3232c(c18768p.f64100g);
                }
                if (c18768p.m3264n()) {
                    m3229d(c18768p.f64101h);
                }
                if (c18768p.m3263o()) {
                    m3227e(c18768p.f64102i);
                }
                if (c18768p.m3262p()) {
                    m3226f(c18768p.f64103j);
                }
                if (c18768p.m3261q()) {
                    m3231c(c18768p.f64104k);
                }
                if (c18768p.m3260r()) {
                    m3224g(c18768p.f64105l);
                }
                if (c18768p.m3259s()) {
                    m3228d(c18768p.f64106m);
                }
                if (c18768p.m3258t()) {
                    m3222h(c18768p.f64107n);
                }
                if (c18768p.m3257u()) {
                    m3220i(c18768p.f64108o);
                }
                m1700a((C18775b) c18768p);
                this.f65839a = this.f65839a.m1769a(c18768p.f64109q);
                return this;
            }

            /* renamed from: a */
            public final C18775b m3235a(boolean z) {
                this.f64127b |= 2;
                this.f64129d = z;
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18768p.m3289a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f64128c.size(); i++) {
                    if (!this.f64128c.get(i).mo1655e()) {
                        return false;
                    }
                }
                if (!((this.f64127b & 8) == 8) || this.f64131f.mo1655e()) {
                    if (((this.f64127b & 512) == 512) && !this.f64137l.mo1655e()) {
                        return false;
                    }
                    return (!((this.f64127b & 2048) == 2048) || this.f64139n.mo1655e()) && m1696k();
                }
                return false;
            }

            /* renamed from: g */
            public final C18768p mo1656d() {
                C18768p m3223h = m3223h();
                if (m3223h.mo1655e()) {
                    return m3223h;
                }
                throw m1778a((AbstractC19705p) m3223h);
            }

            /* renamed from: h */
            public final C18768p m3223h() {
                C18768p c18768p = new C18768p(this);
                int i = this.f64127b;
                int i2 = 1;
                if ((i & 1) == 1) {
                    this.f64128c = Collections.unmodifiableList(this.f64128c);
                    this.f64127b &= -2;
                }
                c18768p.f64095b = this.f64128c;
                if ((i & 2) != 2) {
                    i2 = 0;
                }
                c18768p.f64096c = this.f64129d;
                int i3 = i2;
                if ((i & 4) == 4) {
                    i3 = i2 | 2;
                }
                c18768p.f64097d = this.f64130e;
                int i4 = i3;
                if ((i & 8) == 8) {
                    i4 = i3 | 4;
                }
                c18768p.f64098e = this.f64131f;
                int i5 = i4;
                if ((i & 16) == 16) {
                    i5 = i4 | 8;
                }
                c18768p.f64099f = this.f64132g;
                int i6 = i5;
                if ((i & 32) == 32) {
                    i6 = i5 | 16;
                }
                c18768p.f64100g = this.f64133h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                c18768p.f64101h = this.f64134i;
                int i8 = i7;
                if ((i & 128) == 128) {
                    i8 = i7 | 64;
                }
                c18768p.f64102i = this.f64135j;
                int i9 = i8;
                if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    i9 = i8 | 128;
                }
                c18768p.f64103j = this.f64136k;
                int i10 = i9;
                if ((i & 512) == 512) {
                    i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                c18768p.f64104k = this.f64137l;
                int i11 = i10;
                if ((i & 1024) == 1024) {
                    i11 = i10 | 512;
                }
                c18768p.f64105l = this.f64138m;
                int i12 = i11;
                if ((i & 2048) == 2048) {
                    i12 = i11 | 1024;
                }
                c18768p.f64106m = this.f64139n;
                int i13 = i12;
                if ((i & 4096) == 4096) {
                    i13 = i12 | 2048;
                }
                c18768p.f64107n = this.f64140o;
                int i14 = i13;
                if ((i & PropertyFlags.UNSIGNED) == 8192) {
                    i14 = i13 | 4096;
                }
                c18768p.f64108o = this.f64141p;
                c18768p.f64110s = i14;
                return c18768p;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18768p.m3289a();
            }
        }

        static {
            C18768p c18768p = new C18768p(true);
            f64094p = c18768p;
            c18768p.m3290A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18768p(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64111t = (byte) (-1);
            this.f64112u = -1;
            m3290A();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        C18775b c18775b = null;
                        switch (m1759a) {
                            case 0:
                                break;
                            case 8:
                                this.f64110s |= 4096;
                                boolean z4 = z2;
                                this.f64108o = c19676e.m1748d();
                                continue;
                            case 18:
                                boolean z5 = z2;
                                if (!(z2 & true)) {
                                    boolean z6 = z2;
                                    boolean z7 = z2;
                                    this.f64095b = new ArrayList();
                                    z5 = z2 | true;
                                }
                                this.f64095b.add(c19676e.m1753a(C18770a.f64113a, c19678f));
                                z2 = z5;
                                continue;
                            case 24:
                                this.f64110s |= 1;
                                boolean z8 = z2;
                                this.f64096c = c19676e.m1752b();
                                continue;
                            case 32:
                                this.f64110s |= 2;
                                boolean z9 = z2;
                                this.f64097d = c19676e.m1748d();
                                continue;
                            case 42:
                                C18775b c18775b2 = null;
                                if ((this.f64110s & 4) == 4) {
                                    boolean z10 = z2;
                                    boolean z11 = z2;
                                    c18775b2 = C18775b.m3221i().mo1702a(this.f64098e);
                                }
                                boolean z12 = z2;
                                C18768p c18768p = (C18768p) c19676e.m1753a(f64093a, c19678f);
                                boolean z13 = z2;
                                this.f64098e = c18768p;
                                if (c18775b2 != null) {
                                    c18775b2.mo1702a(c18768p);
                                    boolean z14 = z2;
                                    this.f64098e = c18775b2.m3223h();
                                }
                                boolean z15 = z2;
                                this.f64110s |= 4;
                                continue;
                            case 48:
                                this.f64110s |= 16;
                                boolean z16 = z2;
                                this.f64100g = c19676e.m1748d();
                                continue;
                            case 56:
                                this.f64110s |= 32;
                                boolean z17 = z2;
                                this.f64101h = c19676e.m1748d();
                                continue;
                            case 64:
                                this.f64110s |= 8;
                                boolean z18 = z2;
                                this.f64099f = c19676e.m1748d();
                                continue;
                            case 72:
                                this.f64110s |= 64;
                                boolean z19 = z2;
                                this.f64102i = c19676e.m1748d();
                                continue;
                            case 82:
                                C18775b c18775b3 = null;
                                if ((this.f64110s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                                    boolean z20 = z2;
                                    boolean z21 = z2;
                                    c18775b3 = C18775b.m3221i().mo1702a(this.f64104k);
                                }
                                boolean z22 = z2;
                                C18768p c18768p2 = (C18768p) c19676e.m1753a(f64093a, c19678f);
                                boolean z23 = z2;
                                this.f64104k = c18768p2;
                                if (c18775b3 != null) {
                                    c18775b3.mo1702a(c18768p2);
                                    boolean z24 = z2;
                                    this.f64104k = c18775b3.m3223h();
                                }
                                boolean z25 = z2;
                                this.f64110s |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                continue;
                            case 88:
                                this.f64110s |= 512;
                                boolean z26 = z2;
                                this.f64105l = c19676e.m1748d();
                                continue;
                            case 96:
                                this.f64110s |= 128;
                                boolean z27 = z2;
                                this.f64103j = c19676e.m1748d();
                                continue;
                            case 106:
                                if ((this.f64110s & 1024) == 1024) {
                                    boolean z28 = z2;
                                    boolean z29 = z2;
                                    c18775b = C18775b.m3221i().mo1702a(this.f64106m);
                                }
                                boolean z30 = z2;
                                C18768p c18768p3 = (C18768p) c19676e.m1753a(f64093a, c19678f);
                                boolean z31 = z2;
                                this.f64106m = c18768p3;
                                if (c18775b != null) {
                                    c18775b.mo1702a(c18768p3);
                                    boolean z32 = z2;
                                    this.f64106m = c18775b.m3223h();
                                }
                                boolean z33 = z2;
                                this.f64110s |= 1024;
                                continue;
                            case 112:
                                this.f64110s |= 2048;
                                boolean z34 = z2;
                                this.f64107n = c19676e.m1748d();
                                continue;
                            default:
                                if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        e.f65795a = this;
                        throw e;
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64095b = Collections.unmodifiableList(this.f64095b);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64109q = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64109q = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64095b = Collections.unmodifiableList(this.f64095b);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64109q = m1763h.m1762a();
                throw th3;
            }
            this.f64109q = m1763h.m1762a();
            mo1688w();
        }

        private C18768p(AbstractC19683h.AbstractC19686b<C18768p, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64111t = (byte) (-1);
            this.f64112u = -1;
            this.f64109q = abstractC19686b.f65839a;
        }

        private C18768p(boolean z) {
            this.f64111t = (byte) (-1);
            this.f64112u = -1;
            this.f64109q = AbstractC19673d.f65805b;
        }

        /* renamed from: A */
        private void m3290A() {
            this.f64095b = Collections.emptyList();
            this.f64096c = false;
            this.f64097d = 0;
            C18768p c18768p = f64094p;
            this.f64098e = c18768p;
            this.f64099f = 0;
            this.f64100g = 0;
            this.f64101h = 0;
            this.f64102i = 0;
            this.f64103j = 0;
            this.f64104k = c18768p;
            this.f64105l = 0;
            this.f64106m = c18768p;
            this.f64107n = 0;
            this.f64108o = 0;
        }

        /* renamed from: a */
        public static C18775b m3288a(C18768p c18768p) {
            return C18775b.m3221i().mo1702a(c18768p);
        }

        /* renamed from: a */
        public static C18768p m3289a() {
            return f64094p;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f64110s & 4096) == 4096) {
                codedOutputStream.m1827a(1, this.f64108o);
            }
            for (int i = 0; i < this.f64095b.size(); i++) {
                codedOutputStream.m1825a(2, this.f64095b.get(i));
            }
            if ((this.f64110s & 1) == 1) {
                codedOutputStream.m1817a(this.f64096c);
            }
            if ((this.f64110s & 2) == 2) {
                codedOutputStream.m1827a(4, this.f64097d);
            }
            if ((this.f64110s & 4) == 4) {
                codedOutputStream.m1825a(5, this.f64098e);
            }
            if ((this.f64110s & 16) == 16) {
                codedOutputStream.m1827a(6, this.f64100g);
            }
            if ((this.f64110s & 32) == 32) {
                codedOutputStream.m1827a(7, this.f64101h);
            }
            if ((this.f64110s & 8) == 8) {
                codedOutputStream.m1827a(8, this.f64099f);
            }
            if ((this.f64110s & 64) == 64) {
                codedOutputStream.m1827a(9, this.f64102i);
            }
            if ((this.f64110s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                codedOutputStream.m1825a(10, this.f64104k);
            }
            if ((this.f64110s & 512) == 512) {
                codedOutputStream.m1827a(11, this.f64105l);
            }
            if ((this.f64110s & 128) == 128) {
                codedOutputStream.m1827a(12, this.f64103j);
            }
            if ((this.f64110s & 1024) == 1024) {
                codedOutputStream.m1825a(13, this.f64106m);
            }
            if ((this.f64110s & 2048) == 2048) {
                codedOutputStream.m1827a(14, this.f64107n);
            }
            y.m1684a(200, codedOutputStream);
            codedOutputStream.m1796d(this.f64109q);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18768p> mo1661b() {
            return f64093a;
        }

        /* renamed from: c */
        public final int m3280c() {
            return this.f64095b.size();
        }

        /* renamed from: d */
        public final boolean m3276d() {
            return (this.f64110s & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64111t;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m3280c(); i++) {
                if (!this.f64095b.get(i).mo1655e()) {
                    this.f64111t = (byte) 0;
                    return false;
                }
            }
            if (m3267k() && !this.f64098e.mo1655e()) {
                this.f64111t = (byte) 0;
                return false;
            } else if (m3261q() && !this.f64104k.mo1655e()) {
                this.f64111t = (byte) 0;
                return false;
            } else if (m3259s() && !this.f64106m.mo1655e()) {
                this.f64111t = (byte) 0;
                return false;
            } else if (!m1687x()) {
                this.f64111t = (byte) 0;
                return false;
            } else {
                this.f64111t = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64112u;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f64110s & 4096) == 4096 ? CodedOutputStream.m1803c(1, this.f64108o) + 0 : 0;
            for (int i2 = 0; i2 < this.f64095b.size(); i2++) {
                m1803c += CodedOutputStream.m1802c(2, this.f64095b.get(i2));
            }
            int i3 = m1803c;
            if ((this.f64110s & 1) == 1) {
                i3 = m1803c + CodedOutputStream.m1799d(3) + 1;
            }
            int i4 = i3;
            if ((this.f64110s & 2) == 2) {
                i4 = i3 + CodedOutputStream.m1803c(4, this.f64097d);
            }
            int i5 = i4;
            if ((this.f64110s & 4) == 4) {
                i5 = i4 + CodedOutputStream.m1802c(5, this.f64098e);
            }
            int i6 = i5;
            if ((this.f64110s & 16) == 16) {
                i6 = i5 + CodedOutputStream.m1803c(6, this.f64100g);
            }
            int i7 = i6;
            if ((this.f64110s & 32) == 32) {
                i7 = i6 + CodedOutputStream.m1803c(7, this.f64101h);
            }
            int i8 = i7;
            if ((this.f64110s & 8) == 8) {
                i8 = i7 + CodedOutputStream.m1803c(8, this.f64099f);
            }
            int i9 = i8;
            if ((this.f64110s & 64) == 64) {
                i9 = i8 + CodedOutputStream.m1803c(9, this.f64102i);
            }
            int i10 = i9;
            if ((this.f64110s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                i10 = i9 + CodedOutputStream.m1802c(10, this.f64104k);
            }
            int i11 = i10;
            if ((this.f64110s & 512) == 512) {
                i11 = i10 + CodedOutputStream.m1803c(11, this.f64105l);
            }
            int i12 = i11;
            if ((this.f64110s & 128) == 128) {
                i12 = i11 + CodedOutputStream.m1803c(12, this.f64103j);
            }
            int i13 = i12;
            if ((this.f64110s & 1024) == 1024) {
                i13 = i12 + CodedOutputStream.m1802c(13, this.f64106m);
            }
            int i14 = i13;
            if ((this.f64110s & 2048) == 2048) {
                i14 = i13 + CodedOutputStream.m1803c(14, this.f64107n);
            }
            int z = i14 + m1685z() + this.f64109q.mo1649a();
            this.f64112u = z;
            return z;
        }

        /* renamed from: g */
        public final boolean m3272g() {
            return (this.f64110s & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* bridge */ /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18775b.m3221i();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64094p;
        }

        /* renamed from: k */
        public final boolean m3267k() {
            return (this.f64110s & 4) == 4;
        }

        /* renamed from: l */
        public final boolean m3266l() {
            return (this.f64110s & 8) == 8;
        }

        /* renamed from: m */
        public final boolean m3265m() {
            return (this.f64110s & 16) == 16;
        }

        /* renamed from: n */
        public final boolean m3264n() {
            return (this.f64110s & 32) == 32;
        }

        /* renamed from: o */
        public final boolean m3263o() {
            return (this.f64110s & 64) == 64;
        }

        /* renamed from: p */
        public final boolean m3262p() {
            return (this.f64110s & 128) == 128;
        }

        /* renamed from: q */
        public final boolean m3261q() {
            return (this.f64110s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
        }

        /* renamed from: r */
        public final boolean m3260r() {
            return (this.f64110s & 512) == 512;
        }

        /* renamed from: s */
        public final boolean m3259s() {
            return (this.f64110s & 1024) == 1024;
        }

        /* renamed from: t */
        public final boolean m3258t() {
            return (this.f64110s & 2048) == 2048;
        }

        /* renamed from: u */
        public final boolean m3257u() {
            return (this.f64110s & 4096) == 4096;
        }

        /* renamed from: v */
        public final C18775b mo1659h() {
            return C18775b.m3221i().mo1702a(this);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$q */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$q.class */
    public static final class C18776q extends AbstractC19683h.AbstractC19687c<C18776q> implements AbstractC18880s {

        /* renamed from: a */
        public static AbstractC19708r<C18776q> f64142a = new AbstractC19669b<C18776q>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.q.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18776q(c19676e, c19678f);
            }
        };

        /* renamed from: k */
        private static final C18776q f64143k;

        /* renamed from: b */
        public int f64144b;

        /* renamed from: c */
        public int f64145c;

        /* renamed from: d */
        public List<C18779r> f64146d;

        /* renamed from: e */
        public C18768p f64147e;

        /* renamed from: f */
        public int f64148f;

        /* renamed from: g */
        public C18768p f64149g;

        /* renamed from: h */
        public int f64150h;

        /* renamed from: i */
        public List<C18704a> f64151i;

        /* renamed from: j */
        public List<Integer> f64152j;

        /* renamed from: l */
        private final AbstractC19673d f64153l;

        /* renamed from: m */
        private int f64154m;

        /* renamed from: n */
        private byte f64155n;

        /* renamed from: o */
        private int f64156o;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$q$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$q$a.class */
        public static final class C18778a extends AbstractC19683h.AbstractC19686b<C18776q, C18778a> implements AbstractC18880s {

            /* renamed from: b */
            private int f64157b;

            /* renamed from: d */
            private int f64159d;

            /* renamed from: g */
            private int f64162g;

            /* renamed from: i */
            private int f64164i;

            /* renamed from: c */
            private int f64158c = 6;

            /* renamed from: e */
            private List<C18779r> f64160e = Collections.emptyList();

            /* renamed from: f */
            private C18768p f64161f = C18768p.m3289a();

            /* renamed from: h */
            private C18768p f64163h = C18768p.m3289a();

            /* renamed from: j */
            private List<C18704a> f64165j = Collections.emptyList();

            /* renamed from: k */
            private List<Integer> f64166k = Collections.emptyList();

            private C18778a() {
            }

            /* renamed from: a */
            private C18778a m3194a(int i) {
                this.f64157b |= 1;
                this.f64158c = i;
                return this;
            }

            /* renamed from: a */
            private C18778a m3193a(C18768p c18768p) {
                if ((this.f64157b & 8) != 8 || this.f64161f == C18768p.m3289a()) {
                    this.f64161f = c18768p;
                } else {
                    this.f64161f = C18768p.m3288a(this.f64161f).mo1702a(c18768p).m3223h();
                }
                this.f64157b |= 8;
                return this;
            }

            /* renamed from: b */
            private C18778a m3191b(int i) {
                this.f64157b |= 2;
                this.f64159d = i;
                return this;
            }

            /* renamed from: b */
            private C18778a m3190b(C18768p c18768p) {
                if ((this.f64157b & 32) != 32 || this.f64163h == C18768p.m3289a()) {
                    this.f64163h = c18768p;
                } else {
                    this.f64163h = C18768p.m3288a(this.f64163h).mo1702a(c18768p).m3223h();
                }
                this.f64157b |= 32;
                return this;
            }

            /* renamed from: c */
            private C18778a m3189c(int i) {
                this.f64157b |= 16;
                this.f64162g = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18776q.C18778a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$q> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18776q.f64142a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$q r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18776q) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$q$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$q r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18776q) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$q$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18776q.C18778a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$q$a");
            }

            /* renamed from: d */
            private C18778a m3187d(int i) {
                this.f64157b |= 64;
                this.f64164i = i;
                return this;
            }

            /* renamed from: g */
            static /* synthetic */ C18778a m3186g() {
                return new C18778a();
            }

            /* renamed from: h */
            public C18778a mo1697f() {
                return new C18778a().mo1702a(m3184i());
            }

            /* renamed from: i */
            private C18776q m3184i() {
                C18776q c18776q = new C18776q(this);
                int i = this.f64157b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18776q.f64144b = this.f64158c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18776q.f64145c = this.f64159d;
                if ((this.f64157b & 4) == 4) {
                    this.f64160e = Collections.unmodifiableList(this.f64160e);
                    this.f64157b &= -5;
                }
                c18776q.f64146d = this.f64160e;
                int i4 = i3;
                if ((i & 8) == 8) {
                    i4 = i3 | 4;
                }
                c18776q.f64147e = this.f64161f;
                int i5 = i4;
                if ((i & 16) == 16) {
                    i5 = i4 | 8;
                }
                c18776q.f64148f = this.f64162g;
                int i6 = i5;
                if ((i & 32) == 32) {
                    i6 = i5 | 16;
                }
                c18776q.f64149g = this.f64163h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                c18776q.f64150h = this.f64164i;
                if ((this.f64157b & 128) == 128) {
                    this.f64165j = Collections.unmodifiableList(this.f64165j);
                    this.f64157b &= -129;
                }
                c18776q.f64151i = this.f64165j;
                if ((this.f64157b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    this.f64166k = Collections.unmodifiableList(this.f64166k);
                    this.f64157b &= -257;
                }
                c18776q.f64152j = this.f64166k;
                c18776q.f64154m = i7;
                return c18776q;
            }

            /* renamed from: l */
            private void m3183l() {
                if ((this.f64157b & 4) != 4) {
                    this.f64160e = new ArrayList(this.f64160e);
                    this.f64157b |= 4;
                }
            }

            /* renamed from: m */
            private void m3182m() {
                if ((this.f64157b & 128) != 128) {
                    this.f64165j = new ArrayList(this.f64165j);
                    this.f64157b |= 128;
                }
            }

            /* renamed from: n */
            private void m3181n() {
                if ((this.f64157b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                    this.f64166k = new ArrayList(this.f64166k);
                    this.f64157b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
            }

            /* renamed from: a */
            public final C18778a mo1702a(C18776q c18776q) {
                if (c18776q == C18776q.m3217a()) {
                    return this;
                }
                if (c18776q.m3207c()) {
                    m3194a(c18776q.f64144b);
                }
                if (c18776q.m3203d()) {
                    m3191b(c18776q.f64145c);
                }
                if (!c18776q.f64146d.isEmpty()) {
                    if (this.f64160e.isEmpty()) {
                        this.f64160e = c18776q.f64146d;
                        this.f64157b &= -5;
                    } else {
                        m3183l();
                        this.f64160e.addAll(c18776q.f64146d);
                    }
                }
                if (c18776q.m3199g()) {
                    m3193a(c18776q.f64147e);
                }
                if (c18776q.m3198k()) {
                    m3189c(c18776q.f64148f);
                }
                if (c18776q.m3197l()) {
                    m3190b(c18776q.f64149g);
                }
                if (c18776q.m3196m()) {
                    m3187d(c18776q.f64150h);
                }
                if (!c18776q.f64151i.isEmpty()) {
                    if (this.f64165j.isEmpty()) {
                        this.f64165j = c18776q.f64151i;
                        this.f64157b &= -129;
                    } else {
                        m3182m();
                        this.f64165j.addAll(c18776q.f64151i);
                    }
                }
                if (!c18776q.f64152j.isEmpty()) {
                    if (this.f64166k.isEmpty()) {
                        this.f64166k = c18776q.f64152j;
                        this.f64157b &= -257;
                    } else {
                        m3181n();
                        this.f64166k.addAll(c18776q.f64152j);
                    }
                }
                m1700a((C18778a) c18776q);
                this.f65839a = this.f65839a.m1769a(c18776q.f64153l);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18776q.m3217a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18776q m3184i = m3184i();
                if (m3184i.mo1655e()) {
                    return m3184i;
                }
                throw m1778a((AbstractC19705p) m3184i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                if (!((this.f64157b & 2) == 2)) {
                    return false;
                }
                for (int i = 0; i < this.f64160e.size(); i++) {
                    if (!this.f64160e.get(i).mo1655e()) {
                        return false;
                    }
                }
                if (((this.f64157b & 8) == 8) && !this.f64161f.mo1655e()) {
                    return false;
                }
                if (((this.f64157b & 32) == 32) && !this.f64163h.mo1655e()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.f64165j.size(); i2++) {
                    if (!this.f64165j.get(i2).mo1655e()) {
                        return false;
                    }
                }
                return m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18776q.m3217a();
            }
        }

        static {
            C18776q c18776q = new C18776q(true);
            f64143k = c18776q;
            c18776q.m3195n();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18776q(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64155n = (byte) (-1);
            this.f64156o = -1;
            m3195n();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        C18768p.C18775b c18775b = null;
                        switch (m1759a) {
                            case 0:
                                break;
                            case 8:
                                this.f64154m |= 1;
                                boolean z4 = z2;
                                this.f64144b = c19676e.m1748d();
                                continue;
                            case 16:
                                this.f64154m |= 2;
                                boolean z5 = z2;
                                this.f64145c = c19676e.m1748d();
                                continue;
                            case 26:
                                boolean z6 = z2;
                                if (!(z2 & true)) {
                                    boolean z7 = z2;
                                    boolean z8 = z2;
                                    this.f64146d = new ArrayList();
                                    z6 = z2 | true;
                                }
                                this.f64146d.add(c19676e.m1753a(C18779r.f64167a, c19678f));
                                z2 = z6;
                                continue;
                            case 34:
                                C18768p.C18775b c18775b2 = null;
                                if ((this.f64154m & 4) == 4) {
                                    boolean z9 = z2;
                                    c18775b2 = this.f64147e.mo1659h();
                                }
                                boolean z10 = z2;
                                C18768p c18768p = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                boolean z11 = z2;
                                this.f64147e = c18768p;
                                if (c18775b2 != null) {
                                    c18775b2.mo1702a(c18768p);
                                    boolean z12 = z2;
                                    this.f64147e = c18775b2.m3223h();
                                }
                                boolean z13 = z2;
                                this.f64154m |= 4;
                                continue;
                            case 40:
                                this.f64154m |= 8;
                                boolean z14 = z2;
                                this.f64148f = c19676e.m1748d();
                                continue;
                            case 50:
                                if ((this.f64154m & 16) == 16) {
                                    boolean z15 = z2;
                                    c18775b = this.f64149g.mo1659h();
                                }
                                boolean z16 = z2;
                                C18768p c18768p2 = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                boolean z17 = z2;
                                this.f64149g = c18768p2;
                                if (c18775b != null) {
                                    c18775b.mo1702a(c18768p2);
                                    boolean z18 = z2;
                                    this.f64149g = c18775b.m3223h();
                                }
                                boolean z19 = z2;
                                this.f64154m |= 16;
                                continue;
                            case 56:
                                this.f64154m |= 32;
                                boolean z20 = z2;
                                this.f64150h = c19676e.m1748d();
                                continue;
                            case 66:
                                boolean z21 = z2;
                                if (!(z2 & true)) {
                                    boolean z22 = z2;
                                    boolean z23 = z2;
                                    this.f64151i = new ArrayList();
                                    z21 = z2 | true;
                                }
                                this.f64151i.add(c19676e.m1753a(C18704a.f63811a, c19678f));
                                z2 = z21;
                                continue;
                            case 248:
                                boolean z24 = z2;
                                if (!(z2 & true)) {
                                    boolean z25 = z2;
                                    boolean z26 = z2;
                                    this.f64152j = new ArrayList();
                                    z24 = z2 | true;
                                }
                                this.f64152j.add(Integer.valueOf(c19676e.m1748d()));
                                z2 = z24;
                                continue;
                            case 250:
                                int m1751b = c19676e.m1751b(c19676e.m1748d());
                                boolean z27 = z2;
                                if (!(z2 & true)) {
                                    z27 = z2;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z28 = z2;
                                        boolean z29 = z2;
                                        boolean z30 = z2;
                                        this.f64152j = new ArrayList();
                                        z27 = z2 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z31 = z27;
                                    this.f64152j.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b);
                                z2 = z27;
                                continue;
                            default:
                                if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f64146d = Collections.unmodifiableList(this.f64146d);
                        }
                        if (z3 & true) {
                            this.f64151i = Collections.unmodifiableList(this.f64151i);
                        }
                        if (z3 & true) {
                            this.f64152j = Collections.unmodifiableList(this.f64152j);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64153l = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64153l = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f64146d = Collections.unmodifiableList(this.f64146d);
            }
            if (z2 & true) {
                this.f64151i = Collections.unmodifiableList(this.f64151i);
            }
            if (z2 & true) {
                this.f64152j = Collections.unmodifiableList(this.f64152j);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64153l = m1763h.m1762a();
                throw th3;
            }
            this.f64153l = m1763h.m1762a();
            mo1688w();
        }

        private C18776q(AbstractC19683h.AbstractC19686b<C18776q, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64155n = (byte) (-1);
            this.f64156o = -1;
            this.f64153l = abstractC19686b.f65839a;
        }

        private C18776q(boolean z) {
            this.f64155n = (byte) (-1);
            this.f64156o = -1;
            this.f64153l = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18776q m3217a() {
            return f64143k;
        }

        /* renamed from: a */
        public static C18776q m3216a(InputStream inputStream, C19678f c19678f) throws IOException {
            return f64142a.mo1653a(inputStream, c19678f);
        }

        /* renamed from: n */
        private void m3195n() {
            this.f64144b = 6;
            this.f64145c = 0;
            this.f64146d = Collections.emptyList();
            this.f64147e = C18768p.m3289a();
            this.f64148f = 0;
            this.f64149g = C18768p.m3289a();
            this.f64150h = 0;
            this.f64151i = Collections.emptyList();
            this.f64152j = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            int i;
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f64154m & 1) == 1) {
                codedOutputStream.m1827a(1, this.f64144b);
            }
            if ((this.f64154m & 2) == 2) {
                codedOutputStream.m1827a(2, this.f64145c);
            }
            for (int i2 = 0; i2 < this.f64146d.size(); i2++) {
                codedOutputStream.m1825a(3, this.f64146d.get(i2));
            }
            if ((this.f64154m & 4) == 4) {
                codedOutputStream.m1825a(4, this.f64147e);
            }
            if ((this.f64154m & 8) == 8) {
                codedOutputStream.m1827a(5, this.f64148f);
            }
            if ((this.f64154m & 16) == 16) {
                codedOutputStream.m1825a(6, this.f64149g);
            }
            if ((this.f64154m & 32) == 32) {
                codedOutputStream.m1827a(7, this.f64150h);
            }
            int i3 = 0;
            while (true) {
                if (i3 < this.f64151i.size()) {
                    codedOutputStream.m1825a(8, this.f64151i.get(i3));
                    i3++;
                }
            }
            for (i = 0; i < this.f64152j.size(); i++) {
                codedOutputStream.m1827a(31, this.f64152j.get(i).intValue());
            }
            y.m1684a(200, codedOutputStream);
            codedOutputStream.m1796d(this.f64153l);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18776q> mo1661b() {
            return f64142a;
        }

        /* renamed from: c */
        public final boolean m3207c() {
            return (this.f64154m & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3203d() {
            return (this.f64154m & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64155n;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3203d()) {
                this.f64155n = (byte) 0;
                return false;
            }
            for (int i = 0; i < this.f64146d.size(); i++) {
                if (!this.f64146d.get(i).mo1655e()) {
                    this.f64155n = (byte) 0;
                    return false;
                }
            }
            if (m3199g() && !this.f64147e.mo1655e()) {
                this.f64155n = (byte) 0;
                return false;
            } else if (m3197l() && !this.f64149g.mo1655e()) {
                this.f64155n = (byte) 0;
                return false;
            } else {
                for (int i2 = 0; i2 < this.f64151i.size(); i2++) {
                    if (!this.f64151i.get(i2).mo1655e()) {
                        this.f64155n = (byte) 0;
                        return false;
                    }
                }
                if (!m1687x()) {
                    this.f64155n = (byte) 0;
                    return false;
                }
                this.f64155n = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64156o;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f64154m & 1) == 1 ? CodedOutputStream.m1803c(1, this.f64144b) + 0 : 0;
            int i2 = m1803c;
            if ((this.f64154m & 2) == 2) {
                i2 = m1803c + CodedOutputStream.m1803c(2, this.f64145c);
            }
            for (int i3 = 0; i3 < this.f64146d.size(); i3++) {
                i2 += CodedOutputStream.m1802c(3, this.f64146d.get(i3));
            }
            int i4 = i2;
            if ((this.f64154m & 4) == 4) {
                i4 = i2 + CodedOutputStream.m1802c(4, this.f64147e);
            }
            int i5 = i4;
            if ((this.f64154m & 8) == 8) {
                i5 = i4 + CodedOutputStream.m1803c(5, this.f64148f);
            }
            int i6 = i5;
            if ((this.f64154m & 16) == 16) {
                i6 = i5 + CodedOutputStream.m1802c(6, this.f64149g);
            }
            int i7 = i6;
            if ((this.f64154m & 32) == 32) {
                i7 = i6 + CodedOutputStream.m1803c(7, this.f64150h);
            }
            for (int i8 = 0; i8 < this.f64151i.size(); i8++) {
                i7 += CodedOutputStream.m1802c(8, this.f64151i.get(i8));
            }
            int i9 = 0;
            for (int i10 = 0; i10 < this.f64152j.size(); i10++) {
                i9 += CodedOutputStream.m1804c(this.f64152j.get(i10).intValue());
            }
            int size = i7 + i9 + (this.f64152j.size() * 2) + m1685z() + this.f64153l.mo1649a();
            this.f64156o = size;
            return size;
        }

        /* renamed from: g */
        public final boolean m3199g() {
            return (this.f64154m & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18778a.m3186g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18778a.m3186g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64143k;
        }

        /* renamed from: k */
        public final boolean m3198k() {
            return (this.f64154m & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3197l() {
            return (this.f64154m & 16) == 16;
        }

        /* renamed from: m */
        public final boolean m3196m() {
            return (this.f64154m & 32) == 32;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$r */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$r.class */
    public static final class C18779r extends AbstractC19683h.AbstractC19687c<C18779r> implements AbstractC18882u {

        /* renamed from: a */
        public static AbstractC19708r<C18779r> f64167a = new AbstractC19669b<C18779r>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.r.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18779r(c19676e, c19678f);
            }
        };

        /* renamed from: h */
        private static final C18779r f64168h;

        /* renamed from: b */
        public int f64169b;

        /* renamed from: c */
        public int f64170c;

        /* renamed from: d */
        public boolean f64171d;

        /* renamed from: e */
        public EnumC18782b f64172e;

        /* renamed from: f */
        public List<C18768p> f64173f;

        /* renamed from: g */
        public List<Integer> f64174g;

        /* renamed from: i */
        private final AbstractC19673d f64175i;

        /* renamed from: j */
        private int f64176j;

        /* renamed from: k */
        private int f64177k;

        /* renamed from: l */
        private byte f64178l;

        /* renamed from: m */
        private int f64179m;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$r$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$r$a.class */
        public static final class C18781a extends AbstractC19683h.AbstractC19686b<C18779r, C18781a> implements AbstractC18882u {

            /* renamed from: b */
            private int f64180b;

            /* renamed from: c */
            private int f64181c;

            /* renamed from: d */
            private int f64182d;

            /* renamed from: e */
            private boolean f64183e;

            /* renamed from: f */
            private EnumC18782b f64184f = EnumC18782b.INV;

            /* renamed from: g */
            private List<C18768p> f64185g = Collections.emptyList();

            /* renamed from: h */
            private List<Integer> f64186h = Collections.emptyList();

            private C18781a() {
            }

            /* renamed from: a */
            private C18781a m3164a(int i) {
                this.f64180b |= 1;
                this.f64181c = i;
                return this;
            }

            /* renamed from: a */
            private C18781a m3163a(EnumC18782b enumC18782b) {
                Objects.requireNonNull(enumC18782b);
                this.f64180b |= 8;
                this.f64184f = enumC18782b;
                return this;
            }

            /* renamed from: a */
            private C18781a m3161a(boolean z) {
                this.f64180b |= 4;
                this.f64183e = z;
                return this;
            }

            /* renamed from: b */
            private C18781a m3160b(int i) {
                this.f64180b |= 2;
                this.f64182d = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18779r.C18781a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$r> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18779r.f64167a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$r r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18779r) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$r$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$r r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18779r) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$r$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18779r.C18781a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$r$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18781a m3158g() {
                return new C18781a();
            }

            /* renamed from: h */
            public C18781a mo1697f() {
                return new C18781a().mo1702a(m3156i());
            }

            /* renamed from: i */
            private C18779r m3156i() {
                C18779r c18779r = new C18779r(this);
                int i = this.f64180b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18779r.f64169b = this.f64181c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18779r.f64170c = this.f64182d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18779r.f64171d = this.f64183e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18779r.f64172e = this.f64184f;
                if ((this.f64180b & 16) == 16) {
                    this.f64185g = Collections.unmodifiableList(this.f64185g);
                    this.f64180b &= -17;
                }
                c18779r.f64173f = this.f64185g;
                if ((this.f64180b & 32) == 32) {
                    this.f64186h = Collections.unmodifiableList(this.f64186h);
                    this.f64180b &= -33;
                }
                c18779r.f64174g = this.f64186h;
                c18779r.f64176j = i5;
                return c18779r;
            }

            /* renamed from: l */
            private void m3155l() {
                if ((this.f64180b & 16) != 16) {
                    this.f64185g = new ArrayList(this.f64185g);
                    this.f64180b |= 16;
                }
            }

            /* renamed from: m */
            private void m3154m() {
                if ((this.f64180b & 32) != 32) {
                    this.f64186h = new ArrayList(this.f64186h);
                    this.f64180b |= 32;
                }
            }

            /* renamed from: a */
            public final C18781a mo1702a(C18779r c18779r) {
                if (c18779r == C18779r.m3180a()) {
                    return this;
                }
                if (c18779r.m3171c()) {
                    m3164a(c18779r.f64169b);
                }
                if (c18779r.m3168d()) {
                    m3160b(c18779r.f64170c);
                }
                if (c18779r.m3167g()) {
                    m3161a(c18779r.f64171d);
                }
                if (c18779r.m3166k()) {
                    m3163a(c18779r.f64172e);
                }
                if (!c18779r.f64173f.isEmpty()) {
                    if (this.f64185g.isEmpty()) {
                        this.f64185g = c18779r.f64173f;
                        this.f64180b &= -17;
                    } else {
                        m3155l();
                        this.f64185g.addAll(c18779r.f64173f);
                    }
                }
                if (!c18779r.f64174g.isEmpty()) {
                    if (this.f64186h.isEmpty()) {
                        this.f64186h = c18779r.f64174g;
                        this.f64180b &= -33;
                    } else {
                        m3154m();
                        this.f64186h.addAll(c18779r.f64174g);
                    }
                }
                m1700a((C18781a) c18779r);
                this.f65839a = this.f65839a.m1769a(c18779r.f64175i);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18779r.m3180a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18779r m3156i = m3156i();
                if (m3156i.mo1655e()) {
                    return m3156i;
                }
                throw m1778a((AbstractC19705p) m3156i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                int i = this.f64180b;
                if (!((i & 1) == 1)) {
                    return false;
                }
                if (!((i & 2) == 2)) {
                    return false;
                }
                for (int i2 = 0; i2 < this.f64185g.size(); i2++) {
                    if (!this.f64185g.get(i2).mo1655e()) {
                        return false;
                    }
                }
                return m1696k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18779r.m3180a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$r$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$r$b.class */
        public enum EnumC18782b implements C19692j.AbstractC19693a {
            IN(0, 0),
            OUT(1, 1),
            INV(2, 2);
            
            private static C19692j.AbstractC19694b<EnumC18782b> internalValueMap = new C19692j.AbstractC19694b<EnumC18782b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.r.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18782b mo1672a(int i) {
                    return EnumC18782b.valueOf(i);
                }
            };
            private final int value;

            EnumC18782b(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18782b valueOf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return OUT;
                    }
                    if (i == 2) {
                        return INV;
                    }
                    return null;
                }
                return IN;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            C18779r c18779r = new C18779r(true);
            f64168h = c18779r;
            c18779r.m3165l();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18779r(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64177k = -1;
            this.f64178l = (byte) (-1);
            this.f64179m = -1;
            m3165l();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                this.f64176j |= 1;
                                boolean z4 = z2;
                                this.f64169b = c19676e.m1748d();
                            } else if (m1759a == 16) {
                                this.f64176j |= 2;
                                boolean z5 = z2;
                                this.f64170c = c19676e.m1748d();
                            } else if (m1759a == 24) {
                                this.f64176j |= 4;
                                boolean z6 = z2;
                                this.f64171d = c19676e.m1752b();
                            } else if (m1759a == 32) {
                                int m1748d = c19676e.m1748d();
                                boolean z7 = z2;
                                EnumC18782b valueOf = EnumC18782b.valueOf(m1748d);
                                if (valueOf == null) {
                                    m1823a.m1795e(m1759a);
                                    boolean z8 = z2;
                                    m1823a.m1795e(m1748d);
                                } else {
                                    this.f64176j |= 8;
                                    boolean z9 = z2;
                                    this.f64172e = valueOf;
                                }
                            } else if (m1759a == 42) {
                                boolean z10 = z2;
                                if (!(z2 & true)) {
                                    boolean z11 = z2;
                                    boolean z12 = z2;
                                    this.f64173f = new ArrayList();
                                    z10 = z2 | true;
                                }
                                this.f64173f.add(c19676e.m1753a(C18768p.f64093a, c19678f));
                                z2 = z10;
                            } else if (m1759a == 48) {
                                boolean z13 = z2;
                                if (!(z2 & true)) {
                                    boolean z14 = z2;
                                    boolean z15 = z2;
                                    this.f64174g = new ArrayList();
                                    z13 = z2 | true;
                                }
                                this.f64174g.add(Integer.valueOf(c19676e.m1748d()));
                                z2 = z13;
                            } else if (m1759a == 50) {
                                int m1751b = c19676e.m1751b(c19676e.m1748d());
                                boolean z16 = z2;
                                if (!(z2 & true)) {
                                    z16 = z2;
                                    if (c19676e.m1740h() > 0) {
                                        boolean z17 = z2;
                                        boolean z18 = z2;
                                        boolean z19 = z2;
                                        this.f64174g = new ArrayList();
                                        z16 = z2 | true;
                                    }
                                }
                                while (c19676e.m1740h() > 0) {
                                    boolean z20 = z16;
                                    this.f64174g.add(Integer.valueOf(c19676e.m1748d()));
                                }
                                c19676e.m1749c(m1751b);
                                z2 = z16;
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f64173f = Collections.unmodifiableList(this.f64173f);
                        }
                        if (z3 & true) {
                            this.f64174g = Collections.unmodifiableList(this.f64174g);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64175i = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64175i = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f64173f = Collections.unmodifiableList(this.f64173f);
            }
            if (z2 & true) {
                this.f64174g = Collections.unmodifiableList(this.f64174g);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64175i = m1763h.m1762a();
                throw th3;
            }
            this.f64175i = m1763h.m1762a();
            mo1688w();
        }

        private C18779r(AbstractC19683h.AbstractC19686b<C18779r, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64177k = -1;
            this.f64178l = (byte) (-1);
            this.f64179m = -1;
            this.f64175i = abstractC19686b.f65839a;
        }

        private C18779r(boolean z) {
            this.f64177k = -1;
            this.f64178l = (byte) (-1);
            this.f64179m = -1;
            this.f64175i = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18779r m3180a() {
            return f64168h;
        }

        /* renamed from: l */
        private void m3165l() {
            this.f64169b = 0;
            this.f64170c = 0;
            this.f64171d = false;
            this.f64172e = EnumC18782b.INV;
            this.f64173f = Collections.emptyList();
            this.f64174g = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f64176j & 1) == 1) {
                codedOutputStream.m1827a(1, this.f64169b);
            }
            if ((this.f64176j & 2) == 2) {
                codedOutputStream.m1827a(2, this.f64170c);
            }
            if ((this.f64176j & 4) == 4) {
                codedOutputStream.m1817a(this.f64171d);
            }
            if ((this.f64176j & 8) == 8) {
                codedOutputStream.m1812b(4, this.f64172e.getNumber());
            }
            for (int i = 0; i < this.f64173f.size(); i++) {
                codedOutputStream.m1825a(5, this.f64173f.get(i));
            }
            int i2 = 0;
            if (this.f64174g.size() > 0) {
                codedOutputStream.m1795e(50);
                codedOutputStream.m1795e(this.f64177k);
                i2 = 0;
            }
            while (i2 < this.f64174g.size()) {
                codedOutputStream.m1828a(this.f64174g.get(i2).intValue());
                i2++;
            }
            y.m1684a(1000, codedOutputStream);
            codedOutputStream.m1796d(this.f64175i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18779r> mo1661b() {
            return f64167a;
        }

        /* renamed from: c */
        public final boolean m3171c() {
            return (this.f64176j & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3168d() {
            return (this.f64176j & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64178l;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3171c()) {
                this.f64178l = (byte) 0;
                return false;
            } else if (!m3168d()) {
                this.f64178l = (byte) 0;
                return false;
            } else {
                for (int i = 0; i < this.f64173f.size(); i++) {
                    if (!this.f64173f.get(i).mo1655e()) {
                        this.f64178l = (byte) 0;
                        return false;
                    }
                }
                if (!m1687x()) {
                    this.f64178l = (byte) 0;
                    return false;
                }
                this.f64178l = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64179m;
            if (i != -1) {
                return i;
            }
            int m1803c = (this.f64176j & 1) == 1 ? CodedOutputStream.m1803c(1, this.f64169b) + 0 : 0;
            int i2 = m1803c;
            if ((this.f64176j & 2) == 2) {
                i2 = m1803c + CodedOutputStream.m1803c(2, this.f64170c);
            }
            int i3 = i2;
            if ((this.f64176j & 4) == 4) {
                i3 = i2 + CodedOutputStream.m1799d(3) + 1;
            }
            int i4 = i3;
            if ((this.f64176j & 8) == 8) {
                i4 = i3 + CodedOutputStream.m1798d(4, this.f64172e.getNumber());
            }
            for (int i5 = 0; i5 < this.f64173f.size(); i5++) {
                i4 += CodedOutputStream.m1802c(5, this.f64173f.get(i5));
            }
            int i6 = 0;
            for (int i7 = 0; i7 < this.f64174g.size(); i7++) {
                i6 += CodedOutputStream.m1804c(this.f64174g.get(i7).intValue());
            }
            int i8 = i4 + i6;
            int i9 = i8;
            if (!this.f64174g.isEmpty()) {
                i9 = i8 + 1 + CodedOutputStream.m1804c(i6);
            }
            this.f64177k = i6;
            int z = i9 + m1685z() + this.f64175i.mo1649a();
            this.f64179m = z;
            return z;
        }

        /* renamed from: g */
        public final boolean m3167g() {
            return (this.f64176j & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18781a.m3158g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18781a.m3158g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64168h;
        }

        /* renamed from: k */
        public final boolean m3166k() {
            return (this.f64176j & 8) == 8;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$s */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$s.class */
    public static final class C18784s extends AbstractC19683h implements AbstractC18883v {

        /* renamed from: a */
        public static AbstractC19708r<C18784s> f64188a = new AbstractC19669b<C18784s>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.s.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18784s(c19676e, c19678f);
            }
        };

        /* renamed from: d */
        private static final C18784s f64189d;

        /* renamed from: b */
        public List<C18768p> f64190b;

        /* renamed from: c */
        public int f64191c;

        /* renamed from: e */
        private final AbstractC19673d f64192e;

        /* renamed from: f */
        private int f64193f;

        /* renamed from: g */
        private byte f64194g;

        /* renamed from: h */
        private int f64195h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$s$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$s$a.class */
        public static final class C18786a extends AbstractC19683h.AbstractC19685a<C18784s, C18786a> implements AbstractC18883v {

            /* renamed from: b */
            private int f64196b;

            /* renamed from: c */
            private List<C18768p> f64197c = Collections.emptyList();

            /* renamed from: d */
            private int f64198d = -1;

            private C18786a() {
            }

            /* renamed from: a */
            private C18786a m3144a(int i) {
                this.f64196b |= 2;
                this.f64198d = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18784s.C18786a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$s> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18784s.f64188a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$s r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18784s) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$s$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$s r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18784s) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$s$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18784s.C18786a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$s$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18786a m3140g() {
                return new C18786a();
            }

            /* renamed from: h */
            public C18786a clone() {
                return new C18786a().mo1702a(m3141f());
            }

            /* renamed from: i */
            private void m3138i() {
                if ((this.f64196b & 1) != 1) {
                    this.f64197c = new ArrayList(this.f64197c);
                    this.f64196b |= 1;
                }
            }

            /* renamed from: a */
            public final C18786a mo1702a(C18784s c18784s) {
                if (c18784s == C18784s.m3153a()) {
                    return this;
                }
                if (!c18784s.f64190b.isEmpty()) {
                    if (this.f64197c.isEmpty()) {
                        this.f64197c = c18784s.f64190b;
                        this.f64196b &= -2;
                    } else {
                        m3138i();
                        this.f64197c.addAll(c18784s.f64190b);
                    }
                }
                if (c18784s.m3147c()) {
                    m3144a(c18784s.f64191c);
                }
                this.f65839a = this.f65839a.m1769a(c18784s.f64192e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18784s mo1703a() {
                return C18784s.m3153a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18784s m3141f = m3141f();
                if (m3141f.mo1655e()) {
                    return m3141f;
                }
                throw m1778a((AbstractC19705p) m3141f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                for (int i = 0; i < this.f64197c.size(); i++) {
                    if (!this.f64197c.get(i).mo1655e()) {
                        return false;
                    }
                }
                return true;
            }

            /* renamed from: f */
            public final C18784s m3141f() {
                C18784s c18784s = new C18784s(this);
                int i = this.f64196b;
                int i2 = 1;
                if ((i & 1) == 1) {
                    this.f64197c = Collections.unmodifiableList(this.f64197c);
                    this.f64196b &= -2;
                }
                c18784s.f64190b = this.f64197c;
                if ((i & 2) != 2) {
                    i2 = 0;
                }
                c18784s.f64191c = this.f64198d;
                c18784s.f64193f = i2;
                return c18784s;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18784s.m3153a();
            }
        }

        static {
            C18784s c18784s = new C18784s(true);
            f64189d = c18784s;
            c18784s.m3145d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18784s(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64194g = (byte) (-1);
            this.f64195h = -1;
            m3145d();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 10) {
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.f64190b = new ArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.f64190b.add(c19676e.m1753a(C18768p.f64093a, c19678f));
                                    z2 = z4;
                                } else if (m1759a == 16) {
                                    this.f64193f |= 1;
                                    boolean z7 = z2;
                                    this.f64191c = c19676e.m1748d();
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64190b = Collections.unmodifiableList(this.f64190b);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64192e = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64192e = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64190b = Collections.unmodifiableList(this.f64190b);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64192e = m1763h.m1762a();
                throw th3;
            }
            this.f64192e = m1763h.m1762a();
            mo1688w();
        }

        private C18784s(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64194g = (byte) (-1);
            this.f64195h = -1;
            this.f64192e = abstractC19685a.f65839a;
        }

        private C18784s(boolean z) {
            this.f64194g = (byte) (-1);
            this.f64195h = -1;
            this.f64192e = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18786a m3152a(C18784s c18784s) {
            return C18786a.m3140g().mo1702a(c18784s);
        }

        /* renamed from: a */
        public static C18784s m3153a() {
            return f64189d;
        }

        /* renamed from: d */
        private void m3145d() {
            this.f64190b = Collections.emptyList();
            this.f64191c = -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            for (int i = 0; i < this.f64190b.size(); i++) {
                codedOutputStream.m1825a(1, this.f64190b.get(i));
            }
            if ((this.f64193f & 1) == 1) {
                codedOutputStream.m1827a(2, this.f64191c);
            }
            codedOutputStream.m1796d(this.f64192e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18784s> mo1661b() {
            return f64188a;
        }

        /* renamed from: c */
        public final boolean m3147c() {
            return (this.f64193f & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64194g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < this.f64190b.size(); i++) {
                if (!this.f64190b.get(i).mo1655e()) {
                    this.f64194g = (byte) 0;
                    return false;
                }
            }
            this.f64194g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64195h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f64190b.size(); i3++) {
                i2 += CodedOutputStream.m1802c(1, this.f64190b.get(i3));
            }
            int i4 = i2;
            if ((this.f64193f & 1) == 1) {
                i4 = i2 + CodedOutputStream.m1803c(2, this.f64191c);
            }
            int mo1649a = i4 + this.f64192e.mo1649a();
            this.f64195h = mo1649a;
            return mo1649a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18786a.m3140g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18786a.m3140g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64189d;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$t */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$t.class */
    public static final class C18787t extends AbstractC19683h.AbstractC19687c<C18787t> implements AbstractC18884w {

        /* renamed from: a */
        public static AbstractC19708r<C18787t> f64199a = new AbstractC19669b<C18787t>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.t.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18787t(c19676e, c19678f);
            }
        };

        /* renamed from: h */
        private static final C18787t f64200h;

        /* renamed from: b */
        public int f64201b;

        /* renamed from: c */
        public int f64202c;

        /* renamed from: d */
        public C18768p f64203d;

        /* renamed from: e */
        public int f64204e;

        /* renamed from: f */
        public C18768p f64205f;

        /* renamed from: g */
        public int f64206g;

        /* renamed from: i */
        private final AbstractC19673d f64207i;

        /* renamed from: j */
        private int f64208j;

        /* renamed from: k */
        private byte f64209k;

        /* renamed from: l */
        private int f64210l;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$t$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$t$a.class */
        public static final class C18789a extends AbstractC19683h.AbstractC19686b<C18787t, C18789a> implements AbstractC18884w {

            /* renamed from: b */
            private int f64211b;

            /* renamed from: c */
            private int f64212c;

            /* renamed from: d */
            private int f64213d;

            /* renamed from: f */
            private int f64215f;

            /* renamed from: h */
            private int f64217h;

            /* renamed from: e */
            private C18768p f64214e = C18768p.m3289a();

            /* renamed from: g */
            private C18768p f64216g = C18768p.m3289a();

            private C18789a() {
            }

            /* renamed from: a */
            private C18789a m3120a(int i) {
                this.f64211b |= 1;
                this.f64212c = i;
                return this;
            }

            /* renamed from: a */
            private C18789a m3119a(C18768p c18768p) {
                if ((this.f64211b & 4) != 4 || this.f64214e == C18768p.m3289a()) {
                    this.f64214e = c18768p;
                } else {
                    this.f64214e = C18768p.m3288a(this.f64214e).mo1702a(c18768p).m3223h();
                }
                this.f64211b |= 4;
                return this;
            }

            /* renamed from: b */
            private C18789a m3117b(int i) {
                this.f64211b |= 2;
                this.f64213d = i;
                return this;
            }

            /* renamed from: b */
            private C18789a m3116b(C18768p c18768p) {
                if ((this.f64211b & 16) != 16 || this.f64216g == C18768p.m3289a()) {
                    this.f64216g = c18768p;
                } else {
                    this.f64216g = C18768p.m3288a(this.f64216g).mo1702a(c18768p).m3223h();
                }
                this.f64211b |= 16;
                return this;
            }

            /* renamed from: c */
            private C18789a m3115c(int i) {
                this.f64211b |= 8;
                this.f64215f = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t.C18789a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$t> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t.f64199a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$t r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$t$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r5
                    r6 = r0
                    goto L2c
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$t r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                    r0 = r5
                    r7 = r0
                L2c:
                    r0 = r7
                    if (r0 == 0) goto L36
                    r0 = r4
                    r1 = r7
                    kotlin.reflect.jvm.internal.impl.b.a$t$a r0 = r0.mo1702a(r1)
                L36:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t.C18789a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$t$a");
            }

            /* renamed from: d */
            private C18789a m3113d(int i) {
                this.f64211b |= 32;
                this.f64217h = i;
                return this;
            }

            /* renamed from: h */
            static /* synthetic */ C18789a m3111h() {
                return new C18789a();
            }

            /* renamed from: i */
            public C18789a mo1697f() {
                return new C18789a().mo1702a(m3112g());
            }

            /* renamed from: a */
            public final C18789a mo1702a(C18787t c18787t) {
                if (c18787t == C18787t.m3137a()) {
                    return this;
                }
                if (c18787t.m3130c()) {
                    m3120a(c18787t.f64201b);
                }
                if (c18787t.m3128d()) {
                    m3117b(c18787t.f64202c);
                }
                if (c18787t.m3125g()) {
                    m3119a(c18787t.f64203d);
                }
                if (c18787t.m3124k()) {
                    m3115c(c18787t.f64204e);
                }
                if (c18787t.m3123l()) {
                    m3116b(c18787t.f64205f);
                }
                if (c18787t.m3122m()) {
                    m3113d(c18787t.f64206g);
                }
                m1700a((C18789a) c18787t);
                this.f65839a = this.f65839a.m1769a(c18787t.f64207i);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractC19683h mo1703a() {
                return C18787t.m3137a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18787t m3112g = m3112g();
                if (m3112g.mo1655e()) {
                    return m3112g;
                }
                throw m1778a((AbstractC19705p) m3112g);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                int i = this.f64211b;
                if (!((i & 2) == 2)) {
                    return false;
                }
                if (((i & 4) == 4) && !this.f64214e.mo1655e()) {
                    return false;
                }
                return (!((this.f64211b & 16) == 16) || this.f64216g.mo1655e()) && m1696k();
            }

            /* renamed from: g */
            public final C18787t m3112g() {
                C18787t c18787t = new C18787t(this);
                int i = this.f64211b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18787t.f64201b = this.f64212c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18787t.f64202c = this.f64213d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18787t.f64203d = this.f64214e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18787t.f64204e = this.f64215f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                c18787t.f64205f = this.f64216g;
                int i7 = i6;
                if ((i & 32) == 32) {
                    i7 = i6 | 32;
                }
                c18787t.f64206g = this.f64217h;
                c18787t.f64208j = i7;
                return c18787t;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18787t.m3137a();
            }
        }

        static {
            C18787t c18787t = new C18787t(true);
            f64200h = c18787t;
            c18787t.m3121n();
        }

        private C18787t(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64209k = (byte) (-1);
            this.f64210l = -1;
            m3121n();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                this.f64208j |= 1;
                                this.f64201b = c19676e.m1748d();
                            } else if (m1759a != 16) {
                                C18768p.C18775b c18775b = null;
                                if (m1759a == 26) {
                                    C18768p.C18775b mo1659h = (this.f64208j & 4) == 4 ? this.f64203d.mo1659h() : null;
                                    C18768p c18768p = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                    this.f64203d = c18768p;
                                    if (mo1659h != null) {
                                        mo1659h.mo1702a(c18768p);
                                        this.f64203d = mo1659h.m3223h();
                                    }
                                    this.f64208j |= 4;
                                } else if (m1759a == 34) {
                                    c18775b = (this.f64208j & 16) == 16 ? this.f64205f.mo1659h() : c18775b;
                                    C18768p c18768p2 = (C18768p) c19676e.m1753a(C18768p.f64093a, c19678f);
                                    this.f64205f = c18768p2;
                                    if (c18775b != null) {
                                        c18775b.mo1702a(c18768p2);
                                        this.f64205f = c18775b.m3223h();
                                    }
                                    this.f64208j |= 16;
                                } else if (m1759a == 40) {
                                    this.f64208j |= 8;
                                    this.f64204e = c19676e.m1748d();
                                } else if (m1759a == 48) {
                                    this.f64208j |= 32;
                                    this.f64206g = c19676e.m1748d();
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            } else {
                                this.f64208j |= 2;
                                this.f64202c = c19676e.m1748d();
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        e.f65795a = this;
                        throw e;
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64207i = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64207i = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64207i = m1763h.m1762a();
                throw th3;
            }
            this.f64207i = m1763h.m1762a();
            mo1688w();
        }

        private C18787t(AbstractC19683h.AbstractC19686b<C18787t, ?> abstractC19686b) {
            super(abstractC19686b);
            this.f64209k = (byte) (-1);
            this.f64210l = -1;
            this.f64207i = abstractC19686b.f65839a;
        }

        private C18787t(boolean z) {
            this.f64209k = (byte) (-1);
            this.f64210l = -1;
            this.f64207i = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18789a m3136a(C18787t c18787t) {
            return C18789a.m3111h().mo1702a(c18787t);
        }

        /* renamed from: a */
        public static C18787t m3137a() {
            return f64200h;
        }

        /* renamed from: n */
        private void m3121n() {
            this.f64201b = 0;
            this.f64202c = 0;
            this.f64203d = C18768p.m3289a();
            this.f64204e = 0;
            this.f64205f = C18768p.m3289a();
            this.f64206g = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            AbstractC19683h.AbstractC19687c<MessageType>.C19688a y = m1686y();
            if ((this.f64208j & 1) == 1) {
                codedOutputStream.m1827a(1, this.f64201b);
            }
            if ((this.f64208j & 2) == 2) {
                codedOutputStream.m1827a(2, this.f64202c);
            }
            if ((this.f64208j & 4) == 4) {
                codedOutputStream.m1825a(3, this.f64203d);
            }
            if ((this.f64208j & 16) == 16) {
                codedOutputStream.m1825a(4, this.f64205f);
            }
            if ((this.f64208j & 8) == 8) {
                codedOutputStream.m1827a(5, this.f64204e);
            }
            if ((this.f64208j & 32) == 32) {
                codedOutputStream.m1827a(6, this.f64206g);
            }
            y.m1684a(200, codedOutputStream);
            codedOutputStream.m1796d(this.f64207i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18787t> mo1661b() {
            return f64199a;
        }

        /* renamed from: c */
        public final boolean m3130c() {
            return (this.f64208j & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3128d() {
            return (this.f64208j & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64209k;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m3128d()) {
                this.f64209k = (byte) 0;
                return false;
            } else if (m3125g() && !this.f64203d.mo1655e()) {
                this.f64209k = (byte) 0;
                return false;
            } else if (m3123l() && !this.f64205f.mo1655e()) {
                this.f64209k = (byte) 0;
                return false;
            } else if (!m1687x()) {
                this.f64209k = (byte) 0;
                return false;
            } else {
                this.f64209k = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64210l;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f64208j & 1) == 1) {
                i2 = 0 + CodedOutputStream.m1803c(1, this.f64201b);
            }
            int i3 = i2;
            if ((this.f64208j & 2) == 2) {
                i3 = i2 + CodedOutputStream.m1803c(2, this.f64202c);
            }
            int i4 = i3;
            if ((this.f64208j & 4) == 4) {
                i4 = i3 + CodedOutputStream.m1802c(3, this.f64203d);
            }
            int i5 = i4;
            if ((this.f64208j & 16) == 16) {
                i5 = i4 + CodedOutputStream.m1802c(4, this.f64205f);
            }
            int i6 = i5;
            if ((this.f64208j & 8) == 8) {
                i6 = i5 + CodedOutputStream.m1803c(5, this.f64204e);
            }
            int i7 = i6;
            if ((this.f64208j & 32) == 32) {
                i7 = i6 + CodedOutputStream.m1803c(6, this.f64206g);
            }
            int z = i7 + m1685z() + this.f64207i.mo1649a();
            this.f64210l = z;
            return z;
        }

        /* renamed from: g */
        public final boolean m3125g() {
            return (this.f64208j & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18789a.m3111h().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18789a.m3111h();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64200h;
        }

        /* renamed from: k */
        public final boolean m3124k() {
            return (this.f64208j & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3123l() {
            return (this.f64208j & 16) == 16;
        }

        /* renamed from: m */
        public final boolean m3122m() {
            return (this.f64208j & 32) == 32;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$u */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u.class */
    public static final class C18790u extends AbstractC19683h implements AbstractC18885x {

        /* renamed from: a */
        public static AbstractC19708r<C18790u> f64218a = new AbstractC19669b<C18790u>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.u.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18790u(c19676e, c19678f);
            }
        };

        /* renamed from: h */
        private static final C18790u f64219h;

        /* renamed from: b */
        public int f64220b;

        /* renamed from: c */
        public int f64221c;

        /* renamed from: d */
        public EnumC18793b f64222d;

        /* renamed from: e */
        public int f64223e;

        /* renamed from: f */
        public int f64224f;

        /* renamed from: g */
        public EnumC18795c f64225g;

        /* renamed from: i */
        private final AbstractC19673d f64226i;

        /* renamed from: j */
        private int f64227j;

        /* renamed from: k */
        private byte f64228k;

        /* renamed from: l */
        private int f64229l;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$u$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u$a.class */
        public static final class C18792a extends AbstractC19683h.AbstractC19685a<C18790u, C18792a> implements AbstractC18885x {

            /* renamed from: b */
            private int f64230b;

            /* renamed from: c */
            private int f64231c;

            /* renamed from: d */
            private int f64232d;

            /* renamed from: f */
            private int f64234f;

            /* renamed from: g */
            private int f64235g;

            /* renamed from: e */
            private EnumC18793b f64233e = EnumC18793b.ERROR;

            /* renamed from: h */
            private EnumC18795c f64236h = EnumC18795c.LANGUAGE_VERSION;

            private C18792a() {
            }

            /* renamed from: a */
            private C18792a m3093a(int i) {
                this.f64230b |= 1;
                this.f64231c = i;
                return this;
            }

            /* renamed from: a */
            private C18792a m3092a(EnumC18793b enumC18793b) {
                Objects.requireNonNull(enumC18793b);
                this.f64230b |= 4;
                this.f64233e = enumC18793b;
                return this;
            }

            /* renamed from: a */
            private C18792a m3091a(EnumC18795c enumC18795c) {
                Objects.requireNonNull(enumC18795c);
                this.f64230b |= 32;
                this.f64236h = enumC18795c;
                return this;
            }

            /* renamed from: b */
            private C18792a m3089b(int i) {
                this.f64230b |= 2;
                this.f64232d = i;
                return this;
            }

            /* renamed from: c */
            private C18792a m3088c(int i) {
                this.f64230b |= 8;
                this.f64234f = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18790u.C18792a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$u> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18790u.f64218a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$u r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18790u) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$u$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L2a
                L1e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$u r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18790u) r0     // Catch: java.lang.Throwable -> L18
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r6 = move-exception
                L2a:
                    r0 = r5
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$u$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18790u.C18792a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$u$a");
            }

            /* renamed from: d */
            private C18792a m3086d(int i) {
                this.f64230b |= 16;
                this.f64235g = i;
                return this;
            }

            /* renamed from: f */
            static /* synthetic */ C18792a m3085f() {
                return new C18792a();
            }

            /* renamed from: g */
            public C18792a clone() {
                return new C18792a().mo1702a(m3083h());
            }

            /* renamed from: h */
            private C18790u m3083h() {
                C18790u c18790u = new C18790u(this);
                int i = this.f64230b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18790u.f64220b = this.f64231c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18790u.f64221c = this.f64232d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18790u.f64222d = this.f64233e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18790u.f64223e = this.f64234f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                c18790u.f64224f = this.f64235g;
                int i7 = i6;
                if ((i & 32) == 32) {
                    i7 = i6 | 32;
                }
                c18790u.f64225g = this.f64236h;
                c18790u.f64227j = i7;
                return c18790u;
            }

            /* renamed from: a */
            public final C18792a mo1702a(C18790u c18790u) {
                if (c18790u == C18790u.m3109a()) {
                    return this;
                }
                if (c18790u.m3103c()) {
                    m3093a(c18790u.f64220b);
                }
                if (c18790u.m3101d()) {
                    m3089b(c18790u.f64221c);
                }
                if (c18790u.m3098g()) {
                    m3092a(c18790u.f64222d);
                }
                if (c18790u.m3097k()) {
                    m3088c(c18790u.f64223e);
                }
                if (c18790u.m3096l()) {
                    m3086d(c18790u.f64224f);
                }
                if (c18790u.m3095m()) {
                    m3091a(c18790u.f64225g);
                }
                this.f65839a = this.f65839a.m1769a(c18790u.f64226i);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18790u mo1703a() {
                return C18790u.m3109a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18790u m3083h = m3083h();
                if (m3083h.mo1655e()) {
                    return m3083h;
                }
                throw m1778a((AbstractC19705p) m3083h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18790u.m3109a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$u$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u$b.class */
        public enum EnumC18793b implements C19692j.AbstractC19693a {
            WARNING(0, 0),
            ERROR(1, 1),
            HIDDEN(2, 2);
            
            private static C19692j.AbstractC19694b<EnumC18793b> internalValueMap = new C19692j.AbstractC19694b<EnumC18793b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.u.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18793b mo1672a(int i) {
                    return EnumC18793b.valueOf(i);
                }
            };
            private final int value;

            EnumC18793b(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18793b valueOf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return ERROR;
                    }
                    if (i == 2) {
                        return HIDDEN;
                    }
                    return null;
                }
                return WARNING;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$u$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u$c.class */
        public enum EnumC18795c implements C19692j.AbstractC19693a {
            LANGUAGE_VERSION(0, 0),
            COMPILER_VERSION(1, 1),
            API_VERSION(2, 2);
            
            private static C19692j.AbstractC19694b<EnumC18795c> internalValueMap = new C19692j.AbstractC19694b<EnumC18795c>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.u.c.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                /* renamed from: a */
                public final /* synthetic */ EnumC18795c mo1672a(int i) {
                    return EnumC18795c.valueOf(i);
                }
            };
            private final int value;

            EnumC18795c(int i, int i2) {
                this.value = i2;
            }

            public static EnumC18795c valueOf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return COMPILER_VERSION;
                    }
                    if (i == 2) {
                        return API_VERSION;
                    }
                    return null;
                }
                return LANGUAGE_VERSION;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            C18790u c18790u = new C18790u(true);
            f64219h = c18790u;
            c18790u.m3094n();
        }

        private C18790u(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64228k = (byte) (-1);
            this.f64229l = -1;
            m3094n();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                this.f64227j |= 1;
                                this.f64220b = c19676e.m1748d();
                            } else if (m1759a == 16) {
                                this.f64227j |= 2;
                                this.f64221c = c19676e.m1748d();
                            } else if (m1759a == 24) {
                                int m1748d = c19676e.m1748d();
                                EnumC18793b valueOf = EnumC18793b.valueOf(m1748d);
                                if (valueOf == null) {
                                    m1823a.m1795e(m1759a);
                                    m1823a.m1795e(m1748d);
                                } else {
                                    this.f64227j |= 4;
                                    this.f64222d = valueOf;
                                }
                            } else if (m1759a == 32) {
                                this.f64227j |= 8;
                                this.f64223e = c19676e.m1748d();
                            } else if (m1759a == 40) {
                                this.f64227j |= 16;
                                this.f64224f = c19676e.m1748d();
                            } else if (m1759a == 48) {
                                int m1748d2 = c19676e.m1748d();
                                EnumC18795c valueOf2 = EnumC18795c.valueOf(m1748d2);
                                if (valueOf2 == null) {
                                    m1823a.m1795e(m1759a);
                                    m1823a.m1795e(m1748d2);
                                } else {
                                    this.f64227j |= 32;
                                    this.f64225g = valueOf2;
                                }
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64226i = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64226i = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64226i = m1763h.m1762a();
                throw th3;
            }
            this.f64226i = m1763h.m1762a();
            mo1688w();
        }

        private C18790u(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64228k = (byte) (-1);
            this.f64229l = -1;
            this.f64226i = abstractC19685a.f65839a;
        }

        private C18790u(boolean z) {
            this.f64228k = (byte) (-1);
            this.f64229l = -1;
            this.f64226i = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18790u m3109a() {
            return f64219h;
        }

        /* renamed from: n */
        private void m3094n() {
            this.f64220b = 0;
            this.f64221c = 0;
            this.f64222d = EnumC18793b.ERROR;
            this.f64223e = 0;
            this.f64224f = 0;
            this.f64225g = EnumC18795c.LANGUAGE_VERSION;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            if ((this.f64227j & 1) == 1) {
                codedOutputStream.m1827a(1, this.f64220b);
            }
            if ((this.f64227j & 2) == 2) {
                codedOutputStream.m1827a(2, this.f64221c);
            }
            if ((this.f64227j & 4) == 4) {
                codedOutputStream.m1812b(3, this.f64222d.getNumber());
            }
            if ((this.f64227j & 8) == 8) {
                codedOutputStream.m1827a(4, this.f64223e);
            }
            if ((this.f64227j & 16) == 16) {
                codedOutputStream.m1827a(5, this.f64224f);
            }
            if ((this.f64227j & 32) == 32) {
                codedOutputStream.m1812b(6, this.f64225g.getNumber());
            }
            codedOutputStream.m1796d(this.f64226i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18790u> mo1661b() {
            return f64218a;
        }

        /* renamed from: c */
        public final boolean m3103c() {
            return (this.f64227j & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3101d() {
            return (this.f64227j & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64228k;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64228k = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64229l;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f64227j & 1) == 1) {
                i2 = 0 + CodedOutputStream.m1803c(1, this.f64220b);
            }
            int i3 = i2;
            if ((this.f64227j & 2) == 2) {
                i3 = i2 + CodedOutputStream.m1803c(2, this.f64221c);
            }
            int i4 = i3;
            if ((this.f64227j & 4) == 4) {
                i4 = i3 + CodedOutputStream.m1798d(3, this.f64222d.getNumber());
            }
            int i5 = i4;
            if ((this.f64227j & 8) == 8) {
                i5 = i4 + CodedOutputStream.m1803c(4, this.f64223e);
            }
            int i6 = i5;
            if ((this.f64227j & 16) == 16) {
                i6 = i5 + CodedOutputStream.m1803c(5, this.f64224f);
            }
            int i7 = i6;
            if ((this.f64227j & 32) == 32) {
                i7 = i6 + CodedOutputStream.m1798d(6, this.f64225g.getNumber());
            }
            int mo1649a = i7 + this.f64226i.mo1649a();
            this.f64229l = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final boolean m3098g() {
            return (this.f64227j & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18792a.m3085f().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18792a.m3085f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64219h;
        }

        /* renamed from: k */
        public final boolean m3097k() {
            return (this.f64227j & 8) == 8;
        }

        /* renamed from: l */
        public final boolean m3096l() {
            return (this.f64227j & 16) == 16;
        }

        /* renamed from: m */
        public final boolean m3095m() {
            return (this.f64227j & 32) == 32;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$v */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$v.class */
    public static final class C18797v extends AbstractC19683h implements AbstractC18886y {

        /* renamed from: a */
        public static AbstractC19708r<C18797v> f64237a = new AbstractC19669b<C18797v>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.v.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18797v(c19676e, c19678f);
            }
        };

        /* renamed from: c */
        private static final C18797v f64238c;

        /* renamed from: b */
        public List<C18790u> f64239b;

        /* renamed from: d */
        private final AbstractC19673d f64240d;

        /* renamed from: e */
        private byte f64241e;

        /* renamed from: f */
        private int f64242f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$v$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$v$a.class */
        public static final class C18799a extends AbstractC19683h.AbstractC19685a<C18797v, C18799a> implements AbstractC18886y {

            /* renamed from: b */
            private int f64243b;

            /* renamed from: c */
            private List<C18790u> f64244c = Collections.emptyList();

            private C18799a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18797v.C18799a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$v> r0 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18797v.f64237a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.a$v r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18797v) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$v$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.a$v r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18797v) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$v$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18797v.C18799a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$v$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18799a m3074g() {
                return new C18799a();
            }

            /* renamed from: h */
            public C18799a clone() {
                return new C18799a().mo1702a(m3075f());
            }

            /* renamed from: i */
            private void m3072i() {
                if ((this.f64243b & 1) != 1) {
                    this.f64244c = new ArrayList(this.f64244c);
                    this.f64243b |= 1;
                }
            }

            /* renamed from: a */
            public final C18799a mo1702a(C18797v c18797v) {
                if (c18797v == C18797v.m3082a()) {
                    return this;
                }
                if (!c18797v.f64239b.isEmpty()) {
                    if (this.f64244c.isEmpty()) {
                        this.f64244c = c18797v.f64239b;
                        this.f64243b &= -2;
                    } else {
                        m3072i();
                        this.f64244c.addAll(c18797v.f64239b);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18797v.f64240d);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18797v mo1703a() {
                return C18797v.m3082a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18797v m3075f = m3075f();
                if (m3075f.mo1655e()) {
                    return m3075f;
                }
                throw m1778a((AbstractC19705p) m3075f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            /* renamed from: f */
            public final C18797v m3075f() {
                C18797v c18797v = new C18797v(this);
                if ((this.f64243b & 1) == 1) {
                    this.f64244c = Collections.unmodifiableList(this.f64244c);
                    this.f64243b &= -2;
                }
                c18797v.f64239b = this.f64244c;
                return c18797v;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18797v.m3082a();
            }
        }

        static {
            C18797v c18797v = new C18797v(true);
            f64238c = c18797v;
            c18797v.f64239b = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18797v(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64241e = (byte) (-1);
            this.f64242f = -1;
            this.f64239b = Collections.emptyList();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 10) {
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.f64239b = new ArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.f64239b.add(c19676e.m1753a(C18790u.f64218a, c19678f));
                                    z2 = z4;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64239b = Collections.unmodifiableList(this.f64239b);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64240d = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64240d = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64239b = Collections.unmodifiableList(this.f64239b);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64240d = m1763h.m1762a();
                throw th3;
            }
            this.f64240d = m1763h.m1762a();
            mo1688w();
        }

        private C18797v(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64241e = (byte) (-1);
            this.f64242f = -1;
            this.f64240d = abstractC19685a.f65839a;
        }

        private C18797v(boolean z) {
            this.f64241e = (byte) (-1);
            this.f64242f = -1;
            this.f64240d = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18799a m3081a(C18797v c18797v) {
            return C18799a.m3074g().mo1702a(c18797v);
        }

        /* renamed from: a */
        public static C18797v m3082a() {
            return f64238c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            for (int i = 0; i < this.f64239b.size(); i++) {
                codedOutputStream.m1825a(1, this.f64239b.get(i));
            }
            codedOutputStream.m1796d(this.f64240d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18797v> mo1661b() {
            return f64237a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64241e;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64241e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64242f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f64239b.size(); i3++) {
                i2 += CodedOutputStream.m1802c(1, this.f64239b.get(i3));
            }
            int mo1649a = i2 + this.f64240d.mo1649a();
            this.f64242f = mo1649a;
            return mo1649a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18799a.m3074g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18799a.m3074g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64238c;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$w */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$w.class */
    public enum EnumC18800w implements C19692j.AbstractC19693a {
        INTERNAL(0, 0),
        PRIVATE(1, 1),
        PROTECTED(2, 2),
        PUBLIC(3, 3),
        PRIVATE_TO_THIS(4, 4),
        LOCAL(5, 5);
        
        private static C19692j.AbstractC19694b<EnumC18800w> internalValueMap = new C19692j.AbstractC19694b<EnumC18800w>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.w.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
            /* renamed from: a */
            public final /* synthetic */ EnumC18800w mo1672a(int i) {
                return EnumC18800w.valueOf(i);
            }
        };
        private final int value;

        EnumC18800w(int i, int i2) {
            this.value = i2;
        }

        public static EnumC18800w valueOf(int i) {
            if (i != 0) {
                if (i == 1) {
                    return PRIVATE;
                }
                if (i == 2) {
                    return PROTECTED;
                }
                if (i == 3) {
                    return PUBLIC;
                }
                if (i == 4) {
                    return PRIVATE_TO_THIS;
                }
                if (i == 5) {
                    return LOCAL;
                }
                return null;
            }
            return INTERNAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
        public final int getNumber() {
            return this.value;
        }
    }
}

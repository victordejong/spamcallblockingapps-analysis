package kotlin.reflect.jvm.internal.impl.b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.protobuf.j;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a.class */
public final class a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a.class */
    public static final class C0625a extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.d {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<C0625a> f36972a = new kotlin.reflect.jvm.internal.impl.protobuf.b<C0625a>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new C0625a(eVar, fVar);
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private static final C0625a f36973d;

        /* renamed from: b  reason: collision with root package name */
        public int f36974b;

        /* renamed from: c  reason: collision with root package name */
        public List<C0627a> f36975c;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
        private int f;
        private byte g;
        private int h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a.class */
        public static final class C0627a extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.c {

            /* renamed from: a  reason: collision with root package name */
            public static kotlin.reflect.jvm.internal.impl.protobuf.r<C0627a> f36976a = new kotlin.reflect.jvm.internal.impl.protobuf.b<C0627a>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.a.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
                public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                    return new C0627a(eVar, fVar);
                }
            };

            /* renamed from: d  reason: collision with root package name */
            private static final C0627a f36977d;

            /* renamed from: b  reason: collision with root package name */
            public int f36978b;

            /* renamed from: c  reason: collision with root package name */
            public b f36979c;
            private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
            private int f;
            private byte g;
            private int h;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$a.class */
            public static final class C0628a extends h.a<C0627a, C0628a> implements kotlin.reflect.jvm.internal.impl.b.c {

                /* renamed from: b  reason: collision with root package name */
                private int f36980b;

                /* renamed from: c  reason: collision with root package name */
                private int f36981c;

                /* renamed from: d  reason: collision with root package name */
                private b f36982d = b.a();

                private C0628a() {
                }

                private C0628a a(int i) {
                    this.f36980b |= 1;
                    this.f36981c = i;
                    return this;
                }

                private C0628a a(b bVar) {
                    if ((this.f36980b & 2) != 2 || this.f36982d == b.a()) {
                        this.f36982d = bVar;
                    } else {
                        this.f36982d = b.a(this.f36982d).a(bVar).f();
                    }
                    this.f36980b |= 2;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.C0628a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$a$a> r0 = kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.f36976a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        kotlin.reflect.jvm.internal.impl.b.a$a$a r0 = (kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$a$a$a r0 = r0.a(r1)
                        r0 = r4
                        return r0
                    L_0x0018:
                        r6 = move-exception
                        r0 = r7
                        r5 = r0
                        goto L_0x002a
                    L_0x001e:
                        r6 = move-exception
                        r0 = r6
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                        kotlin.reflect.jvm.internal.impl.b.a$a$a r0 = (kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a) r0     // Catch: all -> 0x0018
                        r5 = r0
                        r0 = r6
                        throw r0     // Catch: all -> 0x0029
                    L_0x0029:
                        r6 = move-exception
                    L_0x002a:
                        r0 = r5
                        if (r0 == 0) goto L_0x0034
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$a$a$a r0 = r0.a(r1)
                    L_0x0034:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.C0628a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$a$a$a");
                }

                static /* synthetic */ C0628a f() {
                    return new C0628a();
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* renamed from: g */
                public C0628a clone() {
                    return new C0628a().a(h());
                }

                private C0627a h() {
                    C0627a aVar = new C0627a(this);
                    int i = this.f36980b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    aVar.f36978b = this.f36981c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    aVar.f36979c = this.f36982d;
                    aVar.f = i3;
                    return aVar;
                }

                public final C0628a a(C0627a aVar) {
                    if (aVar == C0627a.a()) {
                        return this;
                    }
                    if (aVar.c()) {
                        a(aVar.f36978b);
                    }
                    if (aVar.d()) {
                        a(aVar.f36979c);
                    }
                    this.f38138a = this.f38138a.a(aVar.e);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                public final /* bridge */ /* synthetic */ C0627a a() {
                    return C0627a.a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
                public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                    C0627a h = h();
                    if (h.e()) {
                        return h;
                    }
                    throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                public final boolean e() {
                    int i = this.f36980b;
                    if (!((i & 1) == 1)) {
                        return false;
                    }
                    return ((i & 2) == 2) && this.f36982d.e();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
                public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                    return C0627a.a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$b */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$b.class */
            public static final class b extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.b {

                /* renamed from: a  reason: collision with root package name */
                public static kotlin.reflect.jvm.internal.impl.protobuf.r<b> f36983a = new kotlin.reflect.jvm.internal.impl.protobuf.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.a.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
                    public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                        return new b(eVar, fVar);
                    }
                };
                private static final b m;

                /* renamed from: b  reason: collision with root package name */
                public EnumC0630b f36984b;

                /* renamed from: c  reason: collision with root package name */
                public long f36985c;

                /* renamed from: d  reason: collision with root package name */
                public float f36986d;
                public double e;
                public int f;
                public int g;
                public int h;
                public C0625a i;
                public List<b> j;
                public int k;
                public int l;
                private final kotlin.reflect.jvm.internal.impl.protobuf.d n;
                private int o;
                private byte p;
                private int q;

                /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a  reason: collision with other inner class name */
                /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$b$a.class */
                public static final class C0629a extends h.a<b, C0629a> implements kotlin.reflect.jvm.internal.impl.b.b {

                    /* renamed from: b  reason: collision with root package name */
                    private int f36987b;

                    /* renamed from: d  reason: collision with root package name */
                    private long f36989d;
                    private float e;
                    private double f;
                    private int g;
                    private int h;
                    private int i;
                    private int l;
                    private int m;

                    /* renamed from: c  reason: collision with root package name */
                    private EnumC0630b f36988c = EnumC0630b.BYTE;
                    private C0625a j = C0625a.a();
                    private List<b> k = Collections.emptyList();

                    private C0629a() {
                    }

                    private C0629a a(double d2) {
                        this.f36987b |= 8;
                        this.f = d2;
                        return this;
                    }

                    private C0629a a(float f) {
                        this.f36987b |= 4;
                        this.e = f;
                        return this;
                    }

                    private C0629a a(int i) {
                        this.f36987b |= 16;
                        this.g = i;
                        return this;
                    }

                    private C0629a a(long j) {
                        this.f36987b |= 2;
                        this.f36989d = j;
                        return this;
                    }

                    private C0629a a(EnumC0630b bVar) {
                        Objects.requireNonNull(bVar);
                        this.f36987b |= 1;
                        this.f36988c = bVar;
                        return this;
                    }

                    private C0629a a(C0625a aVar) {
                        if ((this.f36987b & 128) != 128 || this.j == C0625a.a()) {
                            this.j = aVar;
                        } else {
                            this.j = C0625a.a(this.j).a(aVar).f();
                        }
                        this.f36987b |= 128;
                        return this;
                    }

                    private C0629a b(int i) {
                        this.f36987b |= 32;
                        this.h = i;
                        return this;
                    }

                    private C0629a c(int i) {
                        this.f36987b |= 64;
                        this.i = i;
                        return this;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                    /* renamed from: c */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.b.C0629a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$a$a$b> r0 = kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.b.f36983a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b r0 = (kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.b) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                            r5 = r0
                            r0 = r4
                            r1 = r5
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a r0 = r0.a(r1)
                            r0 = r4
                            return r0
                        L_0x0018:
                            r6 = move-exception
                            r0 = r7
                            r5 = r0
                            goto L_0x002a
                        L_0x001e:
                            r6 = move-exception
                            r0 = r6
                            kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b r0 = (kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.b) r0     // Catch: all -> 0x0018
                            r5 = r0
                            r0 = r6
                            throw r0     // Catch: all -> 0x0029
                        L_0x0029:
                            r6 = move-exception
                        L_0x002a:
                            r0 = r5
                            if (r0 == 0) goto L_0x0034
                            r0 = r4
                            r1 = r5
                            kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a r0 = r0.a(r1)
                        L_0x0034:
                            r0 = r6
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.C0625a.C0627a.b.C0629a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$a$a$b$a");
                    }

                    private C0629a d(int i) {
                        this.f36987b |= 512;
                        this.l = i;
                        return this;
                    }

                    private C0629a e(int i) {
                        this.f36987b |= 1024;
                        this.m = i;
                        return this;
                    }

                    static /* synthetic */ C0629a g() {
                        return new C0629a();
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* renamed from: h */
                    public C0629a clone() {
                        return new C0629a().a(f());
                    }

                    private void i() {
                        if ((this.f36987b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                            this.k = new ArrayList(this.k);
                            this.f36987b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                        }
                    }

                    public final C0629a a(b bVar) {
                        if (bVar == b.a()) {
                            return this;
                        }
                        if (bVar.c()) {
                            a(bVar.f36984b);
                        }
                        if (bVar.d()) {
                            a(bVar.f36985c);
                        }
                        if (bVar.g()) {
                            a(bVar.f36986d);
                        }
                        if (bVar.k()) {
                            a(bVar.e);
                        }
                        if (bVar.l()) {
                            a(bVar.f);
                        }
                        if (bVar.m()) {
                            b(bVar.g);
                        }
                        if (bVar.n()) {
                            c(bVar.h);
                        }
                        if (bVar.o()) {
                            a(bVar.i);
                        }
                        if (!bVar.j.isEmpty()) {
                            if (this.k.isEmpty()) {
                                this.k = bVar.j;
                                this.f36987b &= -257;
                            } else {
                                i();
                                this.k.addAll(bVar.j);
                            }
                        }
                        if (bVar.p()) {
                            d(bVar.k);
                        }
                        if (bVar.q()) {
                            e(bVar.l);
                        }
                        this.f38138a = this.f38138a.a(bVar.n);
                        return this;
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                    public final /* bridge */ /* synthetic */ b a() {
                        return b.a();
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
                    public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                        b f = f();
                        if (f.e()) {
                            return f;
                        }
                        throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                    public final boolean e() {
                        if (((this.f36987b & 128) == 128) && !this.j.e()) {
                            return false;
                        }
                        for (int i = 0; i < this.k.size(); i++) {
                            if (!this.k.get(i).e()) {
                                return false;
                            }
                        }
                        return true;
                    }

                    public final b f() {
                        b bVar = new b(this);
                        int i = this.f36987b;
                        int i2 = 1;
                        if ((i & 1) != 1) {
                            i2 = 0;
                        }
                        bVar.f36984b = this.f36988c;
                        int i3 = i2;
                        if ((i & 2) == 2) {
                            i3 = i2 | 2;
                        }
                        bVar.f36985c = this.f36989d;
                        int i4 = i3;
                        if ((i & 4) == 4) {
                            i4 = i3 | 4;
                        }
                        bVar.f36986d = this.e;
                        int i5 = i4;
                        if ((i & 8) == 8) {
                            i5 = i4 | 8;
                        }
                        bVar.e = this.f;
                        int i6 = i5;
                        if ((i & 16) == 16) {
                            i6 = i5 | 16;
                        }
                        bVar.f = this.g;
                        int i7 = i6;
                        if ((i & 32) == 32) {
                            i7 = i6 | 32;
                        }
                        bVar.g = this.h;
                        int i8 = i7;
                        if ((i & 64) == 64) {
                            i8 = i7 | 64;
                        }
                        bVar.h = this.i;
                        int i9 = i8;
                        if ((i & 128) == 128) {
                            i9 = i8 | 128;
                        }
                        bVar.i = this.j;
                        if ((this.f36987b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                            this.k = Collections.unmodifiableList(this.k);
                            this.f36987b &= -257;
                        }
                        bVar.j = this.k;
                        int i10 = i9;
                        if ((i & 512) == 512) {
                            i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                        }
                        bVar.k = this.l;
                        int i11 = i10;
                        if ((i & 1024) == 1024) {
                            i11 = i10 | 512;
                        }
                        bVar.l = this.m;
                        bVar.o = i11;
                        return bVar;
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
                    public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                        return b.a();
                    }
                }

                /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$a$b$b  reason: collision with other inner class name */
                /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$a$b$b.class */
                public enum EnumC0630b implements j.a {
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
                    
                    private static j.b<EnumC0630b> internalValueMap = new j.b<EnumC0630b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.a.a.b.b.1
                        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                        public final /* synthetic */ EnumC0630b a(int i) {
                            return EnumC0630b.valueOf(i);
                        }
                    };
                    private final int value;

                    EnumC0630b(int i, int i2) {
                        this.value = i2;
                    }

                    public static EnumC0630b valueOf(int i) {
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

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
                    public final int getNumber() {
                        return this.value;
                    }
                }

                static {
                    b bVar = new b(true);
                    m = bVar;
                    bVar.r();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private b(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                    this.p = (byte) (-1);
                    this.q = -1;
                    r();
                    d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
                    CodedOutputStream a2 = CodedOutputStream.a(h, 1);
                    boolean z = false;
                    boolean z2 = false;
                    while (!z) {
                        try {
                            try {
                                int a3 = eVar.a();
                                switch (a3) {
                                    case 0:
                                        break;
                                    case 8:
                                        int d2 = eVar.d();
                                        EnumC0630b valueOf = EnumC0630b.valueOf(d2);
                                        if (valueOf == null) {
                                            a2.e(a3);
                                            a2.e(d2);
                                            continue;
                                        } else {
                                            this.o |= 1;
                                            this.f36984b = valueOf;
                                        }
                                    case 16:
                                        this.o |= 2;
                                        this.f36985c = kotlin.reflect.jvm.internal.impl.protobuf.e.a(eVar.e());
                                        continue;
                                    case 29:
                                        this.o |= 4;
                                        this.f36986d = Float.intBitsToFloat(eVar.f());
                                        continue;
                                    case 33:
                                        this.o |= 8;
                                        this.e = Double.longBitsToDouble(eVar.g());
                                        continue;
                                    case 40:
                                        this.o |= 16;
                                        this.f = eVar.d();
                                        continue;
                                    case 48:
                                        this.o |= 32;
                                        this.g = eVar.d();
                                        continue;
                                    case 56:
                                        this.o |= 64;
                                        this.h = eVar.d();
                                        continue;
                                    case 66:
                                        b g = (this.o & 128) == 128 ? this.i.h() : null;
                                        C0625a aVar = (C0625a) eVar.a(C0625a.f36972a, fVar);
                                        this.i = aVar;
                                        if (g != null) {
                                            g.a(aVar);
                                            this.i = g.f();
                                        }
                                        this.o |= 128;
                                        continue;
                                    case 74:
                                        z2 = z2;
                                        if (!(z2 & true)) {
                                            this.j = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.j.add(eVar.a(f36983a, fVar));
                                        continue;
                                    case 80:
                                        this.o |= 512;
                                        this.l = eVar.d();
                                        continue;
                                    case 88:
                                        this.o |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                        this.k = eVar.d();
                                        continue;
                                    default:
                                        if (!a(eVar, a2, fVar, a3)) {
                                            break;
                                        } else {
                                            continue;
                                        }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                e.f38108a = this;
                                throw e;
                            } catch (IOException e2) {
                                InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                                invalidProtocolBufferException.f38108a = this;
                                throw invalidProtocolBufferException;
                            }
                        } catch (Throwable th) {
                            if (z2 & true) {
                                this.j = Collections.unmodifiableList(this.j);
                            }
                            try {
                                a2.a();
                            } catch (IOException e3) {
                            } catch (Throwable th2) {
                                this.n = h.a();
                                throw th2;
                            }
                            this.n = h.a();
                            w();
                            throw th;
                        }
                    }
                    if (z2 & true) {
                        this.j = Collections.unmodifiableList(this.j);
                    }
                    try {
                        a2.a();
                    } catch (IOException e4) {
                    } catch (Throwable th3) {
                        this.n = h.a();
                        throw th3;
                    }
                    this.n = h.a();
                    w();
                }

                private b(h.a aVar) {
                    super(aVar);
                    this.p = (byte) (-1);
                    this.q = -1;
                    this.n = aVar.f38138a;
                }

                private b(boolean z) {
                    this.p = (byte) (-1);
                    this.q = -1;
                    this.n = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
                }

                public static C0629a a(b bVar) {
                    return C0629a.g().a(bVar);
                }

                public static b a() {
                    return m;
                }

                private void r() {
                    this.f36984b = EnumC0630b.BYTE;
                    this.f36985c = 0L;
                    this.f36986d = BitmapDescriptorFactory.HUE_RED;
                    this.e = 0.0d;
                    this.f = 0;
                    this.g = 0;
                    this.h = 0;
                    this.i = C0625a.a();
                    this.j = Collections.emptyList();
                    this.k = 0;
                    this.l = 0;
                }

                public final b a(int i) {
                    return this.j.get(i);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
                public final void a(CodedOutputStream codedOutputStream) throws IOException {
                    f();
                    if ((this.o & 1) == 1) {
                        codedOutputStream.b(1, this.f36984b.getNumber());
                    }
                    if ((this.o & 2) == 2) {
                        long j = this.f36985c;
                        codedOutputStream.e(2, 0);
                        codedOutputStream.a(j);
                    }
                    if ((this.o & 4) == 4) {
                        float f = this.f36986d;
                        codedOutputStream.e(3, 5);
                        codedOutputStream.a(f);
                    }
                    if ((this.o & 8) == 8) {
                        double d2 = this.e;
                        codedOutputStream.e(4, 1);
                        codedOutputStream.a(d2);
                    }
                    if ((this.o & 16) == 16) {
                        codedOutputStream.a(5, this.f);
                    }
                    if ((this.o & 32) == 32) {
                        codedOutputStream.a(6, this.g);
                    }
                    if ((this.o & 64) == 64) {
                        codedOutputStream.a(7, this.h);
                    }
                    int i = 0;
                    if ((this.o & 128) == 128) {
                        codedOutputStream.a(8, this.i);
                        i = 0;
                    }
                    while (i < this.j.size()) {
                        codedOutputStream.a(9, this.j.get(i));
                        i++;
                    }
                    if ((this.o & 512) == 512) {
                        codedOutputStream.a(10, this.l);
                    }
                    if ((this.o & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                        codedOutputStream.a(11, this.k);
                    }
                    codedOutputStream.d(this.n);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
                public final kotlin.reflect.jvm.internal.impl.protobuf.r<b> b() {
                    return f36983a;
                }

                public final boolean c() {
                    return (this.o & 1) == 1;
                }

                public final boolean d() {
                    return (this.o & 2) == 2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                public final boolean e() {
                    byte b2 = this.p;
                    if (b2 == 1) {
                        return true;
                    }
                    if (b2 == 0) {
                        return false;
                    }
                    if (!o() || this.i.e()) {
                        for (int i = 0; i < this.j.size(); i++) {
                            if (!a(i).e()) {
                                this.p = (byte) 0;
                                return false;
                            }
                        }
                        this.p = (byte) 1;
                        return true;
                    }
                    this.p = (byte) 0;
                    return false;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
                public final int f() {
                    int i = this.q;
                    if (i != -1) {
                        return i;
                    }
                    int d2 = (this.o & 1) == 1 ? CodedOutputStream.d(1, this.f36984b.getNumber()) + 0 : 0;
                    int i2 = d2;
                    if ((this.o & 2) == 2) {
                        i2 = d2 + CodedOutputStream.b(this.f36985c);
                    }
                    int i3 = i2;
                    if ((this.o & 4) == 4) {
                        i3 = i2 + CodedOutputStream.d(3) + 4;
                    }
                    int i4 = i3;
                    if ((this.o & 8) == 8) {
                        i4 = i3 + CodedOutputStream.d(4) + 8;
                    }
                    int i5 = i4;
                    if ((this.o & 16) == 16) {
                        i5 = i4 + CodedOutputStream.c(5, this.f);
                    }
                    int i6 = i5;
                    if ((this.o & 32) == 32) {
                        i6 = i5 + CodedOutputStream.c(6, this.g);
                    }
                    int i7 = i6;
                    if ((this.o & 64) == 64) {
                        i7 = i6 + CodedOutputStream.c(7, this.h);
                    }
                    int i8 = i7;
                    int i9 = 0;
                    if ((this.o & 128) == 128) {
                        i8 = i7 + CodedOutputStream.c(8, this.i);
                        i9 = 0;
                    }
                    while (i9 < this.j.size()) {
                        i8 += CodedOutputStream.c(9, this.j.get(i9));
                        i9++;
                    }
                    int i10 = i8;
                    if ((this.o & 512) == 512) {
                        i10 = i8 + CodedOutputStream.c(10, this.l);
                    }
                    int i11 = i10;
                    if ((this.o & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                        i11 = i10 + CodedOutputStream.c(11, this.k);
                    }
                    int a2 = i11 + this.n.a();
                    this.q = a2;
                    return a2;
                }

                public final boolean g() {
                    return (this.o & 4) == 4;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
                public final /* synthetic */ p.a h() {
                    return C0629a.g().a(this);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
                public final /* synthetic */ p.a i() {
                    return C0629a.g();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                    return m;
                }

                public final boolean k() {
                    return (this.o & 8) == 8;
                }

                public final boolean l() {
                    return (this.o & 16) == 16;
                }

                public final boolean m() {
                    return (this.o & 32) == 32;
                }

                public final boolean n() {
                    return (this.o & 64) == 64;
                }

                public final boolean o() {
                    return (this.o & 128) == 128;
                }

                public final boolean p() {
                    return (this.o & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
                }

                public final boolean q() {
                    return (this.o & 512) == 512;
                }
            }

            static {
                C0627a aVar = new C0627a(true);
                f36977d = aVar;
                aVar.g();
            }

            private C0627a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                this.g = (byte) (-1);
                this.h = -1;
                g();
                d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
                CodedOutputStream a2 = CodedOutputStream.a(h, 1);
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 8) {
                                    this.f |= 1;
                                    this.f36978b = eVar.d();
                                } else if (a3 == 18) {
                                    b.C0629a a4 = (this.f & 2) == 2 ? b.a(this.f36979c) : null;
                                    b bVar = (b) eVar.a(b.f36983a, fVar);
                                    this.f36979c = bVar;
                                    if (a4 != null) {
                                        a4.a(bVar);
                                        this.f36979c = a4.f();
                                    }
                                    this.f |= 2;
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        try {
                            a2.a();
                        } catch (IOException e3) {
                        } catch (Throwable th2) {
                            this.e = h.a();
                            throw th2;
                        }
                        this.e = h.a();
                        w();
                        throw th;
                    }
                }
                try {
                    a2.a();
                } catch (IOException e4) {
                } catch (Throwable th3) {
                    this.e = h.a();
                    throw th3;
                }
                this.e = h.a();
                w();
            }

            private C0627a(h.a aVar) {
                super(aVar);
                this.g = (byte) (-1);
                this.h = -1;
                this.e = aVar.f38138a;
            }

            private C0627a(boolean z) {
                this.g = (byte) (-1);
                this.h = -1;
                this.e = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
            }

            public static C0627a a() {
                return f36977d;
            }

            private void g() {
                this.f36978b = 0;
                this.f36979c = b.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final void a(CodedOutputStream codedOutputStream) throws IOException {
                f();
                if ((this.f & 1) == 1) {
                    codedOutputStream.a(1, this.f36978b);
                }
                if ((this.f & 2) == 2) {
                    codedOutputStream.a(2, this.f36979c);
                }
                codedOutputStream.d(this.e);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
            public final kotlin.reflect.jvm.internal.impl.protobuf.r<C0627a> b() {
                return f36976a;
            }

            public final boolean c() {
                return (this.f & 1) == 1;
            }

            public final boolean d() {
                return (this.f & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                byte b2 = this.g;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                if (!c()) {
                    this.g = (byte) 0;
                    return false;
                } else if (!d()) {
                    this.g = (byte) 0;
                    return false;
                } else if (!this.f36979c.e()) {
                    this.g = (byte) 0;
                    return false;
                } else {
                    this.g = (byte) 1;
                    return true;
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final int f() {
                int i = this.h;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f & 1) == 1) {
                    i2 = 0 + CodedOutputStream.c(1, this.f36978b);
                }
                int i3 = i2;
                if ((this.f & 2) == 2) {
                    i3 = i2 + CodedOutputStream.c(2, this.f36979c);
                }
                int a2 = i3 + this.e.a();
                this.h = a2;
                return a2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a h() {
                return C0628a.f().a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a i() {
                return C0628a.f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return f36977d;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$a$b.class */
        public static final class b extends h.a<C0625a, b> implements kotlin.reflect.jvm.internal.impl.b.d {

            /* renamed from: b  reason: collision with root package name */
            private int f36990b;

            /* renamed from: c  reason: collision with root package name */
            private int f36991c;

            /* renamed from: d  reason: collision with root package name */
            private List<C0627a> f36992d = Collections.emptyList();

            private b() {
            }

            private b a(int i) {
                this.f36990b |= 1;
                this.f36991c = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.C0625a.b b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$a> r0 = kotlin.reflect.jvm.internal.impl.b.a.C0625a.f36972a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$a r0 = (kotlin.reflect.jvm.internal.impl.b.a.C0625a) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$a$b r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$a r0 = (kotlin.reflect.jvm.internal.impl.b.a.C0625a) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$a$b r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.C0625a.b.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$a$b");
            }

            static /* synthetic */ b g() {
                return new b();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public b clone() {
                return new b().a(f());
            }

            private void i() {
                if ((this.f36990b & 2) != 2) {
                    this.f36992d = new ArrayList(this.f36992d);
                    this.f36990b |= 2;
                }
            }

            public final b a(C0625a aVar) {
                if (aVar == C0625a.a()) {
                    return this;
                }
                if (aVar.c()) {
                    a(aVar.f36974b);
                }
                if (!aVar.f36975c.isEmpty()) {
                    if (this.f36992d.isEmpty()) {
                        this.f36992d = aVar.f36975c;
                        this.f36990b &= -3;
                    } else {
                        i();
                        this.f36992d.addAll(aVar.f36975c);
                    }
                }
                this.f38138a = this.f38138a.a(aVar.e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ C0625a a() {
                return C0625a.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                C0625a f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                if (!((this.f36990b & 1) == 1)) {
                    return false;
                }
                for (int i = 0; i < this.f36992d.size(); i++) {
                    if (!this.f36992d.get(i).e()) {
                        return false;
                    }
                }
                return true;
            }

            public final C0625a f() {
                C0625a aVar = new C0625a(this);
                int i = 1;
                if ((this.f36990b & 1) != 1) {
                    i = 0;
                }
                aVar.f36974b = this.f36991c;
                if ((this.f36990b & 2) == 2) {
                    this.f36992d = Collections.unmodifiableList(this.f36992d);
                    this.f36990b &= -3;
                }
                aVar.f36975c = this.f36992d;
                aVar.f = i;
                return aVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return C0625a.a();
            }
        }

        static {
            C0625a aVar = new C0625a(true);
            f36973d = aVar;
            aVar.k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C0625a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.g = (byte) (-1);
            this.h = -1;
            k();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 8) {
                                    this.f |= 1;
                                    this.f36974b = eVar.d();
                                } else if (a3 == 18) {
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.f36975c = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f36975c.add(eVar.a(C0627a.f36976a, fVar));
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.f36975c = Collections.unmodifiableList(this.f36975c);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.e = h.a();
                        throw th2;
                    }
                    this.e = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f36975c = Collections.unmodifiableList(this.f36975c);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.e = h.a();
                throw th3;
            }
            this.e = h.a();
            w();
        }

        private C0625a(h.a aVar) {
            super(aVar);
            this.g = (byte) (-1);
            this.h = -1;
            this.e = aVar.f38138a;
        }

        private C0625a(boolean z) {
            this.g = (byte) (-1);
            this.h = -1;
            this.e = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static b a(C0625a aVar) {
            return b.g().a(aVar);
        }

        public static C0625a a() {
            return f36973d;
        }

        private void k() {
            this.f36974b = 0;
            this.f36975c = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.f & 1) == 1) {
                codedOutputStream.a(1, this.f36974b);
            }
            for (int i = 0; i < this.f36975c.size(); i++) {
                codedOutputStream.a(2, this.f36975c.get(i));
            }
            codedOutputStream.d(this.e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<C0625a> b() {
            return f36972a;
        }

        public final boolean c() {
            return (this.f & 1) == 1;
        }

        public final int d() {
            return this.f36975c.size();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.g;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!c()) {
                this.g = (byte) 0;
                return false;
            }
            for (int i = 0; i < d(); i++) {
                if (!this.f36975c.get(i).e()) {
                    this.g = (byte) 0;
                    return false;
                }
            }
            this.g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.h;
            if (i != -1) {
                return i;
            }
            int c2 = (this.f & 1) == 1 ? CodedOutputStream.c(1, this.f36974b) + 0 : 0;
            for (int i2 = 0; i2 < this.f36975c.size(); i2++) {
                c2 += CodedOutputStream.c(2, this.f36975c.get(i2));
            }
            int a2 = c2 + this.e.a();
            this.h = a2;
            return a2;
        }

        /* renamed from: g */
        public final b h() {
            return b.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return b.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f36973d;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$b.class */
    public static final class b extends h.c<b> implements kotlin.reflect.jvm.internal.impl.b.e {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<b> f36997a = new kotlin.reflect.jvm.internal.impl.protobuf.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.b.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new b(eVar, fVar);
            }
        };
        private static final b s;

        /* renamed from: b  reason: collision with root package name */
        public int f36998b;

        /* renamed from: c  reason: collision with root package name */
        public int f36999c;

        /* renamed from: d  reason: collision with root package name */
        public int f37000d;
        public List<r> e;
        public List<p> f;
        public List<Integer> g;
        public List<Integer> h;
        public List<c> i;
        public List<h> j;
        public List<m> k;
        public List<q> l;
        public List<f> m;
        public List<Integer> n;
        public s o;
        public List<Integer> p;
        public v q;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d t;
        private int u;
        private int v;
        private int w;
        private int x;
        private byte y;
        private int z;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$b$a.class */
        public static final class C0631a extends h.b<b, C0631a> implements kotlin.reflect.jvm.internal.impl.b.e {

            /* renamed from: b  reason: collision with root package name */
            private int f37001b;

            /* renamed from: d  reason: collision with root package name */
            private int f37003d;
            private int e;

            /* renamed from: c  reason: collision with root package name */
            private int f37002c = 6;
            private List<r> f = Collections.emptyList();
            private List<p> g = Collections.emptyList();
            private List<Integer> h = Collections.emptyList();
            private List<Integer> i = Collections.emptyList();
            private List<c> j = Collections.emptyList();
            private List<h> k = Collections.emptyList();
            private List<m> l = Collections.emptyList();
            private List<q> m = Collections.emptyList();
            private List<f> n = Collections.emptyList();
            private List<Integer> o = Collections.emptyList();
            private s p = s.a();
            private List<Integer> q = Collections.emptyList();
            private v r = v.a();

            private C0631a() {
            }

            private C0631a a(int i) {
                this.f37001b |= 1;
                this.f37002c = i;
                return this;
            }

            private C0631a a(s sVar) {
                if ((this.f37001b & PropertyFlags.UNSIGNED) != 8192 || this.p == s.a()) {
                    this.p = sVar;
                } else {
                    this.p = s.a(this.p).a(sVar).f();
                }
                this.f37001b |= PropertyFlags.UNSIGNED;
                return this;
            }

            private C0631a a(v vVar) {
                if ((this.f37001b & 32768) != 32768 || this.r == v.a()) {
                    this.r = vVar;
                } else {
                    this.r = v.a(this.r).a(vVar).f();
                }
                this.f37001b |= 32768;
                return this;
            }

            private C0631a b(int i) {
                this.f37001b |= 2;
                this.f37003d = i;
                return this;
            }

            private C0631a c(int i) {
                this.f37001b |= 4;
                this.e = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.b.C0631a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$b> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.f36997a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$b r0 = (kotlin.reflect.jvm.internal.impl.b.a.b) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$b$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$b r0 = (kotlin.reflect.jvm.internal.impl.b.a.b) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$b$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.b.C0631a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$b$a");
            }

            static /* synthetic */ C0631a g() {
                return new C0631a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0631a f() {
                return new C0631a().a(i());
            }

            private b i() {
                b bVar = new b(this);
                int i = this.f37001b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                bVar.f36998b = this.f37002c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                bVar.f36999c = this.f37003d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                bVar.f37000d = this.e;
                if ((this.f37001b & 8) == 8) {
                    this.f = Collections.unmodifiableList(this.f);
                    this.f37001b &= -9;
                }
                bVar.e = this.f;
                if ((this.f37001b & 16) == 16) {
                    this.g = Collections.unmodifiableList(this.g);
                    this.f37001b &= -17;
                }
                bVar.f = this.g;
                if ((this.f37001b & 32) == 32) {
                    this.h = Collections.unmodifiableList(this.h);
                    this.f37001b &= -33;
                }
                bVar.g = this.h;
                if ((this.f37001b & 64) == 64) {
                    this.i = Collections.unmodifiableList(this.i);
                    this.f37001b &= -65;
                }
                bVar.h = this.i;
                if ((this.f37001b & 128) == 128) {
                    this.j = Collections.unmodifiableList(this.j);
                    this.f37001b &= -129;
                }
                bVar.i = this.j;
                if ((this.f37001b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    this.k = Collections.unmodifiableList(this.k);
                    this.f37001b &= -257;
                }
                bVar.j = this.k;
                if ((this.f37001b & 512) == 512) {
                    this.l = Collections.unmodifiableList(this.l);
                    this.f37001b &= -513;
                }
                bVar.k = this.l;
                if ((this.f37001b & 1024) == 1024) {
                    this.m = Collections.unmodifiableList(this.m);
                    this.f37001b &= -1025;
                }
                bVar.l = this.m;
                if ((this.f37001b & 2048) == 2048) {
                    this.n = Collections.unmodifiableList(this.n);
                    this.f37001b &= -2049;
                }
                bVar.m = this.n;
                if ((this.f37001b & 4096) == 4096) {
                    this.o = Collections.unmodifiableList(this.o);
                    this.f37001b &= -4097;
                }
                bVar.n = this.o;
                int i5 = i4;
                if ((i & PropertyFlags.UNSIGNED) == 8192) {
                    i5 = i4 | 8;
                }
                bVar.o = this.p;
                if ((this.f37001b & 16384) == 16384) {
                    this.q = Collections.unmodifiableList(this.q);
                    this.f37001b &= -16385;
                }
                bVar.p = this.q;
                int i6 = i5;
                if ((i & 32768) == 32768) {
                    i6 = i5 | 16;
                }
                bVar.q = this.r;
                bVar.u = i6;
                return bVar;
            }

            private void l() {
                if ((this.f37001b & 8) != 8) {
                    this.f = new ArrayList(this.f);
                    this.f37001b |= 8;
                }
            }

            private void m() {
                if ((this.f37001b & 16) != 16) {
                    this.g = new ArrayList(this.g);
                    this.f37001b |= 16;
                }
            }

            private void n() {
                if ((this.f37001b & 32) != 32) {
                    this.h = new ArrayList(this.h);
                    this.f37001b |= 32;
                }
            }

            private void o() {
                if ((this.f37001b & 64) != 64) {
                    this.i = new ArrayList(this.i);
                    this.f37001b |= 64;
                }
            }

            private void p() {
                if ((this.f37001b & 128) != 128) {
                    this.j = new ArrayList(this.j);
                    this.f37001b |= 128;
                }
            }

            private void q() {
                if ((this.f37001b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                    this.k = new ArrayList(this.k);
                    this.f37001b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
            }

            private void r() {
                if ((this.f37001b & 512) != 512) {
                    this.l = new ArrayList(this.l);
                    this.f37001b |= 512;
                }
            }

            private void s() {
                if ((this.f37001b & 1024) != 1024) {
                    this.m = new ArrayList(this.m);
                    this.f37001b |= 1024;
                }
            }

            private void t() {
                if ((this.f37001b & 2048) != 2048) {
                    this.n = new ArrayList(this.n);
                    this.f37001b |= 2048;
                }
            }

            private void u() {
                if ((this.f37001b & 4096) != 4096) {
                    this.o = new ArrayList(this.o);
                    this.f37001b |= 4096;
                }
            }

            private void v() {
                if ((this.f37001b & 16384) != 16384) {
                    this.q = new ArrayList(this.q);
                    this.f37001b |= 16384;
                }
            }

            public final C0631a a(b bVar) {
                if (bVar == b.a()) {
                    return this;
                }
                if (bVar.c()) {
                    a(bVar.f36998b);
                }
                if (bVar.d()) {
                    b(bVar.f36999c);
                }
                if (bVar.g()) {
                    c(bVar.f37000d);
                }
                if (!bVar.e.isEmpty()) {
                    if (this.f.isEmpty()) {
                        this.f = bVar.e;
                        this.f37001b &= -9;
                    } else {
                        l();
                        this.f.addAll(bVar.e);
                    }
                }
                if (!bVar.f.isEmpty()) {
                    if (this.g.isEmpty()) {
                        this.g = bVar.f;
                        this.f37001b &= -17;
                    } else {
                        m();
                        this.g.addAll(bVar.f);
                    }
                }
                if (!bVar.g.isEmpty()) {
                    if (this.h.isEmpty()) {
                        this.h = bVar.g;
                        this.f37001b &= -33;
                    } else {
                        n();
                        this.h.addAll(bVar.g);
                    }
                }
                if (!bVar.h.isEmpty()) {
                    if (this.i.isEmpty()) {
                        this.i = bVar.h;
                        this.f37001b &= -65;
                    } else {
                        o();
                        this.i.addAll(bVar.h);
                    }
                }
                if (!bVar.i.isEmpty()) {
                    if (this.j.isEmpty()) {
                        this.j = bVar.i;
                        this.f37001b &= -129;
                    } else {
                        p();
                        this.j.addAll(bVar.i);
                    }
                }
                if (!bVar.j.isEmpty()) {
                    if (this.k.isEmpty()) {
                        this.k = bVar.j;
                        this.f37001b &= -257;
                    } else {
                        q();
                        this.k.addAll(bVar.j);
                    }
                }
                if (!bVar.k.isEmpty()) {
                    if (this.l.isEmpty()) {
                        this.l = bVar.k;
                        this.f37001b &= -513;
                    } else {
                        r();
                        this.l.addAll(bVar.k);
                    }
                }
                if (!bVar.l.isEmpty()) {
                    if (this.m.isEmpty()) {
                        this.m = bVar.l;
                        this.f37001b &= -1025;
                    } else {
                        s();
                        this.m.addAll(bVar.l);
                    }
                }
                if (!bVar.m.isEmpty()) {
                    if (this.n.isEmpty()) {
                        this.n = bVar.m;
                        this.f37001b &= -2049;
                    } else {
                        t();
                        this.n.addAll(bVar.m);
                    }
                }
                if (!bVar.n.isEmpty()) {
                    if (this.o.isEmpty()) {
                        this.o = bVar.n;
                        this.f37001b &= -4097;
                    } else {
                        u();
                        this.o.addAll(bVar.n);
                    }
                }
                if (bVar.k()) {
                    a(bVar.o);
                }
                if (!bVar.p.isEmpty()) {
                    if (this.q.isEmpty()) {
                        this.q = bVar.p;
                        this.f37001b &= -16385;
                    } else {
                        v();
                        this.q.addAll(bVar.p);
                    }
                }
                if (bVar.l()) {
                    a(bVar.q);
                }
                a((C0631a) bVar);
                this.f38138a = this.f38138a.a(bVar.t);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return b.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                b i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                if (!((this.f37001b & 2) == 2)) {
                    return false;
                }
                for (int i = 0; i < this.f.size(); i++) {
                    if (!this.f.get(i).e()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < this.g.size(); i2++) {
                    if (!this.g.get(i2).e()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < this.j.size(); i3++) {
                    if (!this.j.get(i3).e()) {
                        return false;
                    }
                }
                for (int i4 = 0; i4 < this.k.size(); i4++) {
                    if (!this.k.get(i4).e()) {
                        return false;
                    }
                }
                for (int i5 = 0; i5 < this.l.size(); i5++) {
                    if (!this.l.get(i5).e()) {
                        return false;
                    }
                }
                for (int i6 = 0; i6 < this.m.size(); i6++) {
                    if (!this.m.get(i6).e()) {
                        return false;
                    }
                }
                for (int i7 = 0; i7 < this.n.size(); i7++) {
                    if (!this.n.get(i7).e()) {
                        return false;
                    }
                }
                return (!((this.f37001b & PropertyFlags.UNSIGNED) == 8192) || this.p.e()) && k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return b.a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$b$b.class */
        public enum EnumC0632b implements j.a {
            CLASS(0, 0),
            INTERFACE(1, 1),
            ENUM_CLASS(2, 2),
            ENUM_ENTRY(3, 3),
            ANNOTATION_CLASS(4, 4),
            OBJECT(5, 5),
            COMPANION_OBJECT(6, 6);
            
            private static j.b<EnumC0632b> internalValueMap = new j.b<EnumC0632b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.b.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ EnumC0632b a(int i) {
                    return EnumC0632b.valueOf(i);
                }
            };
            private final int value;

            EnumC0632b(int i, int i2) {
                this.value = i2;
            }

            public static EnumC0632b valueOf(int i) {
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

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            b bVar = new b(true);
            s = bVar;
            bVar.m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private b(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = (byte) (-1);
            this.z = -1;
            m();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        s.C0650a aVar = null;
                        v.C0653a aVar2 = null;
                        switch (a3) {
                            case 0:
                                z = true;
                            case 8:
                                this.u |= 1;
                                this.f36998b = eVar.d();
                                z2 = z2;
                            case 16:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.g = new ArrayList();
                                    z2 |= true;
                                }
                                this.g.add(Integer.valueOf(eVar.d()));
                            case 18:
                                int b2 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.g = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.g.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b2);
                            case 24:
                                this.u |= 2;
                                this.f36999c = eVar.d();
                                z2 = z2;
                            case 32:
                                this.u |= 4;
                                this.f37000d = eVar.d();
                                z2 = z2;
                            case 42:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.e = new ArrayList();
                                    z2 |= true;
                                }
                                this.e.add(eVar.a(r.f37105a, fVar));
                            case 50:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.f = new ArrayList();
                                    z2 |= true;
                                }
                                this.f.add(eVar.a(p.f37084a, fVar));
                            case 56:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.h = new ArrayList();
                                    z2 |= true;
                                }
                                this.h.add(Integer.valueOf(eVar.d()));
                            case 58:
                                int b3 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.h = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.h.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b3);
                            case 66:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.i = new ArrayList();
                                    z2 |= true;
                                }
                                this.i.add(eVar.a(c.f37004a, fVar));
                            case 74:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.j = new ArrayList();
                                    z2 |= true;
                                }
                                this.j.add(eVar.a(h.f37037a, fVar));
                            case 82:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.k = new ArrayList();
                                    z2 |= true;
                                }
                                this.k.add(eVar.a(m.f37058a, fVar));
                            case 90:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.l = new ArrayList();
                                    z2 |= true;
                                }
                                this.l.add(eVar.a(q.f37098a, fVar));
                            case 106:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.m = new ArrayList();
                                    z2 |= true;
                                }
                                this.m.add(eVar.a(f.f37024a, fVar));
                            case 128:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.n = new ArrayList();
                                    z2 |= true;
                                }
                                this.n.add(Integer.valueOf(eVar.d()));
                            case 130:
                                int b4 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.n = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.n.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b4);
                            case 242:
                                aVar = (this.u & 8) == 8 ? s.a(this.o) : aVar;
                                s sVar = (s) eVar.a(s.f37112a, fVar);
                                this.o = sVar;
                                if (aVar != null) {
                                    aVar.a(sVar);
                                    this.o = aVar.f();
                                }
                                this.u |= 8;
                                z2 = z2;
                            case 248:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.p = new ArrayList();
                                    z2 |= true;
                                }
                                this.p.add(Integer.valueOf(eVar.d()));
                            case 250:
                                int b5 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.p = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.p.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b5);
                            case 258:
                                aVar2 = (this.u & 16) == 16 ? v.a(this.q) : aVar2;
                                v vVar = (v) eVar.a(v.f37133a, fVar);
                                this.q = vVar;
                                if (aVar2 != null) {
                                    aVar2.a(vVar);
                                    this.q = aVar2.f();
                                }
                                this.u |= 16;
                                z2 = z2;
                            default:
                                z2 = z2;
                                if (!a(eVar, a2, fVar, a3)) {
                                    z = true;
                                }
                        }
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.g = Collections.unmodifiableList(this.g);
                        }
                        if (z2 & true) {
                            this.e = Collections.unmodifiableList(this.e);
                        }
                        if (z2 & true) {
                            this.f = Collections.unmodifiableList(this.f);
                        }
                        if (z2 & true) {
                            this.h = Collections.unmodifiableList(this.h);
                        }
                        if (z2 & true) {
                            this.i = Collections.unmodifiableList(this.i);
                        }
                        if (z2 & true) {
                            this.j = Collections.unmodifiableList(this.j);
                        }
                        if (z2 & true) {
                            this.k = Collections.unmodifiableList(this.k);
                        }
                        if (z2 & true) {
                            this.l = Collections.unmodifiableList(this.l);
                        }
                        if (z2 & true) {
                            this.m = Collections.unmodifiableList(this.m);
                        }
                        if (z2 & true) {
                            this.n = Collections.unmodifiableList(this.n);
                        }
                        if (z2 & true) {
                            this.p = Collections.unmodifiableList(this.p);
                        }
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.t = h.a();
                            throw th2;
                        }
                        this.t = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.g = Collections.unmodifiableList(this.g);
            }
            if (z2 & true) {
                this.e = Collections.unmodifiableList(this.e);
            }
            if (z2 & true) {
                this.f = Collections.unmodifiableList(this.f);
            }
            if (z2 & true) {
                this.h = Collections.unmodifiableList(this.h);
            }
            if (z2 & true) {
                this.i = Collections.unmodifiableList(this.i);
            }
            if (z2 & true) {
                this.j = Collections.unmodifiableList(this.j);
            }
            if (z2 & true) {
                this.k = Collections.unmodifiableList(this.k);
            }
            if (z2 & true) {
                this.l = Collections.unmodifiableList(this.l);
            }
            if (z2 & true) {
                this.m = Collections.unmodifiableList(this.m);
            }
            if (z2 & true) {
                this.n = Collections.unmodifiableList(this.n);
            }
            if (z2 & true) {
                this.p = Collections.unmodifiableList(this.p);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.t = h.a();
                throw th3;
            }
            this.t = h.a();
            w();
        }

        private b(h.b<b, ?> bVar) {
            super(bVar);
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = (byte) (-1);
            this.z = -1;
            this.t = bVar.f38138a;
        }

        private b(boolean z) {
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = (byte) (-1);
            this.z = -1;
            this.t = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static b a() {
            return s;
        }

        public static b a(InputStream inputStream, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws IOException {
            return f36997a.b(inputStream, fVar);
        }

        private void m() {
            this.f36998b = 6;
            this.f36999c = 0;
            this.f37000d = 0;
            this.e = Collections.emptyList();
            this.f = Collections.emptyList();
            this.g = Collections.emptyList();
            this.h = Collections.emptyList();
            this.i = Collections.emptyList();
            this.j = Collections.emptyList();
            this.k = Collections.emptyList();
            this.l = Collections.emptyList();
            this.m = Collections.emptyList();
            this.n = Collections.emptyList();
            this.o = s.a();
            this.p = Collections.emptyList();
            this.q = v.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.u & 1) == 1) {
                codedOutputStream.a(1, this.f36998b);
            }
            if (this.g.size() > 0) {
                codedOutputStream.e(18);
                codedOutputStream.e(this.v);
            }
            for (int i = 0; i < this.g.size(); i++) {
                codedOutputStream.a(this.g.get(i).intValue());
            }
            if ((this.u & 2) == 2) {
                codedOutputStream.a(3, this.f36999c);
            }
            if ((this.u & 4) == 4) {
                codedOutputStream.a(4, this.f37000d);
            }
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                codedOutputStream.a(5, this.e.get(i2));
            }
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                codedOutputStream.a(6, this.f.get(i3));
            }
            if (this.h.size() > 0) {
                codedOutputStream.e(58);
                codedOutputStream.e(this.w);
            }
            for (int i4 = 0; i4 < this.h.size(); i4++) {
                codedOutputStream.a(this.h.get(i4).intValue());
            }
            for (int i5 = 0; i5 < this.i.size(); i5++) {
                codedOutputStream.a(8, this.i.get(i5));
            }
            for (int i6 = 0; i6 < this.j.size(); i6++) {
                codedOutputStream.a(9, this.j.get(i6));
            }
            for (int i7 = 0; i7 < this.k.size(); i7++) {
                codedOutputStream.a(10, this.k.get(i7));
            }
            for (int i8 = 0; i8 < this.l.size(); i8++) {
                codedOutputStream.a(11, this.l.get(i8));
            }
            for (int i9 = 0; i9 < this.m.size(); i9++) {
                codedOutputStream.a(13, this.m.get(i9));
            }
            if (this.n.size() > 0) {
                codedOutputStream.e(130);
                codedOutputStream.e(this.x);
            }
            for (int i10 = 0; i10 < this.n.size(); i10++) {
                codedOutputStream.a(this.n.get(i10).intValue());
            }
            int i11 = 0;
            if ((this.u & 8) == 8) {
                codedOutputStream.a(30, this.o);
                i11 = 0;
            }
            while (i11 < this.p.size()) {
                codedOutputStream.a(31, this.p.get(i11).intValue());
                i11++;
            }
            if ((this.u & 16) == 16) {
                codedOutputStream.a(32, this.q);
            }
            y.a(19000, codedOutputStream);
            codedOutputStream.d(this.t);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<b> b() {
            return f36997a;
        }

        public final boolean c() {
            return (this.u & 1) == 1;
        }

        public final boolean d() {
            return (this.u & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.y;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!d()) {
                this.y = (byte) 0;
                return false;
            }
            for (int i = 0; i < this.e.size(); i++) {
                if (!this.e.get(i).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                if (!this.f.get(i2).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < this.i.size(); i3++) {
                if (!this.i.get(i3).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < this.j.size(); i4++) {
                if (!this.j.get(i4).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            for (int i5 = 0; i5 < this.k.size(); i5++) {
                if (!this.k.get(i5).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            for (int i6 = 0; i6 < this.l.size(); i6++) {
                if (!this.l.get(i6).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            for (int i7 = 0; i7 < this.m.size(); i7++) {
                if (!this.m.get(i7).e()) {
                    this.y = (byte) 0;
                    return false;
                }
            }
            if (k() && !this.o.e()) {
                this.y = (byte) 0;
                return false;
            } else if (!x()) {
                this.y = (byte) 0;
                return false;
            } else {
                this.y = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.z;
            if (i != -1) {
                return i;
            }
            int c2 = (this.u & 1) == 1 ? CodedOutputStream.c(1, this.f36998b) + 0 : 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.g.size(); i3++) {
                i2 += CodedOutputStream.c(this.g.get(i3).intValue());
            }
            int i4 = c2 + i2;
            int i5 = i4;
            if (!this.g.isEmpty()) {
                i5 = i4 + 1 + CodedOutputStream.c(i2);
            }
            this.v = i2;
            int i6 = i5;
            if ((this.u & 2) == 2) {
                i6 = i5 + CodedOutputStream.c(3, this.f36999c);
            }
            int i7 = i6;
            if ((this.u & 4) == 4) {
                i7 = i6 + CodedOutputStream.c(4, this.f37000d);
            }
            for (int i8 = 0; i8 < this.e.size(); i8++) {
                i7 += CodedOutputStream.c(5, this.e.get(i8));
            }
            for (int i9 = 0; i9 < this.f.size(); i9++) {
                i7 += CodedOutputStream.c(6, this.f.get(i9));
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.h.size(); i11++) {
                i10 += CodedOutputStream.c(this.h.get(i11).intValue());
            }
            int i12 = i7 + i10;
            int i13 = i12;
            if (!this.h.isEmpty()) {
                i13 = i12 + 1 + CodedOutputStream.c(i10);
            }
            this.w = i10;
            for (int i14 = 0; i14 < this.i.size(); i14++) {
                i13 += CodedOutputStream.c(8, this.i.get(i14));
            }
            for (int i15 = 0; i15 < this.j.size(); i15++) {
                i13 += CodedOutputStream.c(9, this.j.get(i15));
            }
            for (int i16 = 0; i16 < this.k.size(); i16++) {
                i13 += CodedOutputStream.c(10, this.k.get(i16));
            }
            for (int i17 = 0; i17 < this.l.size(); i17++) {
                i13 += CodedOutputStream.c(11, this.l.get(i17));
            }
            for (int i18 = 0; i18 < this.m.size(); i18++) {
                i13 += CodedOutputStream.c(13, this.m.get(i18));
            }
            int i19 = 0;
            for (int i20 = 0; i20 < this.n.size(); i20++) {
                i19 += CodedOutputStream.c(this.n.get(i20).intValue());
            }
            int i21 = i13 + i19;
            int i22 = i21;
            if (!this.n.isEmpty()) {
                i22 = i21 + 2 + CodedOutputStream.c(i19);
            }
            this.x = i19;
            int i23 = i22;
            if ((this.u & 8) == 8) {
                i23 = i22 + CodedOutputStream.c(30, this.o);
            }
            int i24 = 0;
            for (int i25 = 0; i25 < this.p.size(); i25++) {
                i24 += CodedOutputStream.c(this.p.get(i25).intValue());
            }
            int size = i23 + i24 + (this.p.size() * 2);
            int i26 = size;
            if ((this.u & 16) == 16) {
                i26 = size + CodedOutputStream.c(32, this.q);
            }
            int z = i26 + z() + this.t.a();
            this.z = z;
            return z;
        }

        public final boolean g() {
            return (this.u & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0631a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0631a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return s;
        }

        public final boolean k() {
            return (this.u & 8) == 8;
        }

        public final boolean l() {
            return (this.u & 16) == 16;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$c.class */
    public static final class c extends h.c<c> implements kotlin.reflect.jvm.internal.impl.b.f {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<c> f37004a = new kotlin.reflect.jvm.internal.impl.protobuf.b<c>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.c.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new c(eVar, fVar);
            }
        };
        private static final c e;

        /* renamed from: b  reason: collision with root package name */
        public int f37005b;

        /* renamed from: c  reason: collision with root package name */
        public List<t> f37006c;

        /* renamed from: d  reason: collision with root package name */
        public List<Integer> f37007d;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f;
        private int g;
        private byte h;
        private int i;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$c$a.class */
        public static final class C0633a extends h.b<c, C0633a> implements kotlin.reflect.jvm.internal.impl.b.f {

            /* renamed from: b  reason: collision with root package name */
            private int f37008b;

            /* renamed from: c  reason: collision with root package name */
            private int f37009c = 6;

            /* renamed from: d  reason: collision with root package name */
            private List<t> f37010d = Collections.emptyList();
            private List<Integer> e = Collections.emptyList();

            private C0633a() {
            }

            private C0633a a(int i) {
                this.f37008b |= 1;
                this.f37009c = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.c.C0633a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$c> r0 = kotlin.reflect.jvm.internal.impl.b.a.c.f37004a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$c r0 = (kotlin.reflect.jvm.internal.impl.b.a.c) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$c$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$c r0 = (kotlin.reflect.jvm.internal.impl.b.a.c) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$c$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.c.C0633a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$c$a");
            }

            static /* synthetic */ C0633a g() {
                return new C0633a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0633a f() {
                return new C0633a().a(i());
            }

            private c i() {
                c cVar = new c(this);
                int i = 1;
                if ((this.f37008b & 1) != 1) {
                    i = 0;
                }
                cVar.f37005b = this.f37009c;
                if ((this.f37008b & 2) == 2) {
                    this.f37010d = Collections.unmodifiableList(this.f37010d);
                    this.f37008b &= -3;
                }
                cVar.f37006c = this.f37010d;
                if ((this.f37008b & 4) == 4) {
                    this.e = Collections.unmodifiableList(this.e);
                    this.f37008b &= -5;
                }
                cVar.f37007d = this.e;
                cVar.g = i;
                return cVar;
            }

            private void l() {
                if ((this.f37008b & 2) != 2) {
                    this.f37010d = new ArrayList(this.f37010d);
                    this.f37008b |= 2;
                }
            }

            private void m() {
                if ((this.f37008b & 4) != 4) {
                    this.e = new ArrayList(this.e);
                    this.f37008b |= 4;
                }
            }

            public final C0633a a(c cVar) {
                if (cVar == c.a()) {
                    return this;
                }
                if (cVar.c()) {
                    a(cVar.f37005b);
                }
                if (!cVar.f37006c.isEmpty()) {
                    if (this.f37010d.isEmpty()) {
                        this.f37010d = cVar.f37006c;
                        this.f37008b &= -3;
                    } else {
                        l();
                        this.f37010d.addAll(cVar.f37006c);
                    }
                }
                if (!cVar.f37007d.isEmpty()) {
                    if (this.e.isEmpty()) {
                        this.e = cVar.f37007d;
                        this.f37008b &= -5;
                    } else {
                        m();
                        this.e.addAll(cVar.f37007d);
                    }
                }
                a((C0633a) cVar);
                this.f38138a = this.f38138a.a(cVar.f);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return c.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                c i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37010d.size(); i++) {
                    if (!this.f37010d.get(i).e()) {
                        return false;
                    }
                }
                return k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return c.a();
            }
        }

        static {
            c cVar = new c(true);
            e = cVar;
            cVar.d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private c(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.h = (byte) (-1);
            this.i = -1;
            d();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 8) {
                                    this.g |= 1;
                                    this.f37005b = eVar.d();
                                } else if (a3 == 18) {
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.f37006c = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37006c.add(eVar.a(t.f37119a, fVar));
                                } else if (a3 == 248) {
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.f37007d = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37007d.add(Integer.valueOf(eVar.d()));
                                } else if (a3 == 250) {
                                    int b2 = eVar.b(eVar.d());
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        z2 = z2;
                                        if (eVar.h() > 0) {
                                            this.f37007d = new ArrayList();
                                            z2 |= true;
                                        }
                                    }
                                    while (eVar.h() > 0) {
                                        this.f37007d.add(Integer.valueOf(eVar.d()));
                                    }
                                    eVar.c(b2);
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        e3.f38108a = this;
                        throw e3;
                    }
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.f37006c = Collections.unmodifiableList(this.f37006c);
                    }
                    if (z2 & true) {
                        this.f37007d = Collections.unmodifiableList(this.f37007d);
                    }
                    try {
                        a2.a();
                    } catch (IOException e4) {
                    } catch (Throwable th2) {
                        this.f = h.a();
                        throw th2;
                    }
                    this.f = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f37006c = Collections.unmodifiableList(this.f37006c);
            }
            if (z2 & true) {
                this.f37007d = Collections.unmodifiableList(this.f37007d);
            }
            try {
                a2.a();
            } catch (IOException e5) {
            } catch (Throwable th3) {
                this.f = h.a();
                throw th3;
            }
            this.f = h.a();
            w();
        }

        private c(h.b<c, ?> bVar) {
            super(bVar);
            this.h = (byte) (-1);
            this.i = -1;
            this.f = bVar.f38138a;
        }

        private c(boolean z) {
            this.h = (byte) (-1);
            this.i = -1;
            this.f = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static c a() {
            return e;
        }

        private void d() {
            this.f37005b = 6;
            this.f37006c = Collections.emptyList();
            this.f37007d = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.g & 1) == 1) {
                codedOutputStream.a(1, this.f37005b);
            }
            for (int i = 0; i < this.f37006c.size(); i++) {
                codedOutputStream.a(2, this.f37006c.get(i));
            }
            for (int i2 = 0; i2 < this.f37007d.size(); i2++) {
                codedOutputStream.a(31, this.f37007d.get(i2).intValue());
            }
            y.a(19000, codedOutputStream);
            codedOutputStream.d(this.f);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<c> b() {
            return f37004a;
        }

        public final boolean c() {
            return (this.g & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.h;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < this.f37006c.size(); i++) {
                if (!this.f37006c.get(i).e()) {
                    this.h = (byte) 0;
                    return false;
                }
            }
            if (!x()) {
                this.h = (byte) 0;
                return false;
            }
            this.h = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.i;
            if (i != -1) {
                return i;
            }
            int c2 = (this.g & 1) == 1 ? CodedOutputStream.c(1, this.f37005b) + 0 : 0;
            for (int i2 = 0; i2 < this.f37006c.size(); i2++) {
                c2 += CodedOutputStream.c(2, this.f37006c.get(i2));
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f37007d.size(); i4++) {
                i3 += CodedOutputStream.c(this.f37007d.get(i4).intValue());
            }
            int size = c2 + i3 + (this.f37007d.size() * 2) + z() + this.f.a();
            this.i = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0633a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0633a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return e;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$d.class */
    public static final class d extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.g {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<d> f37011a = new kotlin.reflect.jvm.internal.impl.protobuf.b<d>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.d.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new d(eVar, fVar);
            }
        };

        /* renamed from: b  reason: collision with root package name */
        private static final d f37012b;

        /* renamed from: c  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f37013c;

        /* renamed from: d  reason: collision with root package name */
        private List<e> f37014d;
        private byte e;
        private int f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$d$a.class */
        public static final class C0634a extends h.a<d, C0634a> implements kotlin.reflect.jvm.internal.impl.b.g {

            /* renamed from: b  reason: collision with root package name */
            private int f37015b;

            /* renamed from: c  reason: collision with root package name */
            private List<e> f37016c = Collections.emptyList();

            private C0634a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.d.C0634a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$d> r0 = kotlin.reflect.jvm.internal.impl.b.a.d.f37011a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$d r0 = (kotlin.reflect.jvm.internal.impl.b.a.d) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$d$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$d r0 = (kotlin.reflect.jvm.internal.impl.b.a.d) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$d$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.d.C0634a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$d$a");
            }

            static /* synthetic */ C0634a g() {
                return new C0634a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0634a clone() {
                return new C0634a().a(f());
            }

            private void i() {
                if ((this.f37015b & 1) != 1) {
                    this.f37016c = new ArrayList(this.f37016c);
                    this.f37015b |= 1;
                }
            }

            public final C0634a a(d dVar) {
                if (dVar == d.a()) {
                    return this;
                }
                if (!dVar.f37014d.isEmpty()) {
                    if (this.f37016c.isEmpty()) {
                        this.f37016c = dVar.f37014d;
                        this.f37015b &= -2;
                    } else {
                        i();
                        this.f37016c.addAll(dVar.f37014d);
                    }
                }
                this.f38138a = this.f38138a.a(dVar.f37013c);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ d a() {
                return d.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                d f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37016c.size(); i++) {
                    if (!this.f37016c.get(i).e()) {
                        return false;
                    }
                }
                return true;
            }

            public final d f() {
                d dVar = new d(this);
                if ((this.f37015b & 1) == 1) {
                    this.f37016c = Collections.unmodifiableList(this.f37016c);
                    this.f37015b &= -2;
                }
                dVar.f37014d = this.f37016c;
                return dVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return d.a();
            }
        }

        static {
            d dVar = new d(true);
            f37012b = dVar;
            dVar.f37014d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private d(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37014d = Collections.emptyList();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 10) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f37014d = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37014d.add(eVar.a(e.f37017a, fVar));
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37014d = Collections.unmodifiableList(this.f37014d);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f37013c = h.a();
                        throw th2;
                    }
                    this.f37013c = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37014d = Collections.unmodifiableList(this.f37014d);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f37013c = h.a();
                throw th3;
            }
            this.f37013c = h.a();
            w();
        }

        private d(h.a aVar) {
            super(aVar);
            this.e = (byte) (-1);
            this.f = -1;
            this.f37013c = aVar.f38138a;
        }

        private d(boolean z) {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37013c = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0634a a(d dVar) {
            return C0634a.g().a(dVar);
        }

        public static d a() {
            return f37012b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            for (int i = 0; i < this.f37014d.size(); i++) {
                codedOutputStream.a(1, this.f37014d.get(i));
            }
            codedOutputStream.d(this.f37013c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<d> b() {
            return f37011a;
        }

        /* renamed from: c */
        public final C0634a h() {
            return C0634a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.e;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < this.f37014d.size(); i++) {
                if (!this.f37014d.get(i).e()) {
                    this.e = (byte) 0;
                    return false;
                }
            }
            this.e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f37014d.size(); i3++) {
                i2 += CodedOutputStream.c(1, this.f37014d.get(i3));
            }
            int a2 = i2 + this.f37013c.a();
            this.f = a2;
            return a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0634a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f37012b;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e.class */
    public static final class e extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.h {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<e> f37017a = new kotlin.reflect.jvm.internal.impl.protobuf.b<e>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.e.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new e(eVar, fVar);
            }
        };
        private static final e e;

        /* renamed from: b  reason: collision with root package name */
        b f37018b;

        /* renamed from: c  reason: collision with root package name */
        g f37019c;

        /* renamed from: d  reason: collision with root package name */
        c f37020d;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f;
        private int g;
        private List<g> h;
        private byte i;
        private int j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e$a.class */
        public static final class C0635a extends h.a<e, C0635a> implements kotlin.reflect.jvm.internal.impl.b.h {

            /* renamed from: b  reason: collision with root package name */
            private int f37021b;

            /* renamed from: c  reason: collision with root package name */
            private b f37022c = b.RETURNS_CONSTANT;

            /* renamed from: d  reason: collision with root package name */
            private List<g> f37023d = Collections.emptyList();
            private g e = g.a();
            private c f = c.AT_MOST_ONCE;

            private C0635a() {
            }

            private C0635a a(b bVar) {
                Objects.requireNonNull(bVar);
                this.f37021b |= 1;
                this.f37022c = bVar;
                return this;
            }

            private C0635a a(c cVar) {
                Objects.requireNonNull(cVar);
                this.f37021b |= 8;
                this.f = cVar;
                return this;
            }

            private C0635a a(g gVar) {
                if ((this.f37021b & 4) != 4 || this.e == g.a()) {
                    this.e = gVar;
                } else {
                    this.e = g.a(this.e).a(gVar).f();
                }
                this.f37021b |= 4;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.e.C0635a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$e> r0 = kotlin.reflect.jvm.internal.impl.b.a.e.f37017a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x0020
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x0020
                    kotlin.reflect.jvm.internal.impl.b.a$e r0 = (kotlin.reflect.jvm.internal.impl.b.a.e) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x0020
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$e$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L_0x0030
                L_0x0020:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$e r0 = (kotlin.reflect.jvm.internal.impl.b.a.e) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x002b
                L_0x002b:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L_0x0030:
                    r0 = r6
                    if (r0 == 0) goto L_0x003a
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$e$a r0 = r0.a(r1)
                L_0x003a:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.e.C0635a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$e$a");
            }

            static /* synthetic */ C0635a f() {
                return new C0635a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: g */
            public C0635a clone() {
                return new C0635a().a(h());
            }

            private e h() {
                e eVar = new e(this);
                int i = this.f37021b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                eVar.f37018b = this.f37022c;
                if ((this.f37021b & 2) == 2) {
                    this.f37023d = Collections.unmodifiableList(this.f37023d);
                    this.f37021b &= -3;
                }
                eVar.h = this.f37023d;
                int i3 = i2;
                if ((i & 4) == 4) {
                    i3 = i2 | 2;
                }
                eVar.f37019c = this.e;
                int i4 = i3;
                if ((i & 8) == 8) {
                    i4 = i3 | 4;
                }
                eVar.f37020d = this.f;
                eVar.g = i4;
                return eVar;
            }

            private void i() {
                if ((this.f37021b & 2) != 2) {
                    this.f37023d = new ArrayList(this.f37023d);
                    this.f37021b |= 2;
                }
            }

            public final C0635a a(e eVar) {
                if (eVar == e.a()) {
                    return this;
                }
                if (eVar.c()) {
                    a(eVar.f37018b);
                }
                if (!eVar.h.isEmpty()) {
                    if (this.f37023d.isEmpty()) {
                        this.f37023d = eVar.h;
                        this.f37021b &= -3;
                    } else {
                        i();
                        this.f37023d.addAll(eVar.h);
                    }
                }
                if (eVar.d()) {
                    a(eVar.f37019c);
                }
                if (eVar.g()) {
                    a(eVar.f37020d);
                }
                this.f38138a = this.f38138a.a(eVar.f);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ e a() {
                return e.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                e h = h();
                if (h.e()) {
                    return h;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37023d.size(); i++) {
                    if (!this.f37023d.get(i).e()) {
                        return false;
                    }
                }
                return !((this.f37021b & 4) == 4) || this.e.e();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return e.a();
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e$b.class */
        public enum b implements j.a {
            RETURNS_CONSTANT(0, 0),
            CALLS(1, 1),
            RETURNS_NOT_NULL(2, 2);
            
            private static j.b<b> internalValueMap = new j.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.e.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ b a(int i) {
                    return b.valueOf(i);
                }
            };
            private final int value;

            b(int i, int i2) {
                this.value = i2;
            }

            public static b valueOf(int i) {
                if (i == 0) {
                    return RETURNS_CONSTANT;
                }
                if (i == 1) {
                    return CALLS;
                }
                if (i != 2) {
                    return null;
                }
                return RETURNS_NOT_NULL;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$e$c.class */
        public enum c implements j.a {
            AT_MOST_ONCE(0, 0),
            EXACTLY_ONCE(1, 1),
            AT_LEAST_ONCE(2, 2);
            
            private static j.b<c> internalValueMap = new j.b<c>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.e.c.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ c a(int i) {
                    return c.valueOf(i);
                }
            };
            private final int value;

            c(int i, int i2) {
                this.value = i2;
            }

            public static c valueOf(int i) {
                if (i == 0) {
                    return AT_MOST_ONCE;
                }
                if (i == 1) {
                    return EXACTLY_ONCE;
                }
                if (i != 2) {
                    return null;
                }
                return AT_LEAST_ONCE;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            e eVar = new e(true);
            e = eVar;
            eVar.k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private e(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.i = (byte) (-1);
            this.j = -1;
            k();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                int d2 = eVar.d();
                                b valueOf = b.valueOf(d2);
                                if (valueOf == null) {
                                    a2.e(a3);
                                    a2.e(d2);
                                } else {
                                    this.g |= 1;
                                    this.f37018b = valueOf;
                                }
                            } else if (a3 == 18) {
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.h = new ArrayList();
                                    z2 |= true;
                                }
                                this.h.add(eVar.a(g.f37030a, fVar));
                            } else if (a3 == 26) {
                                g.C0637a a4 = (this.g & 2) == 2 ? g.a(this.f37019c) : null;
                                g gVar = (g) eVar.a(g.f37030a, fVar);
                                this.f37019c = gVar;
                                if (a4 != null) {
                                    a4.a(gVar);
                                    this.f37019c = a4.f();
                                }
                                this.g |= 2;
                            } else if (a3 == 32) {
                                int d3 = eVar.d();
                                c valueOf2 = c.valueOf(d3);
                                if (valueOf2 == null) {
                                    a2.e(a3);
                                    a2.e(d3);
                                } else {
                                    this.g |= 4;
                                    this.f37020d = valueOf2;
                                }
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.h = Collections.unmodifiableList(this.h);
                        }
                        try {
                            a2.a();
                        } catch (IOException e2) {
                        } catch (Throwable th2) {
                            this.f = h.a();
                            throw th2;
                        }
                        this.f = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e3) {
                    e3.f38108a = this;
                    throw e3;
                } catch (IOException e4) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e4.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.h = Collections.unmodifiableList(this.h);
            }
            try {
                a2.a();
            } catch (IOException e5) {
            } catch (Throwable th3) {
                this.f = h.a();
                throw th3;
            }
            this.f = h.a();
            w();
        }

        private e(h.a aVar) {
            super(aVar);
            this.i = (byte) (-1);
            this.j = -1;
            this.f = aVar.f38138a;
        }

        private e(boolean z) {
            this.i = (byte) (-1);
            this.j = -1;
            this.f = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static e a() {
            return e;
        }

        private void k() {
            this.f37018b = b.RETURNS_CONSTANT;
            this.h = Collections.emptyList();
            this.f37019c = g.a();
            this.f37020d = c.AT_MOST_ONCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.g & 1) == 1) {
                codedOutputStream.b(1, this.f37018b.getNumber());
            }
            for (int i = 0; i < this.h.size(); i++) {
                codedOutputStream.a(2, this.h.get(i));
            }
            if ((this.g & 2) == 2) {
                codedOutputStream.a(3, this.f37019c);
            }
            if ((this.g & 4) == 4) {
                codedOutputStream.b(4, this.f37020d.getNumber());
            }
            codedOutputStream.d(this.f);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<e> b() {
            return f37017a;
        }

        public final boolean c() {
            return (this.g & 1) == 1;
        }

        public final boolean d() {
            return (this.g & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.i;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < this.h.size(); i++) {
                if (!this.h.get(i).e()) {
                    this.i = (byte) 0;
                    return false;
                }
            }
            if (!d() || this.f37019c.e()) {
                this.i = (byte) 1;
                return true;
            }
            this.i = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.j;
            if (i != -1) {
                return i;
            }
            int d2 = (this.g & 1) == 1 ? CodedOutputStream.d(1, this.f37018b.getNumber()) + 0 : 0;
            for (int i2 = 0; i2 < this.h.size(); i2++) {
                d2 += CodedOutputStream.c(2, this.h.get(i2));
            }
            int i3 = d2;
            if ((this.g & 2) == 2) {
                i3 = d2 + CodedOutputStream.c(3, this.f37019c);
            }
            int i4 = i3;
            if ((this.g & 4) == 4) {
                i4 = i3 + CodedOutputStream.d(4, this.f37020d.getNumber());
            }
            int a2 = i4 + this.f.a();
            this.j = a2;
            return a2;
        }

        public final boolean g() {
            return (this.g & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0635a.f().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0635a.f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return e;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$f.class */
    public static final class f extends h.c<f> implements kotlin.reflect.jvm.internal.impl.b.i {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<f> f37024a = new kotlin.reflect.jvm.internal.impl.protobuf.b<f>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.f.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new f(eVar, fVar);
            }
        };

        /* renamed from: c  reason: collision with root package name */
        private static final f f37025c;

        /* renamed from: b  reason: collision with root package name */
        public int f37026b;

        /* renamed from: d  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f37027d;
        private int e;
        private byte f;
        private int g;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$f$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$f$a.class */
        public static final class C0636a extends h.b<f, C0636a> implements kotlin.reflect.jvm.internal.impl.b.i {

            /* renamed from: b  reason: collision with root package name */
            private int f37028b;

            /* renamed from: c  reason: collision with root package name */
            private int f37029c;

            private C0636a() {
            }

            private C0636a a(int i) {
                this.f37028b |= 1;
                this.f37029c = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.f.C0636a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$f> r0 = kotlin.reflect.jvm.internal.impl.b.a.f.f37024a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$f r0 = (kotlin.reflect.jvm.internal.impl.b.a.f) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$f$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$f r0 = (kotlin.reflect.jvm.internal.impl.b.a.f) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$f$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.f.C0636a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$f$a");
            }

            static /* synthetic */ C0636a g() {
                return new C0636a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0636a f() {
                return new C0636a().a(i());
            }

            private f i() {
                f fVar = new f(this);
                int i = 1;
                if ((this.f37028b & 1) != 1) {
                    i = 0;
                }
                fVar.f37026b = this.f37029c;
                fVar.e = i;
                return fVar;
            }

            public final C0636a a(f fVar) {
                if (fVar == f.a()) {
                    return this;
                }
                if (fVar.c()) {
                    a(fVar.f37026b);
                }
                a((C0636a) fVar);
                this.f38138a = this.f38138a.a(fVar.f37027d);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return f.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                f i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return f.a();
            }
        }

        static {
            f fVar = new f(true);
            f37025c = fVar;
            fVar.f37026b = 0;
        }

        private f(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.f = (byte) (-1);
            this.g = -1;
            boolean z = false;
            this.f37026b = 0;
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                this.e |= 1;
                                this.f37026b = eVar.d();
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        e.f38108a = this;
                        throw e;
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f37027d = h.a();
                        throw th2;
                    }
                    this.f37027d = h.a();
                    w();
                    throw th;
                }
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f37027d = h.a();
                throw th3;
            }
            this.f37027d = h.a();
            w();
        }

        private f(h.b<f, ?> bVar) {
            super(bVar);
            this.f = (byte) (-1);
            this.g = -1;
            this.f37027d = bVar.f38138a;
        }

        private f(boolean z) {
            this.f = (byte) (-1);
            this.g = -1;
            this.f37027d = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static f a() {
            return f37025c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.e & 1) == 1) {
                codedOutputStream.a(1, this.f37026b);
            }
            y.a(200, codedOutputStream);
            codedOutputStream.d(this.f37027d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<f> b() {
            return f37024a;
        }

        public final boolean c() {
            return (this.e & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.f;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!x()) {
                this.f = (byte) 0;
                return false;
            }
            this.f = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.g;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.e & 1) == 1) {
                i2 = 0 + CodedOutputStream.c(1, this.f37026b);
            }
            int z = i2 + z() + this.f37027d.a();
            this.g = z;
            return z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0636a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0636a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f37025c;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$g.class */
    public static final class g extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.j {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<g> f37030a = new kotlin.reflect.jvm.internal.impl.protobuf.b<g>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.g.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new g(eVar, fVar);
            }
        };
        private static final g g;

        /* renamed from: b  reason: collision with root package name */
        int f37031b;

        /* renamed from: c  reason: collision with root package name */
        int f37032c;

        /* renamed from: d  reason: collision with root package name */
        b f37033d;
        p e;
        int f;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d h;
        private int i;
        private List<g> j;
        private List<g> k;
        private byte l;
        private int m;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$g$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$g$a.class */
        public static final class C0637a extends h.a<g, C0637a> implements kotlin.reflect.jvm.internal.impl.b.j {

            /* renamed from: b  reason: collision with root package name */
            private int f37034b;

            /* renamed from: c  reason: collision with root package name */
            private int f37035c;

            /* renamed from: d  reason: collision with root package name */
            private int f37036d;
            private int g;
            private b e = b.TRUE;
            private p f = p.a();
            private List<g> h = Collections.emptyList();
            private List<g> i = Collections.emptyList();

            private C0637a() {
            }

            private C0637a a(int i) {
                this.f37034b |= 1;
                this.f37035c = i;
                return this;
            }

            private C0637a a(b bVar) {
                Objects.requireNonNull(bVar);
                this.f37034b |= 4;
                this.e = bVar;
                return this;
            }

            private C0637a a(p pVar) {
                if ((this.f37034b & 8) != 8 || this.f == p.a()) {
                    this.f = pVar;
                } else {
                    this.f = p.a(this.f).a(pVar).h();
                }
                this.f37034b |= 8;
                return this;
            }

            private C0637a b(int i) {
                this.f37034b |= 2;
                this.f37036d = i;
                return this;
            }

            private C0637a c(int i) {
                this.f37034b |= 16;
                this.g = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.g.C0637a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$g> r0 = kotlin.reflect.jvm.internal.impl.b.a.g.f37030a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$g r0 = (kotlin.reflect.jvm.internal.impl.b.a.g) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$g$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$g r0 = (kotlin.reflect.jvm.internal.impl.b.a.g) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$g$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.g.C0637a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$g$a");
            }

            static /* synthetic */ C0637a g() {
                return new C0637a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0637a clone() {
                return new C0637a().a(f());
            }

            private void i() {
                if ((this.f37034b & 32) != 32) {
                    this.h = new ArrayList(this.h);
                    this.f37034b |= 32;
                }
            }

            private void k() {
                if ((this.f37034b & 64) != 64) {
                    this.i = new ArrayList(this.i);
                    this.f37034b |= 64;
                }
            }

            public final C0637a a(g gVar) {
                if (gVar == g.a()) {
                    return this;
                }
                if (gVar.c()) {
                    a(gVar.f37031b);
                }
                if (gVar.d()) {
                    b(gVar.f37032c);
                }
                if (gVar.g()) {
                    a(gVar.f37033d);
                }
                if (gVar.k()) {
                    a(gVar.e);
                }
                if (gVar.l()) {
                    c(gVar.f);
                }
                if (!gVar.j.isEmpty()) {
                    if (this.h.isEmpty()) {
                        this.h = gVar.j;
                        this.f37034b &= -33;
                    } else {
                        i();
                        this.h.addAll(gVar.j);
                    }
                }
                if (!gVar.k.isEmpty()) {
                    if (this.i.isEmpty()) {
                        this.i = gVar.k;
                        this.f37034b &= -65;
                    } else {
                        k();
                        this.i.addAll(gVar.k);
                    }
                }
                this.f38138a = this.f38138a.a(gVar.h);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ g a() {
                return g.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                g f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                if (((this.f37034b & 8) == 8) && !this.f.e()) {
                    return false;
                }
                for (int i = 0; i < this.h.size(); i++) {
                    if (!this.h.get(i).e()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < this.i.size(); i2++) {
                    if (!this.i.get(i2).e()) {
                        return false;
                    }
                }
                return true;
            }

            public final g f() {
                g gVar = new g(this);
                int i = this.f37034b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                gVar.f37031b = this.f37035c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                gVar.f37032c = this.f37036d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                gVar.f37033d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                gVar.e = this.f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                gVar.f = this.g;
                if ((this.f37034b & 32) == 32) {
                    this.h = Collections.unmodifiableList(this.h);
                    this.f37034b &= -33;
                }
                gVar.j = this.h;
                if ((this.f37034b & 64) == 64) {
                    this.i = Collections.unmodifiableList(this.i);
                    this.f37034b &= -65;
                }
                gVar.k = this.i;
                gVar.i = i6;
                return gVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return g.a();
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$g$b.class */
        public enum b implements j.a {
            TRUE(0, 0),
            FALSE(1, 1),
            NULL(2, 2);
            
            private static j.b<b> internalValueMap = new j.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.g.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ b a(int i) {
                    return b.valueOf(i);
                }
            };
            private final int value;

            b(int i, int i2) {
                this.value = i2;
            }

            public static b valueOf(int i) {
                if (i == 0) {
                    return TRUE;
                }
                if (i == 1) {
                    return FALSE;
                }
                if (i != 2) {
                    return null;
                }
                return NULL;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            g gVar = new g(true);
            g = gVar;
            gVar.m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private g(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.l = (byte) (-1);
            this.m = -1;
            m();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 8) {
                                    this.i |= 1;
                                    this.f37031b = eVar.d();
                                } else if (a3 == 16) {
                                    this.i |= 2;
                                    this.f37032c = eVar.d();
                                } else if (a3 == 24) {
                                    int d2 = eVar.d();
                                    b valueOf = b.valueOf(d2);
                                    if (valueOf == null) {
                                        a2.e(a3);
                                        a2.e(d2);
                                    } else {
                                        this.i |= 4;
                                        this.f37033d = valueOf;
                                    }
                                } else if (a3 == 34) {
                                    p.b a4 = (this.i & 8) == 8 ? p.a(this.e) : null;
                                    p pVar = (p) eVar.a(p.f37084a, fVar);
                                    this.e = pVar;
                                    if (a4 != null) {
                                        a4.a(pVar);
                                        this.e = a4.h();
                                    }
                                    this.i |= 8;
                                } else if (a3 == 40) {
                                    this.i |= 16;
                                    this.f = eVar.d();
                                } else if (a3 == 50) {
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.j = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.j.add(eVar.a(f37030a, fVar));
                                } else if (a3 == 58) {
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.k = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.k.add(eVar.a(f37030a, fVar));
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.j = Collections.unmodifiableList(this.j);
                    }
                    if (z2 & true) {
                        this.k = Collections.unmodifiableList(this.k);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.h = h.a();
                        throw th2;
                    }
                    this.h = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.j = Collections.unmodifiableList(this.j);
            }
            if (z2 & true) {
                this.k = Collections.unmodifiableList(this.k);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.h = h.a();
                throw th3;
            }
            this.h = h.a();
            w();
        }

        private g(h.a aVar) {
            super(aVar);
            this.l = (byte) (-1);
            this.m = -1;
            this.h = aVar.f38138a;
        }

        private g(boolean z) {
            this.l = (byte) (-1);
            this.m = -1;
            this.h = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0637a a(g gVar) {
            return C0637a.g().a(gVar);
        }

        public static g a() {
            return g;
        }

        private void m() {
            this.f37031b = 0;
            this.f37032c = 0;
            this.f37033d = b.TRUE;
            this.e = p.a();
            this.f = 0;
            this.j = Collections.emptyList();
            this.k = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.i & 1) == 1) {
                codedOutputStream.a(1, this.f37031b);
            }
            if ((this.i & 2) == 2) {
                codedOutputStream.a(2, this.f37032c);
            }
            if ((this.i & 4) == 4) {
                codedOutputStream.b(3, this.f37033d.getNumber());
            }
            if ((this.i & 8) == 8) {
                codedOutputStream.a(4, this.e);
            }
            if ((this.i & 16) == 16) {
                codedOutputStream.a(5, this.f);
            }
            for (int i = 0; i < this.j.size(); i++) {
                codedOutputStream.a(6, this.j.get(i));
            }
            for (int i2 = 0; i2 < this.k.size(); i2++) {
                codedOutputStream.a(7, this.k.get(i2));
            }
            codedOutputStream.d(this.h);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<g> b() {
            return f37030a;
        }

        public final boolean c() {
            return (this.i & 1) == 1;
        }

        public final boolean d() {
            return (this.i & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.l;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!k() || this.e.e()) {
                for (int i = 0; i < this.j.size(); i++) {
                    if (!this.j.get(i).e()) {
                        this.l = (byte) 0;
                        return false;
                    }
                }
                for (int i2 = 0; i2 < this.k.size(); i2++) {
                    if (!this.k.get(i2).e()) {
                        this.l = (byte) 0;
                        return false;
                    }
                }
                this.l = (byte) 1;
                return true;
            }
            this.l = (byte) 0;
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i;
            int i2 = this.m;
            if (i2 != -1) {
                return i2;
            }
            int c2 = (this.i & 1) == 1 ? CodedOutputStream.c(1, this.f37031b) + 0 : 0;
            int i3 = c2;
            if ((this.i & 2) == 2) {
                i3 = c2 + CodedOutputStream.c(2, this.f37032c);
            }
            int i4 = i3;
            if ((this.i & 4) == 4) {
                i4 = i3 + CodedOutputStream.d(3, this.f37033d.getNumber());
            }
            int i5 = i4;
            if ((this.i & 8) == 8) {
                i5 = i4 + CodedOutputStream.c(4, this.e);
            }
            int i6 = i5;
            if ((this.i & 16) == 16) {
                i6 = i5 + CodedOutputStream.c(5, this.f);
            }
            int i7 = 0;
            while (true) {
                i = i6;
                if (i7 < this.j.size()) {
                    i6 += CodedOutputStream.c(6, this.j.get(i7));
                    i7++;
                }
            }
            for (int i8 = 0; i8 < this.k.size(); i8++) {
                i += CodedOutputStream.c(7, this.k.get(i8));
            }
            int a2 = i + this.h.a();
            this.m = a2;
            return a2;
        }

        public final boolean g() {
            return (this.i & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0637a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0637a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return g;
        }

        public final boolean k() {
            return (this.i & 8) == 8;
        }

        public final boolean l() {
            return (this.i & 16) == 16;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$h.class */
    public static final class h extends h.c<h> implements kotlin.reflect.jvm.internal.impl.b.k {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<h> f37037a = new kotlin.reflect.jvm.internal.impl.protobuf.b<h>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.h.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new h(eVar, fVar);
            }
        };
        private static final h n;

        /* renamed from: b  reason: collision with root package name */
        public int f37038b;

        /* renamed from: c  reason: collision with root package name */
        public int f37039c;

        /* renamed from: d  reason: collision with root package name */
        public int f37040d;
        public p e;
        public int f;
        public List<r> g;
        public p h;
        public int i;
        public List<t> j;
        public s k;
        public List<Integer> l;
        d m;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d o;
        private int p;
        private byte q;
        private int s;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$h$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$h$a.class */
        public static final class C0638a extends h.b<h, C0638a> implements kotlin.reflect.jvm.internal.impl.b.k {

            /* renamed from: b  reason: collision with root package name */
            private int f37041b;
            private int e;
            private int g;
            private int j;

            /* renamed from: c  reason: collision with root package name */
            private int f37042c = 6;

            /* renamed from: d  reason: collision with root package name */
            private int f37043d = 6;
            private p f = p.a();
            private List<r> h = Collections.emptyList();
            private p i = p.a();
            private List<t> k = Collections.emptyList();
            private s l = s.a();
            private List<Integer> m = Collections.emptyList();
            private d n = d.a();

            private C0638a() {
            }

            private C0638a a(int i) {
                this.f37041b |= 1;
                this.f37042c = i;
                return this;
            }

            private C0638a a(d dVar) {
                if ((this.f37041b & 2048) != 2048 || this.n == d.a()) {
                    this.n = dVar;
                } else {
                    this.n = d.a(this.n).a(dVar).f();
                }
                this.f37041b |= 2048;
                return this;
            }

            private C0638a a(p pVar) {
                if ((this.f37041b & 8) != 8 || this.f == p.a()) {
                    this.f = pVar;
                } else {
                    this.f = p.a(this.f).a(pVar).h();
                }
                this.f37041b |= 8;
                return this;
            }

            private C0638a a(s sVar) {
                if ((this.f37041b & 512) != 512 || this.l == s.a()) {
                    this.l = sVar;
                } else {
                    this.l = s.a(this.l).a(sVar).f();
                }
                this.f37041b |= 512;
                return this;
            }

            private C0638a b(int i) {
                this.f37041b |= 2;
                this.f37043d = i;
                return this;
            }

            private C0638a b(p pVar) {
                if ((this.f37041b & 64) != 64 || this.i == p.a()) {
                    this.i = pVar;
                } else {
                    this.i = p.a(this.i).a(pVar).h();
                }
                this.f37041b |= 64;
                return this;
            }

            private C0638a c(int i) {
                this.f37041b |= 4;
                this.e = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.h.C0638a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$h> r0 = kotlin.reflect.jvm.internal.impl.b.a.h.f37037a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$h r0 = (kotlin.reflect.jvm.internal.impl.b.a.h) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$h$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$h r0 = (kotlin.reflect.jvm.internal.impl.b.a.h) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$h$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.h.C0638a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$h$a");
            }

            private C0638a d(int i) {
                this.f37041b |= 16;
                this.g = i;
                return this;
            }

            private C0638a e(int i) {
                this.f37041b |= 128;
                this.j = i;
                return this;
            }

            static /* synthetic */ C0638a g() {
                return new C0638a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0638a f() {
                return new C0638a().a(i());
            }

            private h i() {
                h hVar = new h(this);
                int i = this.f37041b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                hVar.f37038b = this.f37042c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                hVar.f37039c = this.f37043d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                hVar.f37040d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                hVar.e = this.f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                hVar.f = this.g;
                if ((this.f37041b & 32) == 32) {
                    this.h = Collections.unmodifiableList(this.h);
                    this.f37041b &= -33;
                }
                hVar.g = this.h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                hVar.h = this.i;
                int i8 = i7;
                if ((i & 128) == 128) {
                    i8 = i7 | 64;
                }
                hVar.i = this.j;
                if ((this.f37041b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    this.k = Collections.unmodifiableList(this.k);
                    this.f37041b &= -257;
                }
                hVar.j = this.k;
                int i9 = i8;
                if ((i & 512) == 512) {
                    i9 = i8 | 128;
                }
                hVar.k = this.l;
                if ((this.f37041b & 1024) == 1024) {
                    this.m = Collections.unmodifiableList(this.m);
                    this.f37041b &= -1025;
                }
                hVar.l = this.m;
                int i10 = i9;
                if ((i & 2048) == 2048) {
                    i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                hVar.m = this.n;
                hVar.p = i10;
                return hVar;
            }

            private void l() {
                if ((this.f37041b & 32) != 32) {
                    this.h = new ArrayList(this.h);
                    this.f37041b |= 32;
                }
            }

            private void m() {
                if ((this.f37041b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                    this.k = new ArrayList(this.k);
                    this.f37041b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
            }

            private void n() {
                if ((this.f37041b & 1024) != 1024) {
                    this.m = new ArrayList(this.m);
                    this.f37041b |= 1024;
                }
            }

            public final C0638a a(h hVar) {
                if (hVar == h.a()) {
                    return this;
                }
                if (hVar.c()) {
                    a(hVar.f37038b);
                }
                if (hVar.d()) {
                    b(hVar.f37039c);
                }
                if (hVar.g()) {
                    c(hVar.f37040d);
                }
                if (hVar.k()) {
                    a(hVar.e);
                }
                if (hVar.l()) {
                    d(hVar.f);
                }
                if (!hVar.g.isEmpty()) {
                    if (this.h.isEmpty()) {
                        this.h = hVar.g;
                        this.f37041b &= -33;
                    } else {
                        l();
                        this.h.addAll(hVar.g);
                    }
                }
                if (hVar.m()) {
                    b(hVar.h);
                }
                if (hVar.n()) {
                    e(hVar.i);
                }
                if (!hVar.j.isEmpty()) {
                    if (this.k.isEmpty()) {
                        this.k = hVar.j;
                        this.f37041b &= -257;
                    } else {
                        m();
                        this.k.addAll(hVar.j);
                    }
                }
                if (hVar.o()) {
                    a(hVar.k);
                }
                if (!hVar.l.isEmpty()) {
                    if (this.m.isEmpty()) {
                        this.m = hVar.l;
                        this.f37041b &= -1025;
                    } else {
                        n();
                        this.m.addAll(hVar.l);
                    }
                }
                if (hVar.p()) {
                    a(hVar.m);
                }
                a((C0638a) hVar);
                this.f38138a = this.f38138a.a(hVar.o);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return h.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                h i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                int i = this.f37041b;
                if (!((i & 4) == 4)) {
                    return false;
                }
                if (((i & 8) == 8) && !this.f.e()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.h.size(); i2++) {
                    if (!this.h.get(i2).e()) {
                        return false;
                    }
                }
                if (((this.f37041b & 64) == 64) && !this.i.e()) {
                    return false;
                }
                for (int i3 = 0; i3 < this.k.size(); i3++) {
                    if (!this.k.get(i3).e()) {
                        return false;
                    }
                }
                if (((this.f37041b & 512) == 512) && !this.l.e()) {
                    return false;
                }
                return (!((this.f37041b & 2048) == 2048) || this.n.e()) && k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return h.a();
            }
        }

        static {
            h hVar = new h(true);
            n = hVar;
            hVar.q();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private h(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.q = (byte) (-1);
            this.s = -1;
            q();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        s.C0650a aVar = null;
                        p.b bVar = null;
                        p.b bVar2 = null;
                        d.C0634a aVar2 = null;
                        switch (a3) {
                            case 0:
                                break;
                            case 8:
                                this.p |= 2;
                                this.f37039c = eVar.d();
                                continue;
                            case 16:
                                this.p |= 4;
                                this.f37040d = eVar.d();
                                continue;
                            case 26:
                                bVar2 = (this.p & 8) == 8 ? p.a(this.e) : bVar2;
                                p pVar = (p) eVar.a(p.f37084a, fVar);
                                this.e = pVar;
                                if (bVar2 != null) {
                                    bVar2.a(pVar);
                                    this.e = bVar2.h();
                                }
                                this.p |= 8;
                                continue;
                            case 34:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.g = new ArrayList();
                                    z2 |= true;
                                }
                                this.g.add(eVar.a(r.f37105a, fVar));
                                continue;
                            case 42:
                                bVar = (this.p & 32) == 32 ? p.a(this.h) : bVar;
                                p pVar2 = (p) eVar.a(p.f37084a, fVar);
                                this.h = pVar2;
                                if (bVar != null) {
                                    bVar.a(pVar2);
                                    this.h = bVar.h();
                                }
                                this.p |= 32;
                                continue;
                            case 50:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.j = new ArrayList();
                                    z2 |= true;
                                }
                                this.j.add(eVar.a(t.f37119a, fVar));
                                continue;
                            case 56:
                                this.p |= 16;
                                this.f = eVar.d();
                                continue;
                            case 64:
                                this.p |= 64;
                                this.i = eVar.d();
                                continue;
                            case 72:
                                this.p |= 1;
                                this.f37038b = eVar.d();
                                continue;
                            case 242:
                                aVar = (this.p & 128) == 128 ? s.a(this.k) : aVar;
                                s sVar = (s) eVar.a(s.f37112a, fVar);
                                this.k = sVar;
                                if (aVar != null) {
                                    aVar.a(sVar);
                                    this.k = aVar.f();
                                }
                                this.p |= 128;
                                continue;
                            case 248:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.l = new ArrayList();
                                    z2 |= true;
                                }
                                this.l.add(Integer.valueOf(eVar.d()));
                                continue;
                            case 250:
                                int b2 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.l = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.l.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b2);
                                continue;
                            case 258:
                                aVar2 = (this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256 ? this.m.h() : aVar2;
                                d dVar = (d) eVar.a(d.f37011a, fVar);
                                this.m = dVar;
                                if (aVar2 != null) {
                                    aVar2.a(dVar);
                                    this.m = aVar2.f();
                                }
                                this.p |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                continue;
                            default:
                                if (!a(eVar, a2, fVar, a3)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.g = Collections.unmodifiableList(this.g);
                        }
                        if (z2 & true) {
                            this.j = Collections.unmodifiableList(this.j);
                        }
                        if (z2 & true) {
                            this.l = Collections.unmodifiableList(this.l);
                        }
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.o = h.a();
                            throw th2;
                        }
                        this.o = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.g = Collections.unmodifiableList(this.g);
            }
            if (z2 & true) {
                this.j = Collections.unmodifiableList(this.j);
            }
            if (z2 & true) {
                this.l = Collections.unmodifiableList(this.l);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.o = h.a();
                throw th3;
            }
            this.o = h.a();
            w();
        }

        private h(h.b<h, ?> bVar) {
            super(bVar);
            this.q = (byte) (-1);
            this.s = -1;
            this.o = bVar.f38138a;
        }

        private h(boolean z) {
            this.q = (byte) (-1);
            this.s = -1;
            this.o = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static h a() {
            return n;
        }

        public static h a(InputStream inputStream, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws IOException {
            return f37037a.b(inputStream, fVar);
        }

        private void q() {
            this.f37038b = 6;
            this.f37039c = 6;
            this.f37040d = 0;
            this.e = p.a();
            this.f = 0;
            this.g = Collections.emptyList();
            this.h = p.a();
            this.i = 0;
            this.j = Collections.emptyList();
            this.k = s.a();
            this.l = Collections.emptyList();
            this.m = d.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.p & 2) == 2) {
                codedOutputStream.a(1, this.f37039c);
            }
            if ((this.p & 4) == 4) {
                codedOutputStream.a(2, this.f37040d);
            }
            if ((this.p & 8) == 8) {
                codedOutputStream.a(3, this.e);
            }
            for (int i = 0; i < this.g.size(); i++) {
                codedOutputStream.a(4, this.g.get(i));
            }
            if ((this.p & 32) == 32) {
                codedOutputStream.a(5, this.h);
            }
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                codedOutputStream.a(6, this.j.get(i2));
            }
            if ((this.p & 16) == 16) {
                codedOutputStream.a(7, this.f);
            }
            if ((this.p & 64) == 64) {
                codedOutputStream.a(8, this.i);
            }
            if ((this.p & 1) == 1) {
                codedOutputStream.a(9, this.f37038b);
            }
            int i3 = 0;
            if ((this.p & 128) == 128) {
                codedOutputStream.a(30, this.k);
                i3 = 0;
            }
            while (i3 < this.l.size()) {
                codedOutputStream.a(31, this.l.get(i3).intValue());
                i3++;
            }
            if ((this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                codedOutputStream.a(32, this.m);
            }
            y.a(19000, codedOutputStream);
            codedOutputStream.d(this.o);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<h> b() {
            return f37037a;
        }

        public final boolean c() {
            return (this.p & 1) == 1;
        }

        public final boolean d() {
            return (this.p & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.q;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!g()) {
                this.q = (byte) 0;
                return false;
            } else if (!k() || this.e.e()) {
                for (int i = 0; i < this.g.size(); i++) {
                    if (!this.g.get(i).e()) {
                        this.q = (byte) 0;
                        return false;
                    }
                }
                if (!m() || this.h.e()) {
                    for (int i2 = 0; i2 < this.j.size(); i2++) {
                        if (!this.j.get(i2).e()) {
                            this.q = (byte) 0;
                            return false;
                        }
                    }
                    if (o() && !this.k.e()) {
                        this.q = (byte) 0;
                        return false;
                    } else if (p() && !this.m.e()) {
                        this.q = (byte) 0;
                        return false;
                    } else if (!x()) {
                        this.q = (byte) 0;
                        return false;
                    } else {
                        this.q = (byte) 1;
                        return true;
                    }
                } else {
                    this.q = (byte) 0;
                    return false;
                }
            } else {
                this.q = (byte) 0;
                return false;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.s;
            if (i != -1) {
                return i;
            }
            int c2 = (this.p & 2) == 2 ? CodedOutputStream.c(1, this.f37039c) + 0 : 0;
            int i2 = c2;
            if ((this.p & 4) == 4) {
                i2 = c2 + CodedOutputStream.c(2, this.f37040d);
            }
            int i3 = i2;
            if ((this.p & 8) == 8) {
                i3 = i2 + CodedOutputStream.c(3, this.e);
            }
            for (int i4 = 0; i4 < this.g.size(); i4++) {
                i3 += CodedOutputStream.c(4, this.g.get(i4));
            }
            int i5 = i3;
            if ((this.p & 32) == 32) {
                i5 = i3 + CodedOutputStream.c(5, this.h);
            }
            for (int i6 = 0; i6 < this.j.size(); i6++) {
                i5 += CodedOutputStream.c(6, this.j.get(i6));
            }
            int i7 = i5;
            if ((this.p & 16) == 16) {
                i7 = i5 + CodedOutputStream.c(7, this.f);
            }
            int i8 = i7;
            if ((this.p & 64) == 64) {
                i8 = i7 + CodedOutputStream.c(8, this.i);
            }
            int i9 = i8;
            if ((this.p & 1) == 1) {
                i9 = i8 + CodedOutputStream.c(9, this.f37038b);
            }
            int i10 = i9;
            if ((this.p & 128) == 128) {
                i10 = i9 + CodedOutputStream.c(30, this.k);
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.l.size(); i12++) {
                i11 += CodedOutputStream.c(this.l.get(i12).intValue());
            }
            int size = i10 + i11 + (this.l.size() * 2);
            int i13 = size;
            if ((this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                i13 = size + CodedOutputStream.c(32, this.m);
            }
            int z = i13 + z() + this.o.a();
            this.s = z;
            return z;
        }

        public final boolean g() {
            return (this.p & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0638a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0638a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return n;
        }

        public final boolean k() {
            return (this.p & 8) == 8;
        }

        public final boolean l() {
            return (this.p & 16) == 16;
        }

        public final boolean m() {
            return (this.p & 32) == 32;
        }

        public final boolean n() {
            return (this.p & 64) == 64;
        }

        public final boolean o() {
            return (this.p & 128) == 128;
        }

        public final boolean p() {
            return (this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$i.class */
    public enum i implements j.a {
        DECLARATION(0, 0),
        FAKE_OVERRIDE(1, 1),
        DELEGATION(2, 2),
        SYNTHESIZED(3, 3);
        
        private static j.b<i> internalValueMap = new j.b<i>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.i.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
            public final /* synthetic */ i a(int i) {
                return i.valueOf(i);
            }
        };
        private final int value;

        i(int i, int i2) {
            this.value = i2;
        }

        public static i valueOf(int i) {
            if (i == 0) {
                return DECLARATION;
            }
            if (i == 1) {
                return FAKE_OVERRIDE;
            }
            if (i == 2) {
                return DELEGATION;
            }
            if (i != 3) {
                return null;
            }
            return SYNTHESIZED;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        public final int getNumber() {
            return this.value;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$j.class */
    public enum j implements j.a {
        FINAL(0, 0),
        OPEN(1, 1),
        ABSTRACT(2, 2),
        SEALED(3, 3);
        
        private static j.b<j> internalValueMap = new j.b<j>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.j.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
            public final /* synthetic */ j a(int i) {
                return j.valueOf(i);
            }
        };
        private final int value;

        j(int i, int i2) {
            this.value = i2;
        }

        public static j valueOf(int i) {
            if (i == 0) {
                return FINAL;
            }
            if (i == 1) {
                return OPEN;
            }
            if (i == 2) {
                return ABSTRACT;
            }
            if (i != 3) {
                return null;
            }
            return SEALED;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        public final int getNumber() {
            return this.value;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$k.class */
    public static final class k extends h.c<k> implements kotlin.reflect.jvm.internal.impl.b.m {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<k> f37044a = new kotlin.reflect.jvm.internal.impl.protobuf.b<k>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.k.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new k(eVar, fVar);
            }
        };
        private static final k g;

        /* renamed from: b  reason: collision with root package name */
        public List<h> f37045b;

        /* renamed from: c  reason: collision with root package name */
        public List<m> f37046c;

        /* renamed from: d  reason: collision with root package name */
        public List<q> f37047d;
        public s e;
        public v f;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d h;
        private int i;
        private byte j;
        private int k;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$k$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$k$a.class */
        public static final class C0639a extends h.b<k, C0639a> implements kotlin.reflect.jvm.internal.impl.b.m {

            /* renamed from: b  reason: collision with root package name */
            private int f37048b;

            /* renamed from: c  reason: collision with root package name */
            private List<h> f37049c = Collections.emptyList();

            /* renamed from: d  reason: collision with root package name */
            private List<m> f37050d = Collections.emptyList();
            private List<q> e = Collections.emptyList();
            private s f = s.a();
            private v g = v.a();

            private C0639a() {
            }

            private C0639a a(s sVar) {
                if ((this.f37048b & 8) != 8 || this.f == s.a()) {
                    this.f = sVar;
                } else {
                    this.f = s.a(this.f).a(sVar).f();
                }
                this.f37048b |= 8;
                return this;
            }

            private C0639a a(v vVar) {
                if ((this.f37048b & 16) != 16 || this.g == v.a()) {
                    this.g = vVar;
                } else {
                    this.g = v.a(this.g).a(vVar).f();
                }
                this.f37048b |= 16;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.k.C0639a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$k> r0 = kotlin.reflect.jvm.internal.impl.b.a.k.f37044a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x0020
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x0020
                    kotlin.reflect.jvm.internal.impl.b.a$k r0 = (kotlin.reflect.jvm.internal.impl.b.a.k) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x0020
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$k$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L_0x0030
                L_0x0020:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$k r0 = (kotlin.reflect.jvm.internal.impl.b.a.k) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x002b
                L_0x002b:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L_0x0030:
                    r0 = r6
                    if (r0 == 0) goto L_0x003a
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$k$a r0 = r0.a(r1)
                L_0x003a:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.k.C0639a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$k$a");
            }

            static /* synthetic */ C0639a h() {
                return new C0639a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: i */
            public C0639a f() {
                return new C0639a().a(g());
            }

            private void l() {
                if ((this.f37048b & 1) != 1) {
                    this.f37049c = new ArrayList(this.f37049c);
                    this.f37048b |= 1;
                }
            }

            private void m() {
                if ((this.f37048b & 2) != 2) {
                    this.f37050d = new ArrayList(this.f37050d);
                    this.f37048b |= 2;
                }
            }

            private void n() {
                if ((this.f37048b & 4) != 4) {
                    this.e = new ArrayList(this.e);
                    this.f37048b |= 4;
                }
            }

            public final C0639a a(k kVar) {
                if (kVar == k.a()) {
                    return this;
                }
                if (!kVar.f37045b.isEmpty()) {
                    if (this.f37049c.isEmpty()) {
                        this.f37049c = kVar.f37045b;
                        this.f37048b &= -2;
                    } else {
                        l();
                        this.f37049c.addAll(kVar.f37045b);
                    }
                }
                if (!kVar.f37046c.isEmpty()) {
                    if (this.f37050d.isEmpty()) {
                        this.f37050d = kVar.f37046c;
                        this.f37048b &= -3;
                    } else {
                        m();
                        this.f37050d.addAll(kVar.f37046c);
                    }
                }
                if (!kVar.f37047d.isEmpty()) {
                    if (this.e.isEmpty()) {
                        this.e = kVar.f37047d;
                        this.f37048b &= -5;
                    } else {
                        n();
                        this.e.addAll(kVar.f37047d);
                    }
                }
                if (kVar.c()) {
                    a(kVar.e);
                }
                if (kVar.d()) {
                    a(kVar.f);
                }
                a((C0639a) kVar);
                this.f38138a = this.f38138a.a(kVar.h);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return k.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                k g = g();
                if (g.e()) {
                    return g;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) g);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37049c.size(); i++) {
                    if (!this.f37049c.get(i).e()) {
                        return false;
                    }
                }
                for (int i2 = 0; i2 < this.f37050d.size(); i2++) {
                    if (!this.f37050d.get(i2).e()) {
                        return false;
                    }
                }
                for (int i3 = 0; i3 < this.e.size(); i3++) {
                    if (!this.e.get(i3).e()) {
                        return false;
                    }
                }
                return (!((this.f37048b & 8) == 8) || this.f.e()) && k();
            }

            public final k g() {
                k kVar = new k(this);
                int i = this.f37048b;
                int i2 = 1;
                if ((i & 1) == 1) {
                    this.f37049c = Collections.unmodifiableList(this.f37049c);
                    this.f37048b &= -2;
                }
                kVar.f37045b = this.f37049c;
                if ((this.f37048b & 2) == 2) {
                    this.f37050d = Collections.unmodifiableList(this.f37050d);
                    this.f37048b &= -3;
                }
                kVar.f37046c = this.f37050d;
                if ((this.f37048b & 4) == 4) {
                    this.e = Collections.unmodifiableList(this.e);
                    this.f37048b &= -5;
                }
                kVar.f37047d = this.e;
                if ((i & 8) != 8) {
                    i2 = 0;
                }
                kVar.e = this.f;
                int i3 = i2;
                if ((i & 16) == 16) {
                    i3 = i2 | 2;
                }
                kVar.f = this.g;
                kVar.i = i3;
                return kVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return k.a();
            }
        }

        static {
            k kVar = new k(true);
            g = kVar;
            kVar.k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private k(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.j = (byte) (-1);
            this.k = -1;
            k();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 26) {
                                z2 = z2;
                                if (!z2 || !true) {
                                    this.f37045b = new ArrayList();
                                    z2 |= true;
                                }
                                this.f37045b.add(eVar.a(h.f37037a, fVar));
                            } else if (a3 == 34) {
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.f37046c = new ArrayList();
                                    z2 |= true;
                                }
                                this.f37046c.add(eVar.a(m.f37058a, fVar));
                            } else if (a3 != 42) {
                                s.C0650a aVar = null;
                                v.C0653a aVar2 = null;
                                if (a3 == 242) {
                                    aVar = (this.i & 1) == 1 ? s.a(this.e) : aVar;
                                    s sVar = (s) eVar.a(s.f37112a, fVar);
                                    this.e = sVar;
                                    if (aVar != null) {
                                        aVar.a(sVar);
                                        this.e = aVar.f();
                                    }
                                    this.i |= 1;
                                } else if (a3 == 258) {
                                    aVar2 = (this.i & 2) == 2 ? v.a(this.f) : aVar2;
                                    v vVar = (v) eVar.a(v.f37133a, fVar);
                                    this.f = vVar;
                                    if (aVar2 != null) {
                                        aVar2.a(vVar);
                                        this.f = aVar2.f();
                                    }
                                    this.i |= 2;
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            } else {
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.f37047d = new ArrayList();
                                    z2 |= true;
                                }
                                this.f37047d.add(eVar.a(q.f37098a, fVar));
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z2 && true) {
                            this.f37045b = Collections.unmodifiableList(this.f37045b);
                        }
                        if (z2 & true) {
                            this.f37046c = Collections.unmodifiableList(this.f37046c);
                        }
                        if (z2 & true) {
                            this.f37047d = Collections.unmodifiableList(this.f37047d);
                        }
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.h = h.a();
                            throw th2;
                        }
                        this.h = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 && true) {
                this.f37045b = Collections.unmodifiableList(this.f37045b);
            }
            if (z2 & true) {
                this.f37046c = Collections.unmodifiableList(this.f37046c);
            }
            if (z2 & true) {
                this.f37047d = Collections.unmodifiableList(this.f37047d);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.h = h.a();
                throw th3;
            }
            this.h = h.a();
            w();
        }

        private k(h.b<k, ?> bVar) {
            super(bVar);
            this.j = (byte) (-1);
            this.k = -1;
            this.h = bVar.f38138a;
        }

        private k(boolean z) {
            this.j = (byte) (-1);
            this.k = -1;
            this.h = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0639a a(k kVar) {
            return C0639a.h().a(kVar);
        }

        public static k a() {
            return g;
        }

        public static k a(InputStream inputStream, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws IOException {
            return f37044a.b(inputStream, fVar);
        }

        private void k() {
            this.f37045b = Collections.emptyList();
            this.f37046c = Collections.emptyList();
            this.f37047d = Collections.emptyList();
            this.e = s.a();
            this.f = v.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            for (int i = 0; i < this.f37045b.size(); i++) {
                codedOutputStream.a(3, this.f37045b.get(i));
            }
            for (int i2 = 0; i2 < this.f37046c.size(); i2++) {
                codedOutputStream.a(4, this.f37046c.get(i2));
            }
            for (int i3 = 0; i3 < this.f37047d.size(); i3++) {
                codedOutputStream.a(5, this.f37047d.get(i3));
            }
            if ((this.i & 1) == 1) {
                codedOutputStream.a(30, this.e);
            }
            if ((this.i & 2) == 2) {
                codedOutputStream.a(32, this.f);
            }
            y.a(200, codedOutputStream);
            codedOutputStream.d(this.h);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<k> b() {
            return f37044a;
        }

        public final boolean c() {
            return (this.i & 1) == 1;
        }

        public final boolean d() {
            return (this.i & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.j;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < this.f37045b.size(); i++) {
                if (!this.f37045b.get(i).e()) {
                    this.j = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < this.f37046c.size(); i2++) {
                if (!this.f37046c.get(i2).e()) {
                    this.j = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < this.f37047d.size(); i3++) {
                if (!this.f37047d.get(i3).e()) {
                    this.j = (byte) 0;
                    return false;
                }
            }
            if (c() && !this.e.e()) {
                this.j = (byte) 0;
                return false;
            } else if (!x()) {
                this.j = (byte) 0;
                return false;
            } else {
                this.j = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i;
            int i2 = this.k;
            if (i2 != -1) {
                return i2;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f37045b.size(); i4++) {
                i3 += CodedOutputStream.c(3, this.f37045b.get(i4));
            }
            int i5 = 0;
            while (true) {
                i = i3;
                if (i5 < this.f37046c.size()) {
                    i3 += CodedOutputStream.c(4, this.f37046c.get(i5));
                    i5++;
                }
            }
            for (int i6 = 0; i6 < this.f37047d.size(); i6++) {
                i += CodedOutputStream.c(5, this.f37047d.get(i6));
            }
            int i7 = i;
            if ((this.i & 1) == 1) {
                i7 = i + CodedOutputStream.c(30, this.e);
            }
            int i8 = i7;
            if ((this.i & 2) == 2) {
                i8 = i7 + CodedOutputStream.c(32, this.f);
            }
            int z = i8 + z() + this.h.a();
            this.k = z;
            return z;
        }

        /* renamed from: g */
        public final C0639a h() {
            return C0639a.h().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0639a.h();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return g;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$l.class */
    public static final class l extends h.c<l> implements kotlin.reflect.jvm.internal.impl.b.l {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<l> f37051a = new kotlin.reflect.jvm.internal.impl.protobuf.b<l>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.l.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new l(eVar, fVar);
            }
        };
        private static final l f;

        /* renamed from: b  reason: collision with root package name */
        public o f37052b;

        /* renamed from: c  reason: collision with root package name */
        public n f37053c;

        /* renamed from: d  reason: collision with root package name */
        public k f37054d;
        public List<b> e;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d g;
        private int h;
        private byte i;
        private int j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$l$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$l$a.class */
        public static final class C0640a extends h.b<l, C0640a> implements kotlin.reflect.jvm.internal.impl.b.l {

            /* renamed from: b  reason: collision with root package name */
            private int f37055b;

            /* renamed from: c  reason: collision with root package name */
            private o f37056c = o.a();

            /* renamed from: d  reason: collision with root package name */
            private n f37057d = n.a();
            private k e = k.a();
            private List<b> f = Collections.emptyList();

            private C0640a() {
            }

            private C0640a a(k kVar) {
                if ((this.f37055b & 4) != 4 || this.e == k.a()) {
                    this.e = kVar;
                } else {
                    this.e = k.a(this.e).a(kVar).g();
                }
                this.f37055b |= 4;
                return this;
            }

            private C0640a a(n nVar) {
                if ((this.f37055b & 2) != 2 || this.f37057d == n.a()) {
                    this.f37057d = nVar;
                } else {
                    this.f37057d = n.a(this.f37057d).a(nVar).f();
                }
                this.f37055b |= 2;
                return this;
            }

            private C0640a a(o oVar) {
                if ((this.f37055b & 1) != 1 || this.f37056c == o.a()) {
                    this.f37056c = oVar;
                } else {
                    this.f37056c = o.a(this.f37056c).a(oVar).f();
                }
                this.f37055b |= 1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.l.C0640a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$l> r0 = kotlin.reflect.jvm.internal.impl.b.a.l.f37051a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$l r0 = (kotlin.reflect.jvm.internal.impl.b.a.l) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$l$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$l r0 = (kotlin.reflect.jvm.internal.impl.b.a.l) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$l$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.l.C0640a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$l$a");
            }

            static /* synthetic */ C0640a g() {
                return new C0640a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0640a f() {
                return new C0640a().a(i());
            }

            private l i() {
                l lVar = new l(this);
                int i = this.f37055b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                lVar.f37052b = this.f37056c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                lVar.f37053c = this.f37057d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                lVar.f37054d = this.e;
                if ((this.f37055b & 8) == 8) {
                    this.f = Collections.unmodifiableList(this.f);
                    this.f37055b &= -9;
                }
                lVar.e = this.f;
                lVar.h = i4;
                return lVar;
            }

            private void l() {
                if ((this.f37055b & 8) != 8) {
                    this.f = new ArrayList(this.f);
                    this.f37055b |= 8;
                }
            }

            public final C0640a a(l lVar) {
                if (lVar == l.a()) {
                    return this;
                }
                if (lVar.c()) {
                    a(lVar.f37052b);
                }
                if (lVar.d()) {
                    a(lVar.f37053c);
                }
                if (lVar.g()) {
                    a(lVar.f37054d);
                }
                if (!lVar.e.isEmpty()) {
                    if (this.f.isEmpty()) {
                        this.f = lVar.e;
                        this.f37055b &= -9;
                    } else {
                        l();
                        this.f.addAll(lVar.e);
                    }
                }
                a((C0640a) lVar);
                this.f38138a = this.f38138a.a(lVar.g);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return l.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                l i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                if (((this.f37055b & 2) == 2) && !this.f37057d.e()) {
                    return false;
                }
                if (((this.f37055b & 4) == 4) && !this.e.e()) {
                    return false;
                }
                for (int i = 0; i < this.f.size(); i++) {
                    if (!this.f.get(i).e()) {
                        return false;
                    }
                }
                return k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return l.a();
            }
        }

        static {
            l lVar = new l(true);
            f = lVar;
            lVar.k();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private l(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.i = (byte) (-1);
            this.j = -1;
            k();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            n.C0642a aVar = null;
                            o.C0645a aVar2 = null;
                            k.C0639a aVar3 = null;
                            if (a3 == 10) {
                                aVar2 = (this.h & 1) == 1 ? o.a(this.f37052b) : aVar2;
                                o oVar = (o) eVar.a(o.f37078a, fVar);
                                this.f37052b = oVar;
                                if (aVar2 != null) {
                                    aVar2.a(oVar);
                                    this.f37052b = aVar2.f();
                                }
                                this.h |= 1;
                            } else if (a3 == 18) {
                                aVar = (this.h & 2) == 2 ? n.a(this.f37053c) : aVar;
                                n nVar = (n) eVar.a(n.f37065a, fVar);
                                this.f37053c = nVar;
                                if (aVar != null) {
                                    aVar.a(nVar);
                                    this.f37053c = aVar.f();
                                }
                                this.h |= 2;
                            } else if (a3 == 26) {
                                aVar3 = (this.h & 4) == 4 ? this.f37054d.h() : aVar3;
                                k kVar = (k) eVar.a(k.f37044a, fVar);
                                this.f37054d = kVar;
                                if (aVar3 != null) {
                                    aVar3.a(kVar);
                                    this.f37054d = aVar3.g();
                                }
                                this.h |= 4;
                            } else if (a3 == 34) {
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.e = new ArrayList();
                                    z2 |= true;
                                }
                                this.e.add(eVar.a(b.f36997a, fVar));
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.e = Collections.unmodifiableList(this.e);
                        }
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.g = h.a();
                            throw th2;
                        }
                        this.g = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.e = Collections.unmodifiableList(this.e);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.g = h.a();
                throw th3;
            }
            this.g = h.a();
            w();
        }

        private l(h.b<l, ?> bVar) {
            super(bVar);
            this.i = (byte) (-1);
            this.j = -1;
            this.g = bVar.f38138a;
        }

        private l(boolean z) {
            this.i = (byte) (-1);
            this.j = -1;
            this.g = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static l a() {
            return f;
        }

        public static l a(InputStream inputStream, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws IOException {
            return f37051a.b(inputStream, fVar);
        }

        private void k() {
            this.f37052b = o.a();
            this.f37053c = n.a();
            this.f37054d = k.a();
            this.e = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.h & 1) == 1) {
                codedOutputStream.a(1, this.f37052b);
            }
            if ((this.h & 2) == 2) {
                codedOutputStream.a(2, this.f37053c);
            }
            if ((this.h & 4) == 4) {
                codedOutputStream.a(3, this.f37054d);
            }
            for (int i = 0; i < this.e.size(); i++) {
                codedOutputStream.a(4, this.e.get(i));
            }
            y.a(200, codedOutputStream);
            codedOutputStream.d(this.g);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<l> b() {
            return f37051a;
        }

        public final boolean c() {
            return (this.h & 1) == 1;
        }

        public final boolean d() {
            return (this.h & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.i;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (d() && !this.f37053c.e()) {
                this.i = (byte) 0;
                return false;
            } else if (!g() || this.f37054d.e()) {
                for (int i = 0; i < this.e.size(); i++) {
                    if (!this.e.get(i).e()) {
                        this.i = (byte) 0;
                        return false;
                    }
                }
                if (!x()) {
                    this.i = (byte) 0;
                    return false;
                }
                this.i = (byte) 1;
                return true;
            } else {
                this.i = (byte) 0;
                return false;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.j;
            if (i != -1) {
                return i;
            }
            int c2 = (this.h & 1) == 1 ? CodedOutputStream.c(1, this.f37052b) + 0 : 0;
            int i2 = c2;
            if ((this.h & 2) == 2) {
                i2 = c2 + CodedOutputStream.c(2, this.f37053c);
            }
            int i3 = i2;
            int i4 = 0;
            if ((this.h & 4) == 4) {
                i3 = i2 + CodedOutputStream.c(3, this.f37054d);
                i4 = 0;
            }
            while (i4 < this.e.size()) {
                i3 += CodedOutputStream.c(4, this.e.get(i4));
                i4++;
            }
            int z = i3 + z() + this.g.a();
            this.j = z;
            return z;
        }

        public final boolean g() {
            return (this.h & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0640a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0640a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$m.class */
    public static final class m extends h.c<m> implements kotlin.reflect.jvm.internal.impl.b.n {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<m> f37058a = new kotlin.reflect.jvm.internal.impl.protobuf.b<m>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.m.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new m(eVar, fVar);
            }
        };
        private static final m n;

        /* renamed from: b  reason: collision with root package name */
        public int f37059b;

        /* renamed from: c  reason: collision with root package name */
        public int f37060c;

        /* renamed from: d  reason: collision with root package name */
        public int f37061d;
        public p e;
        public int f;
        public List<r> g;
        public p h;
        public int i;
        public t j;
        public int k;
        public int l;
        public List<Integer> m;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d o;
        private int p;
        private byte q;
        private int s;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$m$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$m$a.class */
        public static final class C0641a extends h.b<m, C0641a> implements kotlin.reflect.jvm.internal.impl.b.n {

            /* renamed from: b  reason: collision with root package name */
            private int f37062b;
            private int e;
            private int g;
            private int j;
            private int l;
            private int m;

            /* renamed from: c  reason: collision with root package name */
            private int f37063c = 518;

            /* renamed from: d  reason: collision with root package name */
            private int f37064d = 2054;
            private p f = p.a();
            private List<r> h = Collections.emptyList();
            private p i = p.a();
            private t k = t.a();
            private List<Integer> n = Collections.emptyList();

            private C0641a() {
            }

            private C0641a a(int i) {
                this.f37062b |= 1;
                this.f37063c = i;
                return this;
            }

            private C0641a a(p pVar) {
                if ((this.f37062b & 8) != 8 || this.f == p.a()) {
                    this.f = pVar;
                } else {
                    this.f = p.a(this.f).a(pVar).h();
                }
                this.f37062b |= 8;
                return this;
            }

            private C0641a a(t tVar) {
                if ((this.f37062b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256 || this.k == t.a()) {
                    this.k = tVar;
                } else {
                    this.k = t.a(this.k).a(tVar).g();
                }
                this.f37062b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                return this;
            }

            private C0641a b(int i) {
                this.f37062b |= 2;
                this.f37064d = i;
                return this;
            }

            private C0641a b(p pVar) {
                if ((this.f37062b & 64) != 64 || this.i == p.a()) {
                    this.i = pVar;
                } else {
                    this.i = p.a(this.i).a(pVar).h();
                }
                this.f37062b |= 64;
                return this;
            }

            private C0641a c(int i) {
                this.f37062b |= 4;
                this.e = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.m.C0641a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$m> r0 = kotlin.reflect.jvm.internal.impl.b.a.m.f37058a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$m r0 = (kotlin.reflect.jvm.internal.impl.b.a.m) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$m$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$m r0 = (kotlin.reflect.jvm.internal.impl.b.a.m) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$m$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.m.C0641a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$m$a");
            }

            private C0641a d(int i) {
                this.f37062b |= 16;
                this.g = i;
                return this;
            }

            private C0641a e(int i) {
                this.f37062b |= 128;
                this.j = i;
                return this;
            }

            private C0641a f(int i) {
                this.f37062b |= 512;
                this.l = i;
                return this;
            }

            static /* synthetic */ C0641a g() {
                return new C0641a();
            }

            private C0641a g(int i) {
                this.f37062b |= 1024;
                this.m = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0641a f() {
                return new C0641a().a(i());
            }

            private m i() {
                m mVar = new m(this);
                int i = this.f37062b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                mVar.f37059b = this.f37063c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                mVar.f37060c = this.f37064d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                mVar.f37061d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                mVar.e = this.f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                mVar.f = this.g;
                if ((this.f37062b & 32) == 32) {
                    this.h = Collections.unmodifiableList(this.h);
                    this.f37062b &= -33;
                }
                mVar.g = this.h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                mVar.h = this.i;
                int i8 = i7;
                if ((i & 128) == 128) {
                    i8 = i7 | 64;
                }
                mVar.i = this.j;
                int i9 = i8;
                if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    i9 = i8 | 128;
                }
                mVar.j = this.k;
                int i10 = i9;
                if ((i & 512) == 512) {
                    i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                mVar.k = this.l;
                int i11 = i10;
                if ((i & 1024) == 1024) {
                    i11 = i10 | 512;
                }
                mVar.l = this.m;
                if ((this.f37062b & 2048) == 2048) {
                    this.n = Collections.unmodifiableList(this.n);
                    this.f37062b &= -2049;
                }
                mVar.m = this.n;
                mVar.p = i11;
                return mVar;
            }

            private void l() {
                if ((this.f37062b & 32) != 32) {
                    this.h = new ArrayList(this.h);
                    this.f37062b |= 32;
                }
            }

            private void m() {
                if ((this.f37062b & 2048) != 2048) {
                    this.n = new ArrayList(this.n);
                    this.f37062b |= 2048;
                }
            }

            public final C0641a a(m mVar) {
                if (mVar == m.a()) {
                    return this;
                }
                if (mVar.c()) {
                    a(mVar.f37059b);
                }
                if (mVar.d()) {
                    b(mVar.f37060c);
                }
                if (mVar.g()) {
                    c(mVar.f37061d);
                }
                if (mVar.k()) {
                    a(mVar.e);
                }
                if (mVar.l()) {
                    d(mVar.f);
                }
                if (!mVar.g.isEmpty()) {
                    if (this.h.isEmpty()) {
                        this.h = mVar.g;
                        this.f37062b &= -33;
                    } else {
                        l();
                        this.h.addAll(mVar.g);
                    }
                }
                if (mVar.m()) {
                    b(mVar.h);
                }
                if (mVar.n()) {
                    e(mVar.i);
                }
                if (mVar.o()) {
                    a(mVar.j);
                }
                if (mVar.p()) {
                    f(mVar.k);
                }
                if (mVar.q()) {
                    g(mVar.l);
                }
                if (!mVar.m.isEmpty()) {
                    if (this.n.isEmpty()) {
                        this.n = mVar.m;
                        this.f37062b &= -2049;
                    } else {
                        m();
                        this.n.addAll(mVar.m);
                    }
                }
                a((C0641a) mVar);
                this.f38138a = this.f38138a.a(mVar.o);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return m.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                m i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                int i = this.f37062b;
                if (!((i & 4) == 4)) {
                    return false;
                }
                if (((i & 8) == 8) && !this.f.e()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.h.size(); i2++) {
                    if (!this.h.get(i2).e()) {
                        return false;
                    }
                }
                if (((this.f37062b & 64) == 64) && !this.i.e()) {
                    return false;
                }
                return (!((this.f37062b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) || this.k.e()) && k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return m.a();
            }
        }

        static {
            m mVar = new m(true);
            n = mVar;
            mVar.r();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private m(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.q = (byte) (-1);
            this.s = -1;
            r();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            p.b bVar = null;
                            p.b bVar2 = null;
                            t.C0651a aVar = null;
                            switch (a3) {
                                case 0:
                                    break;
                                case 8:
                                    this.p |= 2;
                                    this.f37060c = eVar.d();
                                    continue;
                                case 16:
                                    this.p |= 4;
                                    this.f37061d = eVar.d();
                                    continue;
                                case 26:
                                    bVar2 = (this.p & 8) == 8 ? p.a(this.e) : bVar2;
                                    p pVar = (p) eVar.a(p.f37084a, fVar);
                                    this.e = pVar;
                                    if (bVar2 != null) {
                                        bVar2.a(pVar);
                                        this.e = bVar2.h();
                                    }
                                    this.p |= 8;
                                    continue;
                                case 34:
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.g = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.g.add(eVar.a(r.f37105a, fVar));
                                    continue;
                                case 42:
                                    bVar = (this.p & 32) == 32 ? p.a(this.h) : bVar;
                                    p pVar2 = (p) eVar.a(p.f37084a, fVar);
                                    this.h = pVar2;
                                    if (bVar != null) {
                                        bVar.a(pVar2);
                                        this.h = bVar.h();
                                    }
                                    this.p |= 32;
                                    continue;
                                case 50:
                                    aVar = (this.p & 128) == 128 ? t.a(this.j) : aVar;
                                    t tVar = (t) eVar.a(t.f37119a, fVar);
                                    this.j = tVar;
                                    if (aVar != null) {
                                        aVar.a(tVar);
                                        this.j = aVar.g();
                                    }
                                    this.p |= 128;
                                    continue;
                                case 56:
                                    this.p |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                    this.k = eVar.d();
                                    continue;
                                case 64:
                                    this.p |= 512;
                                    this.l = eVar.d();
                                    continue;
                                case 72:
                                    this.p |= 16;
                                    this.f = eVar.d();
                                    continue;
                                case 80:
                                    this.p |= 64;
                                    this.i = eVar.d();
                                    continue;
                                case 88:
                                    this.p |= 1;
                                    this.f37059b = eVar.d();
                                    continue;
                                case 248:
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.m = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.m.add(Integer.valueOf(eVar.d()));
                                    continue;
                                case 250:
                                    int b2 = eVar.b(eVar.d());
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        z2 = z2;
                                        if (eVar.h() > 0) {
                                            this.m = new ArrayList();
                                            z2 |= true;
                                        }
                                    }
                                    while (eVar.h() > 0) {
                                        this.m.add(Integer.valueOf(eVar.d()));
                                    }
                                    eVar.c(b2);
                                    continue;
                                default:
                                    if (!a(eVar, a2, fVar, a3)) {
                                        break;
                                    } else {
                                        continue;
                                    }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.g = Collections.unmodifiableList(this.g);
                    }
                    if (z2 & true) {
                        this.m = Collections.unmodifiableList(this.m);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.o = h.a();
                        throw th2;
                    }
                    this.o = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.g = Collections.unmodifiableList(this.g);
            }
            if (z2 & true) {
                this.m = Collections.unmodifiableList(this.m);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.o = h.a();
                throw th3;
            }
            this.o = h.a();
            w();
        }

        private m(h.b<m, ?> bVar) {
            super(bVar);
            this.q = (byte) (-1);
            this.s = -1;
            this.o = bVar.f38138a;
        }

        private m(boolean z) {
            this.q = (byte) (-1);
            this.s = -1;
            this.o = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static m a() {
            return n;
        }

        private void r() {
            this.f37059b = 518;
            this.f37060c = 2054;
            this.f37061d = 0;
            this.e = p.a();
            this.f = 0;
            this.g = Collections.emptyList();
            this.h = p.a();
            this.i = 0;
            this.j = t.a();
            this.k = 0;
            this.l = 0;
            this.m = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.p & 2) == 2) {
                codedOutputStream.a(1, this.f37060c);
            }
            if ((this.p & 4) == 4) {
                codedOutputStream.a(2, this.f37061d);
            }
            if ((this.p & 8) == 8) {
                codedOutputStream.a(3, this.e);
            }
            for (int i = 0; i < this.g.size(); i++) {
                codedOutputStream.a(4, this.g.get(i));
            }
            if ((this.p & 32) == 32) {
                codedOutputStream.a(5, this.h);
            }
            if ((this.p & 128) == 128) {
                codedOutputStream.a(6, this.j);
            }
            if ((this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                codedOutputStream.a(7, this.k);
            }
            if ((this.p & 512) == 512) {
                codedOutputStream.a(8, this.l);
            }
            if ((this.p & 16) == 16) {
                codedOutputStream.a(9, this.f);
            }
            if ((this.p & 64) == 64) {
                codedOutputStream.a(10, this.i);
            }
            int i2 = 0;
            if ((this.p & 1) == 1) {
                codedOutputStream.a(11, this.f37059b);
                i2 = 0;
            }
            while (i2 < this.m.size()) {
                codedOutputStream.a(31, this.m.get(i2).intValue());
                i2++;
            }
            y.a(19000, codedOutputStream);
            codedOutputStream.d(this.o);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<m> b() {
            return f37058a;
        }

        public final boolean c() {
            return (this.p & 1) == 1;
        }

        public final boolean d() {
            return (this.p & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.q;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!g()) {
                this.q = (byte) 0;
                return false;
            } else if (!k() || this.e.e()) {
                for (int i = 0; i < this.g.size(); i++) {
                    if (!this.g.get(i).e()) {
                        this.q = (byte) 0;
                        return false;
                    }
                }
                if (m() && !this.h.e()) {
                    this.q = (byte) 0;
                    return false;
                } else if (o() && !this.j.e()) {
                    this.q = (byte) 0;
                    return false;
                } else if (!x()) {
                    this.q = (byte) 0;
                    return false;
                } else {
                    this.q = (byte) 1;
                    return true;
                }
            } else {
                this.q = (byte) 0;
                return false;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.s;
            if (i != -1) {
                return i;
            }
            int c2 = (this.p & 2) == 2 ? CodedOutputStream.c(1, this.f37060c) + 0 : 0;
            int i2 = c2;
            if ((this.p & 4) == 4) {
                i2 = c2 + CodedOutputStream.c(2, this.f37061d);
            }
            int i3 = i2;
            if ((this.p & 8) == 8) {
                i3 = i2 + CodedOutputStream.c(3, this.e);
            }
            for (int i4 = 0; i4 < this.g.size(); i4++) {
                i3 += CodedOutputStream.c(4, this.g.get(i4));
            }
            int i5 = i3;
            if ((this.p & 32) == 32) {
                i5 = i3 + CodedOutputStream.c(5, this.h);
            }
            int i6 = i5;
            if ((this.p & 128) == 128) {
                i6 = i5 + CodedOutputStream.c(6, this.j);
            }
            int i7 = i6;
            if ((this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                i7 = i6 + CodedOutputStream.c(7, this.k);
            }
            int i8 = i7;
            if ((this.p & 512) == 512) {
                i8 = i7 + CodedOutputStream.c(8, this.l);
            }
            int i9 = i8;
            if ((this.p & 16) == 16) {
                i9 = i8 + CodedOutputStream.c(9, this.f);
            }
            int i10 = i9;
            if ((this.p & 64) == 64) {
                i10 = i9 + CodedOutputStream.c(10, this.i);
            }
            int i11 = i10;
            if ((this.p & 1) == 1) {
                i11 = i10 + CodedOutputStream.c(11, this.f37059b);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.m.size(); i13++) {
                i12 += CodedOutputStream.c(this.m.get(i13).intValue());
            }
            int size = i11 + i12 + (this.m.size() * 2) + z() + this.o.a();
            this.s = size;
            return size;
        }

        public final boolean g() {
            return (this.p & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0641a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0641a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return n;
        }

        public final boolean k() {
            return (this.p & 8) == 8;
        }

        public final boolean l() {
            return (this.p & 16) == 16;
        }

        public final boolean m() {
            return (this.p & 32) == 32;
        }

        public final boolean n() {
            return (this.p & 64) == 64;
        }

        public final boolean o() {
            return (this.p & 128) == 128;
        }

        public final boolean p() {
            return (this.p & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
        }

        public final boolean q() {
            return (this.p & 512) == 512;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n.class */
    public static final class n extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.p {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<n> f37065a = new kotlin.reflect.jvm.internal.impl.protobuf.b<n>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.n.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new n(eVar, fVar);
            }
        };

        /* renamed from: b  reason: collision with root package name */
        private static final n f37066b;

        /* renamed from: c  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f37067c;

        /* renamed from: d  reason: collision with root package name */
        private List<b> f37068d;
        private byte e;
        private int f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$a.class */
        public static final class C0642a extends h.a<n, C0642a> implements kotlin.reflect.jvm.internal.impl.b.p {

            /* renamed from: b  reason: collision with root package name */
            private int f37069b;

            /* renamed from: c  reason: collision with root package name */
            private List<b> f37070c = Collections.emptyList();

            private C0642a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.n.C0642a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$n> r0 = kotlin.reflect.jvm.internal.impl.b.a.n.f37065a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$n r0 = (kotlin.reflect.jvm.internal.impl.b.a.n) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$n$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r5
                    r6 = r0
                    goto L_0x002c
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$n r0 = (kotlin.reflect.jvm.internal.impl.b.a.n) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                    r0 = r5
                    r7 = r0
                L_0x002c:
                    r0 = r7
                    if (r0 == 0) goto L_0x0036
                    r0 = r4
                    r1 = r7
                    kotlin.reflect.jvm.internal.impl.b.a$n$a r0 = r0.a(r1)
                L_0x0036:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.n.C0642a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$n$a");
            }

            static /* synthetic */ C0642a g() {
                return new C0642a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0642a clone() {
                return new C0642a().a(f());
            }

            private void i() {
                if ((this.f37069b & 1) != 1) {
                    this.f37070c = new ArrayList(this.f37070c);
                    this.f37069b |= 1;
                }
            }

            public final C0642a a(n nVar) {
                if (nVar == n.a()) {
                    return this;
                }
                if (!nVar.f37068d.isEmpty()) {
                    if (this.f37070c.isEmpty()) {
                        this.f37070c = nVar.f37068d;
                        this.f37069b &= -2;
                    } else {
                        i();
                        this.f37070c.addAll(nVar.f37068d);
                    }
                }
                this.f38138a = this.f38138a.a(nVar.f37067c);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ n a() {
                return n.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                n f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37070c.size(); i++) {
                    if (!this.f37070c.get(i).e()) {
                        return false;
                    }
                }
                return true;
            }

            public final n f() {
                n nVar = new n(this);
                if ((this.f37069b & 1) == 1) {
                    this.f37070c = Collections.unmodifiableList(this.f37070c);
                    this.f37069b &= -2;
                }
                nVar.f37068d = this.f37070c;
                return nVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return n.a();
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$b.class */
        public static final class b extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.o {

            /* renamed from: a  reason: collision with root package name */
            public static kotlin.reflect.jvm.internal.impl.protobuf.r<b> f37071a = new kotlin.reflect.jvm.internal.impl.protobuf.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.n.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
                public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                    return new b(eVar, fVar);
                }
            };
            private static final b e;

            /* renamed from: b  reason: collision with root package name */
            public int f37072b;

            /* renamed from: c  reason: collision with root package name */
            public int f37073c;

            /* renamed from: d  reason: collision with root package name */
            public EnumC0644b f37074d;
            private final kotlin.reflect.jvm.internal.impl.protobuf.d f;
            private int g;
            private byte h;
            private int i;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$b$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$b$a.class */
            public static final class C0643a extends h.a<b, C0643a> implements kotlin.reflect.jvm.internal.impl.b.o {

                /* renamed from: b  reason: collision with root package name */
                private int f37075b;

                /* renamed from: d  reason: collision with root package name */
                private int f37077d;

                /* renamed from: c  reason: collision with root package name */
                private int f37076c = -1;
                private EnumC0644b e = EnumC0644b.PACKAGE;

                private C0643a() {
                }

                private C0643a a(int i) {
                    this.f37075b |= 1;
                    this.f37076c = i;
                    return this;
                }

                private C0643a a(EnumC0644b bVar) {
                    Objects.requireNonNull(bVar);
                    this.f37075b |= 4;
                    this.e = bVar;
                    return this;
                }

                private C0643a b(int i) {
                    this.f37075b |= 2;
                    this.f37077d = i;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.b.a.n.b.C0643a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$n$b> r0 = kotlin.reflect.jvm.internal.impl.b.a.n.b.f37071a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        kotlin.reflect.jvm.internal.impl.b.a$n$b r0 = (kotlin.reflect.jvm.internal.impl.b.a.n.b) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$n$b$a r0 = r0.a(r1)
                        r0 = r4
                        return r0
                    L_0x0018:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L_0x002a
                    L_0x001e:
                        r5 = move-exception
                        r0 = r5
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                        kotlin.reflect.jvm.internal.impl.b.a$n$b r0 = (kotlin.reflect.jvm.internal.impl.b.a.n.b) r0     // Catch: all -> 0x0018
                        r6 = r0
                        r0 = r5
                        throw r0     // Catch: all -> 0x0029
                    L_0x0029:
                        r5 = move-exception
                    L_0x002a:
                        r0 = r6
                        if (r0 == 0) goto L_0x0034
                        r0 = r4
                        r1 = r6
                        kotlin.reflect.jvm.internal.impl.b.a$n$b$a r0 = r0.a(r1)
                    L_0x0034:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.n.b.C0643a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$n$b$a");
                }

                static /* synthetic */ C0643a f() {
                    return new C0643a();
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* renamed from: g */
                public C0643a clone() {
                    return new C0643a().a(h());
                }

                private b h() {
                    b bVar = new b(this);
                    int i = this.f37075b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    bVar.f37072b = this.f37076c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    bVar.f37073c = this.f37077d;
                    int i4 = i3;
                    if ((i & 4) == 4) {
                        i4 = i3 | 4;
                    }
                    bVar.f37074d = this.e;
                    bVar.g = i4;
                    return bVar;
                }

                public final C0643a a(b bVar) {
                    if (bVar == b.a()) {
                        return this;
                    }
                    if (bVar.c()) {
                        a(bVar.f37072b);
                    }
                    if (bVar.d()) {
                        b(bVar.f37073c);
                    }
                    if (bVar.g()) {
                        a(bVar.f37074d);
                    }
                    this.f38138a = this.f38138a.a(bVar.f);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                public final /* bridge */ /* synthetic */ b a() {
                    return b.a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
                public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                    b h = h();
                    if (h.e()) {
                        return h;
                    }
                    throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                public final boolean e() {
                    return (this.f37075b & 2) == 2;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
                public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                    return b.a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$n$b$b  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$n$b$b.class */
            public enum EnumC0644b implements j.a {
                CLASS(0, 0),
                PACKAGE(1, 1),
                LOCAL(2, 2);
                
                private static j.b<EnumC0644b> internalValueMap = new j.b<EnumC0644b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.n.b.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                    public final /* synthetic */ EnumC0644b a(int i) {
                        return EnumC0644b.valueOf(i);
                    }
                };
                private final int value;

                EnumC0644b(int i, int i2) {
                    this.value = i2;
                }

                public static EnumC0644b valueOf(int i) {
                    if (i == 0) {
                        return CLASS;
                    }
                    if (i == 1) {
                        return PACKAGE;
                    }
                    if (i != 2) {
                        return null;
                    }
                    return LOCAL;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                b bVar = new b(true);
                e = bVar;
                bVar.k();
            }

            private b(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                this.h = (byte) (-1);
                this.i = -1;
                k();
                d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
                CodedOutputStream a2 = CodedOutputStream.a(h, 1);
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 8) {
                                    this.g |= 1;
                                    this.f37072b = eVar.d();
                                } else if (a3 == 16) {
                                    this.g |= 2;
                                    this.f37073c = eVar.d();
                                } else if (a3 == 24) {
                                    int d2 = eVar.d();
                                    EnumC0644b valueOf = EnumC0644b.valueOf(d2);
                                    if (valueOf == null) {
                                        a2.e(a3);
                                        a2.e(d2);
                                    } else {
                                        this.g |= 4;
                                        this.f37074d = valueOf;
                                    }
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e2) {
                            e2.f38108a = this;
                            throw e2;
                        } catch (IOException e3) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        try {
                            a2.a();
                        } catch (IOException e4) {
                        } catch (Throwable th2) {
                            this.f = h.a();
                            throw th2;
                        }
                        this.f = h.a();
                        w();
                        throw th;
                    }
                }
                try {
                    a2.a();
                } catch (IOException e5) {
                } catch (Throwable th3) {
                    this.f = h.a();
                    throw th3;
                }
                this.f = h.a();
                w();
            }

            private b(h.a aVar) {
                super(aVar);
                this.h = (byte) (-1);
                this.i = -1;
                this.f = aVar.f38138a;
            }

            private b(boolean z) {
                this.h = (byte) (-1);
                this.i = -1;
                this.f = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
            }

            public static b a() {
                return e;
            }

            private void k() {
                this.f37072b = -1;
                this.f37073c = 0;
                this.f37074d = EnumC0644b.PACKAGE;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final void a(CodedOutputStream codedOutputStream) throws IOException {
                f();
                if ((this.g & 1) == 1) {
                    codedOutputStream.a(1, this.f37072b);
                }
                if ((this.g & 2) == 2) {
                    codedOutputStream.a(2, this.f37073c);
                }
                if ((this.g & 4) == 4) {
                    codedOutputStream.b(3, this.f37074d.getNumber());
                }
                codedOutputStream.d(this.f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
            public final kotlin.reflect.jvm.internal.impl.protobuf.r<b> b() {
                return f37071a;
            }

            public final boolean c() {
                return (this.g & 1) == 1;
            }

            public final boolean d() {
                return (this.g & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                byte b2 = this.h;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                if (!d()) {
                    this.h = (byte) 0;
                    return false;
                }
                this.h = (byte) 1;
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final int f() {
                int i = this.i;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.g & 1) == 1) {
                    i2 = 0 + CodedOutputStream.c(1, this.f37072b);
                }
                int i3 = i2;
                if ((this.g & 2) == 2) {
                    i3 = i2 + CodedOutputStream.c(2, this.f37073c);
                }
                int i4 = i3;
                if ((this.g & 4) == 4) {
                    i4 = i3 + CodedOutputStream.d(3, this.f37074d.getNumber());
                }
                int a2 = i4 + this.f.a();
                this.i = a2;
                return a2;
            }

            public final boolean g() {
                return (this.g & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a h() {
                return C0643a.f().a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a i() {
                return C0643a.f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return e;
            }
        }

        static {
            n nVar = new n(true);
            f37066b = nVar;
            nVar.f37068d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private n(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37068d = Collections.emptyList();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 10) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f37068d = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37068d.add(eVar.a(b.f37071a, fVar));
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37068d = Collections.unmodifiableList(this.f37068d);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f37067c = h.a();
                        throw th2;
                    }
                    this.f37067c = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37068d = Collections.unmodifiableList(this.f37068d);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f37067c = h.a();
                throw th3;
            }
            this.f37067c = h.a();
            w();
        }

        private n(h.a aVar) {
            super(aVar);
            this.e = (byte) (-1);
            this.f = -1;
            this.f37067c = aVar.f38138a;
        }

        private n(boolean z) {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37067c = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0642a a(n nVar) {
            return C0642a.g().a(nVar);
        }

        public static n a() {
            return f37066b;
        }

        public final b a(int i) {
            return this.f37068d.get(i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            for (int i = 0; i < this.f37068d.size(); i++) {
                codedOutputStream.a(1, this.f37068d.get(i));
            }
            codedOutputStream.d(this.f37067c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<n> b() {
            return f37065a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.e;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < this.f37068d.size(); i++) {
                if (!a(i).e()) {
                    this.e = (byte) 0;
                    return false;
                }
            }
            this.e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f37068d.size(); i3++) {
                i2 += CodedOutputStream.c(1, this.f37068d.get(i3));
            }
            int a2 = i2 + this.f37067c.a();
            this.f = a2;
            return a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0642a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0642a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f37066b;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$o.class */
    public static final class o extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.q {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<o> f37078a = new kotlin.reflect.jvm.internal.impl.protobuf.b<o>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.o.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new o(eVar, fVar);
            }
        };

        /* renamed from: b  reason: collision with root package name */
        private static final o f37079b;

        /* renamed from: c  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f37080c;

        /* renamed from: d  reason: collision with root package name */
        private kotlin.reflect.jvm.internal.impl.protobuf.n f37081d;
        private byte e;
        private int f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$o$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$o$a.class */
        public static final class C0645a extends h.a<o, C0645a> implements kotlin.reflect.jvm.internal.impl.b.q {

            /* renamed from: b  reason: collision with root package name */
            private int f37082b;

            /* renamed from: c  reason: collision with root package name */
            private kotlin.reflect.jvm.internal.impl.protobuf.n f37083c = kotlin.reflect.jvm.internal.impl.protobuf.m.f38163a;

            private C0645a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.o.C0645a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$o> r0 = kotlin.reflect.jvm.internal.impl.b.a.o.f37078a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$o r0 = (kotlin.reflect.jvm.internal.impl.b.a.o) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$o$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$o r0 = (kotlin.reflect.jvm.internal.impl.b.a.o) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$o$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.o.C0645a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$o$a");
            }

            static /* synthetic */ C0645a g() {
                return new C0645a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0645a clone() {
                return new C0645a().a(f());
            }

            private void i() {
                if ((this.f37082b & 1) != 1) {
                    this.f37083c = new kotlin.reflect.jvm.internal.impl.protobuf.m(this.f37083c);
                    this.f37082b |= 1;
                }
            }

            public final C0645a a(o oVar) {
                if (oVar == o.a()) {
                    return this;
                }
                if (!oVar.f37081d.isEmpty()) {
                    if (this.f37083c.isEmpty()) {
                        this.f37083c = oVar.f37081d;
                        this.f37082b &= -2;
                    } else {
                        i();
                        this.f37083c.addAll(oVar.f37081d);
                    }
                }
                this.f38138a = this.f38138a.a(oVar.f37080c);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ o a() {
                return o.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                o f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            public final o f() {
                o oVar = new o(this);
                if ((this.f37082b & 1) == 1) {
                    this.f37083c = this.f37083c.b();
                    this.f37082b &= -2;
                }
                oVar.f37081d = this.f37083c;
                return oVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return o.a();
            }
        }

        static {
            o oVar = new o(true);
            f37079b = oVar;
            oVar.f37081d = kotlin.reflect.jvm.internal.impl.protobuf.m.f38163a;
        }

        private o(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37081d = kotlin.reflect.jvm.internal.impl.protobuf.m.f38163a;
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 10) {
                                    kotlin.reflect.jvm.internal.impl.protobuf.d c2 = eVar.c();
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f37081d = new kotlin.reflect.jvm.internal.impl.protobuf.m();
                                        z2 |= true;
                                    }
                                    this.f37081d.a(c2);
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f38108a = this;
                        throw e2;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37081d = this.f37081d.b();
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f37080c = h.a();
                        throw th2;
                    }
                    this.f37080c = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37081d = this.f37081d.b();
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f37080c = h.a();
                throw th3;
            }
            this.f37080c = h.a();
            w();
        }

        private o(h.a aVar) {
            super(aVar);
            this.e = (byte) (-1);
            this.f = -1;
            this.f37080c = aVar.f38138a;
        }

        private o(boolean z) {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37080c = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0645a a(o oVar) {
            return C0645a.g().a(oVar);
        }

        public static o a() {
            return f37079b;
        }

        public final String a(int i) {
            return (String) this.f37081d.get(i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            for (int i = 0; i < this.f37081d.size(); i++) {
                codedOutputStream.a(1, this.f37081d.a(i));
            }
            codedOutputStream.d(this.f37080c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<o> b() {
            return f37078a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.e;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f37081d.size(); i3++) {
                i2 += CodedOutputStream.c(this.f37081d.a(i3));
            }
            int size = i2 + 0 + (this.f37081d.size() * 1) + this.f37080c.a();
            this.f = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0645a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0645a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f37079b;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p.class */
    public static final class p extends h.c<p> implements kotlin.reflect.jvm.internal.impl.b.t {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<p> f37084a = new kotlin.reflect.jvm.internal.impl.protobuf.b<p>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.p.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new p(eVar, fVar);
            }
        };
        private static final p p;

        /* renamed from: b  reason: collision with root package name */
        public List<C0646a> f37085b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f37086c;

        /* renamed from: d  reason: collision with root package name */
        public int f37087d;
        public p e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public p k;
        public int l;
        public p m;
        public int n;
        public int o;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d q;
        private int s;
        private byte t;
        private int u;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$a.class */
        public static final class C0646a extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.r {

            /* renamed from: a  reason: collision with root package name */
            public static kotlin.reflect.jvm.internal.impl.protobuf.r<C0646a> f37088a = new kotlin.reflect.jvm.internal.impl.protobuf.b<C0646a>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.p.a.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
                public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                    return new C0646a(eVar, fVar);
                }
            };
            private static final C0646a e;

            /* renamed from: b  reason: collision with root package name */
            public b f37089b;

            /* renamed from: c  reason: collision with root package name */
            public p f37090c;

            /* renamed from: d  reason: collision with root package name */
            public int f37091d;
            private final kotlin.reflect.jvm.internal.impl.protobuf.d f;
            private int g;
            private byte h;
            private int i;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$a$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$a$a.class */
            public static final class C0647a extends h.a<C0646a, C0647a> implements kotlin.reflect.jvm.internal.impl.b.r {

                /* renamed from: b  reason: collision with root package name */
                private int f37092b;

                /* renamed from: c  reason: collision with root package name */
                private b f37093c = b.INV;

                /* renamed from: d  reason: collision with root package name */
                private p f37094d = p.a();
                private int e;

                private C0647a() {
                }

                private C0647a a(int i) {
                    this.f37092b |= 4;
                    this.e = i;
                    return this;
                }

                private C0647a a(b bVar) {
                    Objects.requireNonNull(bVar);
                    this.f37092b |= 1;
                    this.f37093c = bVar;
                    return this;
                }

                private C0647a a(p pVar) {
                    if ((this.f37092b & 2) != 2 || this.f37094d == p.a()) {
                        this.f37094d = pVar;
                    } else {
                        this.f37094d = p.a(this.f37094d).a(pVar).h();
                    }
                    this.f37092b |= 2;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.b.a.p.C0646a.C0647a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$p$a> r0 = kotlin.reflect.jvm.internal.impl.b.a.p.C0646a.f37088a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        kotlin.reflect.jvm.internal.impl.b.a$p$a r0 = (kotlin.reflect.jvm.internal.impl.b.a.p.C0646a) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.a$p$a$a r0 = r0.a(r1)
                        r0 = r4
                        return r0
                    L_0x0018:
                        r5 = move-exception
                        r0 = r5
                        r6 = r0
                        goto L_0x002c
                    L_0x001e:
                        r6 = move-exception
                        r0 = r6
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                        kotlin.reflect.jvm.internal.impl.b.a$p$a r0 = (kotlin.reflect.jvm.internal.impl.b.a.p.C0646a) r0     // Catch: all -> 0x0018
                        r5 = r0
                        r0 = r6
                        throw r0     // Catch: all -> 0x0029
                    L_0x0029:
                        r6 = move-exception
                        r0 = r5
                        r7 = r0
                    L_0x002c:
                        r0 = r7
                        if (r0 == 0) goto L_0x0036
                        r0 = r4
                        r1 = r7
                        kotlin.reflect.jvm.internal.impl.b.a$p$a$a r0 = r0.a(r1)
                    L_0x0036:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.p.C0646a.C0647a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$p$a$a");
                }

                static /* synthetic */ C0647a f() {
                    return new C0647a();
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* renamed from: g */
                public C0647a clone() {
                    return new C0647a().a(h());
                }

                private C0646a h() {
                    C0646a aVar = new C0646a(this);
                    int i = this.f37092b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    aVar.f37089b = this.f37093c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    aVar.f37090c = this.f37094d;
                    int i4 = i3;
                    if ((i & 4) == 4) {
                        i4 = i3 | 4;
                    }
                    aVar.f37091d = this.e;
                    aVar.g = i4;
                    return aVar;
                }

                public final C0647a a(C0646a aVar) {
                    if (aVar == C0646a.a()) {
                        return this;
                    }
                    if (aVar.c()) {
                        a(aVar.f37089b);
                    }
                    if (aVar.d()) {
                        a(aVar.f37090c);
                    }
                    if (aVar.g()) {
                        a(aVar.f37091d);
                    }
                    this.f38138a = this.f38138a.a(aVar.f);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                public final /* bridge */ /* synthetic */ C0646a a() {
                    return C0646a.a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
                public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                    C0646a h = h();
                    if (h.e()) {
                        return h;
                    }
                    throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                public final boolean e() {
                    return !((this.f37092b & 2) == 2) || this.f37094d.e();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
                public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                    return C0646a.a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$p$a$b */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$a$b.class */
            public enum b implements j.a {
                IN(0, 0),
                OUT(1, 1),
                INV(2, 2),
                STAR(3, 3);
                
                private static j.b<b> internalValueMap = new j.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.p.a.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                    public final /* synthetic */ b a(int i) {
                        return b.valueOf(i);
                    }
                };
                private final int value;

                b(int i, int i2) {
                    this.value = i2;
                }

                public static b valueOf(int i) {
                    if (i == 0) {
                        return IN;
                    }
                    if (i == 1) {
                        return OUT;
                    }
                    if (i == 2) {
                        return INV;
                    }
                    if (i != 3) {
                        return null;
                    }
                    return STAR;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                C0646a aVar = new C0646a(true);
                e = aVar;
                aVar.k();
            }

            private C0646a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                this.h = (byte) (-1);
                this.i = -1;
                k();
                d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
                CodedOutputStream a2 = CodedOutputStream.a(h, 1);
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 8) {
                                    int d2 = eVar.d();
                                    b valueOf = b.valueOf(d2);
                                    if (valueOf == null) {
                                        a2.e(a3);
                                        a2.e(d2);
                                    } else {
                                        this.g |= 1;
                                        this.f37089b = valueOf;
                                    }
                                } else if (a3 == 18) {
                                    b v = (this.g & 2) == 2 ? this.f37090c.h() : null;
                                    p pVar = (p) eVar.a(p.f37084a, fVar);
                                    this.f37090c = pVar;
                                    if (v != null) {
                                        v.a(pVar);
                                        this.f37090c = v.h();
                                    }
                                    this.g |= 2;
                                } else if (a3 == 24) {
                                    this.g |= 4;
                                    this.f37091d = eVar.d();
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e2) {
                            e2.f38108a = this;
                            throw e2;
                        } catch (IOException e3) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        try {
                            a2.a();
                        } catch (IOException e4) {
                        } catch (Throwable th2) {
                            this.f = h.a();
                            throw th2;
                        }
                        this.f = h.a();
                        w();
                        throw th;
                    }
                }
                try {
                    a2.a();
                } catch (IOException e5) {
                } catch (Throwable th3) {
                    this.f = h.a();
                    throw th3;
                }
                this.f = h.a();
                w();
            }

            private C0646a(h.a aVar) {
                super(aVar);
                this.h = (byte) (-1);
                this.i = -1;
                this.f = aVar.f38138a;
            }

            private C0646a(boolean z) {
                this.h = (byte) (-1);
                this.i = -1;
                this.f = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
            }

            public static C0646a a() {
                return e;
            }

            private void k() {
                this.f37089b = b.INV;
                this.f37090c = p.a();
                this.f37091d = 0;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final void a(CodedOutputStream codedOutputStream) throws IOException {
                f();
                if ((this.g & 1) == 1) {
                    codedOutputStream.b(1, this.f37089b.getNumber());
                }
                if ((this.g & 2) == 2) {
                    codedOutputStream.a(2, this.f37090c);
                }
                if ((this.g & 4) == 4) {
                    codedOutputStream.a(3, this.f37091d);
                }
                codedOutputStream.d(this.f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
            public final kotlin.reflect.jvm.internal.impl.protobuf.r<C0646a> b() {
                return f37088a;
            }

            public final boolean c() {
                return (this.g & 1) == 1;
            }

            public final boolean d() {
                return (this.g & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                byte b2 = this.h;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                if (!d() || this.f37090c.e()) {
                    this.h = (byte) 1;
                    return true;
                }
                this.h = (byte) 0;
                return false;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final int f() {
                int i = this.i;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.g & 1) == 1) {
                    i2 = 0 + CodedOutputStream.d(1, this.f37089b.getNumber());
                }
                int i3 = i2;
                if ((this.g & 2) == 2) {
                    i3 = i2 + CodedOutputStream.c(2, this.f37090c);
                }
                int i4 = i3;
                if ((this.g & 4) == 4) {
                    i4 = i3 + CodedOutputStream.c(3, this.f37091d);
                }
                int a2 = i4 + this.f.a();
                this.i = a2;
                return a2;
            }

            public final boolean g() {
                return (this.g & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a h() {
                return C0647a.f().a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a i() {
                return C0647a.f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return e;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$p$b.class */
        public static final class b extends h.b<p, b> implements kotlin.reflect.jvm.internal.impl.b.t {

            /* renamed from: b  reason: collision with root package name */
            private int f37095b;

            /* renamed from: d  reason: collision with root package name */
            private boolean f37097d;
            private int e;
            private int g;
            private int h;
            private int i;
            private int j;
            private int k;
            private int m;
            private int o;
            private int p;

            /* renamed from: c  reason: collision with root package name */
            private List<C0646a> f37096c = Collections.emptyList();
            private p f = p.a();
            private p l = p.a();
            private p n = p.a();

            private b() {
            }

            private b a(int i) {
                this.f37095b |= 4;
                this.e = i;
                return this;
            }

            private b b(int i) {
                this.f37095b |= 16;
                this.g = i;
                return this;
            }

            private b b(p pVar) {
                if ((this.f37095b & 8) != 8 || this.f == p.a()) {
                    this.f = pVar;
                } else {
                    this.f = p.a(this.f).a(pVar).h();
                }
                this.f37095b |= 8;
                return this;
            }

            private b c(int i) {
                this.f37095b |= 32;
                this.h = i;
                return this;
            }

            private b c(p pVar) {
                if ((this.f37095b & 512) != 512 || this.l == p.a()) {
                    this.l = pVar;
                } else {
                    this.l = p.a(this.l).a(pVar).h();
                }
                this.f37095b |= 512;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.p.b b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$p> r0 = kotlin.reflect.jvm.internal.impl.b.a.p.f37084a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$p r0 = (kotlin.reflect.jvm.internal.impl.b.a.p) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$p$b r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$p r0 = (kotlin.reflect.jvm.internal.impl.b.a.p) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$p$b r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.p.b.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$p$b");
            }

            private b d(int i) {
                this.f37095b |= 64;
                this.i = i;
                return this;
            }

            private b d(p pVar) {
                if ((this.f37095b & 2048) != 2048 || this.n == p.a()) {
                    this.n = pVar;
                } else {
                    this.n = p.a(this.n).a(pVar).h();
                }
                this.f37095b |= 2048;
                return this;
            }

            private b e(int i) {
                this.f37095b |= 128;
                this.j = i;
                return this;
            }

            private b f(int i) {
                this.f37095b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                this.k = i;
                return this;
            }

            private b g(int i) {
                this.f37095b |= 1024;
                this.m = i;
                return this;
            }

            private b h(int i) {
                this.f37095b |= 4096;
                this.o = i;
                return this;
            }

            static /* synthetic */ b i() {
                return new b();
            }

            private b i(int i) {
                this.f37095b |= PropertyFlags.UNSIGNED;
                this.p = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: l */
            public b f() {
                return new b().a(h());
            }

            private void m() {
                if ((this.f37095b & 1) != 1) {
                    this.f37096c = new ArrayList(this.f37096c);
                    this.f37095b |= 1;
                }
            }

            public final b a(p pVar) {
                if (pVar == p.a()) {
                    return this;
                }
                if (!pVar.f37085b.isEmpty()) {
                    if (this.f37096c.isEmpty()) {
                        this.f37096c = pVar.f37085b;
                        this.f37095b &= -2;
                    } else {
                        m();
                        this.f37096c.addAll(pVar.f37085b);
                    }
                }
                if (pVar.d()) {
                    a(pVar.f37086c);
                }
                if (pVar.g()) {
                    a(pVar.f37087d);
                }
                if (pVar.k()) {
                    b(pVar.e);
                }
                if (pVar.l()) {
                    b(pVar.f);
                }
                if (pVar.m()) {
                    c(pVar.g);
                }
                if (pVar.n()) {
                    d(pVar.h);
                }
                if (pVar.o()) {
                    e(pVar.i);
                }
                if (pVar.p()) {
                    f(pVar.j);
                }
                if (pVar.q()) {
                    c(pVar.k);
                }
                if (pVar.r()) {
                    g(pVar.l);
                }
                if (pVar.s()) {
                    d(pVar.m);
                }
                if (pVar.t()) {
                    h(pVar.n);
                }
                if (pVar.u()) {
                    i(pVar.o);
                }
                a((b) pVar);
                this.f38138a = this.f38138a.a(pVar.q);
                return this;
            }

            public final b a(boolean z) {
                this.f37095b |= 2;
                this.f37097d = z;
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return p.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37096c.size(); i++) {
                    if (!this.f37096c.get(i).e()) {
                        return false;
                    }
                }
                if (((this.f37095b & 8) == 8) && !this.f.e()) {
                    return false;
                }
                if (((this.f37095b & 512) == 512) && !this.l.e()) {
                    return false;
                }
                return (!((this.f37095b & 2048) == 2048) || this.n.e()) && k();
            }

            /* renamed from: g */
            public final p d() {
                p h = h();
                if (h.e()) {
                    return h;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) h);
            }

            public final p h() {
                p pVar = new p(this);
                int i = this.f37095b;
                int i2 = 1;
                if ((i & 1) == 1) {
                    this.f37096c = Collections.unmodifiableList(this.f37096c);
                    this.f37095b &= -2;
                }
                pVar.f37085b = this.f37096c;
                if ((i & 2) != 2) {
                    i2 = 0;
                }
                pVar.f37086c = this.f37097d;
                int i3 = i2;
                if ((i & 4) == 4) {
                    i3 = i2 | 2;
                }
                pVar.f37087d = this.e;
                int i4 = i3;
                if ((i & 8) == 8) {
                    i4 = i3 | 4;
                }
                pVar.e = this.f;
                int i5 = i4;
                if ((i & 16) == 16) {
                    i5 = i4 | 8;
                }
                pVar.f = this.g;
                int i6 = i5;
                if ((i & 32) == 32) {
                    i6 = i5 | 16;
                }
                pVar.g = this.h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                pVar.h = this.i;
                int i8 = i7;
                if ((i & 128) == 128) {
                    i8 = i7 | 64;
                }
                pVar.i = this.j;
                int i9 = i8;
                if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    i9 = i8 | 128;
                }
                pVar.j = this.k;
                int i10 = i9;
                if ((i & 512) == 512) {
                    i10 = i9 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                pVar.k = this.l;
                int i11 = i10;
                if ((i & 1024) == 1024) {
                    i11 = i10 | 512;
                }
                pVar.l = this.m;
                int i12 = i11;
                if ((i & 2048) == 2048) {
                    i12 = i11 | 1024;
                }
                pVar.m = this.n;
                int i13 = i12;
                if ((i & 4096) == 4096) {
                    i13 = i12 | 2048;
                }
                pVar.n = this.o;
                int i14 = i13;
                if ((i & PropertyFlags.UNSIGNED) == 8192) {
                    i14 = i13 | 4096;
                }
                pVar.o = this.p;
                pVar.s = i14;
                return pVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return p.a();
            }
        }

        static {
            p pVar = new p(true);
            p = pVar;
            pVar.A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private p(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.t = (byte) (-1);
            this.u = -1;
            A();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        b bVar = null;
                        b bVar2 = null;
                        b bVar3 = null;
                        switch (a3) {
                            case 0:
                                break;
                            case 8:
                                this.s |= 4096;
                                this.o = eVar.d();
                                continue;
                            case 18:
                                z2 = z2;
                                if (!z2 || !true) {
                                    this.f37085b = new ArrayList();
                                    z2 |= true;
                                }
                                this.f37085b.add(eVar.a(C0646a.f37088a, fVar));
                                continue;
                            case 24:
                                this.s |= 1;
                                this.f37086c = eVar.b();
                                continue;
                            case 32:
                                this.s |= 2;
                                this.f37087d = eVar.d();
                                continue;
                            case 42:
                                if ((this.s & 4) == 4) {
                                    bVar2 = b.i().a(this.e);
                                }
                                p pVar = (p) eVar.a(f37084a, fVar);
                                this.e = pVar;
                                if (bVar2 != null) {
                                    bVar2.a(pVar);
                                    this.e = bVar2.h();
                                }
                                this.s |= 4;
                                continue;
                            case 48:
                                this.s |= 16;
                                this.g = eVar.d();
                                continue;
                            case 56:
                                this.s |= 32;
                                this.h = eVar.d();
                                continue;
                            case 64:
                                this.s |= 8;
                                this.f = eVar.d();
                                continue;
                            case 72:
                                this.s |= 64;
                                this.i = eVar.d();
                                continue;
                            case 82:
                                if ((this.s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                                    bVar = b.i().a(this.k);
                                }
                                p pVar2 = (p) eVar.a(f37084a, fVar);
                                this.k = pVar2;
                                if (bVar != null) {
                                    bVar.a(pVar2);
                                    this.k = bVar.h();
                                }
                                this.s |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                                continue;
                            case 88:
                                this.s |= 512;
                                this.l = eVar.d();
                                continue;
                            case 96:
                                this.s |= 128;
                                this.j = eVar.d();
                                continue;
                            case 106:
                                if ((this.s & 1024) == 1024) {
                                    bVar3 = b.i().a(this.m);
                                }
                                p pVar3 = (p) eVar.a(f37084a, fVar);
                                this.m = pVar3;
                                if (bVar3 != null) {
                                    bVar3.a(pVar3);
                                    this.m = bVar3.h();
                                }
                                this.s |= 1024;
                                continue;
                            case 112:
                                this.s |= 2048;
                                this.n = eVar.d();
                                continue;
                            default:
                                if (!a(eVar, a2, fVar, a3)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        e.f38108a = this;
                        throw e;
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37085b = Collections.unmodifiableList(this.f37085b);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.q = h.a();
                        throw th2;
                    }
                    this.q = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37085b = Collections.unmodifiableList(this.f37085b);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.q = h.a();
                throw th3;
            }
            this.q = h.a();
            w();
        }

        private p(h.b<p, ?> bVar) {
            super(bVar);
            this.t = (byte) (-1);
            this.u = -1;
            this.q = bVar.f38138a;
        }

        private p(boolean z) {
            this.t = (byte) (-1);
            this.u = -1;
            this.q = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        private void A() {
            this.f37085b = Collections.emptyList();
            this.f37086c = false;
            this.f37087d = 0;
            p pVar = p;
            this.e = pVar;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.k = pVar;
            this.l = 0;
            this.m = pVar;
            this.n = 0;
            this.o = 0;
        }

        public static b a(p pVar) {
            return b.i().a(pVar);
        }

        public static p a() {
            return p;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.s & 4096) == 4096) {
                codedOutputStream.a(1, this.o);
            }
            for (int i = 0; i < this.f37085b.size(); i++) {
                codedOutputStream.a(2, this.f37085b.get(i));
            }
            if ((this.s & 1) == 1) {
                codedOutputStream.a(this.f37086c);
            }
            if ((this.s & 2) == 2) {
                codedOutputStream.a(4, this.f37087d);
            }
            if ((this.s & 4) == 4) {
                codedOutputStream.a(5, this.e);
            }
            if ((this.s & 16) == 16) {
                codedOutputStream.a(6, this.g);
            }
            if ((this.s & 32) == 32) {
                codedOutputStream.a(7, this.h);
            }
            if ((this.s & 8) == 8) {
                codedOutputStream.a(8, this.f);
            }
            if ((this.s & 64) == 64) {
                codedOutputStream.a(9, this.i);
            }
            if ((this.s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                codedOutputStream.a(10, this.k);
            }
            if ((this.s & 512) == 512) {
                codedOutputStream.a(11, this.l);
            }
            if ((this.s & 128) == 128) {
                codedOutputStream.a(12, this.j);
            }
            if ((this.s & 1024) == 1024) {
                codedOutputStream.a(13, this.m);
            }
            if ((this.s & 2048) == 2048) {
                codedOutputStream.a(14, this.n);
            }
            y.a(200, codedOutputStream);
            codedOutputStream.d(this.q);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<p> b() {
            return f37084a;
        }

        public final int c() {
            return this.f37085b.size();
        }

        public final boolean d() {
            return (this.s & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.t;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < c(); i++) {
                if (!this.f37085b.get(i).e()) {
                    this.t = (byte) 0;
                    return false;
                }
            }
            if (k() && !this.e.e()) {
                this.t = (byte) 0;
                return false;
            } else if (q() && !this.k.e()) {
                this.t = (byte) 0;
                return false;
            } else if (s() && !this.m.e()) {
                this.t = (byte) 0;
                return false;
            } else if (!x()) {
                this.t = (byte) 0;
                return false;
            } else {
                this.t = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.u;
            if (i != -1) {
                return i;
            }
            int c2 = (this.s & 4096) == 4096 ? CodedOutputStream.c(1, this.o) + 0 : 0;
            for (int i2 = 0; i2 < this.f37085b.size(); i2++) {
                c2 += CodedOutputStream.c(2, this.f37085b.get(i2));
            }
            int i3 = c2;
            if ((this.s & 1) == 1) {
                i3 = c2 + CodedOutputStream.d(3) + 1;
            }
            int i4 = i3;
            if ((this.s & 2) == 2) {
                i4 = i3 + CodedOutputStream.c(4, this.f37087d);
            }
            int i5 = i4;
            if ((this.s & 4) == 4) {
                i5 = i4 + CodedOutputStream.c(5, this.e);
            }
            int i6 = i5;
            if ((this.s & 16) == 16) {
                i6 = i5 + CodedOutputStream.c(6, this.g);
            }
            int i7 = i6;
            if ((this.s & 32) == 32) {
                i7 = i6 + CodedOutputStream.c(7, this.h);
            }
            int i8 = i7;
            if ((this.s & 8) == 8) {
                i8 = i7 + CodedOutputStream.c(8, this.f);
            }
            int i9 = i8;
            if ((this.s & 64) == 64) {
                i9 = i8 + CodedOutputStream.c(9, this.i);
            }
            int i10 = i9;
            if ((this.s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                i10 = i9 + CodedOutputStream.c(10, this.k);
            }
            int i11 = i10;
            if ((this.s & 512) == 512) {
                i11 = i10 + CodedOutputStream.c(11, this.l);
            }
            int i12 = i11;
            if ((this.s & 128) == 128) {
                i12 = i11 + CodedOutputStream.c(12, this.j);
            }
            int i13 = i12;
            if ((this.s & 1024) == 1024) {
                i13 = i12 + CodedOutputStream.c(13, this.m);
            }
            int i14 = i13;
            if ((this.s & 2048) == 2048) {
                i14 = i13 + CodedOutputStream.c(14, this.n);
            }
            int z = i14 + z() + this.q.a();
            this.u = z;
            return z;
        }

        public final boolean g() {
            return (this.s & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* bridge */ /* synthetic */ p.a i() {
            return b.i();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return p;
        }

        public final boolean k() {
            return (this.s & 4) == 4;
        }

        public final boolean l() {
            return (this.s & 8) == 8;
        }

        public final boolean m() {
            return (this.s & 16) == 16;
        }

        public final boolean n() {
            return (this.s & 32) == 32;
        }

        public final boolean o() {
            return (this.s & 64) == 64;
        }

        public final boolean p() {
            return (this.s & 128) == 128;
        }

        public final boolean q() {
            return (this.s & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256;
        }

        public final boolean r() {
            return (this.s & 512) == 512;
        }

        public final boolean s() {
            return (this.s & 1024) == 1024;
        }

        public final boolean t() {
            return (this.s & 2048) == 2048;
        }

        public final boolean u() {
            return (this.s & 4096) == 4096;
        }

        /* renamed from: v */
        public final b h() {
            return b.i().a(this);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$q.class */
    public static final class q extends h.c<q> implements kotlin.reflect.jvm.internal.impl.b.s {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<q> f37098a = new kotlin.reflect.jvm.internal.impl.protobuf.b<q>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.q.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new q(eVar, fVar);
            }
        };
        private static final q k;

        /* renamed from: b  reason: collision with root package name */
        public int f37099b;

        /* renamed from: c  reason: collision with root package name */
        public int f37100c;

        /* renamed from: d  reason: collision with root package name */
        public List<r> f37101d;
        public p e;
        public int f;
        public p g;
        public int h;
        public List<C0625a> i;
        public List<Integer> j;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d l;
        private int m;
        private byte n;
        private int o;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$q$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$q$a.class */
        public static final class C0648a extends h.b<q, C0648a> implements kotlin.reflect.jvm.internal.impl.b.s {

            /* renamed from: b  reason: collision with root package name */
            private int f37102b;

            /* renamed from: d  reason: collision with root package name */
            private int f37104d;
            private int g;
            private int i;

            /* renamed from: c  reason: collision with root package name */
            private int f37103c = 6;
            private List<r> e = Collections.emptyList();
            private p f = p.a();
            private p h = p.a();
            private List<C0625a> j = Collections.emptyList();
            private List<Integer> k = Collections.emptyList();

            private C0648a() {
            }

            private C0648a a(int i) {
                this.f37102b |= 1;
                this.f37103c = i;
                return this;
            }

            private C0648a a(p pVar) {
                if ((this.f37102b & 8) != 8 || this.f == p.a()) {
                    this.f = pVar;
                } else {
                    this.f = p.a(this.f).a(pVar).h();
                }
                this.f37102b |= 8;
                return this;
            }

            private C0648a b(int i) {
                this.f37102b |= 2;
                this.f37104d = i;
                return this;
            }

            private C0648a b(p pVar) {
                if ((this.f37102b & 32) != 32 || this.h == p.a()) {
                    this.h = pVar;
                } else {
                    this.h = p.a(this.h).a(pVar).h();
                }
                this.f37102b |= 32;
                return this;
            }

            private C0648a c(int i) {
                this.f37102b |= 16;
                this.g = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.q.C0648a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$q> r0 = kotlin.reflect.jvm.internal.impl.b.a.q.f37098a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$q r0 = (kotlin.reflect.jvm.internal.impl.b.a.q) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$q$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$q r0 = (kotlin.reflect.jvm.internal.impl.b.a.q) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$q$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.q.C0648a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$q$a");
            }

            private C0648a d(int i) {
                this.f37102b |= 64;
                this.i = i;
                return this;
            }

            static /* synthetic */ C0648a g() {
                return new C0648a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0648a f() {
                return new C0648a().a(i());
            }

            private q i() {
                q qVar = new q(this);
                int i = this.f37102b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                qVar.f37099b = this.f37103c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                qVar.f37100c = this.f37104d;
                if ((this.f37102b & 4) == 4) {
                    this.e = Collections.unmodifiableList(this.e);
                    this.f37102b &= -5;
                }
                qVar.f37101d = this.e;
                int i4 = i3;
                if ((i & 8) == 8) {
                    i4 = i3 | 4;
                }
                qVar.e = this.f;
                int i5 = i4;
                if ((i & 16) == 16) {
                    i5 = i4 | 8;
                }
                qVar.f = this.g;
                int i6 = i5;
                if ((i & 32) == 32) {
                    i6 = i5 | 16;
                }
                qVar.g = this.h;
                int i7 = i6;
                if ((i & 64) == 64) {
                    i7 = i6 | 32;
                }
                qVar.h = this.i;
                if ((this.f37102b & 128) == 128) {
                    this.j = Collections.unmodifiableList(this.j);
                    this.f37102b &= -129;
                }
                qVar.i = this.j;
                if ((this.f37102b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) == 256) {
                    this.k = Collections.unmodifiableList(this.k);
                    this.f37102b &= -257;
                }
                qVar.j = this.k;
                qVar.m = i7;
                return qVar;
            }

            private void l() {
                if ((this.f37102b & 4) != 4) {
                    this.e = new ArrayList(this.e);
                    this.f37102b |= 4;
                }
            }

            private void m() {
                if ((this.f37102b & 128) != 128) {
                    this.j = new ArrayList(this.j);
                    this.f37102b |= 128;
                }
            }

            private void n() {
                if ((this.f37102b & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 256) {
                    this.k = new ArrayList(this.k);
                    this.f37102b |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
            }

            public final C0648a a(q qVar) {
                if (qVar == q.a()) {
                    return this;
                }
                if (qVar.c()) {
                    a(qVar.f37099b);
                }
                if (qVar.d()) {
                    b(qVar.f37100c);
                }
                if (!qVar.f37101d.isEmpty()) {
                    if (this.e.isEmpty()) {
                        this.e = qVar.f37101d;
                        this.f37102b &= -5;
                    } else {
                        l();
                        this.e.addAll(qVar.f37101d);
                    }
                }
                if (qVar.g()) {
                    a(qVar.e);
                }
                if (qVar.k()) {
                    c(qVar.f);
                }
                if (qVar.l()) {
                    b(qVar.g);
                }
                if (qVar.m()) {
                    d(qVar.h);
                }
                if (!qVar.i.isEmpty()) {
                    if (this.j.isEmpty()) {
                        this.j = qVar.i;
                        this.f37102b &= -129;
                    } else {
                        m();
                        this.j.addAll(qVar.i);
                    }
                }
                if (!qVar.j.isEmpty()) {
                    if (this.k.isEmpty()) {
                        this.k = qVar.j;
                        this.f37102b &= -257;
                    } else {
                        n();
                        this.k.addAll(qVar.j);
                    }
                }
                a((C0648a) qVar);
                this.f38138a = this.f38138a.a(qVar.l);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return q.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                q i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                if (!((this.f37102b & 2) == 2)) {
                    return false;
                }
                for (int i = 0; i < this.e.size(); i++) {
                    if (!this.e.get(i).e()) {
                        return false;
                    }
                }
                if (((this.f37102b & 8) == 8) && !this.f.e()) {
                    return false;
                }
                if (((this.f37102b & 32) == 32) && !this.h.e()) {
                    return false;
                }
                for (int i2 = 0; i2 < this.j.size(); i2++) {
                    if (!this.j.get(i2).e()) {
                        return false;
                    }
                }
                return k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return q.a();
            }
        }

        static {
            q qVar = new q(true);
            k = qVar;
            qVar.n();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private q(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.n = (byte) (-1);
            this.o = -1;
            n();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        p.b bVar = null;
                        p.b bVar2 = null;
                        switch (a3) {
                            case 0:
                                break;
                            case 8:
                                this.m |= 1;
                                this.f37099b = eVar.d();
                                continue;
                            case 16:
                                this.m |= 2;
                                this.f37100c = eVar.d();
                                continue;
                            case 26:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.f37101d = new ArrayList();
                                    z2 |= true;
                                }
                                this.f37101d.add(eVar.a(r.f37105a, fVar));
                                continue;
                            case 34:
                                bVar = (this.m & 4) == 4 ? this.e.h() : bVar;
                                p pVar = (p) eVar.a(p.f37084a, fVar);
                                this.e = pVar;
                                if (bVar != null) {
                                    bVar.a(pVar);
                                    this.e = bVar.h();
                                }
                                this.m |= 4;
                                continue;
                            case 40:
                                this.m |= 8;
                                this.f = eVar.d();
                                continue;
                            case 50:
                                bVar2 = (this.m & 16) == 16 ? this.g.h() : bVar2;
                                p pVar2 = (p) eVar.a(p.f37084a, fVar);
                                this.g = pVar2;
                                if (bVar2 != null) {
                                    bVar2.a(pVar2);
                                    this.g = bVar2.h();
                                }
                                this.m |= 16;
                                continue;
                            case 56:
                                this.m |= 32;
                                this.h = eVar.d();
                                continue;
                            case 66:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.i = new ArrayList();
                                    z2 |= true;
                                }
                                this.i.add(eVar.a(C0625a.f36972a, fVar));
                                continue;
                            case 248:
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.j = new ArrayList();
                                    z2 |= true;
                                }
                                this.j.add(Integer.valueOf(eVar.d()));
                                continue;
                            case 250:
                                int b2 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.j = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.j.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b2);
                                continue;
                            default:
                                if (!a(eVar, a2, fVar, a3)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.f37101d = Collections.unmodifiableList(this.f37101d);
                        }
                        if (z2 & true) {
                            this.i = Collections.unmodifiableList(this.i);
                        }
                        if (z2 & true) {
                            this.j = Collections.unmodifiableList(this.j);
                        }
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.l = h.a();
                            throw th2;
                        }
                        this.l = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f37101d = Collections.unmodifiableList(this.f37101d);
            }
            if (z2 & true) {
                this.i = Collections.unmodifiableList(this.i);
            }
            if (z2 & true) {
                this.j = Collections.unmodifiableList(this.j);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.l = h.a();
                throw th3;
            }
            this.l = h.a();
            w();
        }

        private q(h.b<q, ?> bVar) {
            super(bVar);
            this.n = (byte) (-1);
            this.o = -1;
            this.l = bVar.f38138a;
        }

        private q(boolean z) {
            this.n = (byte) (-1);
            this.o = -1;
            this.l = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static q a() {
            return k;
        }

        public static q a(InputStream inputStream, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws IOException {
            return f37098a.a(inputStream, fVar);
        }

        private void n() {
            this.f37099b = 6;
            this.f37100c = 0;
            this.f37101d = Collections.emptyList();
            this.e = p.a();
            this.f = 0;
            this.g = p.a();
            this.h = 0;
            this.i = Collections.emptyList();
            this.j = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.m & 1) == 1) {
                codedOutputStream.a(1, this.f37099b);
            }
            if ((this.m & 2) == 2) {
                codedOutputStream.a(2, this.f37100c);
            }
            for (int i = 0; i < this.f37101d.size(); i++) {
                codedOutputStream.a(3, this.f37101d.get(i));
            }
            if ((this.m & 4) == 4) {
                codedOutputStream.a(4, this.e);
            }
            if ((this.m & 8) == 8) {
                codedOutputStream.a(5, this.f);
            }
            if ((this.m & 16) == 16) {
                codedOutputStream.a(6, this.g);
            }
            if ((this.m & 32) == 32) {
                codedOutputStream.a(7, this.h);
            }
            for (int i2 = 0; i2 < this.i.size(); i2++) {
                codedOutputStream.a(8, this.i.get(i2));
            }
            for (int i3 = 0; i3 < this.j.size(); i3++) {
                codedOutputStream.a(31, this.j.get(i3).intValue());
            }
            y.a(200, codedOutputStream);
            codedOutputStream.d(this.l);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<q> b() {
            return f37098a;
        }

        public final boolean c() {
            return (this.m & 1) == 1;
        }

        public final boolean d() {
            return (this.m & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.n;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!d()) {
                this.n = (byte) 0;
                return false;
            }
            for (int i = 0; i < this.f37101d.size(); i++) {
                if (!this.f37101d.get(i).e()) {
                    this.n = (byte) 0;
                    return false;
                }
            }
            if (g() && !this.e.e()) {
                this.n = (byte) 0;
                return false;
            } else if (!l() || this.g.e()) {
                for (int i2 = 0; i2 < this.i.size(); i2++) {
                    if (!this.i.get(i2).e()) {
                        this.n = (byte) 0;
                        return false;
                    }
                }
                if (!x()) {
                    this.n = (byte) 0;
                    return false;
                }
                this.n = (byte) 1;
                return true;
            } else {
                this.n = (byte) 0;
                return false;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.o;
            if (i != -1) {
                return i;
            }
            int c2 = (this.m & 1) == 1 ? CodedOutputStream.c(1, this.f37099b) + 0 : 0;
            int i2 = c2;
            if ((this.m & 2) == 2) {
                i2 = c2 + CodedOutputStream.c(2, this.f37100c);
            }
            for (int i3 = 0; i3 < this.f37101d.size(); i3++) {
                i2 += CodedOutputStream.c(3, this.f37101d.get(i3));
            }
            int i4 = i2;
            if ((this.m & 4) == 4) {
                i4 = i2 + CodedOutputStream.c(4, this.e);
            }
            int i5 = i4;
            if ((this.m & 8) == 8) {
                i5 = i4 + CodedOutputStream.c(5, this.f);
            }
            int i6 = i5;
            if ((this.m & 16) == 16) {
                i6 = i5 + CodedOutputStream.c(6, this.g);
            }
            int i7 = i6;
            if ((this.m & 32) == 32) {
                i7 = i6 + CodedOutputStream.c(7, this.h);
            }
            for (int i8 = 0; i8 < this.i.size(); i8++) {
                i7 += CodedOutputStream.c(8, this.i.get(i8));
            }
            int i9 = 0;
            for (int i10 = 0; i10 < this.j.size(); i10++) {
                i9 += CodedOutputStream.c(this.j.get(i10).intValue());
            }
            int size = i7 + i9 + (this.j.size() * 2) + z() + this.l.a();
            this.o = size;
            return size;
        }

        public final boolean g() {
            return (this.m & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0648a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0648a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return k;
        }

        public final boolean k() {
            return (this.m & 8) == 8;
        }

        public final boolean l() {
            return (this.m & 16) == 16;
        }

        public final boolean m() {
            return (this.m & 32) == 32;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$r.class */
    public static final class r extends h.c<r> implements kotlin.reflect.jvm.internal.impl.b.u {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<r> f37105a = new kotlin.reflect.jvm.internal.impl.protobuf.b<r>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.r.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new r(eVar, fVar);
            }
        };
        private static final r h;

        /* renamed from: b  reason: collision with root package name */
        public int f37106b;

        /* renamed from: c  reason: collision with root package name */
        public int f37107c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f37108d;
        public b e;
        public List<p> f;
        public List<Integer> g;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d i;
        private int j;
        private int k;
        private byte l;
        private int m;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$r$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$r$a.class */
        public static final class C0649a extends h.b<r, C0649a> implements kotlin.reflect.jvm.internal.impl.b.u {

            /* renamed from: b  reason: collision with root package name */
            private int f37109b;

            /* renamed from: c  reason: collision with root package name */
            private int f37110c;

            /* renamed from: d  reason: collision with root package name */
            private int f37111d;
            private boolean e;
            private b f = b.INV;
            private List<p> g = Collections.emptyList();
            private List<Integer> h = Collections.emptyList();

            private C0649a() {
            }

            private C0649a a(int i) {
                this.f37109b |= 1;
                this.f37110c = i;
                return this;
            }

            private C0649a a(b bVar) {
                Objects.requireNonNull(bVar);
                this.f37109b |= 8;
                this.f = bVar;
                return this;
            }

            private C0649a a(boolean z) {
                this.f37109b |= 4;
                this.e = z;
                return this;
            }

            private C0649a b(int i) {
                this.f37109b |= 2;
                this.f37111d = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.r.C0649a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$r> r0 = kotlin.reflect.jvm.internal.impl.b.a.r.f37105a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$r r0 = (kotlin.reflect.jvm.internal.impl.b.a.r) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$r$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$r r0 = (kotlin.reflect.jvm.internal.impl.b.a.r) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$r$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.r.C0649a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$r$a");
            }

            static /* synthetic */ C0649a g() {
                return new C0649a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0649a f() {
                return new C0649a().a(i());
            }

            private r i() {
                r rVar = new r(this);
                int i = this.f37109b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                rVar.f37106b = this.f37110c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                rVar.f37107c = this.f37111d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                rVar.f37108d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                rVar.e = this.f;
                if ((this.f37109b & 16) == 16) {
                    this.g = Collections.unmodifiableList(this.g);
                    this.f37109b &= -17;
                }
                rVar.f = this.g;
                if ((this.f37109b & 32) == 32) {
                    this.h = Collections.unmodifiableList(this.h);
                    this.f37109b &= -33;
                }
                rVar.g = this.h;
                rVar.j = i5;
                return rVar;
            }

            private void l() {
                if ((this.f37109b & 16) != 16) {
                    this.g = new ArrayList(this.g);
                    this.f37109b |= 16;
                }
            }

            private void m() {
                if ((this.f37109b & 32) != 32) {
                    this.h = new ArrayList(this.h);
                    this.f37109b |= 32;
                }
            }

            public final C0649a a(r rVar) {
                if (rVar == r.a()) {
                    return this;
                }
                if (rVar.c()) {
                    a(rVar.f37106b);
                }
                if (rVar.d()) {
                    b(rVar.f37107c);
                }
                if (rVar.g()) {
                    a(rVar.f37108d);
                }
                if (rVar.k()) {
                    a(rVar.e);
                }
                if (!rVar.f.isEmpty()) {
                    if (this.g.isEmpty()) {
                        this.g = rVar.f;
                        this.f37109b &= -17;
                    } else {
                        l();
                        this.g.addAll(rVar.f);
                    }
                }
                if (!rVar.g.isEmpty()) {
                    if (this.h.isEmpty()) {
                        this.h = rVar.g;
                        this.f37109b &= -33;
                    } else {
                        m();
                        this.h.addAll(rVar.g);
                    }
                }
                a((C0649a) rVar);
                this.f38138a = this.f38138a.a(rVar.i);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return r.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                r i = i();
                if (i.e()) {
                    return i;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                int i = this.f37109b;
                if (!((i & 1) == 1)) {
                    return false;
                }
                if (!((i & 2) == 2)) {
                    return false;
                }
                for (int i2 = 0; i2 < this.g.size(); i2++) {
                    if (!this.g.get(i2).e()) {
                        return false;
                    }
                }
                return k();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return r.a();
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$r$b.class */
        public enum b implements j.a {
            IN(0, 0),
            OUT(1, 1),
            INV(2, 2);
            
            private static j.b<b> internalValueMap = new j.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.r.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ b a(int i) {
                    return b.valueOf(i);
                }
            };
            private final int value;

            b(int i, int i2) {
                this.value = i2;
            }

            public static b valueOf(int i) {
                if (i == 0) {
                    return IN;
                }
                if (i == 1) {
                    return OUT;
                }
                if (i != 2) {
                    return null;
                }
                return INV;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            r rVar = new r(true);
            h = rVar;
            rVar.l();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private r(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.k = -1;
            this.l = (byte) (-1);
            this.m = -1;
            l();
            d.b h2 = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h2, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                this.j |= 1;
                                this.f37106b = eVar.d();
                            } else if (a3 == 16) {
                                this.j |= 2;
                                this.f37107c = eVar.d();
                            } else if (a3 == 24) {
                                this.j |= 4;
                                this.f37108d = eVar.b();
                            } else if (a3 == 32) {
                                int d2 = eVar.d();
                                b valueOf = b.valueOf(d2);
                                if (valueOf == null) {
                                    a2.e(a3);
                                    a2.e(d2);
                                } else {
                                    this.j |= 8;
                                    this.e = valueOf;
                                }
                            } else if (a3 == 42) {
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.f = new ArrayList();
                                    z2 |= true;
                                }
                                this.f.add(eVar.a(p.f37084a, fVar));
                            } else if (a3 == 48) {
                                z2 = z2;
                                if (!(z2 & true)) {
                                    this.g = new ArrayList();
                                    z2 |= true;
                                }
                                this.g.add(Integer.valueOf(eVar.d()));
                            } else if (a3 == 50) {
                                int b2 = eVar.b(eVar.d());
                                z2 = z2;
                                if (!(z2 & true)) {
                                    z2 = z2;
                                    if (eVar.h() > 0) {
                                        this.g = new ArrayList();
                                        z2 |= true;
                                    }
                                }
                                while (eVar.h() > 0) {
                                    this.g.add(Integer.valueOf(eVar.d()));
                                }
                                eVar.c(b2);
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.f = Collections.unmodifiableList(this.f);
                        }
                        if (z2 & true) {
                            this.g = Collections.unmodifiableList(this.g);
                        }
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.i = h2.a();
                            throw th2;
                        }
                        this.i = h2.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            if (z2 & true) {
                this.f = Collections.unmodifiableList(this.f);
            }
            if (z2 & true) {
                this.g = Collections.unmodifiableList(this.g);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.i = h2.a();
                throw th3;
            }
            this.i = h2.a();
            w();
        }

        private r(h.b<r, ?> bVar) {
            super(bVar);
            this.k = -1;
            this.l = (byte) (-1);
            this.m = -1;
            this.i = bVar.f38138a;
        }

        private r(boolean z) {
            this.k = -1;
            this.l = (byte) (-1);
            this.m = -1;
            this.i = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static r a() {
            return h;
        }

        private void l() {
            this.f37106b = 0;
            this.f37107c = 0;
            this.f37108d = false;
            this.e = b.INV;
            this.f = Collections.emptyList();
            this.g = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.j & 1) == 1) {
                codedOutputStream.a(1, this.f37106b);
            }
            if ((this.j & 2) == 2) {
                codedOutputStream.a(2, this.f37107c);
            }
            if ((this.j & 4) == 4) {
                codedOutputStream.a(this.f37108d);
            }
            if ((this.j & 8) == 8) {
                codedOutputStream.b(4, this.e.getNumber());
            }
            for (int i = 0; i < this.f.size(); i++) {
                codedOutputStream.a(5, this.f.get(i));
            }
            int i2 = 0;
            if (this.g.size() > 0) {
                codedOutputStream.e(50);
                codedOutputStream.e(this.k);
                i2 = 0;
            }
            while (i2 < this.g.size()) {
                codedOutputStream.a(this.g.get(i2).intValue());
                i2++;
            }
            y.a(1000, codedOutputStream);
            codedOutputStream.d(this.i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<r> b() {
            return f37105a;
        }

        public final boolean c() {
            return (this.j & 1) == 1;
        }

        public final boolean d() {
            return (this.j & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.l;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!c()) {
                this.l = (byte) 0;
                return false;
            } else if (!d()) {
                this.l = (byte) 0;
                return false;
            } else {
                for (int i = 0; i < this.f.size(); i++) {
                    if (!this.f.get(i).e()) {
                        this.l = (byte) 0;
                        return false;
                    }
                }
                if (!x()) {
                    this.l = (byte) 0;
                    return false;
                }
                this.l = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.m;
            if (i != -1) {
                return i;
            }
            int c2 = (this.j & 1) == 1 ? CodedOutputStream.c(1, this.f37106b) + 0 : 0;
            int i2 = c2;
            if ((this.j & 2) == 2) {
                i2 = c2 + CodedOutputStream.c(2, this.f37107c);
            }
            int i3 = i2;
            if ((this.j & 4) == 4) {
                i3 = i2 + CodedOutputStream.d(3) + 1;
            }
            int i4 = i3;
            if ((this.j & 8) == 8) {
                i4 = i3 + CodedOutputStream.d(4, this.e.getNumber());
            }
            for (int i5 = 0; i5 < this.f.size(); i5++) {
                i4 += CodedOutputStream.c(5, this.f.get(i5));
            }
            int i6 = 0;
            for (int i7 = 0; i7 < this.g.size(); i7++) {
                i6 += CodedOutputStream.c(this.g.get(i7).intValue());
            }
            int i8 = i4 + i6;
            int i9 = i8;
            if (!this.g.isEmpty()) {
                i9 = i8 + 1 + CodedOutputStream.c(i6);
            }
            this.k = i6;
            int z = i9 + z() + this.i.a();
            this.m = z;
            return z;
        }

        public final boolean g() {
            return (this.j & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0649a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0649a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return h;
        }

        public final boolean k() {
            return (this.j & 8) == 8;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$s.class */
    public static final class s extends kotlin.reflect.jvm.internal.impl.protobuf.h implements kotlin.reflect.jvm.internal.impl.b.v {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<s> f37112a = new kotlin.reflect.jvm.internal.impl.protobuf.b<s>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.s.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new s(eVar, fVar);
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private static final s f37113d;

        /* renamed from: b  reason: collision with root package name */
        public List<p> f37114b;

        /* renamed from: c  reason: collision with root package name */
        public int f37115c;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
        private int f;
        private byte g;
        private int h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$s$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$s$a.class */
        public static final class C0650a extends h.a<s, C0650a> implements kotlin.reflect.jvm.internal.impl.b.v {

            /* renamed from: b  reason: collision with root package name */
            private int f37116b;

            /* renamed from: c  reason: collision with root package name */
            private List<p> f37117c = Collections.emptyList();

            /* renamed from: d  reason: collision with root package name */
            private int f37118d = -1;

            private C0650a() {
            }

            private C0650a a(int i) {
                this.f37116b |= 2;
                this.f37118d = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.s.C0650a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$s> r0 = kotlin.reflect.jvm.internal.impl.b.a.s.f37112a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$s r0 = (kotlin.reflect.jvm.internal.impl.b.a.s) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$s$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$s r0 = (kotlin.reflect.jvm.internal.impl.b.a.s) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$s$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.s.C0650a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$s$a");
            }

            static /* synthetic */ C0650a g() {
                return new C0650a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0650a clone() {
                return new C0650a().a(f());
            }

            private void i() {
                if ((this.f37116b & 1) != 1) {
                    this.f37117c = new ArrayList(this.f37117c);
                    this.f37116b |= 1;
                }
            }

            public final C0650a a(s sVar) {
                if (sVar == s.a()) {
                    return this;
                }
                if (!sVar.f37114b.isEmpty()) {
                    if (this.f37117c.isEmpty()) {
                        this.f37117c = sVar.f37114b;
                        this.f37116b &= -2;
                    } else {
                        i();
                        this.f37117c.addAll(sVar.f37114b);
                    }
                }
                if (sVar.c()) {
                    a(sVar.f37115c);
                }
                this.f38138a = this.f38138a.a(sVar.e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ s a() {
                return s.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                s f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                for (int i = 0; i < this.f37117c.size(); i++) {
                    if (!this.f37117c.get(i).e()) {
                        return false;
                    }
                }
                return true;
            }

            public final s f() {
                s sVar = new s(this);
                int i = this.f37116b;
                int i2 = 1;
                if ((i & 1) == 1) {
                    this.f37117c = Collections.unmodifiableList(this.f37117c);
                    this.f37116b &= -2;
                }
                sVar.f37114b = this.f37117c;
                if ((i & 2) != 2) {
                    i2 = 0;
                }
                sVar.f37115c = this.f37118d;
                sVar.f = i2;
                return sVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return s.a();
            }
        }

        static {
            s sVar = new s(true);
            f37113d = sVar;
            sVar.d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private s(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.g = (byte) (-1);
            this.h = -1;
            d();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 10) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f37114b = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37114b.add(eVar.a(p.f37084a, fVar));
                                } else if (a3 == 16) {
                                    this.f |= 1;
                                    this.f37115c = eVar.d();
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37114b = Collections.unmodifiableList(this.f37114b);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.e = h.a();
                        throw th2;
                    }
                    this.e = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37114b = Collections.unmodifiableList(this.f37114b);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.e = h.a();
                throw th3;
            }
            this.e = h.a();
            w();
        }

        private s(h.a aVar) {
            super(aVar);
            this.g = (byte) (-1);
            this.h = -1;
            this.e = aVar.f38138a;
        }

        private s(boolean z) {
            this.g = (byte) (-1);
            this.h = -1;
            this.e = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0650a a(s sVar) {
            return C0650a.g().a(sVar);
        }

        public static s a() {
            return f37113d;
        }

        private void d() {
            this.f37114b = Collections.emptyList();
            this.f37115c = -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            for (int i = 0; i < this.f37114b.size(); i++) {
                codedOutputStream.a(1, this.f37114b.get(i));
            }
            if ((this.f & 1) == 1) {
                codedOutputStream.a(2, this.f37115c);
            }
            codedOutputStream.d(this.e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<s> b() {
            return f37112a;
        }

        public final boolean c() {
            return (this.f & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.g;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            for (int i = 0; i < this.f37114b.size(); i++) {
                if (!this.f37114b.get(i).e()) {
                    this.g = (byte) 0;
                    return false;
                }
            }
            this.g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f37114b.size(); i3++) {
                i2 += CodedOutputStream.c(1, this.f37114b.get(i3));
            }
            int i4 = i2;
            if ((this.f & 1) == 1) {
                i4 = i2 + CodedOutputStream.c(2, this.f37115c);
            }
            int a2 = i4 + this.e.a();
            this.h = a2;
            return a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0650a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0650a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f37113d;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$t.class */
    public static final class t extends h.c<t> implements kotlin.reflect.jvm.internal.impl.b.w {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<t> f37119a = new kotlin.reflect.jvm.internal.impl.protobuf.b<t>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.t.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new t(eVar, fVar);
            }
        };
        private static final t h;

        /* renamed from: b  reason: collision with root package name */
        public int f37120b;

        /* renamed from: c  reason: collision with root package name */
        public int f37121c;

        /* renamed from: d  reason: collision with root package name */
        public p f37122d;
        public int e;
        public p f;
        public int g;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d i;
        private int j;
        private byte k;
        private int l;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$t$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$t$a.class */
        public static final class C0651a extends h.b<t, C0651a> implements kotlin.reflect.jvm.internal.impl.b.w {

            /* renamed from: b  reason: collision with root package name */
            private int f37123b;

            /* renamed from: c  reason: collision with root package name */
            private int f37124c;

            /* renamed from: d  reason: collision with root package name */
            private int f37125d;
            private int f;
            private int h;
            private p e = p.a();
            private p g = p.a();

            private C0651a() {
            }

            private C0651a a(int i) {
                this.f37123b |= 1;
                this.f37124c = i;
                return this;
            }

            private C0651a a(p pVar) {
                if ((this.f37123b & 4) != 4 || this.e == p.a()) {
                    this.e = pVar;
                } else {
                    this.e = p.a(this.e).a(pVar).h();
                }
                this.f37123b |= 4;
                return this;
            }

            private C0651a b(int i) {
                this.f37123b |= 2;
                this.f37125d = i;
                return this;
            }

            private C0651a b(p pVar) {
                if ((this.f37123b & 16) != 16 || this.g == p.a()) {
                    this.g = pVar;
                } else {
                    this.g = p.a(this.g).a(pVar).h();
                }
                this.f37123b |= 16;
                return this;
            }

            private C0651a c(int i) {
                this.f37123b |= 8;
                this.f = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.t.C0651a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$t> r0 = kotlin.reflect.jvm.internal.impl.b.a.t.f37119a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$t r0 = (kotlin.reflect.jvm.internal.impl.b.a.t) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$t$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r5
                    r6 = r0
                    goto L_0x002c
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$t r0 = (kotlin.reflect.jvm.internal.impl.b.a.t) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                    r0 = r5
                    r7 = r0
                L_0x002c:
                    r0 = r7
                    if (r0 == 0) goto L_0x0036
                    r0 = r4
                    r1 = r7
                    kotlin.reflect.jvm.internal.impl.b.a$t$a r0 = r0.a(r1)
                L_0x0036:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.t.C0651a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$t$a");
            }

            private C0651a d(int i) {
                this.f37123b |= 32;
                this.h = i;
                return this;
            }

            static /* synthetic */ C0651a h() {
                return new C0651a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: i */
            public C0651a f() {
                return new C0651a().a(g());
            }

            public final C0651a a(t tVar) {
                if (tVar == t.a()) {
                    return this;
                }
                if (tVar.c()) {
                    a(tVar.f37120b);
                }
                if (tVar.d()) {
                    b(tVar.f37121c);
                }
                if (tVar.g()) {
                    a(tVar.f37122d);
                }
                if (tVar.k()) {
                    c(tVar.e);
                }
                if (tVar.l()) {
                    b(tVar.f);
                }
                if (tVar.m()) {
                    d(tVar.g);
                }
                a((C0651a) tVar);
                this.f38138a = this.f38138a.a(tVar.i);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.h a() {
                return t.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                t g = g();
                if (g.e()) {
                    return g;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) g);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                int i = this.f37123b;
                if (!((i & 2) == 2)) {
                    return false;
                }
                if (((i & 4) == 4) && !this.e.e()) {
                    return false;
                }
                return (!((this.f37123b & 16) == 16) || this.g.e()) && k();
            }

            public final t g() {
                t tVar = new t(this);
                int i = this.f37123b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                tVar.f37120b = this.f37124c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                tVar.f37121c = this.f37125d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                tVar.f37122d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                tVar.e = this.f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                tVar.f = this.g;
                int i7 = i6;
                if ((i & 32) == 32) {
                    i7 = i6 | 32;
                }
                tVar.g = this.h;
                tVar.j = i7;
                return tVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return t.a();
            }
        }

        static {
            t tVar = new t(true);
            h = tVar;
            tVar.n();
        }

        private t(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.k = (byte) (-1);
            this.l = -1;
            n();
            d.b h2 = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h2, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                this.j |= 1;
                                this.f37120b = eVar.d();
                            } else if (a3 != 16) {
                                p.b bVar = null;
                                p.b bVar2 = null;
                                if (a3 == 26) {
                                    bVar = (this.j & 4) == 4 ? this.f37122d.h() : bVar;
                                    p pVar = (p) eVar.a(p.f37084a, fVar);
                                    this.f37122d = pVar;
                                    if (bVar != null) {
                                        bVar.a(pVar);
                                        this.f37122d = bVar.h();
                                    }
                                    this.j |= 4;
                                } else if (a3 == 34) {
                                    bVar2 = (this.j & 16) == 16 ? this.f.h() : bVar2;
                                    p pVar2 = (p) eVar.a(p.f37084a, fVar);
                                    this.f = pVar2;
                                    if (bVar2 != null) {
                                        bVar2.a(pVar2);
                                        this.f = bVar2.h();
                                    }
                                    this.j |= 16;
                                } else if (a3 == 40) {
                                    this.j |= 8;
                                    this.e = eVar.d();
                                } else if (a3 == 48) {
                                    this.j |= 32;
                                    this.g = eVar.d();
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            } else {
                                this.j |= 2;
                                this.f37121c = eVar.d();
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        e.f38108a = this;
                        throw e;
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.i = h2.a();
                        throw th2;
                    }
                    this.i = h2.a();
                    w();
                    throw th;
                }
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.i = h2.a();
                throw th3;
            }
            this.i = h2.a();
            w();
        }

        private t(h.b<t, ?> bVar) {
            super(bVar);
            this.k = (byte) (-1);
            this.l = -1;
            this.i = bVar.f38138a;
        }

        private t(boolean z) {
            this.k = (byte) (-1);
            this.l = -1;
            this.i = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0651a a(t tVar) {
            return C0651a.h().a(tVar);
        }

        public static t a() {
            return h;
        }

        private void n() {
            this.f37120b = 0;
            this.f37121c = 0;
            this.f37122d = p.a();
            this.e = 0;
            this.f = p.a();
            this.g = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            h.c<MessageType>.a y = y();
            if ((this.j & 1) == 1) {
                codedOutputStream.a(1, this.f37120b);
            }
            if ((this.j & 2) == 2) {
                codedOutputStream.a(2, this.f37121c);
            }
            if ((this.j & 4) == 4) {
                codedOutputStream.a(3, this.f37122d);
            }
            if ((this.j & 16) == 16) {
                codedOutputStream.a(4, this.f);
            }
            if ((this.j & 8) == 8) {
                codedOutputStream.a(5, this.e);
            }
            if ((this.j & 32) == 32) {
                codedOutputStream.a(6, this.g);
            }
            y.a(200, codedOutputStream);
            codedOutputStream.d(this.i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<t> b() {
            return f37119a;
        }

        public final boolean c() {
            return (this.j & 1) == 1;
        }

        public final boolean d() {
            return (this.j & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.k;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!d()) {
                this.k = (byte) 0;
                return false;
            } else if (g() && !this.f37122d.e()) {
                this.k = (byte) 0;
                return false;
            } else if (l() && !this.f.e()) {
                this.k = (byte) 0;
                return false;
            } else if (!x()) {
                this.k = (byte) 0;
                return false;
            } else {
                this.k = (byte) 1;
                return true;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.l;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.j & 1) == 1) {
                i2 = 0 + CodedOutputStream.c(1, this.f37120b);
            }
            int i3 = i2;
            if ((this.j & 2) == 2) {
                i3 = i2 + CodedOutputStream.c(2, this.f37121c);
            }
            int i4 = i3;
            if ((this.j & 4) == 4) {
                i4 = i3 + CodedOutputStream.c(3, this.f37122d);
            }
            int i5 = i4;
            if ((this.j & 16) == 16) {
                i5 = i4 + CodedOutputStream.c(4, this.f);
            }
            int i6 = i5;
            if ((this.j & 8) == 8) {
                i6 = i5 + CodedOutputStream.c(5, this.e);
            }
            int i7 = i6;
            if ((this.j & 32) == 32) {
                i7 = i6 + CodedOutputStream.c(6, this.g);
            }
            int z = i7 + z() + this.i.a();
            this.l = z;
            return z;
        }

        public final boolean g() {
            return (this.j & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0651a.h().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0651a.h();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return h;
        }

        public final boolean k() {
            return (this.j & 8) == 8;
        }

        public final boolean l() {
            return (this.j & 16) == 16;
        }

        public final boolean m() {
            return (this.j & 32) == 32;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u.class */
    public static final class u extends kotlin.reflect.jvm.internal.impl.protobuf.h implements x {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<u> f37126a = new kotlin.reflect.jvm.internal.impl.protobuf.b<u>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.u.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new u(eVar, fVar);
            }
        };
        private static final u h;

        /* renamed from: b  reason: collision with root package name */
        public int f37127b;

        /* renamed from: c  reason: collision with root package name */
        public int f37128c;

        /* renamed from: d  reason: collision with root package name */
        public b f37129d;
        public int e;
        public int f;
        public c g;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d i;
        private int j;
        private byte k;
        private int l;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$u$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u$a.class */
        public static final class C0652a extends h.a<u, C0652a> implements x {

            /* renamed from: b  reason: collision with root package name */
            private int f37130b;

            /* renamed from: c  reason: collision with root package name */
            private int f37131c;

            /* renamed from: d  reason: collision with root package name */
            private int f37132d;
            private int f;
            private int g;
            private b e = b.ERROR;
            private c h = c.LANGUAGE_VERSION;

            private C0652a() {
            }

            private C0652a a(int i) {
                this.f37130b |= 1;
                this.f37131c = i;
                return this;
            }

            private C0652a a(b bVar) {
                Objects.requireNonNull(bVar);
                this.f37130b |= 4;
                this.e = bVar;
                return this;
            }

            private C0652a a(c cVar) {
                Objects.requireNonNull(cVar);
                this.f37130b |= 32;
                this.h = cVar;
                return this;
            }

            private C0652a b(int i) {
                this.f37130b |= 2;
                this.f37132d = i;
                return this;
            }

            private C0652a c(int i) {
                this.f37130b |= 8;
                this.f = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.u.C0652a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$u> r0 = kotlin.reflect.jvm.internal.impl.b.a.u.f37126a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$u r0 = (kotlin.reflect.jvm.internal.impl.b.a.u) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$u$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x002a
                L_0x001e:
                    r6 = move-exception
                    r0 = r6
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$u r0 = (kotlin.reflect.jvm.internal.impl.b.a.u) r0     // Catch: all -> 0x0018
                    r5 = r0
                    r0 = r6
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r6 = move-exception
                L_0x002a:
                    r0 = r5
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$u$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.u.C0652a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$u$a");
            }

            private C0652a d(int i) {
                this.f37130b |= 16;
                this.g = i;
                return this;
            }

            static /* synthetic */ C0652a f() {
                return new C0652a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: g */
            public C0652a clone() {
                return new C0652a().a(h());
            }

            private u h() {
                u uVar = new u(this);
                int i = this.f37130b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                uVar.f37127b = this.f37131c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                uVar.f37128c = this.f37132d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                uVar.f37129d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                uVar.e = this.f;
                int i6 = i5;
                if ((i & 16) == 16) {
                    i6 = i5 | 16;
                }
                uVar.f = this.g;
                int i7 = i6;
                if ((i & 32) == 32) {
                    i7 = i6 | 32;
                }
                uVar.g = this.h;
                uVar.j = i7;
                return uVar;
            }

            public final C0652a a(u uVar) {
                if (uVar == u.a()) {
                    return this;
                }
                if (uVar.c()) {
                    a(uVar.f37127b);
                }
                if (uVar.d()) {
                    b(uVar.f37128c);
                }
                if (uVar.g()) {
                    a(uVar.f37129d);
                }
                if (uVar.k()) {
                    c(uVar.e);
                }
                if (uVar.l()) {
                    d(uVar.f);
                }
                if (uVar.m()) {
                    a(uVar.g);
                }
                this.f38138a = this.f38138a.a(uVar.i);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ u a() {
                return u.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                u h = h();
                if (h.e()) {
                    return h;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return u.a();
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u$b.class */
        public enum b implements j.a {
            WARNING(0, 0),
            ERROR(1, 1),
            HIDDEN(2, 2);
            
            private static j.b<b> internalValueMap = new j.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.u.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ b a(int i) {
                    return b.valueOf(i);
                }
            };
            private final int value;

            b(int i, int i2) {
                this.value = i2;
            }

            public static b valueOf(int i) {
                if (i == 0) {
                    return WARNING;
                }
                if (i == 1) {
                    return ERROR;
                }
                if (i != 2) {
                    return null;
                }
                return HIDDEN;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$u$c.class */
        public enum c implements j.a {
            LANGUAGE_VERSION(0, 0),
            COMPILER_VERSION(1, 1),
            API_VERSION(2, 2);
            
            private static j.b<c> internalValueMap = new j.b<c>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.u.c.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                public final /* synthetic */ c a(int i) {
                    return c.valueOf(i);
                }
            };
            private final int value;

            c(int i, int i2) {
                this.value = i2;
            }

            public static c valueOf(int i) {
                if (i == 0) {
                    return LANGUAGE_VERSION;
                }
                if (i == 1) {
                    return COMPILER_VERSION;
                }
                if (i != 2) {
                    return null;
                }
                return API_VERSION;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            public final int getNumber() {
                return this.value;
            }
        }

        static {
            u uVar = new u(true);
            h = uVar;
            uVar.n();
        }

        private u(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.k = (byte) (-1);
            this.l = -1;
            n();
            d.b h2 = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h2, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                this.j |= 1;
                                this.f37127b = eVar.d();
                            } else if (a3 == 16) {
                                this.j |= 2;
                                this.f37128c = eVar.d();
                            } else if (a3 == 24) {
                                int d2 = eVar.d();
                                b valueOf = b.valueOf(d2);
                                if (valueOf == null) {
                                    a2.e(a3);
                                    a2.e(d2);
                                } else {
                                    this.j |= 4;
                                    this.f37129d = valueOf;
                                }
                            } else if (a3 == 32) {
                                this.j |= 8;
                                this.e = eVar.d();
                            } else if (a3 == 40) {
                                this.j |= 16;
                                this.f = eVar.d();
                            } else if (a3 == 48) {
                                int d3 = eVar.d();
                                c valueOf2 = c.valueOf(d3);
                                if (valueOf2 == null) {
                                    a2.e(a3);
                                    a2.e(d3);
                                } else {
                                    this.j |= 32;
                                    this.g = valueOf2;
                                }
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.i = h2.a();
                            throw th2;
                        }
                        this.i = h2.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.i = h2.a();
                throw th3;
            }
            this.i = h2.a();
            w();
        }

        private u(h.a aVar) {
            super(aVar);
            this.k = (byte) (-1);
            this.l = -1;
            this.i = aVar.f38138a;
        }

        private u(boolean z) {
            this.k = (byte) (-1);
            this.l = -1;
            this.i = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static u a() {
            return h;
        }

        private void n() {
            this.f37127b = 0;
            this.f37128c = 0;
            this.f37129d = b.ERROR;
            this.e = 0;
            this.f = 0;
            this.g = c.LANGUAGE_VERSION;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.j & 1) == 1) {
                codedOutputStream.a(1, this.f37127b);
            }
            if ((this.j & 2) == 2) {
                codedOutputStream.a(2, this.f37128c);
            }
            if ((this.j & 4) == 4) {
                codedOutputStream.b(3, this.f37129d.getNumber());
            }
            if ((this.j & 8) == 8) {
                codedOutputStream.a(4, this.e);
            }
            if ((this.j & 16) == 16) {
                codedOutputStream.a(5, this.f);
            }
            if ((this.j & 32) == 32) {
                codedOutputStream.b(6, this.g.getNumber());
            }
            codedOutputStream.d(this.i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<u> b() {
            return f37126a;
        }

        public final boolean c() {
            return (this.j & 1) == 1;
        }

        public final boolean d() {
            return (this.j & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.k;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.k = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.l;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.j & 1) == 1) {
                i2 = 0 + CodedOutputStream.c(1, this.f37127b);
            }
            int i3 = i2;
            if ((this.j & 2) == 2) {
                i3 = i2 + CodedOutputStream.c(2, this.f37128c);
            }
            int i4 = i3;
            if ((this.j & 4) == 4) {
                i4 = i3 + CodedOutputStream.d(3, this.f37129d.getNumber());
            }
            int i5 = i4;
            if ((this.j & 8) == 8) {
                i5 = i4 + CodedOutputStream.c(4, this.e);
            }
            int i6 = i5;
            if ((this.j & 16) == 16) {
                i6 = i5 + CodedOutputStream.c(5, this.f);
            }
            int i7 = i6;
            if ((this.j & 32) == 32) {
                i7 = i6 + CodedOutputStream.d(6, this.g.getNumber());
            }
            int a2 = i7 + this.i.a();
            this.l = a2;
            return a2;
        }

        public final boolean g() {
            return (this.j & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0652a.f().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0652a.f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return h;
        }

        public final boolean k() {
            return (this.j & 8) == 8;
        }

        public final boolean l() {
            return (this.j & 16) == 16;
        }

        public final boolean m() {
            return (this.j & 32) == 32;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$v.class */
    public static final class v extends kotlin.reflect.jvm.internal.impl.protobuf.h implements y {

        /* renamed from: a  reason: collision with root package name */
        public static kotlin.reflect.jvm.internal.impl.protobuf.r<v> f37133a = new kotlin.reflect.jvm.internal.impl.protobuf.b<v>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.v.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
                return new v(eVar, fVar);
            }
        };

        /* renamed from: c  reason: collision with root package name */
        private static final v f37134c;

        /* renamed from: b  reason: collision with root package name */
        public List<u> f37135b;

        /* renamed from: d  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.protobuf.d f37136d;
        private byte e;
        private int f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.a$v$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$v$a.class */
        public static final class C0653a extends h.a<v, C0653a> implements y {

            /* renamed from: b  reason: collision with root package name */
            private int f37137b;

            /* renamed from: c  reason: collision with root package name */
            private List<u> f37138c = Collections.emptyList();

            private C0653a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.a.v.C0653a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.a$v> r0 = kotlin.reflect.jvm.internal.impl.b.a.v.f37133a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.a$v r0 = (kotlin.reflect.jvm.internal.impl.b.a.v) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.a$v$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.a$v r0 = (kotlin.reflect.jvm.internal.impl.b.a.v) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.a$v$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.a.v.C0653a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.a$v$a");
            }

            static /* synthetic */ C0653a g() {
                return new C0653a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0653a clone() {
                return new C0653a().a(f());
            }

            private void i() {
                if ((this.f37137b & 1) != 1) {
                    this.f37138c = new ArrayList(this.f37138c);
                    this.f37137b |= 1;
                }
            }

            public final C0653a a(v vVar) {
                if (vVar == v.a()) {
                    return this;
                }
                if (!vVar.f37135b.isEmpty()) {
                    if (this.f37138c.isEmpty()) {
                        this.f37138c = vVar.f37135b;
                        this.f37137b &= -2;
                    } else {
                        i();
                        this.f37138c.addAll(vVar.f37135b);
                    }
                }
                this.f38138a = this.f38138a.a(vVar.f37136d);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ v a() {
                return v.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p d() {
                v f = f();
                if (f.e()) {
                    return f;
                }
                throw a((kotlin.reflect.jvm.internal.impl.protobuf.p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            public final v f() {
                v vVar = new v(this);
                if ((this.f37137b & 1) == 1) {
                    this.f37138c = Collections.unmodifiableList(this.f37138c);
                    this.f37137b &= -2;
                }
                vVar.f37135b = this.f37138c;
                return vVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
                return v.a();
            }
        }

        static {
            v vVar = new v(true);
            f37134c = vVar;
            vVar.f37135b = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private v(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, kotlin.reflect.jvm.internal.impl.protobuf.f fVar) throws InvalidProtocolBufferException {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37135b = Collections.emptyList();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 10) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f37135b = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37135b.add(eVar.a(u.f37126a, fVar));
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37135b = Collections.unmodifiableList(this.f37135b);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f37136d = h.a();
                        throw th2;
                    }
                    this.f37136d = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37135b = Collections.unmodifiableList(this.f37135b);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f37136d = h.a();
                throw th3;
            }
            this.f37136d = h.a();
            w();
        }

        private v(h.a aVar) {
            super(aVar);
            this.e = (byte) (-1);
            this.f = -1;
            this.f37136d = aVar.f38138a;
        }

        private v(boolean z) {
            this.e = (byte) (-1);
            this.f = -1;
            this.f37136d = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0653a a(v vVar) {
            return C0653a.g().a(vVar);
        }

        public static v a() {
            return f37134c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            for (int i = 0; i < this.f37135b.size(); i++) {
                codedOutputStream.a(1, this.f37135b.get(i));
            }
            codedOutputStream.d(this.f37136d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final kotlin.reflect.jvm.internal.impl.protobuf.r<v> b() {
            return f37133a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.e;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.e = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.f;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f37135b.size(); i3++) {
                i2 += CodedOutputStream.c(1, this.f37135b.get(i3));
            }
            int a2 = i2 + this.f37136d.a();
            this.f = a2;
            return a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0653a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0653a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.p j() {
            return f37134c;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/a$w.class */
    public enum w implements j.a {
        INTERNAL(0, 0),
        PRIVATE(1, 1),
        PROTECTED(2, 2),
        PUBLIC(3, 3),
        PRIVATE_TO_THIS(4, 4),
        LOCAL(5, 5);
        
        private static j.b<w> internalValueMap = new j.b<w>() { // from class: kotlin.reflect.jvm.internal.impl.b.a.w.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
            public final /* synthetic */ w a(int i) {
                return w.valueOf(i);
            }
        };
        private final int value;

        w(int i, int i2) {
            this.value = i2;
        }

        public static w valueOf(int i) {
            if (i == 0) {
                return INTERNAL;
            }
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
            if (i != 5) {
                return null;
            }
            return LOCAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        public final int getNumber() {
            return this.value;
        }
    }
}

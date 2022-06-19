package kotlin.reflect.jvm.internal.impl.load.kotlin;

import io.bidmachine.protobuf.EventTypeExtended;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/w.class */
public final class C19662w {

    /* renamed from: l */
    public static final C19662w f65770l;

    /* renamed from: m */
    public static final C19662w f65771m;

    /* renamed from: o */
    public static final C19662w f65773o;

    /* renamed from: p */
    public static final C19662w f65774p;

    /* renamed from: q */
    public static final C19662w f65775q;

    /* renamed from: r */
    public static final C19662w f65776r;

    /* renamed from: s */
    public static final C19662w f65777s;

    /* renamed from: t */
    public static final C19662w f65778t;

    /* renamed from: b */
    final boolean f65779b;

    /* renamed from: c */
    final boolean f65780c;

    /* renamed from: d */
    final boolean f65781d;

    /* renamed from: e */
    final boolean f65782e;

    /* renamed from: f */
    final boolean f65783f;

    /* renamed from: g */
    final C19662w f65784g;

    /* renamed from: h */
    final boolean f65785h;

    /* renamed from: i */
    final C19662w f65786i;

    /* renamed from: j */
    final C19662w f65787j;

    /* renamed from: k */
    final boolean f65788k;

    /* renamed from: a */
    public static final C19663a f65769a = new C19663a(null);

    /* renamed from: n */
    public static final C19662w f65772n = new C19662w(false, true, false, false, false, null, false, null, null, false, 1021, null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/w$a.class */
    public static final class C19663a {
        private C19663a() {
        }

        public /* synthetic */ C19663a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.w$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/w$b.class */
    public final /* synthetic */ class C19664b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f65789a;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.IN_VARIANCE.ordinal()] = 1;
            iArr[Variance.INVARIANT.ordinal()] = 2;
            f65789a = iArr;
        }
    }

    static {
        C19662w c19662w = new C19662w(false, false, false, false, false, null, false, null, null, false, 1023, null);
        f65770l = c19662w;
        C19662w c19662w2 = new C19662w(false, false, false, false, false, null, false, null, null, true, EventTypeExtended.EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE, null);
        f65771m = c19662w2;
        f65773o = new C19662w(false, false, false, false, false, c19662w, false, null, null, false, 988, null);
        f65774p = new C19662w(false, false, false, false, false, c19662w2, false, null, null, true, 476, null);
        f65775q = new C19662w(false, true, false, false, false, c19662w, false, null, null, false, 988, null);
        f65776r = new C19662w(false, false, false, true, false, c19662w, false, null, null, false, 983, null);
        f65777s = new C19662w(false, false, false, true, false, c19662w, false, null, null, false, 919, null);
        f65778t = new C19662w(false, false, true, false, false, c19662w, false, null, null, false, 984, null);
    }

    public C19662w() {
        this(false, false, false, false, false, null, false, null, null, false, 1023, null);
    }

    public C19662w(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, C19662w c19662w, boolean z6, C19662w c19662w2, C19662w c19662w3, boolean z7) {
        this.f65779b = z;
        this.f65780c = z2;
        this.f65781d = z3;
        this.f65782e = z4;
        this.f65783f = z5;
        this.f65784g = c19662w;
        this.f65785h = z6;
        this.f65786i = c19662w2;
        this.f65787j = c19662w3;
        this.f65788k = z7;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C19662w(boolean r13, boolean r14, boolean r15, boolean r16, boolean r17, kotlin.reflect.jvm.internal.impl.load.kotlin.C19662w r18, boolean r19, kotlin.reflect.jvm.internal.impl.load.kotlin.C19662w r20, kotlin.reflect.jvm.internal.impl.load.kotlin.C19662w r21, boolean r22, int r23, kotlin.jvm.internal.DefaultConstructorMarker r24) {
        /*
            r12 = this;
            r0 = 1
            r25 = r0
            r0 = r23
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto Lf
            r0 = 1
            r13 = r0
            goto Lf
        Lf:
            r0 = r23
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L1b
            r0 = 1
            r14 = r0
            goto L1b
        L1b:
            r0 = 0
            r26 = r0
            r0 = r23
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = 0
            r15 = r0
            goto L2a
        L2a:
            r0 = r23
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L38
            r0 = 0
            r16 = r0
            goto L38
        L38:
            r0 = r23
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L46
            r0 = 0
            r17 = r0
            goto L46
        L46:
            r0 = r23
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L54
            r0 = 0
            r18 = r0
            goto L54
        L54:
            r0 = r23
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L63
            r0 = r25
            r19 = r0
            goto L63
        L63:
            r0 = r23
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L73
            r0 = r18
            r20 = r0
            goto L73
        L73:
            r0 = r23
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L83
            r0 = r18
            r21 = r0
            goto L83
        L83:
            r0 = r23
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L93
            r0 = r26
            r22 = r0
            goto L93
        L93:
            r0 = r12
            r1 = r13
            r2 = r14
            r3 = r15
            r4 = r16
            r5 = r17
            r6 = r18
            r7 = r19
            r8 = r20
            r9 = r21
            r10 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.C19662w.<init>(boolean, boolean, boolean, boolean, boolean, kotlin.reflect.jvm.internal.impl.load.kotlin.w, boolean, kotlin.reflect.jvm.internal.impl.load.kotlin.w, kotlin.reflect.jvm.internal.impl.load.kotlin.w, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

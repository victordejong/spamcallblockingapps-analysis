package kotlin.reflect.jvm.internal.impl.load.kotlin;

import io.bidmachine.protobuf.EventTypeExtended;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/w.class */
public final class w {
    public static final w l;
    public static final w m;
    public static final w o;
    public static final w p;
    public static final w q;
    public static final w r;
    public static final w s;
    public static final w t;

    /* renamed from: b  reason: collision with root package name */
    final boolean f38100b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f38101c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f38102d;
    final boolean e;
    final boolean f;
    final w g;
    final boolean h;
    final w i;
    final w j;
    final boolean k;

    /* renamed from: a  reason: collision with root package name */
    public static final a f38099a = new a(null);
    public static final w n = new w(false, true, false, false, false, null, false, null, null, false, 1021, null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/w$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/w$b.class */
    public final /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38103a;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.IN_VARIANCE.ordinal()] = 1;
            iArr[Variance.INVARIANT.ordinal()] = 2;
            f38103a = iArr;
        }
    }

    static {
        w wVar = new w(false, false, false, false, false, null, false, null, null, false, 1023, null);
        l = wVar;
        w wVar2 = new w(false, false, false, false, false, null, false, null, null, true, EventTypeExtended.EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE, null);
        m = wVar2;
        o = new w(false, false, false, false, false, wVar, false, null, null, false, 988, null);
        p = new w(false, false, false, false, false, wVar2, false, null, null, true, 476, null);
        q = new w(false, true, false, false, false, wVar, false, null, null, false, 988, null);
        r = new w(false, false, false, true, false, wVar, false, null, null, false, 983, null);
        s = new w(false, false, false, true, false, wVar, false, null, null, false, 919, null);
        t = new w(false, false, true, false, false, wVar, false, null, null, false, 984, null);
    }

    public w() {
        this(false, false, false, false, false, null, false, null, null, false, 1023, null);
    }

    public w(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, w wVar, boolean z6, w wVar2, w wVar3, boolean z7) {
        this.f38100b = z;
        this.f38101c = z2;
        this.f38102d = z3;
        this.e = z4;
        this.f = z5;
        this.g = wVar;
        this.h = z6;
        this.i = wVar2;
        this.j = wVar3;
        this.k = z7;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ w(boolean r13, boolean r14, boolean r15, boolean r16, boolean r17, kotlin.reflect.jvm.internal.impl.load.kotlin.w r18, boolean r19, kotlin.reflect.jvm.internal.impl.load.kotlin.w r20, kotlin.reflect.jvm.internal.impl.load.kotlin.w r21, boolean r22, int r23, kotlin.jvm.internal.DefaultConstructorMarker r24) {
        /*
            r12 = this;
            r0 = 1
            r25 = r0
            r0 = r23
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000f
            r0 = 1
            r13 = r0
            goto L_0x000f
        L_0x000f:
            r0 = r23
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 1
            r14 = r0
            goto L_0x001b
        L_0x001b:
            r0 = 0
            r26 = r0
            r0 = r23
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002a
            r0 = 0
            r15 = r0
            goto L_0x002a
        L_0x002a:
            r0 = r23
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0038
            r0 = 0
            r16 = r0
            goto L_0x0038
        L_0x0038:
            r0 = r23
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0046
            r0 = 0
            r17 = r0
            goto L_0x0046
        L_0x0046:
            r0 = r23
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0054
            r0 = 0
            r18 = r0
            goto L_0x0054
        L_0x0054:
            r0 = r23
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0063
            r0 = r25
            r19 = r0
            goto L_0x0063
        L_0x0063:
            r0 = r23
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0073
            r0 = r18
            r20 = r0
            goto L_0x0073
        L_0x0073:
            r0 = r23
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0083
            r0 = r18
            r21 = r0
            goto L_0x0083
        L_0x0083:
            r0 = r23
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0093
            r0 = r26
            r22 = r0
            goto L_0x0093
        L_0x0093:
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.w.<init>(boolean, boolean, boolean, boolean, boolean, kotlin.reflect.jvm.internal.impl.load.kotlin.w, boolean, kotlin.reflect.jvm.internal.impl.load.kotlin.w, kotlin.reflect.jvm.internal.impl.load.kotlin.w, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

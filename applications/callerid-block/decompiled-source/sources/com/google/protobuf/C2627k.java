package com.google.protobuf;

import com.google.protobuf.C2607g0;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.k */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/k.class */
public final class C2627k implements Writer {

    /* renamed from: a */
    private final CodedOutputStream f11158a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.k$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/k$a.class */
    public static /* synthetic */ class C2628a {

        /* renamed from: a */
        static final /* synthetic */ int[] f11159a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f11159a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11159a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11159a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11159a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11159a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11159a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11159a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11159a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11159a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f11159a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f11159a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f11159a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    private C2627k(CodedOutputStream codedOutputStream) {
        C2665x.m2250b(codedOutputStream, "output");
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        this.f11158a = codedOutputStream2;
        codedOutputStream2.f10884a = this;
    }

    /* renamed from: P */
    public static C2627k m2540P(CodedOutputStream codedOutputStream) {
        C2627k kVar = codedOutputStream.f10884a;
        return kVar != null ? kVar : new C2627k(codedOutputStream);
    }

    /* renamed from: Q */
    private <V> void m2539Q(int i, boolean z, V v, C2607g0.C2608a<Boolean, V> aVar) {
        this.f11158a.mo3066U0(i, 2);
        this.f11158a.mo3064W0(C2607g0.m2728b(aVar, Boolean.valueOf(z), v));
        C2607g0.m2725e(this.f11158a, aVar, Boolean.valueOf(z), v);
    }

    /* renamed from: R */
    private <V> void m2538R(int i, C2607g0.C2608a<Integer, V> aVar, Map<Integer, V> map) {
        int size = map.size();
        int[] iArr = new int[size];
        int i2 = 0;
        for (Integer num : map.keySet()) {
            iArr[i2] = num.intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            V v = map.get(Integer.valueOf(i4));
            this.f11158a.mo3066U0(i, 2);
            this.f11158a.mo3064W0(C2607g0.m2728b(aVar, Integer.valueOf(i4), v));
            C2607g0.m2725e(this.f11158a, aVar, Integer.valueOf(i4), v);
        }
    }

    /* renamed from: S */
    private <V> void m2537S(int i, C2607g0.C2608a<Long, V> aVar, Map<Long, V> map) {
        int size = map.size();
        long[] jArr = new long[size];
        int i2 = 0;
        for (Long l : map.keySet()) {
            jArr[i2] = l.longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            V v = map.get(Long.valueOf(j));
            this.f11158a.mo3066U0(i, 2);
            this.f11158a.mo3064W0(C2607g0.m2728b(aVar, Long.valueOf(j), v));
            C2607g0.m2725e(this.f11158a, aVar, Long.valueOf(j), v);
        }
    }

    /* renamed from: T */
    private <K, V> void m2536T(int i, C2607g0.C2608a<K, V> aVar, Map<K, V> map) {
        switch (C2628a.f11159a[aVar.f11103a.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    m2539Q(i, false, v, aVar);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 != null) {
                    m2539Q(i, true, v2, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                m2538R(i, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                m2537S(i, aVar, map);
                return;
            case 12:
                m2535U(i, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + aVar.f11103a);
        }
    }

    /* renamed from: U */
    private <V> void m2535U(int i, C2607g0.C2608a<String, V> aVar, Map<String, V> map) {
        int size = map.size();
        String[] strArr = new String[size];
        int i2 = 0;
        for (String str : map.keySet()) {
            strArr[i2] = str;
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str2 = strArr[i3];
            V v = map.get(str2);
            this.f11158a.mo3066U0(i, 2);
            this.f11158a.mo3064W0(C2607g0.m2728b(aVar, str2, v));
            C2607g0.m2725e(this.f11158a, aVar, str2, v);
        }
    }

    /* renamed from: V */
    private void m2534V(int i, Object obj) {
        if (obj instanceof String) {
            this.f11158a.mo3068S0(i, (String) obj);
        } else {
            this.f11158a.mo3054m0(i, (ByteString) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: A */
    public void mo2555A(int i, long j) {
        this.f11158a.mo3050u0(i, j);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: B */
    public Writer.FieldOrder mo2554B() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: C */
    public void mo2553C(int i, long j) {
        this.f11158a.m3125Q0(i, j);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: D */
    public void mo2552D(int i, float f) {
        this.f11158a.m3081w0(i, f);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: E */
    public void mo2551E(int i, List<String> list) {
        if (list instanceof AbstractC2577c0) {
            AbstractC2577c0 c0Var = (AbstractC2577c0) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                m2534V(i, c0Var.mo2562y(i2));
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f11158a.mo3068S0(i, list.get(i3));
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: F */
    public void mo2550F(int i) {
        this.f11158a.mo3066U0(i, 4);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: G */
    public void mo2549G(int i, String str) {
        this.f11158a.mo3068S0(i, str);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: H */
    public void mo2548H(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3126Q(list.get(i3).intValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3127P0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3129O0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: I */
    public void mo2547I(int i, long j) {
        this.f11158a.mo3063X0(i, j);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: J */
    public void mo2546J(int i, int i2) {
        this.f11158a.m3089q0(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: K */
    public void mo2545K(int i, List<Long> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3076z(list.get(i3).longValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3143F0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3145E0(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: L */
    public void mo2544L(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3096m(list.get(i3).intValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3087r0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3089q0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: M */
    public void mo2543M(int i, List<Double> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3099k(list.get(i3).doubleValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3091p0(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3093o0(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: N */
    public void mo2542N(int i, int i2) {
        this.f11158a.m3129O0(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: O */
    public void mo2541O(int i, List<ByteString> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f11158a.mo3054m0(i, list.get(i2));
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: a */
    public void mo2533a(int i, List<?> list, AbstractC2572a1 a1Var) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo2511w(i, list.get(i2), a1Var);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public void mo2532b(int i, List<?> list, AbstractC2572a1 a1Var) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo2525i(i, list.get(i2), a1Var);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: c */
    public void mo2531c(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3080x(list.get(i3).intValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.mo3073D0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.mo3074C0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: d */
    public void mo2530d(int i, List<Float> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3086s(list.get(i3).floatValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3079x0(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3081w0(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: e */
    public void mo2529e(int i, long j) {
        this.f11158a.m3145E0(i, j);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: f */
    public void mo2528f(int i, boolean z) {
        this.f11158a.mo3056i0(i, z);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: g */
    public void mo2527g(int i, int i2) {
        this.f11158a.mo3065V0(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: h */
    public final void mo2526h(int i, Object obj) {
        if (obj instanceof ByteString) {
            this.f11158a.mo3069J0(i, (ByteString) obj);
        } else {
            this.f11158a.mo3070I0(i, (AbstractC2639m0) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: i */
    public void mo2525i(int i, Object obj, AbstractC2572a1 a1Var) {
        this.f11158a.m3075z0(i, (AbstractC2639m0) obj, a1Var);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: j */
    public void mo2524j(int i, int i2) {
        this.f11158a.m3137K0(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: k */
    public void mo2523k(int i) {
        this.f11158a.mo3066U0(i, 3);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: l */
    public void mo2522l(int i, ByteString byteString) {
        this.f11158a.mo3054m0(i, byteString);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: m */
    public void mo2521m(int i, int i2) {
        this.f11158a.mo3074C0(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: n */
    public void mo2520n(int i, List<Long> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3090q(list.get(i3).longValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.mo3049v0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.mo3050u0(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: o */
    public void mo2519o(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3134M(list.get(i3).intValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3135L0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3137K0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: p */
    public void mo2518p(int i, int i2) {
        this.f11158a.mo3052s0(i, i2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: q */
    public void mo2517q(int i, double d) {
        this.f11158a.m3093o0(i, d);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: r */
    public void mo2516r(int i, long j) {
        this.f11158a.m3133M0(i, j);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: s */
    public void mo2515s(int i, List<Long> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3130O(list.get(i3).longValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3131N0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3133M0(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: t */
    public void mo2514t(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3094o(list.get(i3).intValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.mo3051t0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.mo3052s0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: u */
    public void mo2513u(int i, List<Long> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3115Z(list.get(i3).longValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.mo3062Y0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.mo3063X0(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: v */
    public void mo2512v(int i, List<Boolean> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3106f(list.get(i3).booleanValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3100j0(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.mo3056i0(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: w */
    public void mo2511w(int i, Object obj, AbstractC2572a1 a1Var) {
        this.f11158a.mo3072G0(i, (AbstractC2639m0) obj, a1Var);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: x */
    public <K, V> void mo2510x(int i, C2607g0.C2608a<K, V> aVar, Map<K, V> map) {
        if (this.f11158a.m3109d0()) {
            m2536T(i, aVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f11158a.mo3066U0(i, 2);
            this.f11158a.mo3064W0(C2607g0.m2728b(aVar, entry.getKey(), entry.getValue()));
            C2607g0.m2725e(this.f11158a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: y */
    public void mo2509y(int i, List<Integer> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3117X(list.get(i3).intValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.mo3064W0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.mo3065V0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: z */
    public void mo2508z(int i, List<Long> list, boolean z) {
        if (z) {
            this.f11158a.mo3066U0(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += CodedOutputStream.m3122S(list.get(i3).longValue());
            }
            this.f11158a.mo3064W0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f11158a.m3123R0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f11158a.m3125Q0(i, list.get(i5).longValue());
        }
    }
}

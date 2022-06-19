package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.WireFormat;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.protobuf.q */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/q.class */
final class C2648q extends AbstractC2646p<GeneratedMessageLite.C2553d> {

    /* renamed from: com.google.protobuf.q$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/q$a.class */
    static /* synthetic */ class C2649a {

        /* renamed from: a */
        static final /* synthetic */ int[] f11200a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00dd -> B:91:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e1 -> B:85:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e5 -> B:63:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e9 -> B:59:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ed -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f5 -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f9 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fd -> B:89:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0101 -> B:83:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0105 -> B:61:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0109 -> B:57:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x010d -> B:69:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0111 -> B:65:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0115 -> B:79:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0119 -> B:73:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x011d -> B:87:0x00d0). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f11200a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11200a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11200a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11200a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11200a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11200a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11200a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11200a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11200a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f11200a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f11200a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f11200a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f11200a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f11200a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f11200a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f11200a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f11200a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f11200a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: a */
    public int mo2347a(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.C2553d) entry.getKey()).getNumber();
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: b */
    public Object mo2346b(C2643o c2643o, AbstractC2639m0 abstractC2639m0, int i) {
        return c2643o.m2412a(abstractC2639m0, i);
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: c */
    public C2655t<GeneratedMessageLite.C2553d> mo2345c(Object obj) {
        return ((GeneratedMessageLite.AbstractC2552c) obj).extensions;
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: d */
    public C2655t<GeneratedMessageLite.C2553d> mo2344d(Object obj) {
        return ((GeneratedMessageLite.AbstractC2552c) obj).m3015R();
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: e */
    public boolean mo2343e(AbstractC2639m0 abstractC2639m0) {
        return abstractC2639m0 instanceof GeneratedMessageLite.AbstractC2552c;
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: f */
    public void mo2342f(Object obj) {
        mo2345c(obj).m2297t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0369  */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <UT, UB> UB mo2341g(com.google.protobuf.AbstractC2682z0 r7, java.lang.Object r8, com.google.protobuf.C2643o r9, com.google.protobuf.C2655t<com.google.protobuf.GeneratedMessageLite.C2553d> r10, UB r11, com.google.protobuf.AbstractC2609g1<UT, UB> r12) {
        /*
            Method dump skipped, instructions count: 943
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2648q.mo2341g(com.google.protobuf.z0, java.lang.Object, com.google.protobuf.o, com.google.protobuf.t, java.lang.Object, com.google.protobuf.g1):java.lang.Object");
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: h */
    public void mo2340h(AbstractC2682z0 abstractC2682z0, Object obj, C2643o c2643o, C2655t<GeneratedMessageLite.C2553d> c2655t) {
        GeneratedMessageLite.C2554e c2554e = (GeneratedMessageLite.C2554e) obj;
        c2655t.m2293x(c2554e.f10969b, abstractC2682z0.mo2192m(c2554e.m3011b().getClass(), c2643o));
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: i */
    public void mo2339i(ByteString byteString, Object obj, C2643o c2643o, C2655t<GeneratedMessageLite.C2553d> c2655t) {
        GeneratedMessageLite.C2554e c2554e = (GeneratedMessageLite.C2554e) obj;
        AbstractC2639m0 mo2418x = c2554e.m3011b().mo2423i().mo2418x();
        AbstractC2594e m2796Q = AbstractC2594e.m2796Q(ByteBuffer.wrap(byteString.toByteArray()), true);
        C2664w0.m2256a().m2255b(mo2418x, m2796Q, c2643o);
        c2655t.m2293x(c2554e.f10969b, mo2418x);
        if (m2796Q.mo2185t() == Integer.MAX_VALUE) {
            return;
        }
        throw InvalidProtocolBufferException.invalidEndTag();
    }

    @Override // com.google.protobuf.AbstractC2646p
    /* renamed from: j */
    public void mo2338j(Writer writer, Map.Entry<?, ?> entry) {
        GeneratedMessageLite.C2553d c2553d = (GeneratedMessageLite.C2553d) entry.getKey();
        if (!c2553d.mo2290d()) {
            switch (C2649a.f11200a[c2553d.mo2289f().ordinal()]) {
                case 1:
                    writer.mo2517q(c2553d.getNumber(), ((Double) entry.getValue()).doubleValue());
                    return;
                case 2:
                    writer.mo2552D(c2553d.getNumber(), ((Float) entry.getValue()).floatValue());
                    return;
                case 3:
                    writer.mo2529e(c2553d.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 4:
                    writer.mo2547I(c2553d.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 5:
                case 14:
                    writer.mo2521m(c2553d.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 6:
                    writer.mo2555A(c2553d.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 7:
                    writer.mo2518p(c2553d.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 8:
                    writer.mo2528f(c2553d.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    return;
                case 9:
                    writer.mo2527g(c2553d.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 10:
                    writer.mo2524j(c2553d.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 11:
                    writer.mo2516r(c2553d.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 12:
                    writer.mo2542N(c2553d.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 13:
                    writer.mo2553C(c2553d.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 15:
                    writer.mo2522l(c2553d.getNumber(), (ByteString) entry.getValue());
                    return;
                case 16:
                    writer.mo2549G(c2553d.getNumber(), (String) entry.getValue());
                    return;
                case 17:
                    writer.mo2525i(c2553d.getNumber(), entry.getValue(), C2664w0.m2256a().m2253d(entry.getValue().getClass()));
                    return;
                case 18:
                    writer.mo2511w(c2553d.getNumber(), entry.getValue(), C2664w0.m2256a().m2253d(entry.getValue().getClass()));
                    return;
                default:
                    return;
            }
        }
        switch (C2649a.f11200a[c2553d.mo2289f().ordinal()]) {
            case 1:
                C2578c1.m2878P(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 2:
                C2578c1.m2874T(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 3:
                C2578c1.m2871W(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 4:
                C2578c1.m2858e0(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 5:
            case 14:
                C2578c1.m2872V(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 6:
                C2578c1.m2875S(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 7:
                C2578c1.m2876R(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 8:
                C2578c1.m2880N(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 9:
                C2578c1.m2860d0(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 10:
                C2578c1.m2869Y(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 11:
                C2578c1.m2868Z(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 12:
                C2578c1.m2866a0(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 13:
                C2578c1.m2864b0(c2553d.getNumber(), (List) entry.getValue(), writer, c2553d.isPacked());
                return;
            case 15:
                C2578c1.m2879O(c2553d.getNumber(), (List) entry.getValue(), writer);
                return;
            case 16:
                C2578c1.m2862c0(c2553d.getNumber(), (List) entry.getValue(), writer);
                return;
            case 17:
                List list = (List) entry.getValue();
                if (list == null || list.isEmpty()) {
                    return;
                }
                C2578c1.m2873U(c2553d.getNumber(), (List) entry.getValue(), writer, C2664w0.m2256a().m2253d(list.get(0).getClass()));
                return;
            case 18:
                List list2 = (List) entry.getValue();
                if (list2 == null || list2.isEmpty()) {
                    return;
                }
                C2578c1.m2870X(c2553d.getNumber(), (List) entry.getValue(), writer, C2664w0.m2256a().m2253d(list2.get(0).getClass()));
                return;
            default:
                return;
        }
    }
}

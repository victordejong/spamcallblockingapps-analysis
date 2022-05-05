package p081h.p203i.p401g;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import p081h.p203i.p401g.C10247f1;
import p081h.p203i.p401g.C10418l;
import p081h.p203i.p401g.C10439m;
/* renamed from: h.i.g.z0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/z0.class */
public final class C10521z0 {

    /* renamed from: h.i.g.z0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z0$a.class */
    public static /* synthetic */ class C10522a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f23906a = new int[C10418l.C10428g.EnumC10430b.values().length];

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
            try {
                f23906a[C10418l.C10428g.EnumC10430b.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.BOOL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f23906a[C10418l.C10428g.EnumC10430b.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* renamed from: h.i.g.z0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z0$b.class */
    public static class C10523b extends IOException {
        public C10523b(String str) {
            super(str);
        }
    }

    /* renamed from: h.i.g.z0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z0$c.class */
    public static class C10524c {

        /* renamed from: h.i.g.z0$c$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/z0$c$a.class */
        public static class C10525a {

            /* renamed from: a */
            public boolean f23907a = false;

            /* renamed from: b */
            public boolean f23908b = false;

            /* renamed from: c */
            public boolean f23909c = false;

            /* renamed from: d */
            public EnumC10526b f23910d = EnumC10526b.ALLOW_SINGULAR_OVERWRITES;

            /* renamed from: e */
            public C10234b1 f23911e = null;

            /* renamed from: f */
            public C10237c1 f23912f = C10237c1.m13043a();

            /* renamed from: a */
            public C10524c m11517a() {
                return new C10524c(this.f23912f, this.f23907a, this.f23908b, this.f23909c, this.f23910d, this.f23911e, null);
            }
        }

        /* renamed from: h.i.g.z0$c$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/z0$c$b.class */
        public enum EnumC10526b {
            ALLOW_SINGULAR_OVERWRITES,
            FORBID_SINGULAR_OVERWRITES
        }

        public C10524c(C10237c1 c1Var, boolean z, boolean z2, boolean z3, EnumC10526b bVar, C10234b1 b1Var) {
        }

        public /* synthetic */ C10524c(C10237c1 c1Var, boolean z, boolean z2, boolean z3, EnumC10526b bVar, C10234b1 b1Var, C10522a aVar) {
            this(c1Var, z, z2, z3, bVar, b1Var);
        }

        /* renamed from: a */
        public static C10525a m11518a() {
            return new C10525a();
        }
    }

    /* renamed from: h.i.g.z0$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z0$d.class */
    public static final class C10527d {

        /* renamed from: c */
        public static final C10527d f23916c = new C10527d(true, C10237c1.m13043a());

        /* renamed from: a */
        public final boolean f23917a;

        /* renamed from: b */
        public final C10237c1 f23918b;

        public C10527d(boolean z, C10237c1 c1Var) {
            this.f23917a = z;
            this.f23918b = c1Var;
        }

        /* renamed from: a */
        public static void m11515a(int i, int i2, List<?> list, C10528e eVar) throws IOException {
            for (Object obj : list) {
                eVar.m11501a(String.valueOf(i));
                eVar.m11501a(": ");
                m11514a(i2, obj, eVar);
                eVar.m11502a();
            }
        }

        /* renamed from: a */
        public static void m11514a(int i, Object obj, C10528e eVar) throws IOException {
            int b = C10406k1.m11924b(i);
            if (b == 0) {
                eVar.m11501a(C10521z0.m11532a(((Long) obj).longValue()));
            } else if (b == 1) {
                eVar.m11501a(String.format(null, "0x%016x", (Long) obj));
            } else if (b == 2) {
                try {
                    C10247f1 a = C10247f1.m13024a((AbstractC10253g) obj);
                    eVar.m11501a(CssParser.BLOCK_START);
                    eVar.m11502a();
                    eVar.m11500b();
                    m11512a(a, eVar);
                    eVar.m11499c();
                    eVar.m11501a(CssParser.BLOCK_END);
                } catch (C10222a0 e) {
                    eVar.m11501a("\"");
                    eVar.m11501a(C10521z0.m11531a((AbstractC10253g) obj));
                    eVar.m11501a("\"");
                }
            } else if (b == 3) {
                m11512a((C10247f1) obj, eVar);
            } else if (b == 5) {
                eVar.m11501a(String.format(null, "0x%08x", (Integer) obj));
            } else {
                throw new IllegalArgumentException("Bad tag: " + i);
            }
        }

        /* renamed from: a */
        public static void m11512a(C10247f1 f1Var, C10528e eVar) throws IOException {
            for (Map.Entry<Integer, C10247f1.C10250c> entry : f1Var.m13026a().entrySet()) {
                int intValue = entry.getKey().intValue();
                C10247f1.C10250c value = entry.getValue();
                m11515a(intValue, 0, value.m12987f(), eVar);
                m11515a(intValue, 5, value.m13006a(), eVar);
                m11515a(intValue, 1, value.m13001b(), eVar);
                m11515a(intValue, 2, value.m12990e(), eVar);
                for (C10247f1 f1Var2 : value.m12996c()) {
                    eVar.m11501a(entry.getKey().toString());
                    eVar.m11501a(" {");
                    eVar.m11502a();
                    eVar.m11500b();
                    m11512a(f1Var2, eVar);
                    eVar.m11499c();
                    eVar.m11501a(CssParser.BLOCK_END);
                    eVar.m11502a();
                }
            }
        }

        /* renamed from: a */
        public String m11513a(C10247f1 f1Var) {
            try {
                StringBuilder sb = new StringBuilder();
                m11511a(f1Var, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: a */
        public String m11509a(AbstractC10444n0 n0Var) {
            try {
                StringBuilder sb = new StringBuilder();
                m11507a(n0Var, sb);
                return sb.toString();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        /* renamed from: a */
        public void m11511a(C10247f1 f1Var, Appendable appendable) throws IOException {
            m11512a(f1Var, C10521z0.m11524b(appendable));
        }

        /* renamed from: a */
        public final void m11510a(C10418l.C10428g gVar, Object obj, C10528e eVar) throws IOException {
            if (gVar.mo11731X()) {
                for (Object obj2 : (List) obj) {
                    m11504c(gVar, obj2, eVar);
                }
                return;
            }
            m11504c(gVar, obj, eVar);
        }

        /* renamed from: a */
        public final void m11508a(AbstractC10444n0 n0Var, C10528e eVar) throws IOException {
            if (!n0Var.mo11666c().mo11843b().equals("google.protobuf.Any") || !m11505b(n0Var, eVar)) {
                m11503c(n0Var, eVar);
            }
        }

        /* renamed from: a */
        public void m11507a(AbstractC10444n0 n0Var, Appendable appendable) throws IOException {
            m11508a(n0Var, C10521z0.m11524b(appendable));
        }

        /* renamed from: b */
        public final void m11506b(C10418l.C10428g gVar, Object obj, C10528e eVar) throws IOException {
            switch (C10522a.f23906a[gVar.m11876o().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    eVar.m11501a(((Integer) obj).toString());
                    return;
                case 4:
                case 5:
                case 6:
                    eVar.m11501a(((Long) obj).toString());
                    return;
                case 7:
                    eVar.m11501a(((Boolean) obj).toString());
                    return;
                case 8:
                    eVar.m11501a(((Float) obj).toString());
                    return;
                case 9:
                    eVar.m11501a(((Double) obj).toString());
                    return;
                case 10:
                case 11:
                    eVar.m11501a(C10521z0.m11533a(((Integer) obj).intValue()));
                    return;
                case 12:
                case 13:
                    eVar.m11501a(C10521z0.m11532a(((Long) obj).longValue()));
                    return;
                case 14:
                    eVar.m11501a("\"");
                    eVar.m11501a(this.f23917a ? C10224a1.m13064b((String) obj) : C10521z0.m11528a((String) obj).replace("\n", "\\n"));
                    eVar.m11501a("\"");
                    return;
                case 15:
                    eVar.m11501a("\"");
                    if (obj instanceof AbstractC10253g) {
                        eVar.m11501a(C10521z0.m11531a((AbstractC10253g) obj));
                    } else {
                        eVar.m11501a(C10521z0.m11526a((byte[]) obj));
                    }
                    eVar.m11501a("\"");
                    return;
                case 16:
                    eVar.m11501a(((C10418l.C10427f) obj).mo11842c());
                    return;
                case 17:
                case 18:
                    m11508a((AbstractC10287j0) obj, eVar);
                    return;
                default:
                    return;
            }
        }

        /* renamed from: b */
        public final boolean m11505b(AbstractC10444n0 n0Var, C10528e eVar) throws IOException {
            C10418l.C10420b c = n0Var.mo11666c();
            C10418l.C10428g a = c.m11916a(1);
            C10418l.C10428g a2 = c.m11916a(2);
            if (a == null || a.m11876o() != C10418l.C10428g.EnumC10430b.STRING || a2 == null || a2.m11876o() != C10418l.C10428g.EnumC10430b.BYTES) {
                return false;
            }
            String str = (String) n0Var.mo11644c(a);
            if (str.isEmpty()) {
                return false;
            }
            Object c2 = n0Var.mo11644c(a2);
            try {
                C10418l.C10420b b = this.f23918b.m13041b(str);
                if (b == null) {
                    return false;
                }
                C10439m.C10441b e = C10439m.m11835a(b).mo11827e();
                e.mo12764a((AbstractC10253g) c2);
                eVar.m11501a("[");
                eVar.m11501a(str);
                eVar.m11501a("] {");
                eVar.m11502a();
                eVar.m11500b();
                m11508a(e, eVar);
                eVar.m11499c();
                eVar.m11501a(CssParser.BLOCK_END);
                eVar.m11502a();
                return true;
            } catch (C10222a0 e2) {
                return false;
            }
        }

        /* renamed from: c */
        public final void m11504c(C10418l.C10428g gVar, Object obj, C10528e eVar) throws IOException {
            if (gVar.m11875p()) {
                eVar.m11501a("[");
                if (!gVar.m11884g().m11908i().m11995w() || gVar.m11876o() != C10418l.C10428g.EnumC10430b.MESSAGE || !gVar.m11873r() || gVar.m11881j() != gVar.m11878m()) {
                    eVar.m11501a(gVar.mo11843b());
                } else {
                    eVar.m11501a(gVar.m11878m().mo11843b());
                }
                eVar.m11501a("]");
            } else if (gVar.m11876o() == C10418l.C10428g.EnumC10430b.GROUP) {
                eVar.m11501a(gVar.m11878m().mo11842c());
            } else {
                eVar.m11501a(gVar.mo11842c());
            }
            if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                eVar.m11501a(" {");
                eVar.m11502a();
                eVar.m11500b();
            } else {
                eVar.m11501a(": ");
            }
            m11506b(gVar, obj, eVar);
            if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                eVar.m11499c();
                eVar.m11501a(CssParser.BLOCK_END);
            }
            eVar.m11502a();
        }

        /* renamed from: c */
        public final void m11503c(AbstractC10444n0 n0Var, C10528e eVar) throws IOException {
            for (Map.Entry<C10418l.C10428g, Object> entry : n0Var.mo11648a().entrySet()) {
                m11510a(entry.getKey(), entry.getValue(), eVar);
            }
            m11512a(n0Var.mo11664d(), eVar);
        }
    }

    /* renamed from: h.i.g.z0$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/z0$e.class */
    public static final class C10528e {

        /* renamed from: a */
        public final Appendable f23919a;

        /* renamed from: b */
        public final StringBuilder f23920b;

        /* renamed from: c */
        public final boolean f23921c;

        /* renamed from: d */
        public boolean f23922d;

        public C10528e(Appendable appendable, boolean z) {
            this.f23920b = new StringBuilder();
            this.f23922d = false;
            this.f23919a = appendable;
            this.f23921c = z;
        }

        public /* synthetic */ C10528e(Appendable appendable, boolean z, C10522a aVar) {
            this(appendable, z);
        }

        /* renamed from: a */
        public void m11502a() throws IOException {
            if (!this.f23921c) {
                this.f23919a.append("\n");
            }
            this.f23922d = true;
        }

        /* renamed from: a */
        public void m11501a(CharSequence charSequence) throws IOException {
            if (this.f23922d) {
                this.f23922d = false;
                this.f23919a.append(this.f23921c ? " " : this.f23920b);
            }
            this.f23919a.append(charSequence);
        }

        /* renamed from: b */
        public void m11500b() {
            this.f23920b.append("  ");
        }

        /* renamed from: c */
        public void m11499c() {
            int length = this.f23920b.length();
            if (length != 0) {
                this.f23920b.setLength(length - 2);
                return;
            }
            throw new IllegalArgumentException(" Outdent() without matching Indent().");
        }
    }

    static {
        Logger.getLogger(C10521z0.class.getName());
        C10524c.m11518a().m11517a();
    }

    /* renamed from: a */
    public static int m11534a(byte b) {
        if (48 <= b && b <= 57) {
            return b - 48;
        }
        return ((97 > b || b > 122) ? b - 65 : b - 97) + 10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m11527a(java.lang.String r5, boolean r6, boolean r7) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10521z0.m11527a(java.lang.String, boolean, boolean):long");
    }

    /* renamed from: a */
    public static AbstractC10253g m11529a(CharSequence charSequence) throws C10523b {
        AbstractC10253g a = AbstractC10253g.m12975a(charSequence.toString());
        byte[] bArr = new byte[a.size()];
        int i = 0;
        int i2 = 0;
        while (i < a.size()) {
            byte g = a.mo12950g(i);
            if (g == 92) {
                i++;
                if (i < a.size()) {
                    byte g2 = a.mo12950g(i);
                    if (m11522c(g2)) {
                        int a2 = m11534a(g2);
                        int i3 = i + 1;
                        int i4 = i;
                        int i5 = a2;
                        if (i3 < a.size()) {
                            i4 = i;
                            i5 = a2;
                            if (m11522c(a.mo12950g(i3))) {
                                i5 = (a2 * 8) + m11534a(a.mo12950g(i3));
                                i4 = i3;
                            }
                        }
                        int i6 = i4 + 1;
                        i = i4;
                        int i7 = i5;
                        if (i6 < a.size()) {
                            i = i4;
                            i7 = i5;
                            if (m11522c(a.mo12950g(i6))) {
                                i7 = (i5 * 8) + m11534a(a.mo12950g(i6));
                                i = i6;
                            }
                        }
                        i2++;
                        bArr[i2] = (byte) i7;
                    } else {
                        if (g2 == 34) {
                            i2++;
                            bArr[i2] = (byte) 34;
                        } else if (g2 == 39) {
                            i2++;
                            bArr[i2] = (byte) 39;
                        } else if (g2 == 92) {
                            i2++;
                            bArr[i2] = (byte) 92;
                        } else if (g2 == 102) {
                            i2++;
                            bArr[i2] = (byte) 12;
                        } else if (g2 == 110) {
                            i2++;
                            bArr[i2] = (byte) 10;
                        } else if (g2 == 114) {
                            i2++;
                            bArr[i2] = (byte) 13;
                        } else if (g2 == 116) {
                            i2++;
                            bArr[i2] = (byte) 9;
                        } else if (g2 == 118) {
                            i2++;
                            bArr[i2] = (byte) 11;
                        } else if (g2 == 120) {
                            int i8 = i + 1;
                            if (i8 >= a.size() || !m11525b(a.mo12950g(i8))) {
                                throw new C10523b("Invalid escape sequence: '\\x' with no digits");
                            }
                            int a3 = m11534a(a.mo12950g(i8));
                            int i9 = i8 + 1;
                            i = i8;
                            int i10 = a3;
                            if (i9 < a.size()) {
                                i = i8;
                                i10 = a3;
                                if (m11525b(a.mo12950g(i9))) {
                                    i10 = (a3 * 16) + m11534a(a.mo12950g(i9));
                                    i = i9;
                                }
                            }
                            i2++;
                            bArr[i2] = (byte) i10;
                        } else if (g2 == 97) {
                            i2++;
                            bArr[i2] = (byte) 7;
                        } else if (g2 == 98) {
                            i2++;
                            bArr[i2] = (byte) 8;
                        } else {
                            throw new C10523b("Invalid escape sequence: '\\" + ((char) g2) + '\'');
                        }
                        i++;
                    }
                } else {
                    throw new C10523b("Invalid escape sequence: '\\' at end of string.");
                }
            } else {
                i2++;
                bArr[i2] = g;
            }
            i++;
        }
        return bArr.length == i2 ? AbstractC10253g.m12968b(bArr) : AbstractC10253g.m12972a(bArr, 0, i2);
    }

    /* renamed from: a */
    public static C10527d m11535a() {
        return C10527d.f23916c;
    }

    /* renamed from: a */
    public static String m11533a(int i) {
        return i >= 0 ? Integer.toString(i) : Long.toString(i & 4294967295L);
    }

    /* renamed from: a */
    public static String m11532a(long j) {
        return j >= 0 ? Long.toString(j) : BigInteger.valueOf(j & Long.MAX_VALUE).setBit(63).toString();
    }

    /* renamed from: a */
    public static String m11531a(AbstractC10253g gVar) {
        return C10224a1.m13067a(gVar);
    }

    /* renamed from: a */
    public static String m11528a(String str) {
        return C10224a1.m13066a(str);
    }

    /* renamed from: a */
    public static String m11526a(byte[] bArr) {
        return C10224a1.m13065a(bArr);
    }

    /* renamed from: b */
    public static int m11523b(String str) throws NumberFormatException {
        return (int) m11527a(str, true, false);
    }

    /* renamed from: b */
    public static C10528e m11524b(Appendable appendable) {
        return new C10528e(appendable, false, null);
    }

    /* renamed from: b */
    public static boolean m11525b(byte b) {
        return (48 <= b && b <= 57) || (97 <= b && b <= 102) || (65 <= b && b <= 70);
    }

    /* renamed from: c */
    public static long m11521c(String str) throws NumberFormatException {
        return m11527a(str, true, true);
    }

    /* renamed from: c */
    public static boolean m11522c(byte b) {
        return 48 <= b && b <= 55;
    }

    /* renamed from: d */
    public static int m11520d(String str) throws NumberFormatException {
        return (int) m11527a(str, false, false);
    }

    /* renamed from: e */
    public static long m11519e(String str) throws NumberFormatException {
        return m11527a(str, false, true);
    }
}

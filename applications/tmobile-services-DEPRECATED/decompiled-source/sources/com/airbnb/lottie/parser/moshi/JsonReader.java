package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/JsonReader.class */
public abstract class JsonReader implements Closeable {

    /* renamed from: l */
    private static final String[] f6335l = new String[128];

    /* renamed from: f */
    int f6336f;

    /* renamed from: g */
    int[] f6337g = new int[32];

    /* renamed from: h */
    String[] f6338h = new String[32];

    /* renamed from: i */
    int[] f6339i = new int[32];

    /* renamed from: j */
    boolean f6340j;

    /* renamed from: k */
    boolean f6341k;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/JsonReader$Options.class */
    public static final class Options {

        /* renamed from: a */
        final String[] f6342a;

        /* renamed from: b */
        final okio.Options f6343b;

        private Options(String[] strArr, okio.Options options) {
            this.f6342a = strArr;
            this.f6343b = options;
        }

        /* renamed from: a */
        public static Options m15804a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i = 0; i < strArr.length; i++) {
                    JsonReader.m15809N(buffer, strArr[i]);
                    buffer.readByte();
                    byteStringArr[i] = buffer.mo80U();
                }
                return new Options((String[]) strArr.clone(), okio.Options.m114n(byteStringArr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/JsonReader$Token.class */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    static {
        for (int i = 0; i <= 31; i++) {
            f6335l[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f6335l;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m15809N(okio.BufferedSink r5, java.lang.String r6) throws java.io.IOException {
        /*
            java.lang.String[] r0 = com.airbnb.lottie.parser.moshi.JsonReader.f6335l
            r7 = r0
            r0 = r5
            r1 = 34
            okio.BufferedSink r0 = r0.mo100A(r1)
            r0 = r6
            int r0 = r0.length()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0018:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x008f
            r0 = r6
            r1 = r9
            char r0 = r0.charAt(r1)
            r11 = r0
            r0 = r11
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L_0x0044
            r0 = r7
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0063
            r0 = r10
            r14 = r0
            goto L_0x0085
        L_0x0044:
            r0 = r11
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r0 != r1) goto L_0x0053
            java.lang.String r0 = "\\u2028"
            r13 = r0
            goto L_0x0063
        L_0x0053:
            r0 = r10
            r14 = r0
            r0 = r11
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r0 != r1) goto L_0x0085
            java.lang.String r0 = "\\u2029"
            r13 = r0
        L_0x0063:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x0076
            r0 = r5
            r1 = r6
            r2 = r10
            r3 = r9
            okio.BufferedSink r0 = r0.mo96R(r1, r2, r3)
        L_0x0076:
            r0 = r5
            r1 = r13
            okio.BufferedSink r0 = r0.mo98M(r1)
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r14 = r0
        L_0x0085:
            int r9 = r9 + 1
            r0 = r14
            r10 = r0
            goto L_0x0018
        L_0x008f:
            r0 = r10
            r1 = r8
            if (r0 >= r1) goto L_0x00a0
            r0 = r5
            r1 = r6
            r2 = r10
            r3 = r8
            okio.BufferedSink r0 = r0.mo96R(r1, r2, r3)
        L_0x00a0:
            r0 = r5
            r1 = 34
            okio.BufferedSink r0 = r0.mo100A(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.m15809N(okio.BufferedSink, java.lang.String):void");
    }

    /* renamed from: t */
    public static JsonReader m15805t(BufferedSource bufferedSource) {
        return new JsonUtf8Reader(bufferedSource);
    }

    /* renamed from: B */
    public abstract Token mo15802B() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public final void m15810I(int i) {
        int i2 = this.f6336f;
        int[] iArr = this.f6337g;
        if (i2 == iArr.length) {
            if (i2 != 256) {
                this.f6337g = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f6338h;
                this.f6338h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f6339i;
                this.f6339i = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new JsonDataException("Nesting too deep at " + m15806i());
            }
        }
        int[] iArr3 = this.f6337g;
        int i3 = this.f6336f;
        this.f6336f = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: J */
    public abstract int mo15801J(Options options) throws IOException;

    /* renamed from: K */
    public abstract void mo15800K() throws IOException;

    /* renamed from: L */
    public abstract void mo15799L() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public final JsonEncodingException m15808V(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + m15806i());
    }

    /* renamed from: b */
    public abstract void mo15794b() throws IOException;

    /* renamed from: d */
    public abstract void mo15792d() throws IOException;

    /* renamed from: e */
    public abstract void mo15790e() throws IOException;

    /* renamed from: h */
    public abstract void mo15788h() throws IOException;

    /* renamed from: i */
    public final String m15806i() {
        return JsonScope.m15803a(this.f6336f, this.f6337g, this.f6338h, this.f6339i);
    }

    /* renamed from: k */
    public abstract boolean mo15785k() throws IOException;

    /* renamed from: l */
    public abstract boolean mo15784l() throws IOException;

    /* renamed from: m */
    public abstract double mo15783m() throws IOException;

    /* renamed from: o */
    public abstract int mo15782o() throws IOException;

    /* renamed from: p */
    public abstract String mo15780p() throws IOException;

    /* renamed from: q */
    public abstract String mo15779q() throws IOException;
}

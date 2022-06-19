package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9026ai;
import com.dropbox.core.p265v2.sharing.EnumC9119bm;
import com.dropbox.core.p265v2.sharing.EnumC9122bn;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.as */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as.class */
public final class C9058as {

    /* renamed from: a */
    public static final C9058as f31513a;

    /* renamed from: b */
    EnumC9061b f31514b;

    /* renamed from: c */
    private EnumC9122bn f31515c;

    /* renamed from: d */
    private EnumC9119bm f31516d;

    /* renamed from: e */
    private C9026ai f31517e;

    /* renamed from: com.dropbox.core.v2.sharing.as$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as$1.class */
    static final /* synthetic */ class C90591 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31518a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9061b.values().length];
            f31518a = iArr;
            try {
                iArr[EnumC9061b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31518a[EnumC9061b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31518a[EnumC9061b.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31518a[EnumC9061b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.as$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as$a.class */
    static final class C9060a extends AbstractC8559f<C9058as> {

        /* renamed from: a */
        public static final C9060a f31519a = new C9060a();

        C9060a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C9058as c9058as;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("user_error".equals(str)) {
                    expectField("user_error", jsonParser);
                    EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                    c9058as = C9058as.m24879a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9058as = C9058as.m24880a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else if ("no_explicit_access".equals(str)) {
                    C9026ai.C9027a c9027a = C9026ai.C9027a.f31443a;
                    c9058as = C9058as.m24882a(C9026ai.C9027a.m24902a(jsonParser, true));
                } else {
                    c9058as = C9058as.f31513a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9058as;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9058as c9058as = (C9058as) obj;
            int i = C90591.f31518a[c9058as.f31514b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                EnumC9122bn.C9124a.m24838a(c9058as.f31515c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9058as.f31516d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                C9026ai.C9027a c9027a = C9026ai.C9027a.f31443a;
                C9026ai.C9027a.m24903a(c9058as.f31517e, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.as$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as$b.class */
    public enum EnumC9061b {
        USER_ERROR,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new C9058as();
        EnumC9061b enumC9061b = EnumC9061b.OTHER;
        C9058as c9058as = new C9058as();
        c9058as.f31514b = enumC9061b;
        f31513a = c9058as;
    }

    private C9058as() {
    }

    /* renamed from: a */
    public static C9058as m24882a(C9026ai c9026ai) {
        if (c9026ai != null) {
            new C9058as();
            EnumC9061b enumC9061b = EnumC9061b.NO_EXPLICIT_ACCESS;
            C9058as c9058as = new C9058as();
            c9058as.f31514b = enumC9061b;
            c9058as.f31517e = c9026ai;
            return c9058as;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9058as m24880a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9058as();
            EnumC9061b enumC9061b = EnumC9061b.ACCESS_ERROR;
            C9058as c9058as = new C9058as();
            c9058as.f31514b = enumC9061b;
            c9058as.f31516d = enumC9119bm;
            return c9058as;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9058as m24879a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9058as();
            EnumC9061b enumC9061b = EnumC9061b.USER_ERROR;
            C9058as c9058as = new C9058as();
            c9058as.f31514b = enumC9061b;
            c9058as.f31515c = enumC9122bn;
            return c9058as;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9058as)) {
            return false;
        }
        C9058as c9058as = (C9058as) obj;
        if (this.f31514b != c9058as.f31514b) {
            return false;
        }
        int i = C90591.f31518a[this.f31514b.ordinal()];
        if (i == 1) {
            EnumC9122bn enumC9122bn = this.f31515c;
            EnumC9122bn enumC9122bn2 = c9058as.f31515c;
            return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
        } else if (i == 2) {
            EnumC9119bm enumC9119bm = this.f31516d;
            EnumC9119bm enumC9119bm2 = c9058as.f31516d;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        } else if (i != 3) {
            return i == 4;
        } else {
            C9026ai c9026ai = this.f31517e;
            C9026ai c9026ai2 = c9058as.f31517e;
            return c9026ai == c9026ai2 || c9026ai.equals(c9026ai2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31514b, this.f31515c, this.f31516d, this.f31517e});
    }

    public final String toString() {
        return C9060a.f31519a.serialize((C9060a) this, false);
    }
}

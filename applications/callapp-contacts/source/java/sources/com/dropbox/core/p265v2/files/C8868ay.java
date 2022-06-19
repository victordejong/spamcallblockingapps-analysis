package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ay */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay.class */
public final class C8868ay {

    /* renamed from: a */
    public static final C8868ay f31141a = m25024a(EnumC8871b.UNSUPPORTED_COMBINATION);

    /* renamed from: b */
    public static final C8868ay f31142b = m25024a(EnumC8871b.UNSUPPORTED_CONFIGURATION);

    /* renamed from: c */
    public static final C8868ay f31143c = m25024a(EnumC8871b.OTHER);

    /* renamed from: d */
    EnumC8871b f31144d;

    /* renamed from: e */
    private C8819ai f31145e;

    /* renamed from: com.dropbox.core.v2.files.ay$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay$1.class */
    public static final /* synthetic */ class C88691 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31146a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8871b.values().length];
            f31146a = iArr;
            try {
                iArr[EnumC8871b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31146a[EnumC8871b.UNSUPPORTED_COMBINATION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31146a[EnumC8871b.UNSUPPORTED_CONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31146a[EnumC8871b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ay$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay$a.class */
    public static final class C8870a extends AbstractC8559f<C8868ay> {

        /* renamed from: a */
        public static final C8870a f31147a = new C8870a();

        /* renamed from: a */
        public static C8868ay m25021a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8868ay c8868ay;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                z = true;
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
            } else {
                z = false;
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            }
            if (str != null) {
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c8868ay = C8868ay.m25025a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8868ay = "unsupported_combination".equals(str) ? C8868ay.f31141a : "unsupported_configuration".equals(str) ? C8868ay.f31142b : C8868ay.f31143c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8868ay;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8868ay c8868ay, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C88691.f31146a[c8868ay.f31144d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8868ay.f31145e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("unsupported_combination");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unsupported_configuration");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25021a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ay$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay$b.class */
    public enum EnumC8871b {
        PATH,
        UNSUPPORTED_COMBINATION,
        UNSUPPORTED_CONFIGURATION,
        OTHER
    }

    static {
        new C8868ay();
        new C8868ay();
        new C8868ay();
    }

    private C8868ay() {
    }

    /* renamed from: a */
    public static C8868ay m25025a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8868ay();
            EnumC8871b enumC8871b = EnumC8871b.PATH;
            C8868ay c8868ay = new C8868ay();
            c8868ay.f31144d = enumC8871b;
            c8868ay.f31145e = c8819ai;
            return c8868ay;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8868ay m25024a(EnumC8871b enumC8871b) {
        C8868ay c8868ay = new C8868ay();
        c8868ay.f31144d = enumC8871b;
        return c8868ay;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8868ay)) {
            return false;
        }
        C8868ay c8868ay = (C8868ay) obj;
        if (this.f31144d != c8868ay.f31144d) {
            return false;
        }
        int i = C88691.f31146a[this.f31144d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        C8819ai c8819ai = this.f31145e;
        C8819ai c8819ai2 = c8868ay.f31145e;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31144d, this.f31145e});
    }

    public final String toString() {
        return C8870a.f31147a.serialize((C8870a) this, false);
    }
}

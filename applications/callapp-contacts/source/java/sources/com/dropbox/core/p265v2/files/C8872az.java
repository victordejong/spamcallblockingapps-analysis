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
/* renamed from: com.dropbox.core.v2.files.az */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az.class */
public final class C8872az {

    /* renamed from: a */
    public static final C8872az f31148a = m25019a(EnumC8875b.UNSUPPORTED_EXTENSION);

    /* renamed from: b */
    public static final C8872az f31149b = m25019a(EnumC8875b.UNSUPPORTED_IMAGE);

    /* renamed from: c */
    public static final C8872az f31150c = m25019a(EnumC8875b.CONVERSION_ERROR);

    /* renamed from: d */
    EnumC8875b f31151d;

    /* renamed from: e */
    private C8819ai f31152e;

    /* renamed from: com.dropbox.core.v2.files.az$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az$1.class */
    static final /* synthetic */ class C88731 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31153a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8875b.values().length];
            f31153a = iArr;
            try {
                iArr[EnumC8875b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31153a[EnumC8875b.UNSUPPORTED_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31153a[EnumC8875b.UNSUPPORTED_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31153a[EnumC8875b.CONVERSION_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.az$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az$a.class */
    static final class C8874a extends AbstractC8559f<C8872az> {

        /* renamed from: a */
        public static final C8874a f31154a = new C8874a();

        C8874a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8872az c8872az;
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
                    c8872az = C8872az.m25020a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("unsupported_extension".equals(str)) {
                    c8872az = C8872az.f31148a;
                } else if ("unsupported_image".equals(str)) {
                    c8872az = C8872az.f31149b;
                } else if (!"conversion_error".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c8872az = C8872az.f31150c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8872az;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8872az c8872az = (C8872az) obj;
            int i = C88731.f31153a[c8872az.f31151d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8872az.f31152e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("unsupported_extension");
            } else if (i == 3) {
                jsonGenerator.writeString("unsupported_image");
            } else if (i == 4) {
                jsonGenerator.writeString("conversion_error");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + c8872az.f31151d);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.az$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az$b.class */
    public enum EnumC8875b {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR
    }

    static {
        new C8872az();
        new C8872az();
        new C8872az();
    }

    private C8872az() {
    }

    /* renamed from: a */
    public static C8872az m25020a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8872az();
            EnumC8875b enumC8875b = EnumC8875b.PATH;
            C8872az c8872az = new C8872az();
            c8872az.f31151d = enumC8875b;
            c8872az.f31152e = c8819ai;
            return c8872az;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8872az m25019a(EnumC8875b enumC8875b) {
        C8872az c8872az = new C8872az();
        c8872az.f31151d = enumC8875b;
        return c8872az;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8872az)) {
            return false;
        }
        C8872az c8872az = (C8872az) obj;
        if (this.f31151d != c8872az.f31151d) {
            return false;
        }
        int i = C88731.f31153a[this.f31151d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        C8819ai c8819ai = this.f31152e;
        C8819ai c8819ai2 = c8872az.f31152e;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31151d, this.f31152e});
    }

    public final String toString() {
        return C8874a.f31154a.serialize((C8874a) this, false);
    }
}

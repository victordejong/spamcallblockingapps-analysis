package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.at */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at.class */
public final class C8856at {

    /* renamed from: a */
    public static final C8856at f31123a = m25031a(EnumC8859b.INTERNAL_ERROR);

    /* renamed from: b */
    public static final C8856at f31124b = m25031a(EnumC8859b.OTHER);

    /* renamed from: c */
    EnumC8859b f31125c;

    /* renamed from: d */
    private C8819ai f31126d;

    /* renamed from: e */
    private String f31127e;

    /* renamed from: com.dropbox.core.v2.files.at$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at$1.class */
    static final /* synthetic */ class C88571 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31128a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8859b.values().length];
            f31128a = iArr;
            try {
                iArr[EnumC8859b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31128a[EnumC8859b.INVALID_ARGUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31128a[EnumC8859b.INTERNAL_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31128a[EnumC8859b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.at$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at$a.class */
    static final class C8858a extends AbstractC8559f<C8856at> {

        /* renamed from: a */
        public static final C8858a f31129a = new C8858a();

        C8858a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8856at c8856at;
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
                    c8856at = C8856at.m25032a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("invalid_argument".equals(str)) {
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("invalid_argument", jsonParser);
                        str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                    }
                    c8856at = str2 == null ? C8856at.m25033a() : C8856at.m25029a(str2);
                } else {
                    c8856at = "internal_error".equals(str) ? C8856at.f31123a : C8856at.f31124b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8856at;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8856at c8856at = (C8856at) obj;
            int i = C88571.f31128a[c8856at.f31125c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8856at.f31126d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                if (i != 3) {
                    jsonGenerator.writeString("other");
                } else {
                    jsonGenerator.writeString("internal_error");
                }
            } else {
                jsonGenerator.writeStartObject();
                writeTag("invalid_argument", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_argument");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8856at.f31127e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.at$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at$b.class */
    public enum EnumC8859b {
        PATH,
        INVALID_ARGUMENT,
        INTERNAL_ERROR,
        OTHER
    }

    static {
        new C8856at();
        new C8856at();
    }

    private C8856at() {
    }

    /* renamed from: a */
    public static C8856at m25033a() {
        return m25029a((String) null);
    }

    /* renamed from: a */
    public static C8856at m25032a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8856at();
            EnumC8859b enumC8859b = EnumC8859b.PATH;
            C8856at c8856at = new C8856at();
            c8856at.f31125c = enumC8859b;
            c8856at.f31126d = c8819ai;
            return c8856at;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8856at m25031a(EnumC8859b enumC8859b) {
        C8856at c8856at = new C8856at();
        c8856at.f31125c = enumC8859b;
        return c8856at;
    }

    /* renamed from: a */
    public static C8856at m25029a(String str) {
        new C8856at();
        EnumC8859b enumC8859b = EnumC8859b.INVALID_ARGUMENT;
        C8856at c8856at = new C8856at();
        c8856at.f31125c = enumC8859b;
        c8856at.f31127e = str;
        return c8856at;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8856at)) {
            return false;
        }
        C8856at c8856at = (C8856at) obj;
        if (this.f31125c != c8856at.f31125c) {
            return false;
        }
        int i = C88571.f31128a[this.f31125c.ordinal()];
        if (i == 1) {
            C8819ai c8819ai = this.f31126d;
            C8819ai c8819ai2 = c8856at.f31126d;
            return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
        } else if (i != 2) {
            return i == 3 || i == 4;
        } else {
            String str = this.f31127e;
            String str2 = c8856at.f31127e;
            if (str == str2) {
                return true;
            }
            return str != null && str.equals(str2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31125c, this.f31126d, this.f31127e});
    }

    public final String toString() {
        return C8858a.f31129a.serialize((C8858a) this, false);
    }
}

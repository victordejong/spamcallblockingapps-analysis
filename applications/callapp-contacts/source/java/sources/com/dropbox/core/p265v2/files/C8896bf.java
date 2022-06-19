package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8900bg;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.bf */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf.class */
public final class C8896bf {

    /* renamed from: a */
    public static final C8896bf f31203a = m24995a(EnumC8899b.NOT_FOUND);

    /* renamed from: b */
    public static final C8896bf f31204b = m24995a(EnumC8899b.CLOSED);

    /* renamed from: c */
    public static final C8896bf f31205c = m24995a(EnumC8899b.NOT_CLOSED);

    /* renamed from: d */
    public static final C8896bf f31206d = m24995a(EnumC8899b.TOO_LARGE);

    /* renamed from: e */
    public static final C8896bf f31207e = m24995a(EnumC8899b.OTHER);

    /* renamed from: f */
    EnumC8899b f31208f;

    /* renamed from: g */
    private C8900bg f31209g;

    /* renamed from: com.dropbox.core.v2.files.bf$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf$1.class */
    public static final /* synthetic */ class C88971 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31210a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8899b.values().length];
            f31210a = iArr;
            try {
                iArr[EnumC8899b.NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31210a[EnumC8899b.INCORRECT_OFFSET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31210a[EnumC8899b.CLOSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31210a[EnumC8899b.NOT_CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31210a[EnumC8899b.TOO_LARGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31210a[EnumC8899b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bf$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf$a.class */
    static final class C8898a extends AbstractC8559f<C8896bf> {

        /* renamed from: a */
        public static final C8898a f31211a = new C8898a();

        C8898a() {
        }

        /* renamed from: a */
        public static C8896bf m24991a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C8896bf c8896bf;
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
                if ("not_found".equals(str)) {
                    c8896bf = C8896bf.f31203a;
                } else if ("incorrect_offset".equals(str)) {
                    C8900bg.C8901a c8901a = C8900bg.C8901a.f31213a;
                    c8896bf = C8896bf.m24993a(C8900bg.C8901a.m24989a(jsonParser, true));
                } else {
                    c8896bf = "closed".equals(str) ? C8896bf.f31204b : "not_closed".equals(str) ? C8896bf.f31205c : "too_large".equals(str) ? C8896bf.f31206d : C8896bf.f31207e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8896bf;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8896bf c8896bf, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C88971.f31210a[c8896bf.f31208f.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("not_found");
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("incorrect_offset", jsonGenerator);
                C8900bg.C8901a c8901a = C8900bg.C8901a.f31213a;
                C8900bg.C8901a.m24990a(c8896bf.f31209g, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("closed");
            } else if (i == 4) {
                jsonGenerator.writeString("not_closed");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_large");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24991a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bf$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf$b.class */
    public enum EnumC8899b {
        NOT_FOUND,
        INCORRECT_OFFSET,
        CLOSED,
        NOT_CLOSED,
        TOO_LARGE,
        OTHER
    }

    static {
        new C8896bf();
        new C8896bf();
        new C8896bf();
        new C8896bf();
        new C8896bf();
    }

    private C8896bf() {
    }

    /* renamed from: a */
    private static C8896bf m24995a(EnumC8899b enumC8899b) {
        C8896bf c8896bf = new C8896bf();
        c8896bf.f31208f = enumC8899b;
        return c8896bf;
    }

    /* renamed from: a */
    public static C8896bf m24993a(C8900bg c8900bg) {
        if (c8900bg != null) {
            new C8896bf();
            EnumC8899b enumC8899b = EnumC8899b.INCORRECT_OFFSET;
            C8896bf c8896bf = new C8896bf();
            c8896bf.f31208f = enumC8899b;
            c8896bf.f31209g = c8900bg;
            return c8896bf;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8896bf)) {
            return false;
        }
        C8896bf c8896bf = (C8896bf) obj;
        if (this.f31208f != c8896bf.f31208f) {
            return false;
        }
        switch (C88971.f31210a[this.f31208f.ordinal()]) {
            case 1:
                return true;
            case 2:
                C8900bg c8900bg = this.f31209g;
                C8900bg c8900bg2 = c8896bf.f31209g;
                return c8900bg == c8900bg2 || c8900bg.equals(c8900bg2);
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31208f, this.f31209g});
    }

    public final String toString() {
        return C8898a.f31211a.serialize((C8898a) this, false);
    }
}

package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.clouddocs.EnumC8704c;
import com.dropbox.core.p265v2.clouddocs.EnumC8715g;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.clouddocs.h */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h.class */
public final class C8718h {

    /* renamed from: a */
    public static final C8718h f30839a;

    /* renamed from: b */
    EnumC8721b f30840b;

    /* renamed from: c */
    private EnumC8715g f30841c;

    /* renamed from: d */
    private EnumC8704c f30842d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.clouddocs.h$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h$1.class */
    public static final /* synthetic */ class C87191 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30843a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8721b.values().length];
            f30843a = iArr;
            try {
                iArr[EnumC8721b.LOCKING_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30843a[EnumC8721b.GENERIC_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30843a[EnumC8721b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.h$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h$a.class */
    static final class C8720a extends AbstractC8559f<C8718h> {

        /* renamed from: a */
        public static final C8720a f30844a = new C8720a();

        C8720a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8718h c8718h;
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
                if ("locking_error".equals(str)) {
                    expectField("locking_error", jsonParser);
                    EnumC8715g.C8717a c8717a = EnumC8715g.C8717a.f30838a;
                    c8718h = C8718h.m25145a(EnumC8715g.C8717a.m25147a(jsonParser));
                } else if ("generic_error".equals(str)) {
                    expectField("generic_error", jsonParser);
                    EnumC8704c.C8706a c8706a = EnumC8704c.C8706a.f30827a;
                    c8718h = C8718h.m25146a(EnumC8704c.C8706a.m25151a(jsonParser));
                } else {
                    c8718h = C8718h.f30839a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8718h;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8718h c8718h = (C8718h) obj;
            int i = C87191.f30843a[c8718h.f30840b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("locking_error", jsonGenerator);
                jsonGenerator.writeFieldName("locking_error");
                EnumC8715g.C8717a c8717a = EnumC8715g.C8717a.f30838a;
                EnumC8715g.C8717a.m25148a(c8718h.f30841c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("generic_error", jsonGenerator);
                jsonGenerator.writeFieldName("generic_error");
                EnumC8704c.C8706a c8706a = EnumC8704c.C8706a.f30827a;
                EnumC8704c.C8706a.m25152a(c8718h.f30842d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.h$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h$b.class */
    public enum EnumC8721b {
        LOCKING_ERROR,
        GENERIC_ERROR,
        OTHER
    }

    static {
        new C8718h();
        EnumC8721b enumC8721b = EnumC8721b.OTHER;
        C8718h c8718h = new C8718h();
        c8718h.f30840b = enumC8721b;
        f30839a = c8718h;
    }

    private C8718h() {
    }

    /* renamed from: a */
    public static C8718h m25146a(EnumC8704c enumC8704c) {
        if (enumC8704c != null) {
            new C8718h();
            EnumC8721b enumC8721b = EnumC8721b.GENERIC_ERROR;
            C8718h c8718h = new C8718h();
            c8718h.f30840b = enumC8721b;
            c8718h.f30842d = enumC8704c;
            return c8718h;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8718h m25145a(EnumC8715g enumC8715g) {
        if (enumC8715g != null) {
            new C8718h();
            EnumC8721b enumC8721b = EnumC8721b.LOCKING_ERROR;
            C8718h c8718h = new C8718h();
            c8718h.f30840b = enumC8721b;
            c8718h.f30841c = enumC8715g;
            return c8718h;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8718h)) {
            return false;
        }
        C8718h c8718h = (C8718h) obj;
        if (this.f30840b != c8718h.f30840b) {
            return false;
        }
        int i = C87191.f30843a[this.f30840b.ordinal()];
        if (i == 1) {
            EnumC8715g enumC8715g = this.f30841c;
            EnumC8715g enumC8715g2 = c8718h.f30841c;
            return enumC8715g == enumC8715g2 || enumC8715g.equals(enumC8715g2);
        } else if (i != 2) {
            return i == 3;
        } else {
            EnumC8704c enumC8704c = this.f30842d;
            EnumC8704c enumC8704c2 = c8718h.f30842d;
            return enumC8704c == enumC8704c2 || enumC8704c.equals(enumC8704c2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30840b, this.f30841c, this.f30842d});
    }

    public final String toString() {
        return C8720a.f30844a.serialize((C8720a) this, false);
    }
}

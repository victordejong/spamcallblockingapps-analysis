package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.fileproperties.C8743c;
import com.dropbox.core.p265v2.files.C8903bi;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.bd */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd.class */
public final class C8888bd {

    /* renamed from: a */
    public static final C8888bd f31188a;

    /* renamed from: b */
    EnumC8891b f31189b;

    /* renamed from: c */
    private C8903bi f31190c;

    /* renamed from: d */
    private C8743c f31191d;

    /* renamed from: com.dropbox.core.v2.files.bd$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd$1.class */
    static final /* synthetic */ class C88891 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31192a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8891b.values().length];
            f31192a = iArr;
            try {
                iArr[EnumC8891b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31192a[EnumC8891b.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31192a[EnumC8891b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bd$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd$a.class */
    static final class C8890a extends AbstractC8559f<C8888bd> {

        /* renamed from: a */
        public static final C8890a f31193a = new C8890a();

        C8890a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C8888bd c8888bd;
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
                if ("path".equals(str)) {
                    C8903bi.C8904a c8904a = C8903bi.C8904a.f31216a;
                    c8888bd = C8888bd.m25004a(C8903bi.C8904a.m24986a(jsonParser, true));
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    C8743c.C8745a c8745a = C8743c.C8745a.f30894a;
                    c8888bd = C8888bd.m25006a(C8743c.C8745a.m25121a(jsonParser));
                } else if (!"other".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c8888bd = C8888bd.f31188a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8888bd;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8888bd c8888bd = (C8888bd) obj;
            int i = C88891.f31192a[c8888bd.f31189b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                C8903bi.C8904a c8904a = C8903bi.C8904a.f31216a;
                C8903bi.C8904a.m24987a(c8888bd.f31190c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                if (i == 3) {
                    jsonGenerator.writeString("other");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + c8888bd.f31189b);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                C8743c.C8745a.f30894a.serialize(c8888bd.f31191d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bd$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd$b.class */
    public enum EnumC8891b {
        PATH,
        PROPERTIES_ERROR,
        OTHER
    }

    static {
        new C8888bd();
        EnumC8891b enumC8891b = EnumC8891b.OTHER;
        C8888bd c8888bd = new C8888bd();
        c8888bd.f31189b = enumC8891b;
        f31188a = c8888bd;
    }

    private C8888bd() {
    }

    /* renamed from: a */
    public static C8888bd m25006a(C8743c c8743c) {
        if (c8743c != null) {
            new C8888bd();
            EnumC8891b enumC8891b = EnumC8891b.PROPERTIES_ERROR;
            C8888bd c8888bd = new C8888bd();
            c8888bd.f31189b = enumC8891b;
            c8888bd.f31191d = c8743c;
            return c8888bd;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8888bd m25004a(C8903bi c8903bi) {
        if (c8903bi != null) {
            new C8888bd();
            EnumC8891b enumC8891b = EnumC8891b.PATH;
            C8888bd c8888bd = new C8888bd();
            c8888bd.f31189b = enumC8891b;
            c8888bd.f31190c = c8903bi;
            return c8888bd;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8888bd)) {
            return false;
        }
        C8888bd c8888bd = (C8888bd) obj;
        if (this.f31189b != c8888bd.f31189b) {
            return false;
        }
        int i = C88891.f31192a[this.f31189b.ordinal()];
        if (i == 1) {
            C8903bi c8903bi = this.f31190c;
            C8903bi c8903bi2 = c8888bd.f31190c;
            return c8903bi == c8903bi2 || c8903bi.equals(c8903bi2);
        } else if (i != 2) {
            return i == 3;
        } else {
            C8743c c8743c = this.f31191d;
            C8743c c8743c2 = c8888bd.f31191d;
            return c8743c == c8743c2 || c8743c.equals(c8743c2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31189b, this.f31190c, this.f31191d});
    }

    public final String toString() {
        return C8890a.f31193a.serialize((C8890a) this, false);
    }
}

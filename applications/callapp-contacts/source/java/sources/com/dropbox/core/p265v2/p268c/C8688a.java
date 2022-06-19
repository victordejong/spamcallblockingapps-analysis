package com.dropbox.core.p265v2.p268c;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.c.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a.class */
public final class C8688a {

    /* renamed from: a */
    public static final C8688a f30801a = m25166a(EnumC8691b.HOME);

    /* renamed from: b */
    public static final C8688a f30802b = m25166a(EnumC8691b.OTHER);

    /* renamed from: c */
    EnumC8691b f30803c;

    /* renamed from: d */
    private String f30804d;

    /* renamed from: e */
    private String f30805e;

    /* renamed from: com.dropbox.core.v2.c.a$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a$1.class */
    static final /* synthetic */ class C86891 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30806a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8691b.values().length];
            f30806a = iArr;
            try {
                iArr[EnumC8691b.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30806a[EnumC8691b.ROOT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30806a[EnumC8691b.NAMESPACE_ID.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30806a[EnumC8691b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.c.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a$a.class */
    public static final class C8690a extends AbstractC8559f<C8688a> {

        /* renamed from: a */
        public static final C8690a f30807a = new C8690a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8688a c8688a;
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
                if ("home".equals(str)) {
                    c8688a = C8688a.f30801a;
                } else if ("root".equals(str)) {
                    expectField("root", jsonParser);
                    c8688a = C8688a.m25164a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("namespace_id".equals(str)) {
                    expectField("namespace_id", jsonParser);
                    c8688a = C8688a.m25162b(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else {
                    c8688a = C8688a.f30802b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8688a;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8688a c8688a = (C8688a) obj;
            int i = C86891.f30806a[c8688a.f30803c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("home");
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("root", jsonGenerator);
                jsonGenerator.writeFieldName("root");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8688a.f30804d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("namespace_id", jsonGenerator);
                jsonGenerator.writeFieldName("namespace_id");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8688a.f30805e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.c.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a$b.class */
    public enum EnumC8691b {
        HOME,
        ROOT,
        NAMESPACE_ID,
        OTHER
    }

    static {
        new C8688a();
        new C8688a();
    }

    private C8688a() {
    }

    /* renamed from: a */
    private static C8688a m25166a(EnumC8691b enumC8691b) {
        C8688a c8688a = new C8688a();
        c8688a.f30803c = enumC8691b;
        return c8688a;
    }

    /* renamed from: a */
    public static C8688a m25164a(String str) {
        if (str != null) {
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8688a();
            EnumC8691b enumC8691b = EnumC8691b.ROOT;
            C8688a c8688a = new C8688a();
            c8688a.f30803c = enumC8691b;
            c8688a.f30804d = str;
            return c8688a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public static C8688a m25162b(String str) {
        if (str != null) {
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8688a();
            EnumC8691b enumC8691b = EnumC8691b.NAMESPACE_ID;
            C8688a c8688a = new C8688a();
            c8688a.f30803c = enumC8691b;
            c8688a.f30805e = str;
            return c8688a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8688a)) {
            return false;
        }
        C8688a c8688a = (C8688a) obj;
        if (this.f30803c != c8688a.f30803c) {
            return false;
        }
        int i = C86891.f30806a[this.f30803c.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            String str = this.f30804d;
            String str2 = c8688a.f30804d;
            return str == str2 || str.equals(str2);
        } else if (i != 3) {
            return i == 4;
        } else {
            String str3 = this.f30805e;
            String str4 = c8688a.f30805e;
            return str3 == str4 || str3.equals(str4);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30803c, this.f30804d, this.f30805e});
    }

    public final String toString() {
        return C8690a.f30807a.serialize((C8690a) this, false);
    }
}

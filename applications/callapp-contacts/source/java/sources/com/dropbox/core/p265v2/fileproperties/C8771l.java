package com.dropbox.core.p265v2.fileproperties;

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
/* renamed from: com.dropbox.core.v2.fileproperties.l */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l.class */
public final class C8771l {

    /* renamed from: a */
    public static final C8771l f30936a = m25101a(EnumC8774b.RESTRICTED_CONTENT);

    /* renamed from: b */
    public static final C8771l f30937b = m25101a(EnumC8774b.OTHER);

    /* renamed from: c */
    EnumC8774b f30938c;

    /* renamed from: d */
    private String f30939d;

    /* renamed from: com.dropbox.core.v2.fileproperties.l$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l$1.class */
    public static final /* synthetic */ class C87721 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30940a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8774b.values().length];
            f30940a = iArr;
            try {
                iArr[EnumC8774b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30940a[EnumC8774b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30940a[EnumC8774b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.l$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l$a.class */
    public static final class C8773a extends AbstractC8559f<C8771l> {

        /* renamed from: a */
        public static final C8773a f30941a = new C8773a();

        /* renamed from: a */
        public static C8771l m25097a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8771l c8771l;
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
                if ("template_not_found".equals(str)) {
                    expectField("template_not_found", jsonParser);
                    c8771l = C8771l.m25099a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else {
                    c8771l = "restricted_content".equals(str) ? C8771l.f30936a : C8771l.f30937b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8771l;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8771l c8771l, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C87721.f30940a[c8771l.f30938c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString("other");
                    return;
                } else {
                    jsonGenerator.writeString("restricted_content");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("template_not_found", jsonGenerator);
            jsonGenerator.writeFieldName("template_not_found");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8771l.f30939d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25097a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.l$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l$b.class */
    public enum EnumC8774b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER
    }

    static {
        new C8771l();
        new C8771l();
    }

    private C8771l() {
    }

    /* renamed from: a */
    private static C8771l m25101a(EnumC8774b enumC8774b) {
        C8771l c8771l = new C8771l();
        c8771l.f30938c = enumC8774b;
        return c8771l;
    }

    /* renamed from: a */
    public static C8771l m25099a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8771l();
            EnumC8774b enumC8774b = EnumC8774b.TEMPLATE_NOT_FOUND;
            C8771l c8771l = new C8771l();
            c8771l.f30938c = enumC8774b;
            c8771l.f30939d = str;
            return c8771l;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8771l)) {
            return false;
        }
        C8771l c8771l = (C8771l) obj;
        if (this.f30938c != c8771l.f30938c) {
            return false;
        }
        int i = C87721.f30940a[this.f30938c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        String str = this.f30939d;
        String str2 = c8771l.f30939d;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30938c, this.f30939d});
    }

    public final String toString() {
        return C8773a.f30941a.serialize((C8773a) this, false);
    }
}

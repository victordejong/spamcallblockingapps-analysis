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
/* renamed from: com.dropbox.core.v2.fileproperties.f */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f.class */
public final class C8754f {

    /* renamed from: a */
    public static final C8754f f30906a = m25113a(EnumC8757b.RESTRICTED_CONTENT);

    /* renamed from: b */
    public static final C8754f f30907b = m25113a(EnumC8757b.OTHER);

    /* renamed from: c */
    public static final C8754f f30908c = m25113a(EnumC8757b.CONFLICTING_PROPERTY_NAMES);

    /* renamed from: d */
    public static final C8754f f30909d = m25113a(EnumC8757b.TOO_MANY_PROPERTIES);

    /* renamed from: e */
    public static final C8754f f30910e = m25113a(EnumC8757b.TOO_MANY_TEMPLATES);

    /* renamed from: f */
    public static final C8754f f30911f = m25113a(EnumC8757b.TEMPLATE_ATTRIBUTE_TOO_LARGE);

    /* renamed from: g */
    EnumC8757b f30912g;

    /* renamed from: h */
    private String f30913h;

    /* renamed from: com.dropbox.core.v2.fileproperties.f$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f$1.class */
    static final /* synthetic */ class C87551 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30914a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8757b.values().length];
            f30914a = iArr;
            try {
                iArr[EnumC8757b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30914a[EnumC8757b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30914a[EnumC8757b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30914a[EnumC8757b.CONFLICTING_PROPERTY_NAMES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30914a[EnumC8757b.TOO_MANY_PROPERTIES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30914a[EnumC8757b.TOO_MANY_TEMPLATES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30914a[EnumC8757b.TEMPLATE_ATTRIBUTE_TOO_LARGE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.f$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f$a.class */
    public static final class C8756a extends AbstractC8559f<C8754f> {

        /* renamed from: a */
        public static final C8756a f30915a = new C8756a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8754f c8754f;
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
                    c8754f = C8754f.m25111a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    c8754f = C8754f.f30906a;
                } else if ("other".equals(str)) {
                    c8754f = C8754f.f30907b;
                } else if ("conflicting_property_names".equals(str)) {
                    c8754f = C8754f.f30908c;
                } else if ("too_many_properties".equals(str)) {
                    c8754f = C8754f.f30909d;
                } else if ("too_many_templates".equals(str)) {
                    c8754f = C8754f.f30910e;
                } else if (!"template_attribute_too_large".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c8754f = C8754f.f30911f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8754f;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8754f c8754f = (C8754f) obj;
            switch (C87551.f30914a[c8754f.f30912g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8754f.f30913h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 3:
                    jsonGenerator.writeString("other");
                    return;
                case 4:
                    jsonGenerator.writeString("conflicting_property_names");
                    return;
                case 5:
                    jsonGenerator.writeString("too_many_properties");
                    return;
                case 6:
                    jsonGenerator.writeString("too_many_templates");
                    return;
                case 7:
                    jsonGenerator.writeString("template_attribute_too_large");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c8754f.f30912g);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.f$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f$b.class */
    public enum EnumC8757b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        CONFLICTING_PROPERTY_NAMES,
        TOO_MANY_PROPERTIES,
        TOO_MANY_TEMPLATES,
        TEMPLATE_ATTRIBUTE_TOO_LARGE
    }

    static {
        new C8754f();
        new C8754f();
        new C8754f();
        new C8754f();
        new C8754f();
        new C8754f();
    }

    private C8754f() {
    }

    /* renamed from: a */
    private static C8754f m25113a(EnumC8757b enumC8757b) {
        C8754f c8754f = new C8754f();
        c8754f.f30912g = enumC8757b;
        return c8754f;
    }

    /* renamed from: a */
    public static C8754f m25111a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8754f();
            EnumC8757b enumC8757b = EnumC8757b.TEMPLATE_NOT_FOUND;
            C8754f c8754f = new C8754f();
            c8754f.f30912g = enumC8757b;
            c8754f.f30913h = str;
            return c8754f;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8754f)) {
            return false;
        }
        C8754f c8754f = (C8754f) obj;
        if (this.f30912g != c8754f.f30912g) {
            return false;
        }
        switch (C87551.f30914a[this.f30912g.ordinal()]) {
            case 1:
                String str = this.f30913h;
                String str2 = c8754f.f30913h;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30912g, this.f30913h});
    }

    public final String toString() {
        return C8756a.f30915a.serialize((C8756a) this, false);
    }
}

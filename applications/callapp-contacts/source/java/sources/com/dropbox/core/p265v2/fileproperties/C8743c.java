package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8750e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.fileproperties.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c.class */
public final class C8743c {

    /* renamed from: a */
    public static final C8743c f30884a = m25127a(EnumC8746b.RESTRICTED_CONTENT);

    /* renamed from: b */
    public static final C8743c f30885b = m25127a(EnumC8746b.OTHER);

    /* renamed from: c */
    public static final C8743c f30886c = m25127a(EnumC8746b.UNSUPPORTED_FOLDER);

    /* renamed from: d */
    public static final C8743c f30887d = m25127a(EnumC8746b.PROPERTY_FIELD_TOO_LARGE);

    /* renamed from: e */
    public static final C8743c f30888e = m25127a(EnumC8746b.DOES_NOT_FIT_TEMPLATE);

    /* renamed from: f */
    public static final C8743c f30889f = m25127a(EnumC8746b.DUPLICATE_PROPERTY_GROUPS);

    /* renamed from: g */
    EnumC8746b f30890g;

    /* renamed from: h */
    private String f30891h;

    /* renamed from: i */
    private C8750e f30892i;

    /* renamed from: com.dropbox.core.v2.fileproperties.c$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c$1.class */
    public static final /* synthetic */ class C87441 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30893a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8746b.values().length];
            f30893a = iArr;
            try {
                iArr[EnumC8746b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30893a[EnumC8746b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30893a[EnumC8746b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30893a[EnumC8746b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30893a[EnumC8746b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30893a[EnumC8746b.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30893a[EnumC8746b.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f30893a[EnumC8746b.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c$a.class */
    public static final class C8745a extends AbstractC8559f<C8743c> {

        /* renamed from: a */
        public static final C8745a f30894a = new C8745a();

        /* renamed from: a */
        public static C8743c m25121a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8743c c8743c;
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
                    c8743c = C8743c.m25124a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    c8743c = C8743c.f30884a;
                } else if ("other".equals(str)) {
                    c8743c = C8743c.f30885b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8750e.C8752a c8752a = C8750e.C8752a.f30905a;
                    c8743c = C8743c.m25125a(C8750e.C8752a.m25114a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    c8743c = C8743c.f30886c;
                } else if ("property_field_too_large".equals(str)) {
                    c8743c = C8743c.f30887d;
                } else if ("does_not_fit_template".equals(str)) {
                    c8743c = C8743c.f30888e;
                } else if (!"duplicate_property_groups".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c8743c = C8743c.f30889f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8743c;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8743c c8743c, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C87441.f30893a[c8743c.f30890g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8743c.f30891h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 3:
                    jsonGenerator.writeString("other");
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("path", jsonGenerator);
                    jsonGenerator.writeFieldName("path");
                    C8750e.C8752a.f30905a.serialize(c8743c.f30892i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("unsupported_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("property_field_too_large");
                    return;
                case 7:
                    jsonGenerator.writeString("does_not_fit_template");
                    return;
                case 8:
                    jsonGenerator.writeString("duplicate_property_groups");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c8743c.f30890g);
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25121a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.c$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c$b.class */
    public enum EnumC8746b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE,
        DUPLICATE_PROPERTY_GROUPS
    }

    static {
        new C8743c();
        new C8743c();
        new C8743c();
        new C8743c();
        new C8743c();
        new C8743c();
    }

    private C8743c() {
    }

    /* renamed from: a */
    private static C8743c m25127a(EnumC8746b enumC8746b) {
        C8743c c8743c = new C8743c();
        c8743c.f30890g = enumC8746b;
        return c8743c;
    }

    /* renamed from: a */
    public static C8743c m25125a(C8750e c8750e) {
        if (c8750e != null) {
            new C8743c();
            EnumC8746b enumC8746b = EnumC8746b.PATH;
            C8743c c8743c = new C8743c();
            c8743c.f30890g = enumC8746b;
            c8743c.f30892i = c8750e;
            return c8743c;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8743c m25124a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8743c();
            EnumC8746b enumC8746b = EnumC8746b.TEMPLATE_NOT_FOUND;
            C8743c c8743c = new C8743c();
            c8743c.f30890g = enumC8746b;
            c8743c.f30891h = str;
            return c8743c;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8743c)) {
            return false;
        }
        C8743c c8743c = (C8743c) obj;
        if (this.f30890g != c8743c.f30890g) {
            return false;
        }
        switch (C87441.f30893a[this.f30890g.ordinal()]) {
            case 1:
                String str = this.f30891h;
                String str2 = c8743c.f30891h;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                C8750e c8750e = this.f30892i;
                C8750e c8750e2 = c8743c.f30892i;
                return c8750e == c8750e2 || c8750e.equals(c8750e2);
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30890g, this.f30891h, this.f30892i});
    }

    public final String toString() {
        return C8745a.f30894a.serialize((C8745a) this, false);
    }
}

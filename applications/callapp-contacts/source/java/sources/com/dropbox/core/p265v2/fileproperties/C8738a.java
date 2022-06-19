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
/* renamed from: com.dropbox.core.v2.fileproperties.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a.class */
public final class C8738a {

    /* renamed from: a */
    public static final C8738a f30871a = m25132a(EnumC8741b.RESTRICTED_CONTENT);

    /* renamed from: b */
    public static final C8738a f30872b = m25132a(EnumC8741b.OTHER);

    /* renamed from: c */
    public static final C8738a f30873c = m25132a(EnumC8741b.UNSUPPORTED_FOLDER);

    /* renamed from: d */
    public static final C8738a f30874d = m25132a(EnumC8741b.PROPERTY_FIELD_TOO_LARGE);

    /* renamed from: e */
    public static final C8738a f30875e = m25132a(EnumC8741b.DOES_NOT_FIT_TEMPLATE);

    /* renamed from: f */
    public static final C8738a f30876f = m25132a(EnumC8741b.DUPLICATE_PROPERTY_GROUPS);

    /* renamed from: g */
    public static final C8738a f30877g = m25132a(EnumC8741b.PROPERTY_GROUP_ALREADY_EXISTS);

    /* renamed from: h */
    EnumC8741b f30878h;

    /* renamed from: i */
    private String f30879i;

    /* renamed from: j */
    private C8750e f30880j;

    /* renamed from: com.dropbox.core.v2.fileproperties.a$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a$1.class */
    static final /* synthetic */ class C87391 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30881a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8741b.values().length];
            f30881a = iArr;
            try {
                iArr[EnumC8741b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30881a[EnumC8741b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30881a[EnumC8741b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30881a[EnumC8741b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30881a[EnumC8741b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30881a[EnumC8741b.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30881a[EnumC8741b.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f30881a[EnumC8741b.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f30881a[EnumC8741b.PROPERTY_GROUP_ALREADY_EXISTS.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a$a.class */
    public static final class C8740a extends AbstractC8559f<C8738a> {

        /* renamed from: a */
        public static final C8740a f30882a = new C8740a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8738a c8738a;
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
                    c8738a = C8738a.m25129a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    c8738a = C8738a.f30871a;
                } else if ("other".equals(str)) {
                    c8738a = C8738a.f30872b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8750e.C8752a c8752a = C8750e.C8752a.f30905a;
                    c8738a = C8738a.m25130a(C8750e.C8752a.m25114a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    c8738a = C8738a.f30873c;
                } else if ("property_field_too_large".equals(str)) {
                    c8738a = C8738a.f30874d;
                } else if ("does_not_fit_template".equals(str)) {
                    c8738a = C8738a.f30875e;
                } else if ("duplicate_property_groups".equals(str)) {
                    c8738a = C8738a.f30876f;
                } else if (!"property_group_already_exists".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c8738a = C8738a.f30877g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8738a;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8738a c8738a = (C8738a) obj;
            switch (C87391.f30881a[c8738a.f30878h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8738a.f30879i, jsonGenerator);
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
                    C8750e.C8752a.f30905a.serialize(c8738a.f30880j, jsonGenerator);
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
                case 9:
                    jsonGenerator.writeString("property_group_already_exists");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c8738a.f30878h);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a$b.class */
    public enum EnumC8741b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE,
        DUPLICATE_PROPERTY_GROUPS,
        PROPERTY_GROUP_ALREADY_EXISTS
    }

    static {
        new C8738a();
        new C8738a();
        new C8738a();
        new C8738a();
        new C8738a();
        new C8738a();
        new C8738a();
    }

    private C8738a() {
    }

    /* renamed from: a */
    private static C8738a m25132a(EnumC8741b enumC8741b) {
        C8738a c8738a = new C8738a();
        c8738a.f30878h = enumC8741b;
        return c8738a;
    }

    /* renamed from: a */
    public static C8738a m25130a(C8750e c8750e) {
        if (c8750e != null) {
            new C8738a();
            EnumC8741b enumC8741b = EnumC8741b.PATH;
            C8738a c8738a = new C8738a();
            c8738a.f30878h = enumC8741b;
            c8738a.f30880j = c8750e;
            return c8738a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8738a m25129a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8738a();
            EnumC8741b enumC8741b = EnumC8741b.TEMPLATE_NOT_FOUND;
            C8738a c8738a = new C8738a();
            c8738a.f30878h = enumC8741b;
            c8738a.f30879i = str;
            return c8738a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8738a)) {
            return false;
        }
        C8738a c8738a = (C8738a) obj;
        if (this.f30878h != c8738a.f30878h) {
            return false;
        }
        switch (C87391.f30881a[this.f30878h.ordinal()]) {
            case 1:
                String str = this.f30879i;
                String str2 = c8738a.f30879i;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                C8750e c8750e = this.f30880j;
                C8750e c8750e2 = c8738a.f30880j;
                return c8750e == c8750e2 || c8750e.equals(c8750e2);
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30878h, this.f30879i, this.f30880j});
    }

    public final String toString() {
        return C8740a.f30882a.serialize((C8740a) this, false);
    }
}

package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8750e;
import com.dropbox.core.p265v2.fileproperties.EnumC8747d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.fileproperties.n */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n.class */
public final class C8779n {

    /* renamed from: a */
    public static final C8779n f30947a = m25092a(EnumC8782b.RESTRICTED_CONTENT);

    /* renamed from: b */
    public static final C8779n f30948b = m25092a(EnumC8782b.OTHER);

    /* renamed from: c */
    public static final C8779n f30949c = m25092a(EnumC8782b.UNSUPPORTED_FOLDER);

    /* renamed from: d */
    public static final C8779n f30950d = m25092a(EnumC8782b.PROPERTY_FIELD_TOO_LARGE);

    /* renamed from: e */
    public static final C8779n f30951e = m25092a(EnumC8782b.DOES_NOT_FIT_TEMPLATE);

    /* renamed from: f */
    public static final C8779n f30952f = m25092a(EnumC8782b.DUPLICATE_PROPERTY_GROUPS);

    /* renamed from: g */
    EnumC8782b f30953g;

    /* renamed from: h */
    private String f30954h;

    /* renamed from: i */
    private C8750e f30955i;

    /* renamed from: j */
    private EnumC8747d f30956j;

    /* renamed from: com.dropbox.core.v2.fileproperties.n$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n$1.class */
    static final /* synthetic */ class C87801 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30957a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8782b.values().length];
            f30957a = iArr;
            try {
                iArr[EnumC8782b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30957a[EnumC8782b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30957a[EnumC8782b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30957a[EnumC8782b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30957a[EnumC8782b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30957a[EnumC8782b.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30957a[EnumC8782b.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f30957a[EnumC8782b.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f30957a[EnumC8782b.PROPERTY_GROUP_LOOKUP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.n$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n$a.class */
    public static final class C8781a extends AbstractC8559f<C8779n> {

        /* renamed from: a */
        public static final C8781a f30958a = new C8781a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8779n c8779n;
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
                    c8779n = C8779n.m25090a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    c8779n = C8779n.f30947a;
                } else if ("other".equals(str)) {
                    c8779n = C8779n.f30948b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8750e.C8752a c8752a = C8750e.C8752a.f30905a;
                    c8779n = C8779n.m25093a(C8750e.C8752a.m25114a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    c8779n = C8779n.f30949c;
                } else if ("property_field_too_large".equals(str)) {
                    c8779n = C8779n.f30950d;
                } else if ("does_not_fit_template".equals(str)) {
                    c8779n = C8779n.f30951e;
                } else if ("duplicate_property_groups".equals(str)) {
                    c8779n = C8779n.f30952f;
                } else if (!"property_group_lookup".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("property_group_lookup", jsonParser);
                    EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                    c8779n = C8779n.m25094a(EnumC8747d.C8749a.m25119a(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8779n;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8779n c8779n = (C8779n) obj;
            switch (C87801.f30957a[c8779n.f30953g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8779n.f30954h, jsonGenerator);
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
                    C8750e.C8752a.f30905a.serialize(c8779n.f30955i, jsonGenerator);
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
                    jsonGenerator.writeStartObject();
                    writeTag("property_group_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("property_group_lookup");
                    EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                    EnumC8747d.C8749a.m25120a(c8779n.f30956j, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c8779n.f30953g);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.n$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n$b.class */
    public enum EnumC8782b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE,
        DUPLICATE_PROPERTY_GROUPS,
        PROPERTY_GROUP_LOOKUP
    }

    static {
        new C8779n();
        new C8779n();
        new C8779n();
        new C8779n();
        new C8779n();
        new C8779n();
    }

    private C8779n() {
    }

    /* renamed from: a */
    public static C8779n m25094a(EnumC8747d enumC8747d) {
        if (enumC8747d != null) {
            new C8779n();
            EnumC8782b enumC8782b = EnumC8782b.PROPERTY_GROUP_LOOKUP;
            C8779n c8779n = new C8779n();
            c8779n.f30953g = enumC8782b;
            c8779n.f30956j = enumC8747d;
            return c8779n;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8779n m25093a(C8750e c8750e) {
        if (c8750e != null) {
            new C8779n();
            EnumC8782b enumC8782b = EnumC8782b.PATH;
            C8779n c8779n = new C8779n();
            c8779n.f30953g = enumC8782b;
            c8779n.f30955i = c8750e;
            return c8779n;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8779n m25092a(EnumC8782b enumC8782b) {
        C8779n c8779n = new C8779n();
        c8779n.f30953g = enumC8782b;
        return c8779n;
    }

    /* renamed from: a */
    public static C8779n m25090a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8779n();
            EnumC8782b enumC8782b = EnumC8782b.TEMPLATE_NOT_FOUND;
            C8779n c8779n = new C8779n();
            c8779n.f30953g = enumC8782b;
            c8779n.f30954h = str;
            return c8779n;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8779n)) {
            return false;
        }
        C8779n c8779n = (C8779n) obj;
        if (this.f30953g != c8779n.f30953g) {
            return false;
        }
        switch (C87801.f30957a[this.f30953g.ordinal()]) {
            case 1:
                String str = this.f30954h;
                String str2 = c8779n.f30954h;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                C8750e c8750e = this.f30955i;
                C8750e c8750e2 = c8779n.f30955i;
                return c8750e == c8750e2 || c8750e.equals(c8750e2);
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            case 9:
                EnumC8747d enumC8747d = this.f30956j;
                EnumC8747d enumC8747d2 = c8779n.f30956j;
                return enumC8747d == enumC8747d2 || enumC8747d.equals(enumC8747d2);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30953g, this.f30954h, this.f30955i, this.f30956j});
    }

    public final String toString() {
        return C8781a.f30958a.serialize((C8781a) this, false);
    }
}

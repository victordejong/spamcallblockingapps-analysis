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
/* renamed from: com.dropbox.core.v2.fileproperties.k */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k.class */
public final class C8767k {

    /* renamed from: a */
    public static final C8767k f30927a = m25106a(EnumC8770b.RESTRICTED_CONTENT);

    /* renamed from: b */
    public static final C8767k f30928b = m25106a(EnumC8770b.OTHER);

    /* renamed from: c */
    public static final C8767k f30929c = m25106a(EnumC8770b.UNSUPPORTED_FOLDER);

    /* renamed from: d */
    EnumC8770b f30930d;

    /* renamed from: e */
    private String f30931e;

    /* renamed from: f */
    private C8750e f30932f;

    /* renamed from: g */
    private EnumC8747d f30933g;

    /* renamed from: com.dropbox.core.v2.fileproperties.k$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k$1.class */
    static final /* synthetic */ class C87681 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30934a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8770b.values().length];
            f30934a = iArr;
            try {
                iArr[EnumC8770b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30934a[EnumC8770b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30934a[EnumC8770b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30934a[EnumC8770b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30934a[EnumC8770b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30934a[EnumC8770b.PROPERTY_GROUP_LOOKUP.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.k$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k$a.class */
    public static final class C8769a extends AbstractC8559f<C8767k> {

        /* renamed from: a */
        public static final C8769a f30935a = new C8769a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8767k c8767k;
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
                    c8767k = C8767k.m25104a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    c8767k = C8767k.f30927a;
                } else if ("other".equals(str)) {
                    c8767k = C8767k.f30928b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8750e.C8752a c8752a = C8750e.C8752a.f30905a;
                    c8767k = C8767k.m25107a(C8750e.C8752a.m25114a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    c8767k = C8767k.f30929c;
                } else if (!"property_group_lookup".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("property_group_lookup", jsonParser);
                    EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                    c8767k = C8767k.m25108a(EnumC8747d.C8749a.m25119a(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8767k;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8767k c8767k = (C8767k) obj;
            switch (C87681.f30934a[c8767k.f30930d.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8767k.f30931e, jsonGenerator);
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
                    C8750e.C8752a.f30905a.serialize(c8767k.f30932f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("unsupported_folder");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("property_group_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("property_group_lookup");
                    EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                    EnumC8747d.C8749a.m25120a(c8767k.f30933g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c8767k.f30930d);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.k$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k$b.class */
    public enum EnumC8770b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_GROUP_LOOKUP
    }

    static {
        new C8767k();
        new C8767k();
        new C8767k();
    }

    private C8767k() {
    }

    /* renamed from: a */
    public static C8767k m25108a(EnumC8747d enumC8747d) {
        if (enumC8747d != null) {
            new C8767k();
            EnumC8770b enumC8770b = EnumC8770b.PROPERTY_GROUP_LOOKUP;
            C8767k c8767k = new C8767k();
            c8767k.f30930d = enumC8770b;
            c8767k.f30933g = enumC8747d;
            return c8767k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8767k m25107a(C8750e c8750e) {
        if (c8750e != null) {
            new C8767k();
            EnumC8770b enumC8770b = EnumC8770b.PATH;
            C8767k c8767k = new C8767k();
            c8767k.f30930d = enumC8770b;
            c8767k.f30932f = c8750e;
            return c8767k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8767k m25106a(EnumC8770b enumC8770b) {
        C8767k c8767k = new C8767k();
        c8767k.f30930d = enumC8770b;
        return c8767k;
    }

    /* renamed from: a */
    public static C8767k m25104a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8767k();
            EnumC8770b enumC8770b = EnumC8770b.TEMPLATE_NOT_FOUND;
            C8767k c8767k = new C8767k();
            c8767k.f30930d = enumC8770b;
            c8767k.f30931e = str;
            return c8767k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8767k)) {
            return false;
        }
        C8767k c8767k = (C8767k) obj;
        if (this.f30930d != c8767k.f30930d) {
            return false;
        }
        switch (C87681.f30934a[this.f30930d.ordinal()]) {
            case 1:
                String str = this.f30931e;
                String str2 = c8767k.f30931e;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                C8750e c8750e = this.f30932f;
                C8750e c8750e2 = c8767k.f30932f;
                return c8750e == c8750e2 || c8750e.equals(c8750e2);
            case 5:
                return true;
            case 6:
                EnumC8747d enumC8747d = this.f30933g;
                EnumC8747d enumC8747d2 = c8767k.f30933g;
                return enumC8747d == enumC8747d2 || enumC8747d.equals(enumC8747d2);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30930d, this.f30931e, this.f30932f, this.f30933g});
    }

    public final String toString() {
        return C8769a.f30935a.serialize((C8769a) this, false);
    }
}

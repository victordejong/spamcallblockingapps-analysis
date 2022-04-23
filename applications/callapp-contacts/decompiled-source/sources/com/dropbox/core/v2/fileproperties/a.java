package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f18022a = a(b.RESTRICTED_CONTENT);

    /* renamed from: b  reason: collision with root package name */
    public static final a f18023b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final a f18024c = a(b.UNSUPPORTED_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final a f18025d = a(b.PROPERTY_FIELD_TOO_LARGE);
    public static final a e = a(b.DOES_NOT_FIT_TEMPLATE);
    public static final a f = a(b.DUPLICATE_PROPERTY_GROUPS);
    public static final a g = a(b.PROPERTY_GROUP_ALREADY_EXISTS);
    b h;
    private String i;
    private e j;

    /* renamed from: com.dropbox.core.v2.fileproperties.a$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18026a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18026a = iArr;
            try {
                iArr[b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18026a[b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18026a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18026a[b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18026a[b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18026a[b.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18026a[b.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18026a[b.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18026a[b.PROPERTY_GROUP_ALREADY_EXISTS.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a$a.class */
    public static final class C0366a extends f<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0366a f18027a = new C0366a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            a aVar;
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
                    aVar = a.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    aVar = a.f18022a;
                } else if ("other".equals(str)) {
                    aVar = a.f18023b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    e.a aVar2 = e.a.f18042a;
                    aVar = a.a(e.a.a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    aVar = a.f18024c;
                } else if ("property_field_too_large".equals(str)) {
                    aVar = a.f18025d;
                } else if ("does_not_fit_template".equals(str)) {
                    aVar = a.e;
                } else if ("duplicate_property_groups".equals(str)) {
                    aVar = a.f;
                } else if ("property_group_already_exists".equals(str)) {
                    aVar = a.g;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a aVar = (a) obj;
            switch (AnonymousClass1.f18026a[aVar.h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    d.h.f17717a.serialize((d.h) aVar.i, jsonGenerator);
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
                    e.a.f18042a.serialize(aVar.j, jsonGenerator);
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
                    throw new IllegalArgumentException("Unrecognized tag: " + aVar.h);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/a$b.class */
    public enum b {
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
        new a();
        new a();
        new a();
        new a();
        new a();
        new a();
        new a();
    }

    private a() {
    }

    private static a a(b bVar) {
        a aVar = new a();
        aVar.h = bVar;
        return aVar;
    }

    public static a a(e eVar) {
        if (eVar != null) {
            new a();
            b bVar = b.PATH;
            a aVar = new a();
            aVar.h = bVar;
            aVar.j = eVar;
            return aVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static a a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            new a();
            b bVar = b.TEMPLATE_NOT_FOUND;
            a aVar = new a();
            aVar.h = bVar;
            aVar.i = str;
            return aVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.h != aVar.h) {
            return false;
        }
        switch (AnonymousClass1.f18026a[this.h.ordinal()]) {
            case 1:
                String str = this.i;
                String str2 = aVar.i;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                e eVar = this.j;
                e eVar2 = aVar.j;
                return eVar == eVar2 || eVar.equals(eVar2);
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.h, this.i, this.j});
    }

    public final String toString() {
        return C0366a.f18027a.serialize((C0366a) this, false);
    }
}

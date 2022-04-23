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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f18029a = a(b.RESTRICTED_CONTENT);

    /* renamed from: b  reason: collision with root package name */
    public static final c f18030b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final c f18031c = a(b.UNSUPPORTED_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final c f18032d = a(b.PROPERTY_FIELD_TOO_LARGE);
    public static final c e = a(b.DOES_NOT_FIT_TEMPLATE);
    public static final c f = a(b.DUPLICATE_PROPERTY_GROUPS);
    b g;
    private String h;
    private e i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.fileproperties.c$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18033a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18033a = iArr;
            try {
                iArr[b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18033a[b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18033a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18033a[b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18033a[b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18033a[b.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18033a[b.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18033a[b.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c$a.class */
    public static final class a extends f<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18034a = new a();

        public static c a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            c cVar;
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
                    cVar = c.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    cVar = c.f18029a;
                } else if ("other".equals(str)) {
                    cVar = c.f18030b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    e.a aVar = e.a.f18042a;
                    cVar = c.a(e.a.a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    cVar = c.f18031c;
                } else if ("property_field_too_large".equals(str)) {
                    cVar = c.f18032d;
                } else if ("does_not_fit_template".equals(str)) {
                    cVar = c.e;
                } else if ("duplicate_property_groups".equals(str)) {
                    cVar = c.f;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return cVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(c cVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18033a[cVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    d.h.f17717a.serialize((d.h) cVar.h, jsonGenerator);
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
                    e.a.f18042a.serialize(cVar.i, jsonGenerator);
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
                    throw new IllegalArgumentException("Unrecognized tag: " + cVar.g);
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/c$b.class */
    public enum b {
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
        new c();
        new c();
        new c();
        new c();
        new c();
        new c();
    }

    private c() {
    }

    private static c a(b bVar) {
        c cVar = new c();
        cVar.g = bVar;
        return cVar;
    }

    public static c a(e eVar) {
        if (eVar != null) {
            new c();
            b bVar = b.PATH;
            c cVar = new c();
            cVar.g = bVar;
            cVar.i = eVar;
            return cVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static c a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            new c();
            b bVar = b.TEMPLATE_NOT_FOUND;
            c cVar = new c();
            cVar.g = bVar;
            cVar.h = str;
            return cVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.g != cVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18033a[this.g.ordinal()]) {
            case 1:
                String str = this.h;
                String str2 = cVar.h;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                e eVar = this.i;
                e eVar2 = cVar.i;
                return eVar == eVar2 || eVar.equals(eVar2);
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.g, this.h, this.i});
    }

    public final String toString() {
        return a.f18034a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f18043a = a(b.RESTRICTED_CONTENT);

    /* renamed from: b  reason: collision with root package name */
    public static final f f18044b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final f f18045c = a(b.CONFLICTING_PROPERTY_NAMES);

    /* renamed from: d  reason: collision with root package name */
    public static final f f18046d = a(b.TOO_MANY_PROPERTIES);
    public static final f e = a(b.TOO_MANY_TEMPLATES);
    public static final f f = a(b.TEMPLATE_ATTRIBUTE_TOO_LARGE);
    b g;
    private String h;

    /* renamed from: com.dropbox.core.v2.fileproperties.f$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18047a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18047a = iArr;
            try {
                iArr[b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18047a[b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18047a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18047a[b.CONFLICTING_PROPERTY_NAMES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18047a[b.TOO_MANY_PROPERTIES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18047a[b.TOO_MANY_TEMPLATES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18047a[b.TEMPLATE_ATTRIBUTE_TOO_LARGE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f$a.class */
    public static final class a extends com.dropbox.core.a.f<f> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18048a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            f fVar;
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
                    fVar = f.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    fVar = f.f18043a;
                } else if ("other".equals(str)) {
                    fVar = f.f18044b;
                } else if ("conflicting_property_names".equals(str)) {
                    fVar = f.f18045c;
                } else if ("too_many_properties".equals(str)) {
                    fVar = f.f18046d;
                } else if ("too_many_templates".equals(str)) {
                    fVar = f.e;
                } else if ("template_attribute_too_large".equals(str)) {
                    fVar = f.f;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return fVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            f fVar = (f) obj;
            switch (AnonymousClass1.f18047a[fVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    d.h.f17717a.serialize((d.h) fVar.h, jsonGenerator);
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
                    throw new IllegalArgumentException("Unrecognized tag: " + fVar.g);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/f$b.class */
    public enum b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        CONFLICTING_PROPERTY_NAMES,
        TOO_MANY_PROPERTIES,
        TOO_MANY_TEMPLATES,
        TEMPLATE_ATTRIBUTE_TOO_LARGE
    }

    static {
        new f();
        new f();
        new f();
        new f();
        new f();
        new f();
    }

    private f() {
    }

    private static f a(b bVar) {
        f fVar = new f();
        fVar.g = bVar;
        return fVar;
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            new f();
            b bVar = b.TEMPLATE_NOT_FOUND;
            f fVar = new f();
            fVar.g = bVar;
            fVar.h = str;
            return fVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.g != fVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18047a[this.g.ordinal()]) {
            case 1:
                String str = this.h;
                String str2 = fVar.h;
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.g, this.h});
    }

    public final String toString() {
        return a.f18048a.serialize((a) this, false);
    }
}

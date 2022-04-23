package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.d;
import com.dropbox.core.v2.fileproperties.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f18077a = a(b.RESTRICTED_CONTENT);

    /* renamed from: b  reason: collision with root package name */
    public static final n f18078b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final n f18079c = a(b.UNSUPPORTED_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final n f18080d = a(b.PROPERTY_FIELD_TOO_LARGE);
    public static final n e = a(b.DOES_NOT_FIT_TEMPLATE);
    public static final n f = a(b.DUPLICATE_PROPERTY_GROUPS);
    b g;
    private String h;
    private e i;
    private d j;

    /* renamed from: com.dropbox.core.v2.fileproperties.n$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18081a;

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
            f18081a = iArr;
            try {
                iArr[b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18081a[b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18081a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18081a[b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18081a[b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18081a[b.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18081a[b.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18081a[b.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18081a[b.PROPERTY_GROUP_LOOKUP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n$a.class */
    public static final class a extends f<n> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18082a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            n nVar;
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
                    nVar = n.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    nVar = n.f18077a;
                } else if ("other".equals(str)) {
                    nVar = n.f18078b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    e.a aVar = e.a.f18042a;
                    nVar = n.a(e.a.a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    nVar = n.f18079c;
                } else if ("property_field_too_large".equals(str)) {
                    nVar = n.f18080d;
                } else if ("does_not_fit_template".equals(str)) {
                    nVar = n.e;
                } else if ("duplicate_property_groups".equals(str)) {
                    nVar = n.f;
                } else if ("property_group_lookup".equals(str)) {
                    expectField("property_group_lookup", jsonParser);
                    d.a aVar2 = d.a.f18036a;
                    nVar = n.a(d.a.a(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return nVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            n nVar = (n) obj;
            switch (AnonymousClass1.f18081a[nVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    d.h.f17717a.serialize((d.h) nVar.h, jsonGenerator);
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
                    e.a.f18042a.serialize(nVar.i, jsonGenerator);
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
                    d.a aVar = d.a.f18036a;
                    d.a.a(nVar.j, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + nVar.g);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/n$b.class */
    public enum b {
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
        new n();
        new n();
        new n();
        new n();
        new n();
        new n();
    }

    private n() {
    }

    public static n a(d dVar) {
        if (dVar != null) {
            new n();
            b bVar = b.PROPERTY_GROUP_LOOKUP;
            n nVar = new n();
            nVar.g = bVar;
            nVar.j = dVar;
            return nVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static n a(e eVar) {
        if (eVar != null) {
            new n();
            b bVar = b.PATH;
            n nVar = new n();
            nVar.g = bVar;
            nVar.i = eVar;
            return nVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static n a(b bVar) {
        n nVar = new n();
        nVar.g = bVar;
        return nVar;
    }

    public static n a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            new n();
            b bVar = b.TEMPLATE_NOT_FOUND;
            n nVar = new n();
            nVar.g = bVar;
            nVar.h = str;
            return nVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (this.g != nVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18081a[this.g.ordinal()]) {
            case 1:
                String str = this.h;
                String str2 = nVar.h;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                e eVar = this.i;
                e eVar2 = nVar.i;
                return eVar == eVar2 || eVar.equals(eVar2);
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            case 9:
                d dVar = this.j;
                d dVar2 = nVar.j;
                return dVar == dVar2 || dVar.equals(dVar2);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.g, this.h, this.i, this.j});
    }

    public final String toString() {
        return a.f18082a.serialize((a) this, false);
    }
}

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f18060a = a(b.RESTRICTED_CONTENT);

    /* renamed from: b  reason: collision with root package name */
    public static final k f18061b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final k f18062c = a(b.UNSUPPORTED_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    b f18063d;
    private String e;
    private e f;
    private d g;

    /* renamed from: com.dropbox.core.v2.fileproperties.k$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18064a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18064a = iArr;
            try {
                iArr[b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18064a[b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18064a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18064a[b.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18064a[b.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18064a[b.PROPERTY_GROUP_LOOKUP.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k$a.class */
    public static final class a extends f<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18065a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            k kVar;
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
                    kVar = k.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("restricted_content".equals(str)) {
                    kVar = k.f18060a;
                } else if ("other".equals(str)) {
                    kVar = k.f18061b;
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    e.a aVar = e.a.f18042a;
                    kVar = k.a(e.a.a(jsonParser));
                } else if ("unsupported_folder".equals(str)) {
                    kVar = k.f18062c;
                } else if ("property_group_lookup".equals(str)) {
                    expectField("property_group_lookup", jsonParser);
                    d.a aVar2 = d.a.f18036a;
                    kVar = k.a(d.a.a(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return kVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            k kVar = (k) obj;
            switch (AnonymousClass1.f18064a[kVar.f18063d.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    d.h.f17717a.serialize((d.h) kVar.e, jsonGenerator);
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
                    e.a.f18042a.serialize(kVar.f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("unsupported_folder");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("property_group_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("property_group_lookup");
                    d.a aVar = d.a.f18036a;
                    d.a.a(kVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + kVar.f18063d);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/k$b.class */
    public enum b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_GROUP_LOOKUP
    }

    static {
        new k();
        new k();
        new k();
    }

    private k() {
    }

    public static k a(d dVar) {
        if (dVar != null) {
            new k();
            b bVar = b.PROPERTY_GROUP_LOOKUP;
            k kVar = new k();
            kVar.f18063d = bVar;
            kVar.g = dVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static k a(e eVar) {
        if (eVar != null) {
            new k();
            b bVar = b.PATH;
            k kVar = new k();
            kVar.f18063d = bVar;
            kVar.f = eVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static k a(b bVar) {
        k kVar = new k();
        kVar.f18063d = bVar;
        return kVar;
    }

    public static k a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            new k();
            b bVar = b.TEMPLATE_NOT_FOUND;
            k kVar = new k();
            kVar.f18063d = bVar;
            kVar.e = str;
            return kVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f18063d != kVar.f18063d) {
            return false;
        }
        switch (AnonymousClass1.f18064a[this.f18063d.ordinal()]) {
            case 1:
                String str = this.e;
                String str2 = kVar.e;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                e eVar = this.f;
                e eVar2 = kVar.f;
                return eVar == eVar2 || eVar.equals(eVar2);
            case 5:
                return true;
            case 6:
                d dVar = this.g;
                d dVar2 = kVar.g;
                return dVar == dVar2 || dVar.equals(dVar2);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18063d, this.e, this.f, this.g});
    }

    public final String toString() {
        return a.f18065a.serialize((a) this, false);
    }
}

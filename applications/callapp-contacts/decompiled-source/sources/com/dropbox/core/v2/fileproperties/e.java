package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f18037a = a(b.NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final e f18038b = a(b.NOT_FILE);

    /* renamed from: c  reason: collision with root package name */
    public static final e f18039c = a(b.NOT_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final e f18040d = a(b.RESTRICTED_CONTENT);
    public static final e e = a(b.OTHER);
    b f;
    private String g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.fileproperties.e$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18041a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18041a = iArr;
            try {
                iArr[b.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18041a[b.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18041a[b.NOT_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18041a[b.NOT_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18041a[b.RESTRICTED_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18041a[b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e$a.class */
    static final class a extends f<e> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18042a = new a();

        a() {
        }

        public static e a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            e eVar;
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
                if ("malformed_path".equals(str)) {
                    expectField("malformed_path", jsonParser);
                    eVar = e.a(d.h.f17717a.deserialize(jsonParser));
                } else {
                    eVar = "not_found".equals(str) ? e.f18037a : "not_file".equals(str) ? e.f18038b : "not_folder".equals(str) ? e.f18039c : "restricted_content".equals(str) ? e.f18040d : e.e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return eVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(e eVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18041a[eVar.f.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("malformed_path", jsonGenerator);
                jsonGenerator.writeFieldName("malformed_path");
                d.h.f17717a.serialize((d.h) eVar.g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("not_found");
            } else if (i == 3) {
                jsonGenerator.writeString("not_file");
            } else if (i == 4) {
                jsonGenerator.writeString("not_folder");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("restricted_content");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e$b.class */
    public enum b {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        OTHER
    }

    static {
        new e();
        new e();
        new e();
        new e();
        new e();
    }

    private e() {
    }

    private static e a(b bVar) {
        e eVar = new e();
        eVar.f = bVar;
        return eVar;
    }

    public static e a(String str) {
        if (str != null) {
            new e();
            b bVar = b.MALFORMED_PATH;
            e eVar = new e();
            eVar.f = bVar;
            eVar.g = str;
            return eVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f != eVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18041a[this.f.ordinal()]) {
            case 1:
                String str = this.g;
                String str2 = eVar.g;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f, this.g});
    }

    public final String toString() {
        return a.f18042a.serialize((a) this, false);
    }
}

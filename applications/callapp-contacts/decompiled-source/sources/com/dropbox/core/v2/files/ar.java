package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar.class */
public final class ar {

    /* renamed from: a  reason: collision with root package name */
    public static final ar f18195a = a(b.INVALID_COPY_REFERENCE);

    /* renamed from: b  reason: collision with root package name */
    public static final ar f18196b = a(b.NO_PERMISSION);

    /* renamed from: c  reason: collision with root package name */
    public static final ar f18197c = a(b.NOT_FOUND);

    /* renamed from: d  reason: collision with root package name */
    public static final ar f18198d = a(b.TOO_MANY_FILES);
    public static final ar e = a(b.OTHER);
    b f;
    private bl g;

    /* renamed from: com.dropbox.core.v2.files.ar$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18199a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18199a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18199a[b.INVALID_COPY_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18199a[b.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18199a[b.NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18199a[b.TOO_MANY_FILES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18199a[b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar$a.class */
    static final class a extends f<ar> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18200a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ar arVar;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    bl.a aVar = bl.a.f18290a;
                    arVar = ar.a(bl.a.a(jsonParser));
                } else {
                    arVar = "invalid_copy_reference".equals(str) ? ar.f18195a : "no_permission".equals(str) ? ar.f18196b : "not_found".equals(str) ? ar.f18197c : "too_many_files".equals(str) ? ar.f18198d : ar.e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return arVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ar arVar = (ar) obj;
            int i = AnonymousClass1.f18199a[arVar.f.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                bl.a.f18290a.serialize(arVar.g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("invalid_copy_reference");
            } else if (i == 3) {
                jsonGenerator.writeString("no_permission");
            } else if (i == 4) {
                jsonGenerator.writeString("not_found");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar$b.class */
    public enum b {
        PATH,
        INVALID_COPY_REFERENCE,
        NO_PERMISSION,
        NOT_FOUND,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new ar();
        new ar();
        new ar();
        new ar();
        new ar();
    }

    private ar() {
    }

    private static ar a(b bVar) {
        ar arVar = new ar();
        arVar.f = bVar;
        return arVar;
    }

    public static ar a(bl blVar) {
        if (blVar != null) {
            new ar();
            b bVar = b.PATH;
            ar arVar = new ar();
            arVar.f = bVar;
            arVar.g = blVar;
            return arVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ar)) {
            return false;
        }
        ar arVar = (ar) obj;
        if (this.f != arVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18199a[this.f.ordinal()]) {
            case 1:
                bl blVar = this.g;
                bl blVar2 = arVar.g;
                return blVar == blVar2 || blVar.equals(blVar2);
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
        return a.f18200a.serialize((a) this, false);
    }
}

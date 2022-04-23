package com.dropbox.core.v2.files;

import com.dropbox.core.v2.files.ai;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f18305a = a(b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: b  reason: collision with root package name */
    public static final f f18306b = a(b.TOO_MANY_FILES);

    /* renamed from: c  reason: collision with root package name */
    public static final f f18307c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18308d;
    private ai e;
    private bl f;

    /* renamed from: com.dropbox.core.v2.files.f$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18309a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18309a = iArr;
            try {
                iArr[b.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18309a[b.PATH_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18309a[b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18309a[b.TOO_MANY_FILES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18309a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f$a.class */
    static final class a extends com.dropbox.core.a.f<f> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18310a = new a();

        a() {
        }

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
                if ("path_lookup".equals(str)) {
                    expectField("path_lookup", jsonParser);
                    ai.a aVar = ai.a.f18163a;
                    fVar = f.a(ai.a.a(jsonParser));
                } else if ("path_write".equals(str)) {
                    expectField("path_write", jsonParser);
                    bl.a aVar2 = bl.a.f18290a;
                    fVar = f.a(bl.a.a(jsonParser));
                } else {
                    fVar = "too_many_write_operations".equals(str) ? f.f18305a : "too_many_files".equals(str) ? f.f18306b : f.f18307c;
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
            int i = AnonymousClass1.f18309a[fVar.f18308d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path_lookup", jsonGenerator);
                jsonGenerator.writeFieldName("path_lookup");
                ai.a.f18163a.serialize(fVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path_write", jsonGenerator);
                jsonGenerator.writeFieldName("path_write");
                bl.a.f18290a.serialize(fVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("too_many_write_operations");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f$b.class */
    public enum b {
        PATH_LOOKUP,
        PATH_WRITE,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new f();
        new f();
        new f();
    }

    private f() {
    }

    public static f a(ai aiVar) {
        if (aiVar != null) {
            new f();
            b bVar = b.PATH_LOOKUP;
            f fVar = new f();
            fVar.f18308d = bVar;
            fVar.e = aiVar;
            return fVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static f a(bl blVar) {
        if (blVar != null) {
            new f();
            b bVar = b.PATH_WRITE;
            f fVar = new f();
            fVar.f18308d = bVar;
            fVar.f = blVar;
            return fVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static f a(b bVar) {
        f fVar = new f();
        fVar.f18308d = bVar;
        return fVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f18308d != fVar.f18308d) {
            return false;
        }
        int i = AnonymousClass1.f18309a[this.f18308d.ordinal()];
        if (i == 1) {
            ai aiVar = this.e;
            ai aiVar2 = fVar.e;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        } else if (i != 2) {
            return i == 3 || i == 4 || i == 5;
        } else {
            bl blVar = this.f;
            bl blVar2 = fVar.f;
            return blVar == blVar2 || blVar.equals(blVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18308d, this.e, this.f});
    }

    public final String toString() {
        return a.f18310a.serialize((a) this, false);
    }
}

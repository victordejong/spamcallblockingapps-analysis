package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai.class */
public final class ai {

    /* renamed from: a  reason: collision with root package name */
    public static final ai f18158a = a(b.NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final ai f18159b = a(b.NOT_FILE);

    /* renamed from: c  reason: collision with root package name */
    public static final ai f18160c = a(b.NOT_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final ai f18161d = a(b.RESTRICTED_CONTENT);
    public static final ai e = a(b.UNSUPPORTED_CONTENT_TYPE);
    public static final ai f = a(b.LOCKED);
    public static final ai g = a(b.OTHER);
    b h;
    private String i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.ai$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18162a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18162a = iArr;
            try {
                iArr[b.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18162a[b.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18162a[b.NOT_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18162a[b.NOT_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18162a[b.RESTRICTED_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18162a[b.UNSUPPORTED_CONTENT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18162a[b.LOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18162a[b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai$a.class */
    public static final class a extends f<ai> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18163a = new a();

        public static ai a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ai aiVar;
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
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("malformed_path", jsonParser);
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    }
                    aiVar = str2 == null ? ai.a() : ai.a(str2);
                } else {
                    aiVar = "not_found".equals(str) ? ai.f18158a : "not_file".equals(str) ? ai.f18159b : "not_folder".equals(str) ? ai.f18160c : "restricted_content".equals(str) ? ai.f18161d : "unsupported_content_type".equals(str) ? ai.e : "locked".equals(str) ? ai.f : ai.g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aiVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(ai aiVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18162a[aiVar.h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("malformed_path", jsonGenerator);
                    jsonGenerator.writeFieldName("malformed_path");
                    d.a(d.h.f17717a).serialize((c) aiVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("not_found");
                    return;
                case 3:
                    jsonGenerator.writeString("not_file");
                    return;
                case 4:
                    jsonGenerator.writeString("not_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 6:
                    jsonGenerator.writeString("unsupported_content_type");
                    return;
                case 7:
                    jsonGenerator.writeString("locked");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai$b.class */
    public enum b {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        UNSUPPORTED_CONTENT_TYPE,
        LOCKED,
        OTHER
    }

    static {
        new ai();
        new ai();
        new ai();
        new ai();
        new ai();
        new ai();
        new ai();
    }

    private ai() {
    }

    public static ai a() {
        return a((String) null);
    }

    private static ai a(b bVar) {
        ai aiVar = new ai();
        aiVar.h = bVar;
        return aiVar;
    }

    public static ai a(String str) {
        new ai();
        b bVar = b.MALFORMED_PATH;
        ai aiVar = new ai();
        aiVar.h = bVar;
        aiVar.i = str;
        return aiVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ai)) {
            return false;
        }
        ai aiVar = (ai) obj;
        if (this.h != aiVar.h) {
            return false;
        }
        switch (AnonymousClass1.f18162a[this.h.ordinal()]) {
            case 1:
                String str = this.i;
                String str2 = aiVar.i;
                if (str != str2) {
                    return str != null && str.equals(str2);
                }
                return true;
            case 2:
            case 3:
            case 4:
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
        return Arrays.hashCode(new Object[]{this.h, this.i});
    }

    public final String toString() {
        return a.f18163a.serialize((a) this, false);
    }
}

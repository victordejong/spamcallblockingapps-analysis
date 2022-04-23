package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.bg;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf.class */
public final class bf {

    /* renamed from: a  reason: collision with root package name */
    public static final bf f18270a = a(b.NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final bf f18271b = a(b.CLOSED);

    /* renamed from: c  reason: collision with root package name */
    public static final bf f18272c = a(b.NOT_CLOSED);

    /* renamed from: d  reason: collision with root package name */
    public static final bf f18273d = a(b.TOO_LARGE);
    public static final bf e = a(b.OTHER);
    b f;
    private bg g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bf$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18274a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18274a = iArr;
            try {
                iArr[b.NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18274a[b.INCORRECT_OFFSET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18274a[b.CLOSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18274a[b.NOT_CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18274a[b.TOO_LARGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18274a[b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf$a.class */
    static final class a extends f<bf> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18275a = new a();

        a() {
        }

        public static bf a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            bf bfVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("not_found".equals(str)) {
                    bfVar = bf.f18270a;
                } else if ("incorrect_offset".equals(str)) {
                    bg.a aVar = bg.a.f18277a;
                    bfVar = bf.a(bg.a.a(jsonParser, true));
                } else {
                    bfVar = "closed".equals(str) ? bf.f18271b : "not_closed".equals(str) ? bf.f18272c : "too_large".equals(str) ? bf.f18273d : bf.e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bfVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(bf bfVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18274a[bfVar.f.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("not_found");
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("incorrect_offset", jsonGenerator);
                bg.a aVar = bg.a.f18277a;
                bg.a.a(bfVar.g, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("closed");
            } else if (i == 4) {
                jsonGenerator.writeString("not_closed");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_large");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bf$b.class */
    public enum b {
        NOT_FOUND,
        INCORRECT_OFFSET,
        CLOSED,
        NOT_CLOSED,
        TOO_LARGE,
        OTHER
    }

    static {
        new bf();
        new bf();
        new bf();
        new bf();
        new bf();
    }

    private bf() {
    }

    private static bf a(b bVar) {
        bf bfVar = new bf();
        bfVar.f = bVar;
        return bfVar;
    }

    public static bf a(bg bgVar) {
        if (bgVar != null) {
            new bf();
            b bVar = b.INCORRECT_OFFSET;
            bf bfVar = new bf();
            bfVar.f = bVar;
            bfVar.g = bgVar;
            return bfVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bf)) {
            return false;
        }
        bf bfVar = (bf) obj;
        if (this.f != bfVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18274a[this.f.ordinal()]) {
            case 1:
                return true;
            case 2:
                bg bgVar = this.g;
                bg bgVar2 = bfVar.g;
                return bgVar == bgVar2 || bgVar.equals(bgVar2);
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
        return a.f18275a.serialize((a) this, false);
    }
}

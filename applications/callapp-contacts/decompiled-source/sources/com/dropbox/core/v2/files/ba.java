package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba.class */
public final class ba {

    /* renamed from: a  reason: collision with root package name */
    public static final ba f18244a = a(b.UNSUPPORTED_EXTENSION);

    /* renamed from: b  reason: collision with root package name */
    public static final ba f18245b = a(b.UNSUPPORTED_IMAGE);

    /* renamed from: c  reason: collision with root package name */
    public static final ba f18246c = a(b.CONVERSION_ERROR);

    /* renamed from: d  reason: collision with root package name */
    public static final ba f18247d = a(b.ACCESS_DENIED);
    public static final ba e = a(b.NOT_FOUND);
    public static final ba f = a(b.OTHER);
    b g;
    private ai h;

    /* renamed from: com.dropbox.core.v2.files.ba$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18248a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18248a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18248a[b.UNSUPPORTED_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18248a[b.UNSUPPORTED_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18248a[b.CONVERSION_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18248a[b.ACCESS_DENIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18248a[b.NOT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18248a[b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba$a.class */
    static final class a extends f<ba> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18249a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ba baVar;
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
                    ai.a aVar = ai.a.f18163a;
                    baVar = ba.a(ai.a.a(jsonParser));
                } else {
                    baVar = "unsupported_extension".equals(str) ? ba.f18244a : "unsupported_image".equals(str) ? ba.f18245b : "conversion_error".equals(str) ? ba.f18246c : "access_denied".equals(str) ? ba.f18247d : "not_found".equals(str) ? ba.e : ba.f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return baVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ba baVar = (ba) obj;
            switch (AnonymousClass1.f18248a[baVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("path", jsonGenerator);
                    jsonGenerator.writeFieldName("path");
                    ai.a.f18163a.serialize(baVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("unsupported_extension");
                    return;
                case 3:
                    jsonGenerator.writeString("unsupported_image");
                    return;
                case 4:
                    jsonGenerator.writeString("conversion_error");
                    return;
                case 5:
                    jsonGenerator.writeString("access_denied");
                    return;
                case 6:
                    jsonGenerator.writeString("not_found");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba$b.class */
    public enum b {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR,
        ACCESS_DENIED,
        NOT_FOUND,
        OTHER
    }

    static {
        new ba();
        new ba();
        new ba();
        new ba();
        new ba();
        new ba();
    }

    private ba() {
    }

    public static ba a(ai aiVar) {
        if (aiVar != null) {
            new ba();
            b bVar = b.PATH;
            ba baVar = new ba();
            baVar.g = bVar;
            baVar.h = aiVar;
            return baVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static ba a(b bVar) {
        ba baVar = new ba();
        baVar.g = bVar;
        return baVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ba)) {
            return false;
        }
        ba baVar = (ba) obj;
        if (this.g != baVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18248a[this.g.ordinal()]) {
            case 1:
                ai aiVar = this.h;
                ai aiVar2 = baVar.h;
                return aiVar == aiVar2 || aiVar.equals(aiVar2);
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
        return Arrays.hashCode(new Object[]{this.g, this.h});
    }

    public final String toString() {
        return a.f18249a.serialize((a) this, false);
    }
}

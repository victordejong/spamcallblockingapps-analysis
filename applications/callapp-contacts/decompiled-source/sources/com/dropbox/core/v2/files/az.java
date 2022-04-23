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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az.class */
public final class az {

    /* renamed from: a  reason: collision with root package name */
    public static final az f18229a = a(b.UNSUPPORTED_EXTENSION);

    /* renamed from: b  reason: collision with root package name */
    public static final az f18230b = a(b.UNSUPPORTED_IMAGE);

    /* renamed from: c  reason: collision with root package name */
    public static final az f18231c = a(b.CONVERSION_ERROR);

    /* renamed from: d  reason: collision with root package name */
    b f18232d;
    private ai e;

    /* renamed from: com.dropbox.core.v2.files.az$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18233a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18233a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18233a[b.UNSUPPORTED_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18233a[b.UNSUPPORTED_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18233a[b.CONVERSION_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az$a.class */
    static final class a extends f<az> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18234a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            az azVar;
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
                    azVar = az.a(ai.a.a(jsonParser));
                } else if ("unsupported_extension".equals(str)) {
                    azVar = az.f18229a;
                } else if ("unsupported_image".equals(str)) {
                    azVar = az.f18230b;
                } else if ("conversion_error".equals(str)) {
                    azVar = az.f18231c;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return azVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            az azVar = (az) obj;
            int i = AnonymousClass1.f18233a[azVar.f18232d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(azVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("unsupported_extension");
            } else if (i == 3) {
                jsonGenerator.writeString("unsupported_image");
            } else if (i == 4) {
                jsonGenerator.writeString("conversion_error");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + azVar.f18232d);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/az$b.class */
    public enum b {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR
    }

    static {
        new az();
        new az();
        new az();
    }

    private az() {
    }

    public static az a(ai aiVar) {
        if (aiVar != null) {
            new az();
            b bVar = b.PATH;
            az azVar = new az();
            azVar.f18232d = bVar;
            azVar.e = aiVar;
            return azVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static az a(b bVar) {
        az azVar = new az();
        azVar.f18232d = bVar;
        return azVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof az)) {
            return false;
        }
        az azVar = (az) obj;
        if (this.f18232d != azVar.f18232d) {
            return false;
        }
        int i = AnonymousClass1.f18233a[this.f18232d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = azVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18232d, this.e});
    }

    public final String toString() {
        return a.f18234a.serialize((a) this, false);
    }
}

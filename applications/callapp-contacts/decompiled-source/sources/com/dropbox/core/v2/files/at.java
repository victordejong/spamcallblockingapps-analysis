package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at.class */
public final class at {

    /* renamed from: a  reason: collision with root package name */
    public static final at f18207a = a(b.INTERNAL_ERROR);

    /* renamed from: b  reason: collision with root package name */
    public static final at f18208b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18209c;

    /* renamed from: d  reason: collision with root package name */
    private ai f18210d;
    private String e;

    /* renamed from: com.dropbox.core.v2.files.at$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18211a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18211a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18211a[b.INVALID_ARGUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18211a[b.INTERNAL_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18211a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at$a.class */
    static final class a extends f<at> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18212a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            at atVar;
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
                    atVar = at.a(ai.a.a(jsonParser));
                } else if ("invalid_argument".equals(str)) {
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("invalid_argument", jsonParser);
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    }
                    atVar = str2 == null ? at.a() : at.a(str2);
                } else {
                    atVar = "internal_error".equals(str) ? at.f18207a : at.f18208b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return atVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            at atVar = (at) obj;
            int i = AnonymousClass1.f18211a[atVar.f18209c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(atVar.f18210d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("invalid_argument", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_argument");
                d.a(d.h.f17717a).serialize((c) atVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("internal_error");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/at$b.class */
    public enum b {
        PATH,
        INVALID_ARGUMENT,
        INTERNAL_ERROR,
        OTHER
    }

    static {
        new at();
        new at();
    }

    private at() {
    }

    public static at a() {
        return a((String) null);
    }

    public static at a(ai aiVar) {
        if (aiVar != null) {
            new at();
            b bVar = b.PATH;
            at atVar = new at();
            atVar.f18209c = bVar;
            atVar.f18210d = aiVar;
            return atVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static at a(b bVar) {
        at atVar = new at();
        atVar.f18209c = bVar;
        return atVar;
    }

    public static at a(String str) {
        new at();
        b bVar = b.INVALID_ARGUMENT;
        at atVar = new at();
        atVar.f18209c = bVar;
        atVar.e = str;
        return atVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof at)) {
            return false;
        }
        at atVar = (at) obj;
        if (this.f18209c != atVar.f18209c) {
            return false;
        }
        int i = AnonymousClass1.f18211a[this.f18209c.ordinal()];
        if (i == 1) {
            ai aiVar = this.f18210d;
            ai aiVar2 = atVar.f18210d;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        } else if (i != 2) {
            return i == 3 || i == 4;
        } else {
            String str = this.e;
            String str2 = atVar.e;
            if (str != str2) {
                return str != null && str.equals(str2);
            }
            return true;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18209c, this.f18210d, this.e});
    }

    public final String toString() {
        return a.f18212a.serialize((a) this, false);
    }
}

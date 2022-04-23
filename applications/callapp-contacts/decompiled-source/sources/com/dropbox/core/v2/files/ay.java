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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay.class */
public final class ay {

    /* renamed from: a  reason: collision with root package name */
    public static final ay f18223a = a(b.UNSUPPORTED_COMBINATION);

    /* renamed from: b  reason: collision with root package name */
    public static final ay f18224b = a(b.UNSUPPORTED_CONFIGURATION);

    /* renamed from: c  reason: collision with root package name */
    public static final ay f18225c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18226d;
    private ai e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.ay$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18227a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18227a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18227a[b.UNSUPPORTED_COMBINATION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18227a[b.UNSUPPORTED_CONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18227a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay$a.class */
    public static final class a extends f<ay> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18228a = new a();

        public static ay a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ay ayVar;
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
                    ayVar = ay.a(ai.a.a(jsonParser));
                } else {
                    ayVar = "unsupported_combination".equals(str) ? ay.f18223a : "unsupported_configuration".equals(str) ? ay.f18224b : ay.f18225c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ayVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(ay ayVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18227a[ayVar.f18226d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(ayVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("unsupported_combination");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unsupported_configuration");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ay$b.class */
    public enum b {
        PATH,
        UNSUPPORTED_COMBINATION,
        UNSUPPORTED_CONFIGURATION,
        OTHER
    }

    static {
        new ay();
        new ay();
        new ay();
    }

    private ay() {
    }

    public static ay a(ai aiVar) {
        if (aiVar != null) {
            new ay();
            b bVar = b.PATH;
            ay ayVar = new ay();
            ayVar.f18226d = bVar;
            ayVar.e = aiVar;
            return ayVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static ay a(b bVar) {
        ay ayVar = new ay();
        ayVar.f18226d = bVar;
        return ayVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ay)) {
            return false;
        }
        ay ayVar = (ay) obj;
        if (this.f18226d != ayVar.f18226d) {
            return false;
        }
        int i = AnonymousClass1.f18227a[this.f18226d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = ayVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18226d, this.e});
    }

    public final String toString() {
        return a.f18228a.serialize((a) this, false);
    }
}

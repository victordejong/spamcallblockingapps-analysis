package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah.class */
public final class ah {

    /* renamed from: a  reason: collision with root package name */
    public static final ah f18474a = a(b.RESET);

    /* renamed from: b  reason: collision with root package name */
    public static final ah f18475b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18476c;

    /* renamed from: d  reason: collision with root package name */
    private ai f18477d;

    /* renamed from: com.dropbox.core.v2.sharing.ah$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18478a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18478a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18478a[b.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18478a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah$a.class */
    static final class a extends f<ah> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18479a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ah ahVar;
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
                    ahVar = ah.a(ai.a.a(jsonParser));
                } else {
                    ahVar = "reset".equals(str) ? ah.f18474a : ah.f18475b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ahVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ah ahVar = (ah) obj;
            int i = AnonymousClass1.f18478a[ahVar.f18476c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(ahVar.f18477d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("reset");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah$b.class */
    public enum b {
        PATH,
        RESET,
        OTHER
    }

    static {
        new ah();
        new ah();
    }

    private ah() {
    }

    public static ah a(ai aiVar) {
        if (aiVar != null) {
            new ah();
            b bVar = b.PATH;
            ah ahVar = new ah();
            ahVar.f18476c = bVar;
            ahVar.f18477d = aiVar;
            return ahVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static ah a(b bVar) {
        ah ahVar = new ah();
        ahVar.f18476c = bVar;
        return ahVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ah)) {
            return false;
        }
        ah ahVar = (ah) obj;
        if (this.f18476c != ahVar.f18476c) {
            return false;
        }
        int i = AnonymousClass1.f18478a[this.f18476c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        ai aiVar = this.f18477d;
        ai aiVar2 = ahVar.f18477d;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18476c, this.f18477d});
    }

    public final String toString() {
        return a.f18479a.serialize((a) this, false);
    }
}

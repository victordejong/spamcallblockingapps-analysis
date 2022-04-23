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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f18670a;

    /* renamed from: b  reason: collision with root package name */
    b f18671b;

    /* renamed from: c  reason: collision with root package name */
    private ai f18672c;

    /* renamed from: com.dropbox.core.v2.sharing.j$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18673a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18673a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18673a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j$a.class */
    static final class a extends f<j> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18674a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            j jVar;
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
                    jVar = j.a(ai.a.a(jsonParser));
                } else {
                    jVar = j.f18670a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return jVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            j jVar = (j) obj;
            if (AnonymousClass1.f18673a[jVar.f18671b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            ai.a.f18163a.serialize(jVar.f18672c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j$b.class */
    public enum b {
        PATH,
        OTHER
    }

    static {
        new j();
        b bVar = b.OTHER;
        j jVar = new j();
        jVar.f18671b = bVar;
        f18670a = jVar;
    }

    private j() {
    }

    public static j a(ai aiVar) {
        if (aiVar != null) {
            new j();
            b bVar = b.PATH;
            j jVar = new j();
            jVar.f18671b = bVar;
            jVar.f18672c = aiVar;
            return jVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f18671b != jVar.f18671b) {
            return false;
        }
        int i = AnonymousClass1.f18673a[this.f18671b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        ai aiVar = this.f18672c;
        ai aiVar2 = jVar.f18672c;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18671b, this.f18672c});
    }

    public final String toString() {
        return a.f18674a.serialize((a) this, false);
    }
}

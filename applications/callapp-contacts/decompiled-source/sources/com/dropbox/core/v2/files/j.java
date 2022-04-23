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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f18317a = a(b.UNSUPPORTED_FILE);

    /* renamed from: b  reason: collision with root package name */
    public static final j f18318b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18319c;

    /* renamed from: d  reason: collision with root package name */
    private ai f18320d;

    /* renamed from: com.dropbox.core.v2.files.j$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18321a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18321a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18321a[b.UNSUPPORTED_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18321a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j$a.class */
    static final class a extends f<j> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18322a = new a();

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
                    jVar = "unsupported_file".equals(str) ? j.f18317a : j.f18318b;
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
            int i = AnonymousClass1.f18321a[jVar.f18319c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(jVar.f18320d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unsupported_file");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j$b.class */
    public enum b {
        PATH,
        UNSUPPORTED_FILE,
        OTHER
    }

    static {
        new j();
        new j();
    }

    private j() {
    }

    public static j a(ai aiVar) {
        if (aiVar != null) {
            new j();
            b bVar = b.PATH;
            j jVar = new j();
            jVar.f18319c = bVar;
            jVar.f18320d = aiVar;
            return jVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static j a(b bVar) {
        j jVar = new j();
        jVar.f18319c = bVar;
        return jVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f18319c != jVar.f18319c) {
            return false;
        }
        int i = AnonymousClass1.f18321a[this.f18319c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        ai aiVar = this.f18320d;
        ai aiVar2 = jVar.f18320d;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18319c, this.f18320d});
    }

    public final String toString() {
        return a.f18322a.serialize((a) this, false);
    }
}

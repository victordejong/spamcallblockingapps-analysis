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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f18369a;

    /* renamed from: b  reason: collision with root package name */
    b f18370b;

    /* renamed from: c  reason: collision with root package name */
    private ai f18371c;

    /* renamed from: com.dropbox.core.v2.files.v$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18372a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18372a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18372a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v$a.class */
    static final class a extends f<v> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18373a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            v vVar;
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
                    vVar = v.a(ai.a.a(jsonParser));
                } else {
                    vVar = v.f18369a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return vVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            v vVar = (v) obj;
            if (AnonymousClass1.f18372a[vVar.f18370b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            ai.a.f18163a.serialize(vVar.f18371c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v$b.class */
    public enum b {
        PATH,
        OTHER
    }

    static {
        new v();
        b bVar = b.OTHER;
        v vVar = new v();
        vVar.f18370b = bVar;
        f18369a = vVar;
    }

    private v() {
    }

    public static v a(ai aiVar) {
        if (aiVar != null) {
            new v();
            b bVar = b.PATH;
            v vVar = new v();
            vVar.f18370b = bVar;
            vVar.f18371c = aiVar;
            return vVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (this.f18370b != vVar.f18370b) {
            return false;
        }
        int i = AnonymousClass1.f18372a[this.f18370b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        ai aiVar = this.f18371c;
        ai aiVar2 = vVar.f18371c;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18370b, this.f18371c});
    }

    public final String toString() {
        return a.f18373a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.paper;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.paper.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f18394a;

    /* renamed from: b  reason: collision with root package name */
    b f18395b;

    /* renamed from: c  reason: collision with root package name */
    private e f18396c;

    /* renamed from: com.dropbox.core.v2.paper.c$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18397a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18397a = iArr;
            try {
                iArr[b.CURSOR_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18397a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c$a.class */
    static final class a extends f<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18398a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            c cVar;
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
                if ("cursor_error".equals(str)) {
                    expectField("cursor_error", jsonParser);
                    e.a aVar = e.a.f18406a;
                    cVar = c.a(e.a.a(jsonParser));
                } else {
                    cVar = c.f18394a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return cVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            c cVar = (c) obj;
            if (AnonymousClass1.f18397a[cVar.f18395b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("cursor_error", jsonGenerator);
            jsonGenerator.writeFieldName("cursor_error");
            e.a aVar = e.a.f18406a;
            e.a.a(cVar.f18396c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c$b.class */
    public enum b {
        CURSOR_ERROR,
        OTHER
    }

    static {
        new c();
        b bVar = b.OTHER;
        c cVar = new c();
        cVar.f18395b = bVar;
        f18394a = cVar;
    }

    private c() {
    }

    public static c a(e eVar) {
        if (eVar != null) {
            new c();
            b bVar = b.CURSOR_ERROR;
            c cVar = new c();
            cVar.f18395b = bVar;
            cVar.f18396c = eVar;
            return cVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f18395b != cVar.f18395b) {
            return false;
        }
        int i = AnonymousClass1.f18397a[this.f18395b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        e eVar = this.f18396c;
        e eVar2 = cVar.f18396c;
        return eVar == eVar2 || eVar.equals(eVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18395b, this.f18396c});
    }

    public final String toString() {
        return a.f18398a.serialize((a) this, false);
    }
}

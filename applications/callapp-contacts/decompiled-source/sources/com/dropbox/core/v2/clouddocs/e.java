package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.clouddocs.c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f17982a;

    /* renamed from: b  reason: collision with root package name */
    b f17983b;

    /* renamed from: c  reason: collision with root package name */
    private c f17984c;

    /* renamed from: com.dropbox.core.v2.clouddocs.e$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17985a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f17985a = iArr;
            try {
                iArr[b.GENERIC_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17985a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e$a.class */
    static final class a extends f<e> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17986a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            e eVar;
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
                if ("generic_error".equals(str)) {
                    expectField("generic_error", jsonParser);
                    c.a aVar = c.a.f17979a;
                    eVar = e.a(c.a.a(jsonParser));
                } else {
                    eVar = e.f17982a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return eVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            e eVar = (e) obj;
            if (AnonymousClass1.f17985a[eVar.f17983b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("generic_error", jsonGenerator);
            jsonGenerator.writeFieldName("generic_error");
            c.a aVar = c.a.f17979a;
            c.a.a(eVar.f17984c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e$b.class */
    public enum b {
        GENERIC_ERROR,
        OTHER
    }

    static {
        new e();
        b bVar = b.OTHER;
        e eVar = new e();
        eVar.f17983b = bVar;
        f17982a = eVar;
    }

    private e() {
    }

    public static e a(c cVar) {
        if (cVar != null) {
            new e();
            b bVar = b.GENERIC_ERROR;
            e eVar = new e();
            eVar.f17983b = bVar;
            eVar.f17984c = cVar;
            return eVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f17983b != eVar.f17983b) {
            return false;
        }
        int i = AnonymousClass1.f17985a[this.f17983b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        c cVar = this.f17984c;
        c cVar2 = eVar.f17984c;
        return cVar == cVar2 || cVar.equals(cVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17983b, this.f17984c});
    }

    public final String toString() {
        return a.f17986a.serialize((a) this, false);
    }
}

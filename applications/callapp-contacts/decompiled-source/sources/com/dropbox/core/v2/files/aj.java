package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ak;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj.class */
public final class aj {

    /* renamed from: a  reason: collision with root package name */
    public static final aj f18164a;

    /* renamed from: b  reason: collision with root package name */
    b f18165b;

    /* renamed from: c  reason: collision with root package name */
    private ak f18166c;

    /* renamed from: com.dropbox.core.v2.files.aj$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18167a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18167a = iArr;
            try {
                iArr[b.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18167a[b.METADATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj$a.class */
    static final class a extends f<aj> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18168a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            aj ajVar;
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
                if ("pending".equals(str)) {
                    ajVar = aj.f18164a;
                } else if ("metadata".equals(str)) {
                    expectField("metadata", jsonParser);
                    ajVar = aj.a(ak.a.f18172a.deserialize(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ajVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            aj ajVar = (aj) obj;
            int i = AnonymousClass1.f18167a[ajVar.f18165b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("pending");
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("metadata", jsonGenerator);
                jsonGenerator.writeFieldName("metadata");
                ak.a.f18172a.serialize((ak.a) ajVar.f18166c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + ajVar.f18165b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj$b.class */
    public enum b {
        PENDING,
        METADATA
    }

    static {
        new aj();
        b bVar = b.PENDING;
        aj ajVar = new aj();
        ajVar.f18165b = bVar;
        f18164a = ajVar;
    }

    private aj() {
    }

    public static aj a(ak akVar) {
        if (akVar != null) {
            new aj();
            b bVar = b.METADATA;
            aj ajVar = new aj();
            ajVar.f18165b = bVar;
            ajVar.f18166c = akVar;
            return ajVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof aj)) {
            return false;
        }
        aj ajVar = (aj) obj;
        if (this.f18165b != ajVar.f18165b) {
            return false;
        }
        int i = AnonymousClass1.f18167a[this.f18165b.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        ak akVar = this.f18166c;
        ak akVar2 = ajVar.f18166c;
        return akVar == akVar2 || akVar.equals(akVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18165b, this.f18166c});
    }

    public final String toString() {
        return a.f18168a.serialize((a) this, false);
    }
}

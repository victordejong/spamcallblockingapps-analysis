package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.c;
import com.dropbox.core.v2.files.bi;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc.class */
public final class bc {

    /* renamed from: a  reason: collision with root package name */
    public static final bc f18252a;

    /* renamed from: b  reason: collision with root package name */
    b f18253b;

    /* renamed from: c  reason: collision with root package name */
    private bi f18254c;

    /* renamed from: d  reason: collision with root package name */
    private c f18255d;

    /* renamed from: com.dropbox.core.v2.files.bc$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18256a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18256a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18256a[b.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18256a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc$a.class */
    static final class a extends f<bc> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18257a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            bc bcVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("path".equals(str)) {
                    bi.a aVar = bi.a.f18280a;
                    bcVar = bc.a(bi.a.a(jsonParser, true));
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    c.a aVar2 = c.a.f18034a;
                    bcVar = bc.a(c.a.a(jsonParser));
                } else {
                    bcVar = bc.f18252a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bcVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bc bcVar = (bc) obj;
            int i = AnonymousClass1.f18256a[bcVar.f18253b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                bi.a aVar = bi.a.f18280a;
                bi.a.a(bcVar.f18254c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                c.a.f18034a.serialize(bcVar.f18255d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc$b.class */
    public enum b {
        PATH,
        PROPERTIES_ERROR,
        OTHER
    }

    static {
        new bc();
        b bVar = b.OTHER;
        bc bcVar = new bc();
        bcVar.f18253b = bVar;
        f18252a = bcVar;
    }

    private bc() {
    }

    public static bc a(c cVar) {
        if (cVar != null) {
            new bc();
            b bVar = b.PROPERTIES_ERROR;
            bc bcVar = new bc();
            bcVar.f18253b = bVar;
            bcVar.f18255d = cVar;
            return bcVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static bc a(bi biVar) {
        if (biVar != null) {
            new bc();
            b bVar = b.PATH;
            bc bcVar = new bc();
            bcVar.f18253b = bVar;
            bcVar.f18254c = biVar;
            return bcVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bc)) {
            return false;
        }
        bc bcVar = (bc) obj;
        if (this.f18253b != bcVar.f18253b) {
            return false;
        }
        int i = AnonymousClass1.f18256a[this.f18253b.ordinal()];
        if (i == 1) {
            bi biVar = this.f18254c;
            bi biVar2 = bcVar.f18254c;
            return biVar == biVar2 || biVar.equals(biVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            c cVar = this.f18255d;
            c cVar2 = bcVar.f18255d;
            return cVar == cVar2 || cVar.equals(cVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18253b, this.f18254c, this.f18255d});
    }

    public final String toString() {
        return a.f18257a.serialize((a) this, false);
    }
}

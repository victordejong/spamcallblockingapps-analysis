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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd.class */
public final class bd {

    /* renamed from: a  reason: collision with root package name */
    public static final bd f18258a;

    /* renamed from: b  reason: collision with root package name */
    b f18259b;

    /* renamed from: c  reason: collision with root package name */
    private bi f18260c;

    /* renamed from: d  reason: collision with root package name */
    private c f18261d;

    /* renamed from: com.dropbox.core.v2.files.bd$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18262a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18262a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18262a[b.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18262a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd$a.class */
    static final class a extends f<bd> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18263a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            bd bdVar;
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
                    bdVar = bd.a(bi.a.a(jsonParser, true));
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    c.a aVar2 = c.a.f18034a;
                    bdVar = bd.a(c.a.a(jsonParser));
                } else if ("other".equals(str)) {
                    bdVar = bd.f18258a;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bdVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bd bdVar = (bd) obj;
            int i = AnonymousClass1.f18262a[bdVar.f18259b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                bi.a aVar = bi.a.f18280a;
                bi.a.a(bdVar.f18260c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                c.a.f18034a.serialize(bdVar.f18261d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("other");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + bdVar.f18259b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bd$b.class */
    public enum b {
        PATH,
        PROPERTIES_ERROR,
        OTHER
    }

    static {
        new bd();
        b bVar = b.OTHER;
        bd bdVar = new bd();
        bdVar.f18259b = bVar;
        f18258a = bdVar;
    }

    private bd() {
    }

    public static bd a(c cVar) {
        if (cVar != null) {
            new bd();
            b bVar = b.PROPERTIES_ERROR;
            bd bdVar = new bd();
            bdVar.f18259b = bVar;
            bdVar.f18261d = cVar;
            return bdVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static bd a(bi biVar) {
        if (biVar != null) {
            new bd();
            b bVar = b.PATH;
            bd bdVar = new bd();
            bdVar.f18259b = bVar;
            bdVar.f18260c = biVar;
            return bdVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bd)) {
            return false;
        }
        bd bdVar = (bd) obj;
        if (this.f18259b != bdVar.f18259b) {
            return false;
        }
        int i = AnonymousClass1.f18262a[this.f18259b.ordinal()];
        if (i == 1) {
            bi biVar = this.f18260c;
            bi biVar2 = bdVar.f18260c;
            return biVar == biVar2 || biVar.equals(biVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            c cVar = this.f18261d;
            c cVar2 = bdVar.f18261d;
            return cVar == cVar2 || cVar.equals(cVar2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18259b, this.f18260c, this.f18261d});
    }

    public final String toString() {
        return a.f18263a.serialize((a) this, false);
    }
}

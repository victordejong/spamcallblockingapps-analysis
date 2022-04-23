package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    protected final long f18719a;

    /* renamed from: b  reason: collision with root package name */
    protected final long f18720b;

    /* renamed from: c  reason: collision with root package name */
    protected final long f18721c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/w$a.class */
    static final class a extends e<w> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18722a = new a();

        a() {
        }

        public static w a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                Long l2 = null;
                Long l3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("space_needed".equals(currentName)) {
                        l = d.e.f17714a.deserialize(jsonParser);
                    } else if ("space_shortage".equals(currentName)) {
                        l2 = d.e.f17714a.deserialize(jsonParser);
                    } else if ("space_left".equals(currentName)) {
                        l3 = d.e.f17714a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (l == null) {
                    throw new JsonParseException(jsonParser, "Required field \"space_needed\" missing.");
                } else if (l2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"space_shortage\" missing.");
                } else if (l3 != null) {
                    w wVar = new w(l.longValue(), l2.longValue(), l3.longValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18722a.serialize((a) wVar, true);
                    b.a(wVar);
                    return wVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"space_left\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        public static void a(w wVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("space_needed");
            d.e.f17714a.serialize((d.e) Long.valueOf(wVar.f18719a), jsonGenerator);
            jsonGenerator.writeFieldName("space_shortage");
            d.e.f17714a.serialize((d.e) Long.valueOf(wVar.f18720b), jsonGenerator);
            jsonGenerator.writeFieldName("space_left");
            d.e.f17714a.serialize((d.e) Long.valueOf(wVar.f18721c), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ w deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(w wVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(wVar, jsonGenerator, z);
        }
    }

    public w(long j, long j2, long j3) {
        this.f18719a = j;
        this.f18720b = j2;
        this.f18721c = j3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        w wVar = (w) obj;
        return this.f18719a == wVar.f18719a && this.f18720b == wVar.f18720b && this.f18721c == wVar.f18721c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18719a), Long.valueOf(this.f18720b), Long.valueOf(this.f18721c)});
    }

    public final String toString() {
        return a.f18722a.serialize((a) this, false);
    }
}

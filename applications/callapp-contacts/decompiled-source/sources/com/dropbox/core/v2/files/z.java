package com.dropbox.core.v2.files;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    protected final double f18384a;

    /* renamed from: b  reason: collision with root package name */
    protected final double f18385b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/z$a.class */
    static final class a extends e<z> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18386a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ z deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Double d2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                Double d3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("latitude".equals(currentName)) {
                        d2 = d.c.f17712a.deserialize(jsonParser);
                    } else if ("longitude".equals(currentName)) {
                        d3 = d.c.f17712a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (d2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"latitude\" missing.");
                } else if (d3 != null) {
                    z zVar = new z(d2.doubleValue(), d3.doubleValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18386a.serialize((a) zVar, true);
                    b.a(zVar);
                    return zVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"longitude\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(z zVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            z zVar2 = zVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("latitude");
            d.c.f17712a.serialize((d.c) Double.valueOf(zVar2.f18384a), jsonGenerator);
            jsonGenerator.writeFieldName("longitude");
            d.c.f17712a.serialize((d.c) Double.valueOf(zVar2.f18385b), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public z(double d2, double d3) {
        this.f18384a = d2;
        this.f18385b = d3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        z zVar = (z) obj;
        return this.f18384a == zVar.f18384a && this.f18385b == zVar.f18385b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.f18384a), Double.valueOf(this.f18385b)});
    }

    public final String toString() {
        return a.f18386a.serialize((a) this, false);
    }
}

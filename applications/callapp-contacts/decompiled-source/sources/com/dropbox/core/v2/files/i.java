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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    protected final long f18314a;

    /* renamed from: b  reason: collision with root package name */
    protected final long f18315b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/i$a.class */
    static final class a extends e<i> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18316a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("height".equals(currentName)) {
                        l = d.e.f17714a.deserialize(jsonParser);
                    } else if ("width".equals(currentName)) {
                        l2 = d.e.f17714a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (l == null) {
                    throw new JsonParseException(jsonParser, "Required field \"height\" missing.");
                } else if (l2 != null) {
                    i iVar = new i(l.longValue(), l2.longValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18316a.serialize((a) iVar, true);
                    b.a(iVar);
                    return iVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"width\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(i iVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            i iVar2 = iVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("height");
            d.e.f17714a.serialize((d.e) Long.valueOf(iVar2.f18314a), jsonGenerator);
            jsonGenerator.writeFieldName("width");
            d.e.f17714a.serialize((d.e) Long.valueOf(iVar2.f18315b), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public i(long j, long j2) {
        this.f18314a = j;
        this.f18315b = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        i iVar = (i) obj;
        return this.f18314a == iVar.f18314a && this.f18315b == iVar.f18315b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18314a), Long.valueOf(this.f18315b)});
    }

    public final String toString() {
        return a.f18316a.serialize((a) this, false);
    }
}

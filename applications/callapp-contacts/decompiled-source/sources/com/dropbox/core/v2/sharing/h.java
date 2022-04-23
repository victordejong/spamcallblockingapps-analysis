package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.g;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    protected final long f18663a;

    /* renamed from: b  reason: collision with root package name */
    protected final List<g> f18664b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/h$a.class */
    static final class a extends e<h> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18665a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("count".equals(currentName)) {
                        l = d.e.f17714a.deserialize(jsonParser);
                    } else if ("exceptions".equals(currentName)) {
                        list = (List) d.b(g.a.f18662a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (l == null) {
                    throw new JsonParseException(jsonParser, "Required field \"count\" missing.");
                } else if (list != null) {
                    h hVar = new h(l.longValue(), list);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18665a.serialize((a) hVar, true);
                    b.a(hVar);
                    return hVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"exceptions\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(h hVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            h hVar2 = hVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("count");
            d.e.f17714a.serialize((d.e) Long.valueOf(hVar2.f18663a), jsonGenerator);
            jsonGenerator.writeFieldName("exceptions");
            d.b(g.a.f18662a).serialize((c) hVar2.f18664b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public h(long j, List<g> list) {
        this.f18663a = j;
        if (list != null) {
            for (g gVar : list) {
                if (gVar == null) {
                    throw new IllegalArgumentException("An item in list 'exceptions' is null");
                }
            }
            this.f18664b = list;
            return;
        }
        throw new IllegalArgumentException("Required value for 'exceptions' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f18663a != hVar.f18663a) {
            return false;
        }
        List<g> list = this.f18664b;
        List<g> list2 = hVar.f18664b;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18663a), this.f18664b});
    }

    public final String toString() {
        return a.f18665a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.clouddocs.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    protected final e f17980a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/d$a.class */
    static final class a extends e<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17981a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            e eVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("get_metadata_error_tag".equals(currentName)) {
                        eVar = (e) com.dropbox.core.a.d.a(e.a.f17986a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                d dVar = new d(eVar);
                if (!z) {
                    expectEndObject(jsonParser);
                }
                f17981a.serialize((a) dVar, true);
                b.a(dVar);
                return dVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(d dVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            d dVar2 = dVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (dVar2.f17980a != null) {
                jsonGenerator.writeFieldName("get_metadata_error_tag");
                com.dropbox.core.a.d.a(e.a.f17986a).serialize((c) dVar2.f17980a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public d() {
        this(null);
    }

    public d(e eVar) {
        this.f17980a = eVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        e eVar = this.f17980a;
        e eVar2 = ((d) obj).f17980a;
        if (eVar != eVar2) {
            return eVar != null && eVar.equals(eVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17980a});
    }

    public final String toString() {
        return a.f17981a.serialize((a) this, false);
    }
}

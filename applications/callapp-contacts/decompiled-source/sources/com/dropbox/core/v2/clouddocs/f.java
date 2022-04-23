package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.clouddocs.h;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    protected final h f17987a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/f$a.class */
    static final class a extends e<f> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17988a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ f deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            h hVar = null;
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
                    if ("locking_error_tag".equals(currentName)) {
                        hVar = (h) d.a(h.a.f17996a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                f fVar = new f(hVar);
                if (!z) {
                    expectEndObject(jsonParser);
                }
                f17988a.serialize((a) fVar, true);
                b.a(fVar);
                return fVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(f fVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            f fVar2 = fVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (fVar2.f17987a != null) {
                jsonGenerator.writeFieldName("locking_error_tag");
                d.a(h.a.f17996a).serialize((c) fVar2.f17987a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public f() {
        this(null);
    }

    public f(h hVar) {
        this.f17987a = hVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        h hVar = this.f17987a;
        h hVar2 = ((f) obj).f17987a;
        if (hVar != hVar2) {
            return hVar != null && hVar.equals(hVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17987a});
    }

    public final String toString() {
        return a.f17988a.serialize((a) this, false);
    }
}

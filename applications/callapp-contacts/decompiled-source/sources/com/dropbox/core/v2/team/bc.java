package com.dropbox.core.v2.team;

import com.dropbox.core.a.b;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.team.aw;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bc.class */
public final class bc {

    /* renamed from: a  reason: collision with root package name */
    protected final aw f18816a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bc$a.class */
    static final class a extends e<bc> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18817a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bc deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            aw awVar = null;
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
                    if ("access_error".equals(currentName)) {
                        aw.a aVar = aw.a.f18795a;
                        awVar = aw.a.a(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (awVar != null) {
                    bc bcVar = new bc(awVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18817a.serialize((a) bcVar, true);
                    b.a(bcVar);
                    return bcVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"access_error\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bc bcVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            bc bcVar2 = bcVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_error");
            aw.a aVar = aw.a.f18795a;
            aw.a.a(bcVar2.f18816a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public bc(aw awVar) {
        if (awVar != null) {
            this.f18816a = awVar;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessError' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        aw awVar = this.f18816a;
        aw awVar2 = ((bc) obj).f18816a;
        return awVar == awVar2 || awVar.equals(awVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18816a});
    }

    public final String toString() {
        return a.f18817a.serialize((a) this, false);
    }
}

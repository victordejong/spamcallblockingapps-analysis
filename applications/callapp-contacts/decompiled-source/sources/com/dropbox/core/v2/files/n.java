package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.o;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    protected final o f18337a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/n$a.class */
    public static final class a extends e<n> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18338a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ n deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            o oVar = null;
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
                    if (Constants.VAST_TRACKER_CONTENT.equals(currentName)) {
                        o.a aVar = o.a.f18344a;
                        oVar = o.a.a(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (oVar != null) {
                    n nVar = new n(oVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18338a.serialize((a) nVar, true);
                    b.a(nVar);
                    return nVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"content\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(n nVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            n nVar2 = nVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(Constants.VAST_TRACKER_CONTENT);
            o.a.f18344a.serialize(nVar2.f18337a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public n(o oVar) {
        if (oVar != null) {
            this.f18337a = oVar;
            return;
        }
        throw new IllegalArgumentException("Required value for 'content' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        o oVar = this.f18337a;
        o oVar2 = ((n) obj).f18337a;
        return oVar == oVar2 || oVar.equals(oVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18337a});
    }

    public final String toString() {
        return a.f18338a.serialize((a) this, false);
    }
}

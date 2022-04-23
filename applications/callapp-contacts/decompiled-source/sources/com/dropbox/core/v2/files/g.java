package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.al;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/g.class */
public final class g extends r {

    /* renamed from: a  reason: collision with root package name */
    protected final al f18311a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/g$a.class */
    public static final class a extends e<g> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18312a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            al alVar = null;
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
                    if ("metadata".equals(currentName)) {
                        alVar = al.a.f18173a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (alVar != null) {
                    g gVar = new g(alVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    gVar.a();
                    b.a(gVar);
                    return gVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(g gVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            g gVar2 = gVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            al.a.f18173a.serialize((al.a) gVar2.f18311a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public g(al alVar) {
        if (alVar != null) {
            this.f18311a = alVar;
            return;
        }
        throw new IllegalArgumentException("Required value for 'metadata' is null");
    }

    @Override // com.dropbox.core.v2.files.r
    public final String a() {
        return a.f18312a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.r
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        al alVar = this.f18311a;
        al alVar2 = ((g) obj).f18311a;
        return alVar == alVar2 || alVar.equals(alVar2);
    }

    @Override // com.dropbox.core.v2.files.r
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18311a});
    }

    @Override // com.dropbox.core.v2.files.r
    public final String toString() {
        return a.f18312a.serialize((a) this, false);
    }
}

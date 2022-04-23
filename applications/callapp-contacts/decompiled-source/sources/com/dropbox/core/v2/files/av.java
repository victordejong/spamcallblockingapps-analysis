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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/av.class */
public class av {
    protected final boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/av$a.class */
    public static final class a extends e<av> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18216a = new a();

        private a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ av deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
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
                    if ("read_only".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (bool != null) {
                    av avVar = new av(bool.booleanValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    avVar.a();
                    b.a(avVar);
                    return avVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(av avVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            av avVar2 = avVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(avVar2.e), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public av(boolean z) {
        this.e = z;
    }

    public String a() {
        return a.f18216a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.e == ((av) obj).e;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.e)});
    }

    public String toString() {
        return a.f18216a.serialize((a) this, false);
    }
}

package com.dropbox.core.p264v1;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v1.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/b.class */
public final class C8654b {

    /* renamed from: c */
    public static final JsonReader<C8654b> f30735c = new JsonReader<C8654b>() { // from class: com.dropbox.core.v1.DbxLongpollDeltaResult$1
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        @Override // com.dropbox.core.json.JsonReader
        public final C8654b read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            char c = 65535;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("changes")) {
                        bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                    } else if (currentName.equals("backoff")) {
                        c = JsonReader.readUnsignedLongField(jsonParser, currentName, c);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (bool != null) {
                return new C8654b(bool.booleanValue(), c);
            }
            throw new JsonReadException("missing field \"changes\"", expectObjectStart);
        }
    };

    /* renamed from: a */
    public boolean f30736a;

    /* renamed from: b */
    public long f30737b;

    public C8654b(boolean z, long j) {
        this.f30736a = z;
        this.f30737b = j;
    }
}

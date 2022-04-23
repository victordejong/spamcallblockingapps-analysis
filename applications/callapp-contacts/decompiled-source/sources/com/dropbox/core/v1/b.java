package com.dropbox.core.v1;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/b.class */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    public static final JsonReader<b> f17908c = new JsonReader<b>() { // from class: com.dropbox.core.v1.DbxLongpollDeltaResult$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final b read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            long j = -1;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("changes")) {
                        bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                    } else if (currentName.equals("backoff")) {
                        j = JsonReader.readUnsignedLongField(jsonParser, currentName, j);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (bool != null) {
                return new b(bool.booleanValue(), j);
            }
            throw new JsonReadException("missing field \"changes\"", expectObjectStart);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public boolean f17909a;

    /* renamed from: b  reason: collision with root package name */
    public long f17910b;

    public b(boolean z, long j) {
        this.f17909a = z;
        this.f17910b = j;
    }
}

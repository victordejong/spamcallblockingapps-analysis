package com.dropbox.core.v1;

import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/c.class */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    public static final JsonReader<c> f17911c = new JsonReader<c>() { // from class: com.dropbox.core.v1.DbxUrlWithExpiration$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final c read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("url")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("expires")) {
                        date = JsonDateReader.Dropbox.readField(jsonParser, currentName, date);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"url\"", expectObjectStart);
            } else if (date != null) {
                return new c(str, date);
            } else {
                throw new JsonReadException("missing field \"expires\"", expectObjectStart);
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f17912a;

    /* renamed from: b  reason: collision with root package name */
    public final Date f17913b;

    public c(String str, Date date) {
        this.f17912a = str;
        this.f17913b = date;
    }
}

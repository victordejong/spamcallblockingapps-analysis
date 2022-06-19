package com.dropbox.core.p264v1;

import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Date;
/* renamed from: com.dropbox.core.v1.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v1/c.class */
public final class C8655c {

    /* renamed from: c */
    public static final JsonReader<C8655c> f30738c = new JsonReader<C8655c>() { // from class: com.dropbox.core.v1.DbxUrlWithExpiration$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8655c read(JsonParser jsonParser) throws IOException, JsonReadException {
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
            if (str != null) {
                if (date == null) {
                    throw new JsonReadException("missing field \"expires\"", expectObjectStart);
                }
                return new C8655c(str, date);
            }
            throw new JsonReadException("missing field \"url\"", expectObjectStart);
        }
    };

    /* renamed from: a */
    public final String f30739a;

    /* renamed from: b */
    public final Date f30740b;

    public C8655c(String str, Date date) {
        this.f30739a = str;
        this.f30740b = date;
    }
}

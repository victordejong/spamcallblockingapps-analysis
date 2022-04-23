package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.c;
import com.dropbox.core.util.f;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/b.class */
public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    public static final JsonReader<b> f17740a = new JsonReader<b>() { // from class: com.dropbox.core.DbxAppInfo$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final b read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            e eVar = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("key")) {
                        str = b.f17741b.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("secret")) {
                        str2 = b.f17742c.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals("host")) {
                        eVar = e.f.readField(jsonParser, currentName, eVar);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                e eVar2 = eVar;
                if (eVar == null) {
                    eVar2 = e.f17752a;
                }
                return new b(str, str2, eVar2);
            }
            throw new JsonReadException("missing field \"key\"", expectObjectStart);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final JsonReader<String> f17741b = new JsonReader<String>() { // from class: com.dropbox.core.DbxAppInfo$2
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String a2 = b.a(text);
                if (a2 == null) {
                    jsonParser.nextToken();
                    return text;
                }
                throw new JsonReadException("bad format for app key: ".concat(String.valueOf(a2)), jsonParser.getTokenLocation());
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final JsonReader<String> f17742c = new JsonReader<String>() { // from class: com.dropbox.core.DbxAppInfo$3
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String a2 = b.a(text);
                if (a2 == null) {
                    jsonParser.nextToken();
                    return text;
                }
                throw new JsonReadException("bad format for app secret: ".concat(String.valueOf(a2)), jsonParser.getTokenLocation());
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final String f17743d;
    private final String e;
    private final e f;

    public b(String str) {
        this(str, null);
    }

    public b(String str, String str2) {
        c(str);
        d(str2);
        this.f17743d = str;
        this.e = str2;
        this.f = e.f17752a;
    }

    public b(String str, String str2, e eVar) {
        c(str);
        d(str2);
        this.f17743d = str;
        this.e = str2;
        this.f = eVar;
    }

    public static String a(String str) {
        return b(str);
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "can't be empty";
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < '!' || charAt > '~') {
                return "invalid character at index " + i + ": " + f.b(String.valueOf(charAt));
            }
        }
        return null;
    }

    private static void c(String str) {
        String b2 = str == null ? "can't be null" : b(str);
        if (b2 != null) {
            throw new IllegalArgumentException("Bad 'key': ".concat(String.valueOf(b2)));
        }
    }

    private static void d(String str) {
        String b2 = b(str);
        if (b2 != null) {
            throw new IllegalArgumentException("Bad 'secret': ".concat(String.valueOf(b2)));
        }
    }

    @Override // com.dropbox.core.util.c
    public final void a(com.dropbox.core.util.b bVar) {
        bVar.b("key").d(this.f17743d);
        bVar.b("secret").d(this.e);
    }
}

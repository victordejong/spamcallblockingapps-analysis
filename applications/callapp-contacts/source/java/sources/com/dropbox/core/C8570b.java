package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.AbstractC8633b;
import com.dropbox.core.util.AbstractC8635c;
import com.dropbox.core.util.C8638f;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/b.class */
public final class C8570b extends AbstractC8635c {

    /* renamed from: a */
    public static final JsonReader<C8570b> f30506a = new JsonReader<C8570b>() { // from class: com.dropbox.core.DbxAppInfo$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8570b read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            C8573e c8573e = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("key")) {
                        str = C8570b.f30507b.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("secret")) {
                        str2 = C8570b.f30508c.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals("host")) {
                        c8573e = C8573e.f30531f.readField(jsonParser, currentName, c8573e);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                C8573e c8573e2 = c8573e;
                if (c8573e == null) {
                    c8573e2 = C8573e.f30530a;
                }
                return new C8570b(str, str2, c8573e2);
            }
            throw new JsonReadException("missing field \"key\"", expectObjectStart);
        }
    };

    /* renamed from: b */
    public static final JsonReader<String> f30507b = new JsonReader<String>() { // from class: com.dropbox.core.DbxAppInfo$2
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String m25327a = C8570b.m25327a(text);
                if (m25327a != null) {
                    throw new JsonReadException("bad format for app key: ".concat(String.valueOf(m25327a)), jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: c */
    public static final JsonReader<String> f30508c = new JsonReader<String>() { // from class: com.dropbox.core.DbxAppInfo$3
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String m25327a = C8570b.m25327a(text);
                if (m25327a != null) {
                    throw new JsonReadException("bad format for app secret: ".concat(String.valueOf(m25327a)), jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: d */
    private final String f30509d;

    /* renamed from: e */
    private final String f30510e;

    /* renamed from: f */
    private final C8573e f30511f;

    public C8570b(String str) {
        this(str, null);
    }

    public C8570b(String str, String str2) {
        m25325c(str);
        m25324d(str2);
        this.f30509d = str;
        this.f30510e = str2;
        this.f30511f = C8573e.f30530a;
    }

    public C8570b(String str, String str2, C8573e c8573e) {
        m25325c(str);
        m25324d(str2);
        this.f30509d = str;
        this.f30510e = str2;
        this.f30511f = c8573e;
    }

    /* renamed from: a */
    public static String m25327a(String str) {
        return m25326b(str);
    }

    /* renamed from: b */
    public static String m25326b(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "can't be empty";
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < '!' || charAt > '~') {
                return "invalid character at index " + i + ": " + C8638f.m25215b(String.valueOf(charAt));
            }
        }
        return null;
    }

    /* renamed from: c */
    private static void m25325c(String str) {
        String m25326b = str == null ? "can't be null" : m25326b(str);
        if (m25326b == null) {
            return;
        }
        throw new IllegalArgumentException("Bad 'key': ".concat(String.valueOf(m25326b)));
    }

    /* renamed from: d */
    private static void m25324d(String str) {
        String m25326b = m25326b(str);
        if (m25326b == null) {
            return;
        }
        throw new IllegalArgumentException("Bad 'secret': ".concat(String.valueOf(m25326b)));
    }

    @Override // com.dropbox.core.util.AbstractC8635c
    /* renamed from: a */
    public final void mo25199a(AbstractC8633b abstractC8633b) {
        abstractC8633b.mo25228b("key").m25233d(this.f30509d);
        abstractC8633b.mo25228b("secret").m25233d(this.f30510e);
    }
}

package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/au.class */
public final class au {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18213a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18214b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/au$a.class */
    static final class a extends e<au> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18215a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ au deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("url".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("password".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    au auVar = new au(str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18215a.serialize((a) auVar, true);
                    b.a(auVar);
                    return auVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(au auVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            au auVar2 = auVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            d.h.f17717a.serialize((d.h) auVar2.f18213a, jsonGenerator);
            if (auVar2.f18214b != null) {
                jsonGenerator.writeFieldName("password");
                d.a(d.h.f17717a).serialize((c) auVar2.f18214b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public au(String str) {
        this(str, null);
    }

    public au(String str, String str2) {
        if (str != null) {
            this.f18213a = str;
            this.f18214b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        au auVar = (au) obj;
        String str = this.f18213a;
        String str2 = auVar.f18213a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18214b;
        String str4 = auVar.f18214b;
        if (str3 != str4) {
            return str3 != null && str3.equals(str4);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18213a, this.f18214b});
    }

    public final String toString() {
        return a.f18215a.serialize((a) this, false);
    }
}

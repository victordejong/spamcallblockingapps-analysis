package com.dropbox.core.v2.users;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18867a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18868b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/d$a.class */
    public static final class a extends e<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18869a = new a();

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    if ("id".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("name".equals(currentName)) {
                        str3 = d.h.f17717a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
                } else if (str3 != null) {
                    d dVar = new d(str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18869a.serialize((a) dVar, true);
                    b.a(dVar);
                    return dVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(d dVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            d dVar2 = dVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            d.h.f17717a.serialize((d.h) dVar2.f18867a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) dVar2.f18868b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public d(String str, String str2) {
        if (str != null) {
            this.f18867a = str;
            if (str2 != null) {
                this.f18868b = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f18867a;
        String str2 = dVar.f18867a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18868b;
        String str4 = dVar.f18868b;
        return str3 == str4 || str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18867a, this.f18868b});
    }

    public final String toString() {
        return a.f18869a.serialize((a) this, false);
    }
}

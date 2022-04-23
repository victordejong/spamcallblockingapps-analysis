package com.dropbox.core.v2.fileproperties;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18054a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18055b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/i$a.class */
    static final class a extends e<i> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18056a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    if ("name".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("value".equals(currentName)) {
                        str3 = d.h.f17717a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (str3 != null) {
                    i iVar = new i(str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18056a.serialize((a) iVar, true);
                    b.a(iVar);
                    return iVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"value\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(i iVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            i iVar2 = iVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) iVar2.f18054a, jsonGenerator);
            jsonGenerator.writeFieldName("value");
            d.h.f17717a.serialize((d.h) iVar2.f18055b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public i(String str, String str2) {
        if (str != null) {
            this.f18054a = str;
            if (str2 != null) {
                this.f18055b = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'value' is null");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        i iVar = (i) obj;
        String str = this.f18054a;
        String str2 = iVar.f18054a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18055b;
        String str4 = iVar.f18055b;
        return str3 == str4 || str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18054a, this.f18055b});
    }

    public final String toString() {
        return a.f18056a.serialize((a) this, false);
    }
}

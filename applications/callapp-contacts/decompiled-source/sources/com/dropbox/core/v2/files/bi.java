package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bi.class */
public final class bi {

    /* renamed from: a  reason: collision with root package name */
    protected final bl f18278a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18279b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bi$a.class */
    static final class a extends e<bi> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18280a = new a();

        a() {
        }

        public static bi a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            bl blVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("reason".equals(currentName)) {
                        bl.a aVar = bl.a.f18290a;
                        blVar = bl.a.a(jsonParser);
                    } else if ("upload_session_id".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (blVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"reason\" missing.");
                } else if (str2 != null) {
                    bi biVar = new bi(blVar, str2);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18280a.serialize((a) biVar, true);
                    b.a(biVar);
                    return biVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"upload_session_id\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        public static void a(bi biVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("reason");
            bl.a.f18290a.serialize(biVar.f18278a, jsonGenerator);
            jsonGenerator.writeFieldName("upload_session_id");
            d.h.f17717a.serialize((d.h) biVar.f18279b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bi deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bi biVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(biVar, jsonGenerator, z);
        }
    }

    public bi(bl blVar, String str) {
        if (blVar != null) {
            this.f18278a = blVar;
            if (str != null) {
                this.f18279b = str;
                return;
            }
            throw new IllegalArgumentException("Required value for 'uploadSessionId' is null");
        }
        throw new IllegalArgumentException("Required value for 'reason' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        bi biVar = (bi) obj;
        bl blVar = this.f18278a;
        bl blVar2 = biVar.f18278a;
        if (blVar != blVar2 && !blVar.equals(blVar2)) {
            return false;
        }
        String str = this.f18279b;
        String str2 = biVar.f18279b;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18278a, this.f18279b});
    }

    public final String toString() {
        return a.f18280a.serialize((a) this, false);
    }
}

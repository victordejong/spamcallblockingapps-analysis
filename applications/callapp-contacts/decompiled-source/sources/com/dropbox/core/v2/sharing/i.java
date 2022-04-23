package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18666a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18667b;

    /* renamed from: c  reason: collision with root package name */
    protected final z f18668c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/i$a.class */
    static final class a extends e<i> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18669a = new a();

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
                z zVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("shared_folder_id".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("name".equals(currentName)) {
                        str3 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("audience".equals(currentName)) {
                        z.a aVar = z.a.f18728a;
                        zVar = z.a.a(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
                } else if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (zVar != null) {
                    i iVar = new i(str2, str3, zVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18669a.serialize((a) iVar, true);
                    b.a(iVar);
                    return iVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"audience\" missing.");
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
            jsonGenerator.writeFieldName("shared_folder_id");
            d.h.f17717a.serialize((d.h) iVar2.f18666a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) iVar2.f18667b, jsonGenerator);
            jsonGenerator.writeFieldName("audience");
            z.a aVar = z.a.f18728a;
            z.a.a(iVar2.f18668c, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public i(String str, String str2, z zVar) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            this.f18666a = str;
            if (str2 != null) {
                this.f18667b = str2;
                if (zVar != null) {
                    this.f18668c = zVar;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'audience' is null");
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
        } else {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        i iVar = (i) obj;
        String str = this.f18666a;
        String str2 = iVar.f18666a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18667b;
        String str4 = iVar.f18667b;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        z zVar = this.f18668c;
        z zVar2 = iVar.f18668c;
        return zVar == zVar2 || zVar.equals(zVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18666a, this.f18667b, this.f18668c});
    }

    public final String toString() {
        return a.f18669a.serialize((a) this, false);
    }
}

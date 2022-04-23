package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.users.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bo.class */
public final class bo {

    /* renamed from: a  reason: collision with root package name */
    protected final d f18599a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18600b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f18601c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bo$a.class */
    static final class a extends e<bo> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18602a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            d dVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("team_info".equals(currentName)) {
                        dVar = d.a.f18869a.deserialize(jsonParser);
                    } else if ("display_name".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("member_id".equals(currentName)) {
                        str3 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (dVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"team_info\" missing.");
                } else if (str2 != null) {
                    bo boVar = new bo(dVar, str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18602a.serialize((a) boVar, true);
                    b.a(boVar);
                    return boVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bo boVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            bo boVar2 = boVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_info");
            d.a.f18869a.serialize((d.a) boVar2.f18599a, jsonGenerator);
            jsonGenerator.writeFieldName("display_name");
            d.h.f17717a.serialize((d.h) boVar2.f18600b, jsonGenerator);
            if (boVar2.f18601c != null) {
                jsonGenerator.writeFieldName("member_id");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) boVar2.f18601c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public bo(com.dropbox.core.v2.users.d dVar, String str) {
        this(dVar, str, null);
    }

    public bo(com.dropbox.core.v2.users.d dVar, String str, String str2) {
        if (dVar != null) {
            this.f18599a = dVar;
            if (str != null) {
                this.f18600b = str;
                this.f18601c = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        throw new IllegalArgumentException("Required value for 'teamInfo' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        bo boVar = (bo) obj;
        com.dropbox.core.v2.users.d dVar = this.f18599a;
        com.dropbox.core.v2.users.d dVar2 = boVar.f18599a;
        if (dVar != dVar2 && !dVar.equals(dVar2)) {
            return false;
        }
        String str = this.f18600b;
        String str2 = boVar.f18600b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18601c;
        String str4 = boVar.f18601c;
        if (str3 != str4) {
            return str3 != null && str3.equals(str4);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18599a, this.f18600b, this.f18601c});
    }

    public final String toString() {
        return a.f18602a.serialize((a) this, false);
    }
}

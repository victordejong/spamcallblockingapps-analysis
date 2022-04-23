package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.aj;
import com.dropbox.core.v2.sharing.ap;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ak.class */
public final class ak {

    /* renamed from: a  reason: collision with root package name */
    protected final aj f18486a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f18487b;

    /* renamed from: c  reason: collision with root package name */
    protected final ap f18488c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ak$a.class */
    static final class a extends e<ak> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18489a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ak deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            aj ajVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                Boolean bool = null;
                ap apVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("action".equals(currentName)) {
                        aj.a aVar = aj.a.f18485a;
                        ajVar = aj.a.a(jsonParser);
                    } else if ("allow".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("reason".equals(currentName)) {
                        apVar = (ap) d.a(ap.a.f18514a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (ajVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
                } else if (bool != null) {
                    ak akVar = new ak(ajVar, bool.booleanValue(), apVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18489a.serialize((a) akVar, true);
                    b.a(akVar);
                    return akVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ak akVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ak akVar2 = akVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            aj.a aVar = aj.a.f18485a;
            aj.a.a(akVar2.f18486a, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(akVar2.f18487b), jsonGenerator);
            if (akVar2.f18488c != null) {
                jsonGenerator.writeFieldName("reason");
                d.a(ap.a.f18514a).serialize((c) akVar2.f18488c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ak(aj ajVar, boolean z) {
        this(ajVar, z, null);
    }

    public ak(aj ajVar, boolean z, ap apVar) {
        if (ajVar != null) {
            this.f18486a = ajVar;
            this.f18487b = z;
            this.f18488c = apVar;
            return;
        }
        throw new IllegalArgumentException("Required value for 'action' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ak akVar = (ak) obj;
        aj ajVar = this.f18486a;
        aj ajVar2 = akVar.f18486a;
        if ((ajVar != ajVar2 && !ajVar.equals(ajVar2)) || this.f18487b != akVar.f18487b) {
            return false;
        }
        ap apVar = this.f18488c;
        ap apVar2 = akVar.f18488c;
        if (apVar != apVar2) {
            return apVar != null && apVar.equals(apVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18486a, Boolean.valueOf(this.f18487b), this.f18488c});
    }

    public final String toString() {
        return a.f18489a.serialize((a) this, false);
    }
}

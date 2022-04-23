package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.ap;
import com.dropbox.core.v2.sharing.y;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aa.class */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    protected final y f18441a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f18442b;

    /* renamed from: c  reason: collision with root package name */
    protected final ap f18443c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aa$a.class */
    static final class a extends e<aa> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18444a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ aa deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            y yVar = null;
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
                        y.a aVar = y.a.f18726a;
                        yVar = y.a.a(jsonParser);
                    } else if ("allow".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("reason".equals(currentName)) {
                        apVar = (ap) d.a(ap.a.f18514a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (yVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
                } else if (bool != null) {
                    aa aaVar = new aa(yVar, bool.booleanValue(), apVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18444a.serialize((a) aaVar, true);
                    b.a(aaVar);
                    return aaVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(aa aaVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            aa aaVar2 = aaVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            y.a aVar = y.a.f18726a;
            y.a.a(aaVar2.f18441a, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.f18442b), jsonGenerator);
            if (aaVar2.f18443c != null) {
                jsonGenerator.writeFieldName("reason");
                d.a(ap.a.f18514a).serialize((c) aaVar2.f18443c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public aa(y yVar, boolean z) {
        this(yVar, z, null);
    }

    public aa(y yVar, boolean z, ap apVar) {
        if (yVar != null) {
            this.f18441a = yVar;
            this.f18442b = z;
            this.f18443c = apVar;
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
        aa aaVar = (aa) obj;
        y yVar = this.f18441a;
        y yVar2 = aaVar.f18441a;
        if ((yVar != yVar2 && !yVar.equals(yVar2)) || this.f18442b != aaVar.f18442b) {
            return false;
        }
        ap apVar = this.f18443c;
        ap apVar2 = aaVar.f18443c;
        if (apVar != apVar2) {
            return apVar != null && apVar.equals(apVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18441a, Boolean.valueOf(this.f18442b), this.f18443c});
    }

    public final String toString() {
        return a.f18444a.serialize((a) this, false);
    }
}

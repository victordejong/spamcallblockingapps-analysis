package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.ap;
import com.dropbox.core.v2.sharing.o;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    protected final o f18696a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f18697b;

    /* renamed from: c  reason: collision with root package name */
    protected final ap f18698c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/q$a.class */
    public static final class a extends e<q> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18699a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ q deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            o oVar = null;
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
                        o.a aVar = o.a.f18694a;
                        oVar = o.a.a(jsonParser);
                    } else if ("allow".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("reason".equals(currentName)) {
                        apVar = (ap) d.a(ap.a.f18514a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (oVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
                } else if (bool != null) {
                    q qVar = new q(oVar, bool.booleanValue(), apVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18699a.serialize((a) qVar, true);
                    b.a(qVar);
                    return qVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(q qVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            q qVar2 = qVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            o.a aVar = o.a.f18694a;
            o.a.a(qVar2.f18696a, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(qVar2.f18697b), jsonGenerator);
            if (qVar2.f18698c != null) {
                jsonGenerator.writeFieldName("reason");
                d.a(ap.a.f18514a).serialize((c) qVar2.f18698c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public q(o oVar, boolean z) {
        this(oVar, z, null);
    }

    public q(o oVar, boolean z, ap apVar) {
        if (oVar != null) {
            this.f18696a = oVar;
            this.f18697b = z;
            this.f18698c = apVar;
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
        q qVar = (q) obj;
        o oVar = this.f18696a;
        o oVar2 = qVar.f18696a;
        if ((oVar != oVar2 && !oVar.equals(oVar2)) || this.f18697b != qVar.f18697b) {
            return false;
        }
        ap apVar = this.f18698c;
        ap apVar2 = qVar.f18698c;
        if (apVar != apVar2) {
            return apVar != null && apVar.equals(apVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18696a, Boolean.valueOf(this.f18697b), this.f18698c});
    }

    public final String toString() {
        return a.f18699a.serialize((a) this, false);
    }
}

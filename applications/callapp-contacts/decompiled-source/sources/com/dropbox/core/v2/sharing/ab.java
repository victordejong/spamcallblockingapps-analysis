package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.au;
import com.dropbox.core.v2.sharing.av;
import com.dropbox.core.v2.sharing.bg;
import com.dropbox.core.v2.sharing.x;
import com.dropbox.core.v2.sharing.z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    protected final av f18445a;

    /* renamed from: b  reason: collision with root package name */
    protected final au f18446b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f18447c;

    /* renamed from: d  reason: collision with root package name */
    protected final bg f18448d;
    protected final z e;
    protected final x f;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ab$a.class */
    static final class a extends e<ab> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18449a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ab deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                av avVar = null;
                au auVar = null;
                bg bgVar = null;
                z zVar = null;
                x xVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("can_revoke".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("resolved_visibility".equals(currentName)) {
                        avVar = (av) d.a(av.a.f18542a).deserialize(jsonParser);
                    } else if ("requested_visibility".equals(currentName)) {
                        auVar = (au) d.a(au.a.f18540a).deserialize(jsonParser);
                    } else if ("revoke_failure_reason".equals(currentName)) {
                        bgVar = (bg) d.a(bg.a.f18584a).deserialize(jsonParser);
                    } else if ("effective_audience".equals(currentName)) {
                        zVar = (z) d.a(z.a.f18728a).deserialize(jsonParser);
                    } else if ("link_access_level".equals(currentName)) {
                        xVar = (x) d.a(x.a.f18724a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (bool != null) {
                    ab abVar = new ab(bool.booleanValue(), avVar, auVar, bgVar, zVar, xVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18449a.serialize((a) abVar, true);
                    b.a(abVar);
                    return abVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"can_revoke\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ab abVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ab abVar2 = abVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("can_revoke");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(abVar2.f18447c), jsonGenerator);
            if (abVar2.f18445a != null) {
                jsonGenerator.writeFieldName("resolved_visibility");
                d.a(av.a.f18542a).serialize((c) abVar2.f18445a, jsonGenerator);
            }
            if (abVar2.f18446b != null) {
                jsonGenerator.writeFieldName("requested_visibility");
                d.a(au.a.f18540a).serialize((c) abVar2.f18446b, jsonGenerator);
            }
            if (abVar2.f18448d != null) {
                jsonGenerator.writeFieldName("revoke_failure_reason");
                d.a(bg.a.f18584a).serialize((c) abVar2.f18448d, jsonGenerator);
            }
            if (abVar2.e != null) {
                jsonGenerator.writeFieldName("effective_audience");
                d.a(z.a.f18728a).serialize((c) abVar2.e, jsonGenerator);
            }
            if (abVar2.f != null) {
                jsonGenerator.writeFieldName("link_access_level");
                d.a(x.a.f18724a).serialize((c) abVar2.f, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ab(boolean z) {
        this(z, null, null, null, null, null);
    }

    public ab(boolean z, av avVar, au auVar, bg bgVar, z zVar, x xVar) {
        this.f18445a = avVar;
        this.f18446b = auVar;
        this.f18447c = z;
        this.f18448d = bgVar;
        this.e = zVar;
        this.f = xVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ab abVar = (ab) obj;
        if (this.f18447c != abVar.f18447c) {
            return false;
        }
        av avVar = this.f18445a;
        av avVar2 = abVar.f18445a;
        if (avVar != avVar2 && (avVar == null || !avVar.equals(avVar2))) {
            return false;
        }
        au auVar = this.f18446b;
        au auVar2 = abVar.f18446b;
        if (auVar != auVar2 && (auVar == null || !auVar.equals(auVar2))) {
            return false;
        }
        bg bgVar = this.f18448d;
        bg bgVar2 = abVar.f18448d;
        if (bgVar != bgVar2 && (bgVar == null || !bgVar.equals(bgVar2))) {
            return false;
        }
        z zVar = this.e;
        z zVar2 = abVar.e;
        if (zVar != zVar2 && (zVar == null || !zVar.equals(zVar2))) {
            return false;
        }
        x xVar = this.f;
        x xVar2 = abVar.f;
        if (xVar != xVar2) {
            return xVar != null && xVar.equals(xVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18445a, this.f18446b, Boolean.valueOf(this.f18447c), this.f18448d, this.e, this.f});
    }

    public final String toString() {
        return a.f18449a.serialize((a) this, false);
    }
}

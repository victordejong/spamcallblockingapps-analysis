package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9046ap;
import com.dropbox.core.p265v2.sharing.EnumC9028aj;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.ak */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ak.class */
public final class C9031ak {

    /* renamed from: a */
    protected final EnumC9028aj f31446a;

    /* renamed from: b */
    protected final boolean f31447b;

    /* renamed from: c */
    protected final C9046ap f31448c;

    /* renamed from: com.dropbox.core.v2.sharing.ak$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ak$a.class */
    static final class C9032a extends AbstractC8558e<C9031ak> {

        /* renamed from: a */
        public static final C9032a f31449a = new C9032a();

        C9032a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9031ak deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            EnumC9028aj enumC9028aj = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = null;
            C9046ap c9046ap = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("action".equals(currentName)) {
                    EnumC9028aj.C9030a c9030a = EnumC9028aj.C9030a.f31445a;
                    enumC9028aj = EnumC9028aj.C9030a.m24900a(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    c9046ap = (C9046ap) C8548d.m25354a(C9046ap.C9048a.f31494a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9028aj == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            C9031ak c9031ak = new C9031ak(enumC9028aj, bool.booleanValue(), c9046ap);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31449a.serialize((C9032a) c9031ak, true);
            C8546b.m25355a(c9031ak);
            return c9031ak;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9031ak c9031ak, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9031ak c9031ak2 = c9031ak;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            EnumC9028aj.C9030a c9030a = EnumC9028aj.C9030a.f31445a;
            EnumC9028aj.C9030a.m24901a(c9031ak2.f31446a, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9031ak2.f31447b), jsonGenerator);
            if (c9031ak2.f31448c != null) {
                jsonGenerator.writeFieldName("reason");
                C8548d.m25354a(C9046ap.C9048a.f31494a).serialize((AbstractC8547c) c9031ak2.f31448c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9031ak(EnumC9028aj enumC9028aj, boolean z) {
        this(enumC9028aj, z, null);
    }

    public C9031ak(EnumC9028aj enumC9028aj, boolean z, C9046ap c9046ap) {
        if (enumC9028aj != null) {
            this.f31446a = enumC9028aj;
            this.f31447b = z;
            this.f31448c = c9046ap;
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
        C9031ak c9031ak = (C9031ak) obj;
        EnumC9028aj enumC9028aj = this.f31446a;
        EnumC9028aj enumC9028aj2 = c9031ak.f31446a;
        if ((enumC9028aj != enumC9028aj2 && !enumC9028aj.equals(enumC9028aj2)) || this.f31447b != c9031ak.f31447b) {
            return false;
        }
        C9046ap c9046ap = this.f31448c;
        C9046ap c9046ap2 = c9031ak.f31448c;
        if (c9046ap == c9046ap2) {
            return true;
        }
        return c9046ap != null && c9046ap.equals(c9046ap2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31446a, Boolean.valueOf(this.f31447b), this.f31448c});
    }

    public final String toString() {
        return C9032a.f31449a.serialize((C9032a) this, false);
    }
}

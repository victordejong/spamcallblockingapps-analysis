package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9046ap;
import com.dropbox.core.p265v2.sharing.EnumC9190o;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.q */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/q.class */
public final class C9195q {

    /* renamed from: a */
    protected final EnumC9190o f31765a;

    /* renamed from: b */
    protected final boolean f31766b;

    /* renamed from: c */
    protected final C9046ap f31767c;

    /* renamed from: com.dropbox.core.v2.sharing.q$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/q$a.class */
    public static final class C9196a extends AbstractC8558e<C9195q> {

        /* renamed from: a */
        public static final C9196a f31768a = new C9196a();

        C9196a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9195q deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            EnumC9190o enumC9190o = null;
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
                    EnumC9190o.C9192a c9192a = EnumC9190o.C9192a.f31763a;
                    enumC9190o = EnumC9190o.C9192a.m24768a(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    c9046ap = (C9046ap) C8548d.m25354a(C9046ap.C9048a.f31494a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9190o == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            C9195q c9195q = new C9195q(enumC9190o, bool.booleanValue(), c9046ap);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31768a.serialize((C9196a) c9195q, true);
            C8546b.m25355a(c9195q);
            return c9195q;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9195q c9195q, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9195q c9195q2 = c9195q;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            EnumC9190o.C9192a c9192a = EnumC9190o.C9192a.f31763a;
            EnumC9190o.C9192a.m24769a(c9195q2.f31765a, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9195q2.f31766b), jsonGenerator);
            if (c9195q2.f31767c != null) {
                jsonGenerator.writeFieldName("reason");
                C8548d.m25354a(C9046ap.C9048a.f31494a).serialize((AbstractC8547c) c9195q2.f31767c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9195q(EnumC9190o enumC9190o, boolean z) {
        this(enumC9190o, z, null);
    }

    public C9195q(EnumC9190o enumC9190o, boolean z, C9046ap c9046ap) {
        if (enumC9190o != null) {
            this.f31765a = enumC9190o;
            this.f31766b = z;
            this.f31767c = c9046ap;
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
        C9195q c9195q = (C9195q) obj;
        EnumC9190o enumC9190o = this.f31765a;
        EnumC9190o enumC9190o2 = c9195q.f31765a;
        if ((enumC9190o != enumC9190o2 && !enumC9190o.equals(enumC9190o2)) || this.f31766b != c9195q.f31766b) {
            return false;
        }
        C9046ap c9046ap = this.f31767c;
        C9046ap c9046ap2 = c9195q.f31767c;
        if (c9046ap == c9046ap2) {
            return true;
        }
        return c9046ap != null && c9046ap.equals(c9046ap2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31765a, Boolean.valueOf(this.f31766b), this.f31767c});
    }

    public final String toString() {
        return C9196a.f31768a.serialize((C9196a) this, false);
    }
}

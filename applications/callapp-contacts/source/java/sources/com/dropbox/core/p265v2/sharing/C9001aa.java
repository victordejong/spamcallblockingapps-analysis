package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9046ap;
import com.dropbox.core.p265v2.sharing.EnumC9215y;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.aa */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aa.class */
public final class C9001aa {

    /* renamed from: a */
    protected final EnumC9215y f31398a;

    /* renamed from: b */
    protected final boolean f31399b;

    /* renamed from: c */
    protected final C9046ap f31400c;

    /* renamed from: com.dropbox.core.v2.sharing.aa$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aa$a.class */
    static final class C9002a extends AbstractC8558e<C9001aa> {

        /* renamed from: a */
        public static final C9002a f31401a = new C9002a();

        C9002a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9001aa deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            EnumC9215y enumC9215y = null;
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
                    EnumC9215y.C9217a c9217a = EnumC9215y.C9217a.f31796a;
                    enumC9215y = EnumC9215y.C9217a.m24752a(jsonParser);
                } else if ("allow".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("reason".equals(currentName)) {
                    c9046ap = (C9046ap) C8548d.m25354a(C9046ap.C9048a.f31494a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9215y == null) {
                throw new JsonParseException(jsonParser, "Required field \"action\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"allow\" missing.");
            }
            C9001aa c9001aa = new C9001aa(enumC9215y, bool.booleanValue(), c9046ap);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31401a.serialize((C9002a) c9001aa, true);
            C8546b.m25355a(c9001aa);
            return c9001aa;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9001aa c9001aa, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9001aa c9001aa2 = c9001aa;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("action");
            EnumC9215y.C9217a c9217a = EnumC9215y.C9217a.f31796a;
            EnumC9215y.C9217a.m24753a(c9001aa2.f31398a, jsonGenerator);
            jsonGenerator.writeFieldName("allow");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9001aa2.f31399b), jsonGenerator);
            if (c9001aa2.f31400c != null) {
                jsonGenerator.writeFieldName("reason");
                C8548d.m25354a(C9046ap.C9048a.f31494a).serialize((AbstractC8547c) c9001aa2.f31400c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9001aa(EnumC9215y enumC9215y, boolean z) {
        this(enumC9215y, z, null);
    }

    public C9001aa(EnumC9215y enumC9215y, boolean z, C9046ap c9046ap) {
        if (enumC9215y != null) {
            this.f31398a = enumC9215y;
            this.f31399b = z;
            this.f31400c = c9046ap;
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
        C9001aa c9001aa = (C9001aa) obj;
        EnumC9215y enumC9215y = this.f31398a;
        EnumC9215y enumC9215y2 = c9001aa.f31398a;
        if ((enumC9215y != enumC9215y2 && !enumC9215y.equals(enumC9215y2)) || this.f31399b != c9001aa.f31399b) {
            return false;
        }
        C9046ap c9046ap = this.f31400c;
        C9046ap c9046ap2 = c9001aa.f31400c;
        if (c9046ap == c9046ap2) {
            return true;
        }
        return c9046ap != null && c9046ap.equals(c9046ap2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31398a, Boolean.valueOf(this.f31399b), this.f31400c});
    }

    public final String toString() {
        return C9002a.f31401a.serialize((C9002a) this, false);
    }
}

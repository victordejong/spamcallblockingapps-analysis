package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.z */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/z.class */
public final class C8980z {

    /* renamed from: a */
    protected final double f31340a;

    /* renamed from: b */
    protected final double f31341b;

    /* renamed from: com.dropbox.core.v2.files.z$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/z$a.class */
    static final class C8981a extends AbstractC8558e<C8980z> {

        /* renamed from: a */
        public static final C8981a f31342a = new C8981a();

        C8981a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8980z deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Double d = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Double d2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("latitude".equals(currentName)) {
                    d = C8548d.C8551c.f30454a.deserialize(jsonParser);
                } else if ("longitude".equals(currentName)) {
                    d2 = C8548d.C8551c.f30454a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (d == null) {
                throw new JsonParseException(jsonParser, "Required field \"latitude\" missing.");
            }
            if (d2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"longitude\" missing.");
            }
            C8980z c8980z = new C8980z(d.doubleValue(), d2.doubleValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31342a.serialize((C8981a) c8980z, true);
            C8546b.m25355a(c8980z);
            return c8980z;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8980z c8980z, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8980z c8980z2 = c8980z;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("latitude");
            C8548d.C8551c.f30454a.serialize((C8548d.C8551c) Double.valueOf(c8980z2.f31340a), jsonGenerator);
            jsonGenerator.writeFieldName("longitude");
            C8548d.C8551c.f30454a.serialize((C8548d.C8551c) Double.valueOf(c8980z2.f31341b), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8980z(double d, double d2) {
        this.f31340a = d;
        this.f31341b = d2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8980z c8980z = (C8980z) obj;
        return this.f31340a == c8980z.f31340a && this.f31341b == c8980z.f31341b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.f31340a), Double.valueOf(this.f31341b)});
    }

    public final String toString() {
        return C8981a.f31342a.serialize((C8981a) this, false);
    }
}

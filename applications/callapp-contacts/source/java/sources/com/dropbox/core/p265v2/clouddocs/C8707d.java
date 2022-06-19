package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.clouddocs.C8709e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.clouddocs.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/d.class */
public final class C8707d {

    /* renamed from: a */
    protected final C8709e f30828a;

    /* renamed from: com.dropbox.core.v2.clouddocs.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/d$a.class */
    static final class C8708a extends AbstractC8558e<C8707d> {

        /* renamed from: a */
        public static final C8708a f30829a = new C8708a();

        C8708a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8707d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            C8709e c8709e = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("get_metadata_error_tag".equals(currentName)) {
                    c8709e = (C8709e) C8548d.m25354a(C8709e.C8711a.f30834a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            C8707d c8707d = new C8707d(c8709e);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f30829a.serialize((C8708a) c8707d, true);
            C8546b.m25355a(c8707d);
            return c8707d;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8707d c8707d, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8707d c8707d2 = c8707d;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c8707d2.f30828a != null) {
                jsonGenerator.writeFieldName("get_metadata_error_tag");
                C8548d.m25354a(C8709e.C8711a.f30834a).serialize((AbstractC8547c) c8707d2.f30828a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8707d() {
        this(null);
    }

    public C8707d(C8709e c8709e) {
        this.f30828a = c8709e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8709e c8709e = this.f30828a;
        C8709e c8709e2 = ((C8707d) obj).f30828a;
        if (c8709e == c8709e2) {
            return true;
        }
        return c8709e != null && c8709e.equals(c8709e2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30828a});
    }

    public final String toString() {
        return C8708a.f30829a.serialize((C8708a) this, false);
    }
}

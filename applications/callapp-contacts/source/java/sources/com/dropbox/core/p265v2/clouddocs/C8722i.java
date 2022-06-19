package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.clouddocs.C8727k;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.clouddocs.i */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/i.class */
public final class C8722i {

    /* renamed from: a */
    protected final C8727k f30845a;

    /* renamed from: com.dropbox.core.v2.clouddocs.i$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/i$a.class */
    static final class C8723a extends AbstractC8558e<C8722i> {

        /* renamed from: a */
        public static final C8723a f30846a = new C8723a();

        C8723a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8722i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8727k c8727k = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("rename_error_tag".equals(currentName)) {
                    c8727k = (C8727k) C8548d.m25354a(C8727k.C8729a.f30855a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            C8722i c8722i = new C8722i(c8727k);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f30846a.serialize((C8723a) c8722i, true);
            C8546b.m25355a(c8722i);
            return c8722i;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8722i c8722i, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8722i c8722i2 = c8722i;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c8722i2.f30845a != null) {
                jsonGenerator.writeFieldName("rename_error_tag");
                C8548d.m25354a(C8727k.C8729a.f30855a).serialize((AbstractC8547c) c8722i2.f30845a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8722i() {
        this(null);
    }

    public C8722i(C8727k c8727k) {
        this.f30845a = c8727k;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8727k c8727k = this.f30845a;
        C8727k c8727k2 = ((C8722i) obj).f30845a;
        if (c8727k == c8727k2) {
            return true;
        }
        return c8727k != null && c8727k.equals(c8727k2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30845a});
    }

    public final String toString() {
        return C8723a.f30846a.serialize((C8723a) this, false);
    }
}

package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
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
/* renamed from: com.dropbox.core.v2.files.m */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/m.class */
public final class C8947m {

    /* renamed from: a */
    protected final String f31280a;

    /* renamed from: com.dropbox.core.v2.files.m$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/m$a.class */
    public static final class C8948a extends AbstractC8558e<C8947m> {

        /* renamed from: a */
        public static final C8948a f31281a = new C8948a();

        C8948a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8947m deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("export_as".equals(currentName)) {
                    str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            C8947m c8947m = new C8947m(str2);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31281a.serialize((C8948a) c8947m, true);
            C8546b.m25355a(c8947m);
            return c8947m;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8947m c8947m, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8947m c8947m2 = c8947m;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c8947m2.f31280a != null) {
                jsonGenerator.writeFieldName("export_as");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8947m2.f31280a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8947m() {
        this(null);
    }

    public C8947m(String str) {
        this.f31280a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f31280a;
        String str2 = ((C8947m) obj).f31280a;
        if (str == str2) {
            return true;
        }
        return str != null && str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31280a});
    }

    public final String toString() {
        return C8948a.f31281a.serialize((C8948a) this, false);
    }
}

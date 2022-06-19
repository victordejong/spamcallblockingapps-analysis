package com.dropbox.core.p265v2.sharing;

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
/* renamed from: com.dropbox.core.v2.sharing.g */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/g.class */
public final class C9169g {

    /* renamed from: a */
    protected final String f31726a;

    /* renamed from: com.dropbox.core.v2.sharing.g$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/g$a.class */
    static final class C9170a extends AbstractC8558e<C9169g> {

        /* renamed from: a */
        public static final C9170a f31727a = new C9170a();

        C9170a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9169g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("name".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            C9169g c9169g = new C9169g(str2);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31727a.serialize((C9170a) c9169g, true);
            C8546b.m25355a(c9169g);
            return c9169g;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9169g c9169g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9169g c9169g2 = c9169g;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9169g2.f31726a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9169g(String str) {
        if (str != null) {
            this.f31726a = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f31726a;
        String str2 = ((C9169g) obj).f31726a;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31726a});
    }

    public final String toString() {
        return C9170a.f31727a.serialize((C9170a) this, false);
    }
}

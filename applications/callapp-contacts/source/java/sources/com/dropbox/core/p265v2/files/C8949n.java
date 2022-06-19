package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p265v2.files.C8951o;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.n */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/n.class */
public final class C8949n {

    /* renamed from: a */
    protected final C8951o f31282a;

    /* renamed from: com.dropbox.core.v2.files.n$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/n$a.class */
    public static final class C8950a extends AbstractC8558e<C8949n> {

        /* renamed from: a */
        public static final C8950a f31283a = new C8950a();

        C8950a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8949n deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8951o c8951o = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (Constants.VAST_TRACKER_CONTENT.equals(currentName)) {
                    C8951o.C8953a c8953a = C8951o.C8953a.f31289a;
                    c8951o = C8951o.C8953a.m24945a(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (c8951o == null) {
                throw new JsonParseException(jsonParser, "Required field \"content\" missing.");
            }
            C8949n c8949n = new C8949n(c8951o);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31283a.serialize((C8950a) c8949n, true);
            C8546b.m25355a(c8949n);
            return c8949n;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8949n c8949n, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8949n c8949n2 = c8949n;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(Constants.VAST_TRACKER_CONTENT);
            C8951o.C8953a.f31289a.serialize(c8949n2.f31282a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8949n(C8951o c8951o) {
        if (c8951o != null) {
            this.f31282a = c8951o;
            return;
        }
        throw new IllegalArgumentException("Required value for 'content' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8951o c8951o = this.f31282a;
        C8951o c8951o2 = ((C8949n) obj).f31282a;
        return c8951o == c8951o2 || c8951o.equals(c8951o2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31282a});
    }

    public final String toString() {
        return C8950a.f31283a.serialize((C8950a) this, false);
    }
}

package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p265v2.files.C8829al;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.g */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/g.class */
public final class C8929g extends C8959r {

    /* renamed from: a */
    protected final C8829al f31254a;

    /* renamed from: com.dropbox.core.v2.files.g$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/g$a.class */
    public static final class C8930a extends AbstractC8558e<C8929g> {

        /* renamed from: a */
        public static final C8930a f31255a = new C8930a();

        C8930a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8929g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8829al c8829al = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("metadata".equals(currentName)) {
                    c8829al = C8829al.C8830a.f31070a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (c8829al == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            C8929g c8929g = new C8929g(c8829al);
            if (!z) {
                expectEndObject(jsonParser);
            }
            c8929g.mo24942a();
            C8546b.m25355a(c8929g);
            return c8929g;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8929g c8929g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8929g c8929g2 = c8929g;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            C8829al.C8830a.f31070a.serialize((C8829al.C8830a) c8929g2.f31254a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8929g(C8829al c8829al) {
        if (c8829al != null) {
            this.f31254a = c8829al;
            return;
        }
        throw new IllegalArgumentException("Required value for 'metadata' is null");
    }

    @Override // com.dropbox.core.p265v2.files.C8959r
    /* renamed from: a */
    public final String mo24942a() {
        return C8930a.f31255a.serialize((C8930a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8959r
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8829al c8829al = this.f31254a;
        C8829al c8829al2 = ((C8929g) obj).f31254a;
        return c8829al == c8829al2 || c8829al.equals(c8829al2);
    }

    @Override // com.dropbox.core.p265v2.files.C8959r
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31254a});
    }

    @Override // com.dropbox.core.p265v2.files.C8959r
    public final String toString() {
        return C8930a.f31255a.serialize((C8930a) this, false);
    }
}

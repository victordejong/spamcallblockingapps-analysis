package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.files.r */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/r.class */
public class C8959r {

    /* renamed from: com.dropbox.core.v2.files.r$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/r$a.class */
    public static final class C8960a extends AbstractC8558e<C8959r> {

        /* renamed from: a */
        public static final C8960a f31310a = new C8960a();

        private C8960a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8959r deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8959r c8959r = new C8959r();
            if (!z) {
                expectEndObject(jsonParser);
            }
            c8959r.mo24942a();
            C8546b.m25355a(c8959r);
            return c8959r;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8959r c8959r, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: a */
    public String mo24942a() {
        return C8960a.f31310a.serialize((C8960a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass());
    }

    public int hashCode() {
        return getClass().toString().hashCode();
    }

    public String toString() {
        return C8960a.f31310a.serialize((C8960a) this, false);
    }
}

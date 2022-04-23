package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/r.class */
public class r {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/r$a.class */
    public static final class a extends e<r> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18355a = new a();

        private a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ r deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                r rVar = new r();
                if (!z) {
                    expectEndObject(jsonParser);
                }
                rVar.a();
                b.a(rVar);
                return rVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(r rVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public String a() {
        return a.f18355a.serialize((a) this, true);
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
        return a.f18355a.serialize((a) this, false);
    }
}

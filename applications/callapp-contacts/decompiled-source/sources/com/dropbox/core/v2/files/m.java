package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18335a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/m$a.class */
    public static final class a extends e<m> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18336a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ m deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("export_as".equals(currentName)) {
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                m mVar = new m(str2);
                if (!z) {
                    expectEndObject(jsonParser);
                }
                f18336a.serialize((a) mVar, true);
                b.a(mVar);
                return mVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(m mVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m mVar2 = mVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (mVar2.f18335a != null) {
                jsonGenerator.writeFieldName("export_as");
                d.a(d.h.f17717a).serialize((c) mVar2.f18335a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public m() {
        this(null);
    }

    public m(String str) {
        this.f18335a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f18335a;
        String str2 = ((m) obj).f18335a;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18335a});
    }

    public final String toString() {
        return a.f18336a.serialize((a) this, false);
    }
}

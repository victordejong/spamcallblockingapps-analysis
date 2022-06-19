package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p265v2.team.EnumC9247aw;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.team.bc */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bc.class */
public final class C9267bc {

    /* renamed from: a */
    protected final EnumC9247aw f31892a;

    /* renamed from: com.dropbox.core.v2.team.bc$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bc$a.class */
    static final class C9268a extends AbstractC8558e<C9267bc> {

        /* renamed from: a */
        public static final C9268a f31893a = new C9268a();

        C9268a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9267bc deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            EnumC9247aw enumC9247aw = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_error".equals(currentName)) {
                    EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
                    enumC9247aw = EnumC9247aw.C9249a.m24745a(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9247aw == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_error\" missing.");
            }
            C9267bc c9267bc = new C9267bc(enumC9247aw);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31893a.serialize((C9268a) c9267bc, true);
            C8546b.m25355a(c9267bc);
            return c9267bc;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9267bc c9267bc, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9267bc c9267bc2 = c9267bc;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_error");
            EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
            EnumC9247aw.C9249a.m24746a(c9267bc2.f31892a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9267bc(EnumC9247aw enumC9247aw) {
        if (enumC9247aw != null) {
            this.f31892a = enumC9247aw;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessError' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        EnumC9247aw enumC9247aw = this.f31892a;
        EnumC9247aw enumC9247aw2 = ((C9267bc) obj).f31892a;
        return enumC9247aw == enumC9247aw2 || enumC9247aw.equals(enumC9247aw2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31892a});
    }

    public final String toString() {
        return C9268a.f31893a.serialize((C9268a) this, false);
    }
}

package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.users.C9329d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bo */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bo.class */
public final class C9125bo {

    /* renamed from: a */
    protected final C9329d f31632a;

    /* renamed from: b */
    protected final String f31633b;

    /* renamed from: c */
    protected final String f31634c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bo$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bo$a.class */
    public static final class C9126a extends AbstractC8558e<C9125bo> {

        /* renamed from: a */
        public static final C9126a f31635a = new C9126a();

        C9126a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9125bo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            C9329d c9329d = null;
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
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_info".equals(currentName)) {
                    c9329d = C9329d.C9330a.f31962a.deserialize(jsonParser);
                } else if ("display_name".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("member_id".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (c9329d == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_info\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
            }
            C9125bo c9125bo = new C9125bo(c9329d, str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31635a.serialize((C9126a) c9125bo, true);
            C8546b.m25355a(c9125bo);
            return c9125bo;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9125bo c9125bo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9125bo c9125bo2 = c9125bo;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_info");
            C9329d.C9330a.f31962a.serialize((C9329d.C9330a) c9125bo2.f31632a, jsonGenerator);
            jsonGenerator.writeFieldName("display_name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9125bo2.f31633b, jsonGenerator);
            if (c9125bo2.f31634c != null) {
                jsonGenerator.writeFieldName("member_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9125bo2.f31634c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9125bo(C9329d c9329d, String str) {
        this(c9329d, str, null);
    }

    public C9125bo(C9329d c9329d, String str, String str2) {
        if (c9329d != null) {
            this.f31632a = c9329d;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'displayName' is null");
            }
            this.f31633b = str;
            this.f31634c = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'teamInfo' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9125bo c9125bo = (C9125bo) obj;
        C9329d c9329d = this.f31632a;
        C9329d c9329d2 = c9125bo.f31632a;
        if (c9329d != c9329d2 && !c9329d.equals(c9329d2)) {
            return false;
        }
        String str = this.f31633b;
        String str2 = c9125bo.f31633b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31634c;
        String str4 = c9125bo.f31634c;
        if (str3 == str4) {
            return true;
        }
        return str3 != null && str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31632a, this.f31633b, this.f31634c});
    }

    public final String toString() {
        return C9126a.f31635a.serialize((C9126a) this, false);
    }
}

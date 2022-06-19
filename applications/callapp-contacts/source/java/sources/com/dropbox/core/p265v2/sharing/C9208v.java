package com.dropbox.core.p265v2.sharing;

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
/* renamed from: com.dropbox.core.v2.sharing.v */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/v.class */
public final class C9208v {

    /* renamed from: a */
    protected final String f31786a;

    /* renamed from: b */
    protected final String f31787b;

    /* renamed from: com.dropbox.core.v2.sharing.v$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/v$a.class */
    static final class C9209a extends AbstractC8558e<C9208v> {

        /* renamed from: a */
        public static final C9209a f31788a = new C9209a();

        C9209a() {
        }

        /* renamed from: a */
        public static C9208v m24756a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("message".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("upsell_url".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"message\" missing.");
            }
            C9208v c9208v = new C9208v(str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31788a.serialize((C9209a) c9208v, true);
            C8546b.m25355a(c9208v);
            return c9208v;
        }

        /* renamed from: a */
        public static void m24757a(C9208v c9208v, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("message");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9208v.f31786a, jsonGenerator);
            if (c9208v.f31787b != null) {
                jsonGenerator.writeFieldName("upsell_url");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9208v.f31787b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9208v deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24756a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9208v c9208v, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m24757a(c9208v, jsonGenerator, z);
        }
    }

    public C9208v(String str) {
        this(str, null);
    }

    public C9208v(String str, String str2) {
        if (str != null) {
            this.f31786a = str;
            this.f31787b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'message' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9208v c9208v = (C9208v) obj;
        String str = this.f31786a;
        String str2 = c9208v.f31786a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31787b;
        String str4 = c9208v.f31787b;
        if (str3 == str4) {
            return true;
        }
        return str3 != null && str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31786a, this.f31787b});
    }

    public final String toString() {
        return C9209a.f31788a.serialize((C9209a) this, false);
    }
}

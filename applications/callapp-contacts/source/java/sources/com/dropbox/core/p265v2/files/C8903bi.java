package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8910bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.bi */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bi.class */
public final class C8903bi {

    /* renamed from: a */
    protected final C8910bl f31214a;

    /* renamed from: b */
    protected final String f31215b;

    /* renamed from: com.dropbox.core.v2.files.bi$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bi$a.class */
    static final class C8904a extends AbstractC8558e<C8903bi> {

        /* renamed from: a */
        public static final C8904a f31216a = new C8904a();

        C8904a() {
        }

        /* renamed from: a */
        public static C8903bi m24986a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            C8910bl c8910bl = null;
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
                if ("reason".equals(currentName)) {
                    C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                    c8910bl = C8910bl.C8912a.m24973a(jsonParser);
                } else if ("upload_session_id".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (c8910bl == null) {
                throw new JsonParseException(jsonParser, "Required field \"reason\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"upload_session_id\" missing.");
            }
            C8903bi c8903bi = new C8903bi(c8910bl, str2);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31216a.serialize((C8904a) c8903bi, true);
            C8546b.m25355a(c8903bi);
            return c8903bi;
        }

        /* renamed from: a */
        public static void m24987a(C8903bi c8903bi, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("reason");
            C8910bl.C8912a.f31231a.serialize(c8903bi.f31214a, jsonGenerator);
            jsonGenerator.writeFieldName("upload_session_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8903bi.f31215b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8903bi deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24986a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8903bi c8903bi, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m24987a(c8903bi, jsonGenerator, z);
        }
    }

    public C8903bi(C8910bl c8910bl, String str) {
        if (c8910bl != null) {
            this.f31214a = c8910bl;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'uploadSessionId' is null");
            }
            this.f31215b = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'reason' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8903bi c8903bi = (C8903bi) obj;
        C8910bl c8910bl = this.f31214a;
        C8910bl c8910bl2 = c8903bi.f31214a;
        if (c8910bl != c8910bl2 && !c8910bl.equals(c8910bl2)) {
            return false;
        }
        String str = this.f31215b;
        String str2 = c8903bi.f31215b;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31214a, this.f31215b});
    }

    public final String toString() {
        return C8904a.f31216a.serialize((C8904a) this, false);
    }
}

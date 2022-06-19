package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.files.aw */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aw.class */
public final class C8864aw {

    /* renamed from: a */
    protected final Date f31135a;

    /* renamed from: b */
    protected final String f31136b;

    /* renamed from: c */
    protected final String f31137c;

    /* renamed from: com.dropbox.core.v2.files.aw$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aw$a.class */
    static final class C8865a extends AbstractC8558e<C8864aw> {

        /* renamed from: a */
        public static final C8865a f31138a = new C8865a();

        C8865a() {
        }

        /* renamed from: a */
        public static C8864aw m25026a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
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
                if ("created".equals(currentName)) {
                    date = C8548d.C8550b.f30453a.deserialize(jsonParser);
                } else if ("lock_holder_account_id".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("lock_holder_team_id".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"created\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"lock_holder_account_id\" missing.");
            }
            C8864aw c8864aw = new C8864aw(date, str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31138a.serialize((C8865a) c8864aw, true);
            C8546b.m25355a(c8864aw);
            return c8864aw;
        }

        /* renamed from: a */
        public static void m25027a(C8864aw c8864aw, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("created");
            C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c8864aw.f31135a, jsonGenerator);
            jsonGenerator.writeFieldName("lock_holder_account_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8864aw.f31136b, jsonGenerator);
            if (c8864aw.f31137c != null) {
                jsonGenerator.writeFieldName("lock_holder_team_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8864aw.f31137c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8864aw deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25026a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8864aw c8864aw, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m25027a(c8864aw, jsonGenerator, z);
        }
    }

    public C8864aw(Date date, String str) {
        this(date, str, null);
    }

    public C8864aw(Date date, String str, String str2) {
        if (date != null) {
            this.f31135a = C8636d.m25221a(date);
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'lockHolderAccountId' is null");
            }
            if (str.length() < 40) {
                throw new IllegalArgumentException("String 'lockHolderAccountId' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("String 'lockHolderAccountId' is longer than 40");
            }
            this.f31136b = str;
            this.f31137c = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'created' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8864aw c8864aw = (C8864aw) obj;
        Date date = this.f31135a;
        Date date2 = c8864aw.f31135a;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        String str = this.f31136b;
        String str2 = c8864aw.f31136b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31137c;
        String str4 = c8864aw.f31137c;
        if (str3 == str4) {
            return true;
        }
        return str3 != null && str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31135a, this.f31136b, this.f31137c});
    }

    public final String toString() {
        return C8865a.f31138a.serialize((C8865a) this, false);
    }
}

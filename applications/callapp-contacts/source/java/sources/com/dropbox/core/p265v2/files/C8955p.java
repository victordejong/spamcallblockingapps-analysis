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
/* renamed from: com.dropbox.core.v2.files.p */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/p.class */
public final class C8955p {

    /* renamed from: a */
    protected final Boolean f31290a;

    /* renamed from: b */
    protected final String f31291b;

    /* renamed from: c */
    protected final String f31292c;

    /* renamed from: d */
    protected final Date f31293d;

    /* renamed from: com.dropbox.core.v2.files.p$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/p$a.class */
    public static final class C8956a extends AbstractC8558e<C8955p> {

        /* renamed from: a */
        public static final C8956a f31294a = new C8956a();

        C8956a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8955p deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
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
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_lockholder".equals(currentName)) {
                    bool = (Boolean) C8548d.m25354a(C8548d.C8549a.f30452a).deserialize(jsonParser);
                } else if ("lockholder_name".equals(currentName)) {
                    str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("lockholder_account_id".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("created".equals(currentName)) {
                    date = (Date) C8548d.m25354a(C8548d.C8550b.f30453a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            C8955p c8955p = new C8955p(bool, str2, str3, date);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31294a.serialize((C8956a) c8955p, true);
            C8546b.m25355a(c8955p);
            return c8955p;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8955p c8955p, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8955p c8955p2 = c8955p;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c8955p2.f31290a != null) {
                jsonGenerator.writeFieldName("is_lockholder");
                C8548d.m25354a(C8548d.C8549a.f30452a).serialize((AbstractC8547c) c8955p2.f31290a, jsonGenerator);
            }
            if (c8955p2.f31291b != null) {
                jsonGenerator.writeFieldName("lockholder_name");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8955p2.f31291b, jsonGenerator);
            }
            if (c8955p2.f31292c != null) {
                jsonGenerator.writeFieldName("lockholder_account_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8955p2.f31292c, jsonGenerator);
            }
            if (c8955p2.f31293d != null) {
                jsonGenerator.writeFieldName("created");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c8955p2.f31293d, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8955p() {
        this(null, null, null, null);
    }

    public C8955p(Boolean bool, String str, String str2, Date date) {
        this.f31290a = bool;
        this.f31291b = str;
        if (str2 != null) {
            if (str2.length() < 40) {
                throw new IllegalArgumentException("String 'lockholderAccountId' is shorter than 40");
            }
            if (str2.length() > 40) {
                throw new IllegalArgumentException("String 'lockholderAccountId' is longer than 40");
            }
        }
        this.f31292c = str2;
        this.f31293d = C8636d.m25221a(date);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8955p c8955p = (C8955p) obj;
        Boolean bool = this.f31290a;
        Boolean bool2 = c8955p.f31290a;
        if (bool != bool2 && (bool == null || !bool.equals(bool2))) {
            return false;
        }
        String str = this.f31291b;
        String str2 = c8955p.f31291b;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.f31292c;
        String str4 = c8955p.f31292c;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        Date date = this.f31293d;
        Date date2 = c8955p.f31293d;
        if (date == date2) {
            return true;
        }
        return date != null && date.equals(date2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31290a, this.f31291b, this.f31292c, this.f31293d});
    }

    public final String toString() {
        return C8956a.f31294a.serialize((C8956a) this, false);
    }
}

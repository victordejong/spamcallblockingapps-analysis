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
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aw.class */
public final class aw {

    /* renamed from: a  reason: collision with root package name */
    protected final Date f18217a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18218b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f18219c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aw$a.class */
    static final class a extends e<aw> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18220a = new a();

        a() {
        }

        public static aw a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("created".equals(currentName)) {
                        date = d.b.f17711a.deserialize(jsonParser);
                    } else if ("lock_holder_account_id".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("lock_holder_team_id".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (date == null) {
                    throw new JsonParseException(jsonParser, "Required field \"created\" missing.");
                } else if (str2 != null) {
                    aw awVar = new aw(date, str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18220a.serialize((a) awVar, true);
                    b.a(awVar);
                    return awVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"lock_holder_account_id\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        public static void a(aw awVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("created");
            d.b.f17711a.serialize((d.b) awVar.f18217a, jsonGenerator);
            jsonGenerator.writeFieldName("lock_holder_account_id");
            d.h.f17717a.serialize((d.h) awVar.f18218b, jsonGenerator);
            if (awVar.f18219c != null) {
                jsonGenerator.writeFieldName("lock_holder_team_id");
                d.a(d.h.f17717a).serialize((c) awVar.f18219c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ aw deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(aw awVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(awVar, jsonGenerator, z);
        }
    }

    public aw(Date date, String str) {
        this(date, str, null);
    }

    public aw(Date date, String str, String str2) {
        if (date != null) {
            this.f18217a = com.dropbox.core.util.d.a(date);
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'lockHolderAccountId' is null");
            } else if (str.length() < 40) {
                throw new IllegalArgumentException("String 'lockHolderAccountId' is shorter than 40");
            } else if (str.length() <= 40) {
                this.f18218b = str;
                this.f18219c = str2;
            } else {
                throw new IllegalArgumentException("String 'lockHolderAccountId' is longer than 40");
            }
        } else {
            throw new IllegalArgumentException("Required value for 'created' is null");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        aw awVar = (aw) obj;
        Date date = this.f18217a;
        Date date2 = awVar.f18217a;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        String str = this.f18218b;
        String str2 = awVar.f18218b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18219c;
        String str4 = awVar.f18219c;
        if (str3 != str4) {
            return str3 != null && str3.equals(str4);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18217a, this.f18218b, this.f18219c});
    }

    public final String toString() {
        return a.f18220a.serialize((a) this, false);
    }
}

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    protected final Boolean f18345a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18346b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f18347c;

    /* renamed from: d  reason: collision with root package name */
    protected final Date f18348d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/p$a.class */
    public static final class a extends e<p> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18349a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ p deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                Date date = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("is_lockholder".equals(currentName)) {
                        bool = (Boolean) d.a(d.a.f17710a).deserialize(jsonParser);
                    } else if ("lockholder_name".equals(currentName)) {
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("lockholder_account_id".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("created".equals(currentName)) {
                        date = (Date) d.a(d.b.f17711a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                p pVar = new p(bool, str2, str3, date);
                if (!z) {
                    expectEndObject(jsonParser);
                }
                f18349a.serialize((a) pVar, true);
                b.a(pVar);
                return pVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(p pVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            p pVar2 = pVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (pVar2.f18345a != null) {
                jsonGenerator.writeFieldName("is_lockholder");
                d.a(d.a.f17710a).serialize((c) pVar2.f18345a, jsonGenerator);
            }
            if (pVar2.f18346b != null) {
                jsonGenerator.writeFieldName("lockholder_name");
                d.a(d.h.f17717a).serialize((c) pVar2.f18346b, jsonGenerator);
            }
            if (pVar2.f18347c != null) {
                jsonGenerator.writeFieldName("lockholder_account_id");
                d.a(d.h.f17717a).serialize((c) pVar2.f18347c, jsonGenerator);
            }
            if (pVar2.f18348d != null) {
                jsonGenerator.writeFieldName("created");
                d.a(d.b.f17711a).serialize((c) pVar2.f18348d, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public p() {
        this(null, null, null, null);
    }

    public p(Boolean bool, String str, String str2, Date date) {
        this.f18345a = bool;
        this.f18346b = str;
        if (str2 != null) {
            if (str2.length() < 40) {
                throw new IllegalArgumentException("String 'lockholderAccountId' is shorter than 40");
            } else if (str2.length() > 40) {
                throw new IllegalArgumentException("String 'lockholderAccountId' is longer than 40");
            }
        }
        this.f18347c = str2;
        this.f18348d = com.dropbox.core.util.d.a(date);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        p pVar = (p) obj;
        Boolean bool = this.f18345a;
        Boolean bool2 = pVar.f18345a;
        if (bool != bool2 && (bool == null || !bool.equals(bool2))) {
            return false;
        }
        String str = this.f18346b;
        String str2 = pVar.f18346b;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.f18347c;
        String str4 = pVar.f18347c;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        Date date = this.f18348d;
        Date date2 = pVar.f18348d;
        if (date != date2) {
            return date != null && date.equals(date2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18345a, this.f18346b, this.f18347c, this.f18348d});
    }

    public final String toString() {
        return a.f18349a.serialize((a) this, false);
    }
}

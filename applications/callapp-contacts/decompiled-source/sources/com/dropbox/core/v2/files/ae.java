package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.al;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ae.class */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    protected final List<al> f18141a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18142b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f18143c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ae$a.class */
    static final class a extends e<ae> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18144a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ae deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                Boolean bool = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("entries".equals(currentName)) {
                        list = (List) d.b(al.a.f18173a).deserialize(jsonParser);
                    } else if ("cursor".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("has_more".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (list == null) {
                    throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
                } else if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
                } else if (bool != null) {
                    ae aeVar = new ae(list, str2, bool.booleanValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18144a.serialize((a) aeVar, true);
                    b.a(aeVar);
                    return aeVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ae aeVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ae aeVar2 = aeVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            d.b(al.a.f18173a).serialize((c) aeVar2.f18141a, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            d.h.f17717a.serialize((d.h) aeVar2.f18142b, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aeVar2.f18143c), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ae(List<al> list, String str, boolean z) {
        if (list != null) {
            for (al alVar : list) {
                if (alVar == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.f18141a = list;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'cursor' is null");
            } else if (str.length() > 0) {
                this.f18142b = str;
                this.f18143c = z;
            } else {
                throw new IllegalArgumentException("String 'cursor' is shorter than 1");
            }
        } else {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
    }

    public final List<al> a() {
        return this.f18141a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ae aeVar = (ae) obj;
        List<al> list = this.f18141a;
        List<al> list2 = aeVar.f18141a;
        if (list != list2 && !list.equals(list2)) {
            return false;
        }
        String str = this.f18142b;
        String str2 = aeVar.f18142b;
        return (str == str2 || str.equals(str2)) && this.f18143c == aeVar.f18143c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18141a, this.f18142b, Boolean.valueOf(this.f18143c)});
    }

    public final String toString() {
        return a.f18144a.serialize((a) this, false);
    }
}

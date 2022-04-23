package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.ao;
import com.dropbox.core.v2.sharing.b;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ai.class */
public final class ai {

    /* renamed from: a  reason: collision with root package name */
    protected final b f18480a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18481b;

    /* renamed from: c  reason: collision with root package name */
    protected final List<ao> f18482c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ai$a.class */
    static final class a extends e<ai> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18483a = new a();

        a() {
        }

        public static ai a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            b bVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("access_level".equals(currentName)) {
                        bVar = (b) d.a(b.a.f18562a).deserialize(jsonParser);
                    } else if ("warning".equals(currentName)) {
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("access_details".equals(currentName)) {
                        list = (List) d.a(d.b(ao.a.f18508a)).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                ai aiVar = new ai(bVar, str2, list);
                if (!z) {
                    expectEndObject(jsonParser);
                }
                f18483a.serialize((a) aiVar, true);
                com.dropbox.core.a.b.a(aiVar);
                return aiVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(ai aiVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (aiVar.f18480a != null) {
                jsonGenerator.writeFieldName("access_level");
                d.a(b.a.f18562a).serialize((c) aiVar.f18480a, jsonGenerator);
            }
            if (aiVar.f18481b != null) {
                jsonGenerator.writeFieldName("warning");
                d.a(d.h.f17717a).serialize((c) aiVar.f18481b, jsonGenerator);
            }
            if (aiVar.f18482c != null) {
                jsonGenerator.writeFieldName("access_details");
                d.a(d.b(ao.a.f18508a)).serialize((c) aiVar.f18482c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ai deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ai aiVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(aiVar, jsonGenerator, z);
        }
    }

    public ai() {
        this(null, null, null);
    }

    public ai(b bVar, String str, List<ao> list) {
        this.f18480a = bVar;
        this.f18481b = str;
        if (list != null) {
            for (ao aoVar : list) {
                if (aoVar == null) {
                    throw new IllegalArgumentException("An item in list 'accessDetails' is null");
                }
            }
        }
        this.f18482c = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ai aiVar = (ai) obj;
        b bVar = this.f18480a;
        b bVar2 = aiVar.f18480a;
        if (bVar != bVar2 && (bVar == null || !bVar.equals(bVar2))) {
            return false;
        }
        String str = this.f18481b;
        String str2 = aiVar.f18481b;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        List<ao> list = this.f18482c;
        List<ao> list2 = aiVar.f18482c;
        if (list != list2) {
            return list != null && list.equals(list2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18480a, this.f18481b, this.f18482c});
    }

    public final String toString() {
        return a.f18483a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.fileproperties.i;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18057a;

    /* renamed from: b  reason: collision with root package name */
    protected final List<i> f18058b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/j$a.class */
    public static final class a extends e<j> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18059a = new a();

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ j deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("template_id".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("fields".equals(currentName)) {
                        list = (List) d.b(i.a.f18056a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
                } else if (list != null) {
                    j jVar = new j(str2, list);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18059a.serialize((a) jVar, true);
                    b.a(jVar);
                    return jVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"fields\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(j jVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            j jVar2 = jVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("template_id");
            d.h.f17717a.serialize((d.h) jVar2.f18057a, jsonGenerator);
            jsonGenerator.writeFieldName("fields");
            d.b(i.a.f18056a).serialize((c) jVar2.f18058b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public j(String str, List<i> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'templateId' is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            this.f18057a = str;
            if (list != null) {
                for (i iVar : list) {
                    if (iVar == null) {
                        throw new IllegalArgumentException("An item in list 'fields' is null");
                    }
                }
                this.f18058b = list;
                return;
            }
            throw new IllegalArgumentException("Required value for 'fields' is null");
        } else {
            throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        j jVar = (j) obj;
        String str = this.f18057a;
        String str2 = jVar.f18057a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        List<i> list = this.f18058b;
        List<i> list2 = jVar.f18058b;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18057a, this.f18058b});
    }

    public final String toString() {
        return a.f18059a.serialize((a) this, false);
    }
}

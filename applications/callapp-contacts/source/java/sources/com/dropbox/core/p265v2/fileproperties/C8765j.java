package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8763i;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.fileproperties.j */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/j.class */
public final class C8765j {

    /* renamed from: a */
    protected final String f30924a;

    /* renamed from: b */
    protected final List<C8763i> f30925b;

    /* renamed from: com.dropbox.core.v2.fileproperties.j$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/j$a.class */
    public static final class C8766a extends AbstractC8558e<C8765j> {

        /* renamed from: a */
        public static final C8766a f30926a = new C8766a();

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8765j deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("template_id".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("fields".equals(currentName)) {
                    list = (List) C8548d.m25352b(C8763i.C8764a.f30923a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"fields\" missing.");
            }
            C8765j c8765j = new C8765j(str2, list);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f30926a.serialize((C8766a) c8765j, true);
            C8546b.m25355a(c8765j);
            return c8765j;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8765j c8765j, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8765j c8765j2 = c8765j;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("template_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8765j2.f30924a, jsonGenerator);
            jsonGenerator.writeFieldName("fields");
            C8548d.m25352b(C8763i.C8764a.f30923a).serialize((AbstractC8547c) c8765j2.f30925b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8765j(String str, List<C8763i> list) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String 'templateId' is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("String 'templateId' does not match pattern");
            }
            this.f30924a = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'fields' is null");
            }
            for (C8763i c8763i : list) {
                if (c8763i == null) {
                    throw new IllegalArgumentException("An item in list 'fields' is null");
                }
            }
            this.f30925b = list;
            return;
        }
        throw new IllegalArgumentException("Required value for 'templateId' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8765j c8765j = (C8765j) obj;
        String str = this.f30924a;
        String str2 = c8765j.f30924a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        List<C8763i> list = this.f30925b;
        List<C8763i> list2 = c8765j.f30925b;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30924a, this.f30925b});
    }

    public final String toString() {
        return C8766a.f30926a.serialize((C8766a) this, false);
    }
}

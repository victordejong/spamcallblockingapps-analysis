package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9044ao;
import com.dropbox.core.p265v2.sharing.EnumC9085b;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.dropbox.core.v2.sharing.ai */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ai.class */
public final class C9026ai {

    /* renamed from: a */
    protected final EnumC9085b f31440a;

    /* renamed from: b */
    protected final String f31441b;

    /* renamed from: c */
    protected final List<C9044ao> f31442c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.ai$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ai$a.class */
    public static final class C9027a extends AbstractC8558e<C9026ai> {

        /* renamed from: a */
        public static final C9027a f31443a = new C9027a();

        C9027a() {
        }

        /* renamed from: a */
        public static C9026ai m24902a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            EnumC9085b enumC9085b = null;
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_level".equals(currentName)) {
                    enumC9085b = (EnumC9085b) C8548d.m25354a(EnumC9085b.C9087a.f31569a).deserialize(jsonParser);
                } else if ("warning".equals(currentName)) {
                    str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("access_details".equals(currentName)) {
                    list = (List) C8548d.m25354a(C8548d.m25352b(C9044ao.C9045a.f31475a)).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            C9026ai c9026ai = new C9026ai(enumC9085b, str2, list);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31443a.serialize((C9027a) c9026ai, true);
            C8546b.m25355a(c9026ai);
            return c9026ai;
        }

        /* renamed from: a */
        public static void m24903a(C9026ai c9026ai, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c9026ai.f31440a != null) {
                jsonGenerator.writeFieldName("access_level");
                C8548d.m25354a(EnumC9085b.C9087a.f31569a).serialize((AbstractC8547c) c9026ai.f31440a, jsonGenerator);
            }
            if (c9026ai.f31441b != null) {
                jsonGenerator.writeFieldName("warning");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9026ai.f31441b, jsonGenerator);
            }
            if (c9026ai.f31442c != null) {
                jsonGenerator.writeFieldName("access_details");
                C8548d.m25354a(C8548d.m25352b(C9044ao.C9045a.f31475a)).serialize((AbstractC8547c) c9026ai.f31442c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9026ai deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24902a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9026ai c9026ai, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m24903a(c9026ai, jsonGenerator, z);
        }
    }

    public C9026ai() {
        this(null, null, null);
    }

    public C9026ai(EnumC9085b enumC9085b, String str, List<C9044ao> list) {
        this.f31440a = enumC9085b;
        this.f31441b = str;
        if (list != null) {
            for (C9044ao c9044ao : list) {
                if (c9044ao == null) {
                    throw new IllegalArgumentException("An item in list 'accessDetails' is null");
                }
            }
        }
        this.f31442c = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9026ai c9026ai = (C9026ai) obj;
        EnumC9085b enumC9085b = this.f31440a;
        EnumC9085b enumC9085b2 = c9026ai.f31440a;
        if (enumC9085b != enumC9085b2 && (enumC9085b == null || !enumC9085b.equals(enumC9085b2))) {
            return false;
        }
        String str = this.f31441b;
        String str2 = c9026ai.f31441b;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        List<C9044ao> list = this.f31442c;
        List<C9044ao> list2 = c9026ai.f31442c;
        if (list == list2) {
            return true;
        }
        return list != null && list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31440a, this.f31441b, this.f31442c});
    }

    public final String toString() {
        return C9027a.f31443a.serialize((C9027a) this, false);
    }
}

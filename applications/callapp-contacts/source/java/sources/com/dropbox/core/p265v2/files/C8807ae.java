package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8829al;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.dropbox.core.v2.files.ae */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ae.class */
public final class C8807ae {

    /* renamed from: a */
    protected final List<C8829al> f31023a;

    /* renamed from: b */
    protected final String f31024b;

    /* renamed from: c */
    protected final boolean f31025c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.ae$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ae$a.class */
    public static final class C8808a extends AbstractC8558e<C8807ae> {

        /* renamed from: a */
        public static final C8808a f31026a = new C8808a();

        C8808a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8807ae deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
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
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) C8548d.m25352b(C8829al.C8830a.f31070a).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            C8807ae c8807ae = new C8807ae(list, str2, bool.booleanValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31026a.serialize((C8808a) c8807ae, true);
            C8546b.m25355a(c8807ae);
            return c8807ae;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8807ae c8807ae, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8807ae c8807ae2 = c8807ae;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            C8548d.m25352b(C8829al.C8830a.f31070a).serialize((AbstractC8547c) c8807ae2.f31023a, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8807ae2.f31024b, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8807ae2.f31025c), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8807ae(List<C8829al> list, String str, boolean z) {
        if (list != null) {
            for (C8829al c8829al : list) {
                if (c8829al == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.f31023a = list;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'cursor' is null");
            }
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String 'cursor' is shorter than 1");
            }
            this.f31024b = str;
            this.f31025c = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'entries' is null");
    }

    /* renamed from: a */
    public final List<C8829al> m25080a() {
        return this.f31023a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8807ae c8807ae = (C8807ae) obj;
        List<C8829al> list = this.f31023a;
        List<C8829al> list2 = c8807ae.f31023a;
        if (list != list2 && !list.equals(list2)) {
            return false;
        }
        String str = this.f31024b;
        String str2 = c8807ae.f31024b;
        return (str == str2 || str.equals(str2)) && this.f31025c == c8807ae.f31025c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31023a, this.f31024b, Boolean.valueOf(this.f31025c)});
    }

    public final String toString() {
        return C8808a.f31026a.serialize((C8808a) this, false);
    }
}

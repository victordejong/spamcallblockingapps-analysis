package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9169g;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.dropbox.core.v2.sharing.h */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/h.class */
public final class C9171h {

    /* renamed from: a */
    protected final long f31728a;

    /* renamed from: b */
    protected final List<C9169g> f31729b;

    /* renamed from: com.dropbox.core.v2.sharing.h$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/h$a.class */
    static final class C9172a extends AbstractC8558e<C9171h> {

        /* renamed from: a */
        public static final C9172a f31730a = new C9172a();

        C9172a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9171h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
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
                if ("count".equals(currentName)) {
                    l = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else if ("exceptions".equals(currentName)) {
                    list = (List) C8548d.m25352b(C9169g.C9170a.f31727a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"count\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"exceptions\" missing.");
            }
            C9171h c9171h = new C9171h(l.longValue(), list);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31730a.serialize((C9172a) c9171h, true);
            C8546b.m25355a(c9171h);
            return c9171h;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9171h c9171h, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9171h c9171h2 = c9171h;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("count");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c9171h2.f31728a), jsonGenerator);
            jsonGenerator.writeFieldName("exceptions");
            C8548d.m25352b(C9169g.C9170a.f31727a).serialize((AbstractC8547c) c9171h2.f31729b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9171h(long j, List<C9169g> list) {
        this.f31728a = j;
        if (list != null) {
            for (C9169g c9169g : list) {
                if (c9169g == null) {
                    throw new IllegalArgumentException("An item in list 'exceptions' is null");
                }
            }
            this.f31729b = list;
            return;
        }
        throw new IllegalArgumentException("Required value for 'exceptions' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9171h c9171h = (C9171h) obj;
        if (this.f31728a != c9171h.f31728a) {
            return false;
        }
        List<C9169g> list = this.f31729b;
        List<C9169g> list2 = c9171h.f31729b;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31728a), this.f31729b});
    }

    public final String toString() {
        return C9172a.f31730a.serialize((C9172a) this, false);
    }
}

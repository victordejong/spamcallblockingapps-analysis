package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.clouddocs.k;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    protected final k f17997a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/i$a.class */
    static final class a extends e<i> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17998a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            k kVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("rename_error_tag".equals(currentName)) {
                        kVar = (k) d.a(k.a.f18006a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                i iVar = new i(kVar);
                if (!z) {
                    expectEndObject(jsonParser);
                }
                f17998a.serialize((a) iVar, true);
                b.a(iVar);
                return iVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(i iVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            i iVar2 = iVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (iVar2.f17997a != null) {
                jsonGenerator.writeFieldName("rename_error_tag");
                d.a(k.a.f18006a).serialize((c) iVar2.f17997a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public i() {
        this(null);
    }

    public i(k kVar) {
        this.f17997a = kVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        k kVar = this.f17997a;
        k kVar2 = ((i) obj).f17997a;
        if (kVar != kVar2) {
            return kVar != null && kVar.equals(kVar2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17997a});
    }

    public final String toString() {
        return a.f17998a.serialize((a) this, false);
    }
}

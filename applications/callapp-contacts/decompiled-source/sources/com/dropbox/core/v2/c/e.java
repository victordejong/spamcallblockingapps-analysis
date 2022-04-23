package com.dropbox.core.v2.c;

import com.dropbox.core.a.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/e.class */
public final class e extends c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/e$a.class */
    public static final class a extends com.dropbox.core.a.e<e> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17971a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("user".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.c.e a(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 214
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.c.e.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.c.e");
        }

        /* renamed from: a */
        public final void serialize(e eVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("user", jsonGenerator);
            jsonGenerator.writeFieldName("root_namespace_id");
            d.h.f17717a.serialize((d.h) eVar.f17966a, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            d.h.f17717a.serialize((d.h) eVar.f17967b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ e deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public e(String str, String str2) {
        super(str, str2);
    }

    @Override // com.dropbox.core.v2.c.c
    public final String a() {
        return a.f17971a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.c.c
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f17966a == eVar.f17966a || this.f17966a.equals(eVar.f17966a)) {
            return this.f17967b == eVar.f17967b || this.f17967b.equals(eVar.f17967b);
        }
        return false;
    }

    @Override // com.dropbox.core.v2.c.c
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.c.c
    public final String toString() {
        return a.f17971a.serialize((a) this, false);
    }
}

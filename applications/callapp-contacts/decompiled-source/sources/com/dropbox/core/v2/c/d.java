package com.dropbox.core.v2.c;

import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/d.class */
public final class d extends c {

    /* renamed from: c  reason: collision with root package name */
    protected final String f17969c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/d$a.class */
    public static final class a extends e<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17970a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("team".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.c.d a(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 259
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.c.d.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.c.d");
        }

        /* renamed from: a */
        public final void serialize(d dVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("team", jsonGenerator);
            jsonGenerator.writeFieldName("root_namespace_id");
            d.h.f17717a.serialize((d.h) dVar.f17966a, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            d.h.f17717a.serialize((d.h) dVar.f17967b, jsonGenerator);
            jsonGenerator.writeFieldName("home_path");
            d.h.f17717a.serialize((d.h) dVar.f17969c, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public d(String str, String str2, String str3) {
        super(str, str2);
        if (str3 != null) {
            this.f17969c = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'homePath' is null");
    }

    @Override // com.dropbox.core.v2.c.c
    public final String a() {
        return a.f17970a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.c.c
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f17966a != dVar.f17966a && !this.f17966a.equals(dVar.f17966a)) {
            return false;
        }
        if (this.f17967b != dVar.f17967b && !this.f17967b.equals(dVar.f17967b)) {
            return false;
        }
        String str = this.f17969c;
        String str2 = dVar.f17969c;
        return str == str2 || str.equals(str2);
    }

    @Override // com.dropbox.core.v2.c.c
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17969c});
    }

    @Override // com.dropbox.core.v2.c.c
    public final String toString() {
        return a.f17970a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.i;
import com.dropbox.core.v2.files.z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/an.class */
public final class an extends ak {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/an$a.class */
    public static final class a extends e<an> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18176a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("photo".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.files.an a(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 222
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.an.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.an");
        }

        /* renamed from: a */
        public final void serialize(an anVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("photo", jsonGenerator);
            if (anVar.f18169a != null) {
                jsonGenerator.writeFieldName("dimensions");
                d.a((e) i.a.f18316a).serialize((e) anVar.f18169a, jsonGenerator);
            }
            if (anVar.f18170b != null) {
                jsonGenerator.writeFieldName("location");
                d.a((e) z.a.f18386a).serialize((e) anVar.f18170b, jsonGenerator);
            }
            if (anVar.f18171c != null) {
                jsonGenerator.writeFieldName("time_taken");
                d.a(d.b.f17711a).serialize((c) anVar.f18171c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ an deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public an() {
        this(null, null, null);
    }

    public an(i iVar, z zVar, Date date) {
        super(iVar, zVar, date);
    }

    @Override // com.dropbox.core.v2.files.ak
    public final String a() {
        return a.f18176a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.ak
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        an anVar = (an) obj;
        if (this.f18169a != anVar.f18169a && (this.f18169a == null || !this.f18169a.equals(anVar.f18169a))) {
            return false;
        }
        if (this.f18170b != anVar.f18170b && (this.f18170b == null || !this.f18170b.equals(anVar.f18170b))) {
            return false;
        }
        if (this.f18171c != anVar.f18171c) {
            return this.f18171c != null && this.f18171c.equals(anVar.f18171c);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.files.ak
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.files.ak
    public final String toString() {
        return a.f18176a.serialize((a) this, false);
    }
}

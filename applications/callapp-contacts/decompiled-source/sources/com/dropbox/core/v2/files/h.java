package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/h.class */
public final class h extends al {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/h$a.class */
    public static final class a extends e<h> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18313a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("deleted".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.files.h a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.h.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.h");
        }

        /* renamed from: a */
        public final void serialize(h hVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("deleted", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) hVar.o, jsonGenerator);
            if (hVar.p != null) {
                jsonGenerator.writeFieldName("path_lower");
                d.a(d.h.f17717a).serialize((c) hVar.p, jsonGenerator);
            }
            if (hVar.q != null) {
                jsonGenerator.writeFieldName("path_display");
                d.a(d.h.f17717a).serialize((c) hVar.q, jsonGenerator);
            }
            if (hVar.r != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                d.a(d.h.f17717a).serialize((c) hVar.r, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public h(String str) {
        this(str, null, null, null);
    }

    public h(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    @Override // com.dropbox.core.v2.files.al
    public final String a() {
        return this.o;
    }

    @Override // com.dropbox.core.v2.files.al
    public final String b() {
        return this.q;
    }

    @Override // com.dropbox.core.v2.files.al
    public final String c() {
        return a.f18313a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.al
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        h hVar = (h) obj;
        if (this.o != hVar.o && !this.o.equals(hVar.o)) {
            return false;
        }
        if (this.p != hVar.p && (this.p == null || !this.p.equals(hVar.p))) {
            return false;
        }
        if (this.q != hVar.q && (this.q == null || !this.q.equals(hVar.q))) {
            return false;
        }
        if (this.r != hVar.r) {
            return this.r != null && this.r.equals(hVar.r);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.files.al
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.files.al
    public final String toString() {
        return a.f18313a.serialize((a) this, false);
    }
}

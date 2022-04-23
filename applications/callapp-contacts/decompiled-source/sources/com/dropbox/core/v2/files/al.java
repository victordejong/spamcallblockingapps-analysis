package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.h;
import com.dropbox.core.v2.files.q;
import com.dropbox.core.v2.files.t;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/al.class */
public class al {
    protected final String o;
    protected final String p;
    protected final String q;
    protected final String r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/al$a.class */
    public static final class a extends e<al> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18173a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.v2.files.al a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 364
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.al.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.al");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ al deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(al alVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            al alVar2 = alVar;
            if (alVar2 instanceof q) {
                q.a.f18354a.serialize((q) alVar2, jsonGenerator, z);
            } else if (alVar2 instanceof t) {
                t.a.f18363a.serialize((t) alVar2, jsonGenerator, z);
            } else if (alVar2 instanceof h) {
                h.a.f18313a.serialize((h) alVar2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                jsonGenerator.writeFieldName("name");
                d.h.f17717a.serialize((d.h) alVar2.o, jsonGenerator);
                if (alVar2.p != null) {
                    jsonGenerator.writeFieldName("path_lower");
                    d.a(d.h.f17717a).serialize((c) alVar2.p, jsonGenerator);
                }
                if (alVar2.q != null) {
                    jsonGenerator.writeFieldName("path_display");
                    d.a(d.h.f17717a).serialize((c) alVar2.q, jsonGenerator);
                }
                if (alVar2.r != null) {
                    jsonGenerator.writeFieldName("parent_shared_folder_id");
                    d.a(d.h.f17717a).serialize((c) alVar2.r, jsonGenerator);
                }
                if (!z) {
                    jsonGenerator.writeEndObject();
                }
            }
        }
    }

    public al(String str) {
        this(str, null, null, null);
    }

    public al(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.o = str;
            this.p = str2;
            this.q = str3;
            if (str4 == null || Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
                this.r = str4;
                return;
            }
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public String a() {
        return this.o;
    }

    public String b() {
        return this.q;
    }

    public String c() {
        return a.f18173a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        al alVar = (al) obj;
        String str = this.o;
        String str2 = alVar.o;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.p;
        String str4 = alVar.p;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        String str5 = this.q;
        String str6 = alVar.q;
        if (str5 != str6 && (str5 == null || !str5.equals(str6))) {
            return false;
        }
        String str7 = this.r;
        String str8 = alVar.r;
        if (str7 != str8) {
            return str7 != null && str7.equals(str8);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.o, this.p, this.q, this.r});
    }

    public String toString() {
        return a.f18173a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.c;

import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.c.d;
import com.dropbox.core.v2.c.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    protected final String f17966a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f17967b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/c$a.class */
    public static final class a extends e<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17968a = new a();

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.v2.c.c a(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.c.c.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.c.c");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ c deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(c cVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            c cVar2 = cVar;
            if (cVar2 instanceof d) {
                d.a.f17970a.serialize((d) cVar2, jsonGenerator, z);
            } else if (cVar2 instanceof e) {
                e.a.f17971a.serialize((e) cVar2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                jsonGenerator.writeFieldName("root_namespace_id");
                d.h.f17717a.serialize((d.h) cVar2.f17966a, jsonGenerator);
                jsonGenerator.writeFieldName("home_namespace_id");
                d.h.f17717a.serialize((d.h) cVar2.f17967b, jsonGenerator);
                if (!z) {
                    jsonGenerator.writeEndObject();
                }
            }
        }
    }

    public c(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'rootNamespaceId' is null");
        } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            this.f17966a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'homeNamespaceId' is null");
            } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                this.f17967b = str2;
            } else {
                throw new IllegalArgumentException("String 'homeNamespaceId' does not match pattern");
            }
        } else {
            throw new IllegalArgumentException("String 'rootNamespaceId' does not match pattern");
        }
    }

    public String a() {
        return a.f17968a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.f17966a;
        String str2 = cVar.f17966a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f17967b;
        String str4 = cVar.f17967b;
        return str3 == str4 || str3.equals(str4);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17966a, this.f17967b});
    }

    public String toString() {
        return a.f17968a.serialize((a) this, false);
    }
}

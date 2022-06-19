package com.dropbox.core.p265v2.p268c;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.p268c.C8698d;
import com.dropbox.core.p265v2.p268c.C8700e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.c.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/c.class */
public class C8696c {

    /* renamed from: a */
    protected final String f30814a;

    /* renamed from: b */
    protected final String f30815b;

    /* renamed from: com.dropbox.core.v2.c.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/c$a.class */
    public static final class C8697a extends AbstractC8558e<C8696c> {

        /* renamed from: a */
        public static final C8697a f30816a = new C8697a();

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.p265v2.p268c.C8696c m25158a(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.p268c.C8696c.C8697a.m25158a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.c.c");
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8696c deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25158a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8696c c8696c, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8696c c8696c2 = c8696c;
            if (c8696c2 instanceof C8698d) {
                C8698d.C8699a.f30818a.serialize((C8698d) c8696c2, jsonGenerator, z);
            } else if (c8696c2 instanceof C8700e) {
                C8700e.C8701a.f30819a.serialize((C8700e) c8696c2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                jsonGenerator.writeFieldName("root_namespace_id");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8696c2.f30814a, jsonGenerator);
                jsonGenerator.writeFieldName("home_namespace_id");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8696c2.f30815b, jsonGenerator);
                if (z) {
                    return;
                }
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8696c(String str, String str2) {
        if (str != null) {
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'rootNamespaceId' does not match pattern");
            }
            this.f30814a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'homeNamespaceId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                throw new IllegalArgumentException("String 'homeNamespaceId' does not match pattern");
            }
            this.f30815b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'rootNamespaceId' is null");
    }

    /* renamed from: a */
    public String mo25155a() {
        return C8697a.f30816a.serialize((C8697a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8696c c8696c = (C8696c) obj;
        String str = this.f30814a;
        String str2 = c8696c.f30814a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f30815b;
        String str4 = c8696c.f30815b;
        return str3 == str4 || str3.equals(str4);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30814a, this.f30815b});
    }

    public String toString() {
        return C8697a.f30816a.serialize((C8697a) this, false);
    }
}

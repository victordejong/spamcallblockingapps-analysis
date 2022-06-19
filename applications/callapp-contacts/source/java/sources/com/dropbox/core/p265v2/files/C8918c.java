package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8910bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c.class */
public final class C8918c {

    /* renamed from: a */
    EnumC8921b f31238a;

    /* renamed from: b */
    C8910bl f31239b;

    /* renamed from: com.dropbox.core.v2.files.c$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c$1.class */
    static final /* synthetic */ class C89191 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31240a;

        static {
            int[] iArr = new int[EnumC8921b.values().length];
            f31240a = iArr;
            try {
                iArr[EnumC8921b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c$a.class */
    static final class C8920a extends AbstractC8559f<C8918c> {

        /* renamed from: a */
        public static final C8920a f31241a = new C8920a();

        C8920a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                z = true;
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
            } else {
                z = false;
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            }
            if (str != null) {
                if (!"path".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                expectField("path", jsonParser);
                C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                C8910bl m24973a = C8910bl.C8912a.m24973a(jsonParser);
                if (m24973a == null) {
                    throw new IllegalArgumentException("Value is null");
                }
                new C8918c();
                EnumC8921b enumC8921b = EnumC8921b.PATH;
                C8918c c8918c = new C8918c();
                c8918c.f31238a = enumC8921b;
                c8918c.f31239b = m24973a;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8918c;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8918c c8918c = (C8918c) obj;
            if (C89191.f31240a[c8918c.f31238a.ordinal()] != 1) {
                throw new IllegalArgumentException("Unrecognized tag: " + c8918c.f31238a);
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8910bl.C8912a.f31231a.serialize(c8918c.f31239b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.files.c$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c$b.class */
    public enum EnumC8921b {
        PATH
    }

    C8918c() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8918c)) {
            return false;
        }
        C8918c c8918c = (C8918c) obj;
        if (this.f31238a != c8918c.f31238a || C89191.f31240a[this.f31238a.ordinal()] != 1) {
            return false;
        }
        C8910bl c8910bl = this.f31239b;
        C8910bl c8910bl2 = c8918c.f31239b;
        return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31238a, this.f31239b});
    }

    public final String toString() {
        return C8920a.f31241a.serialize((C8920a) this, false);
    }
}

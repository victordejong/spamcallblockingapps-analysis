package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.w */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w.class */
public final class C8971w {

    /* renamed from: a */
    EnumC8974b f31329a;

    /* renamed from: b */
    C8819ai f31330b;

    /* renamed from: com.dropbox.core.v2.files.w$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w$1.class */
    static final /* synthetic */ class C89721 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31331a;

        static {
            int[] iArr = new int[EnumC8974b.values().length];
            f31331a = iArr;
            try {
                iArr[EnumC8974b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.w$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w$a.class */
    static final class C8973a extends AbstractC8559f<C8971w> {

        /* renamed from: a */
        public static final C8973a f31332a = new C8973a();

        C8973a() {
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
                C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                C8819ai m25065a = C8819ai.C8821a.m25065a(jsonParser);
                if (m25065a == null) {
                    throw new IllegalArgumentException("Value is null");
                }
                new C8971w();
                EnumC8974b enumC8974b = EnumC8974b.PATH;
                C8971w c8971w = new C8971w();
                c8971w.f31329a = enumC8974b;
                c8971w.f31330b = m25065a;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8971w;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8971w c8971w = (C8971w) obj;
            if (C89721.f31331a[c8971w.f31329a.ordinal()] != 1) {
                throw new IllegalArgumentException("Unrecognized tag: " + c8971w.f31329a);
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8819ai.C8821a.f31056a.serialize(c8971w.f31330b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.files.w$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w$b.class */
    public enum EnumC8974b {
        PATH
    }

    C8971w() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8971w)) {
            return false;
        }
        C8971w c8971w = (C8971w) obj;
        if (this.f31329a != c8971w.f31329a || C89721.f31331a[this.f31329a.ordinal()] != 1) {
            return false;
        }
        C8819ai c8819ai = this.f31330b;
        C8819ai c8819ai2 = c8971w.f31330b;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31329a, this.f31330b});
    }

    public final String toString() {
        return C8973a.f31332a.serialize((C8973a) this, false);
    }
}

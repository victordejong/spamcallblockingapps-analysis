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
/* renamed from: com.dropbox.core.v2.files.v */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v.class */
public final class C8967v {

    /* renamed from: a */
    public static final C8967v f31324a;

    /* renamed from: b */
    EnumC8970b f31325b;

    /* renamed from: c */
    private C8819ai f31326c;

    /* renamed from: com.dropbox.core.v2.files.v$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v$1.class */
    static final /* synthetic */ class C89681 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31327a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8970b.values().length];
            f31327a = iArr;
            try {
                iArr[EnumC8970b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31327a[EnumC8970b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.v$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v$a.class */
    static final class C8969a extends AbstractC8559f<C8967v> {

        /* renamed from: a */
        public static final C8969a f31328a = new C8969a();

        C8969a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8967v c8967v;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c8967v = C8967v.m24935a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8967v = C8967v.f31324a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8967v;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8967v c8967v = (C8967v) obj;
            if (C89681.f31327a[c8967v.f31325b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8819ai.C8821a.f31056a.serialize(c8967v.f31326c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.files.v$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/v$b.class */
    public enum EnumC8970b {
        PATH,
        OTHER
    }

    static {
        new C8967v();
        EnumC8970b enumC8970b = EnumC8970b.OTHER;
        C8967v c8967v = new C8967v();
        c8967v.f31325b = enumC8970b;
        f31324a = c8967v;
    }

    private C8967v() {
    }

    /* renamed from: a */
    public static C8967v m24935a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8967v();
            EnumC8970b enumC8970b = EnumC8970b.PATH;
            C8967v c8967v = new C8967v();
            c8967v.f31325b = enumC8970b;
            c8967v.f31326c = c8819ai;
            return c8967v;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8967v)) {
            return false;
        }
        C8967v c8967v = (C8967v) obj;
        if (this.f31325b != c8967v.f31325b) {
            return false;
        }
        int i = C89681.f31327a[this.f31325b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        C8819ai c8819ai = this.f31326c;
        C8819ai c8819ai2 = c8967v.f31326c;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31325b, this.f31326c});
    }

    public final String toString() {
        return C8969a.f31328a.serialize((C8969a) this, false);
    }
}

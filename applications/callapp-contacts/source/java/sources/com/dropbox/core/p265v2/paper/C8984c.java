package com.dropbox.core.p265v2.paper;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.paper.EnumC8992e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.paper.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c.class */
public final class C8984c {

    /* renamed from: a */
    public static final C8984c f31350a;

    /* renamed from: b */
    EnumC8987b f31351b;

    /* renamed from: c */
    private EnumC8992e f31352c;

    /* renamed from: com.dropbox.core.v2.paper.c$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c$1.class */
    static final /* synthetic */ class C89851 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31353a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8987b.values().length];
            f31353a = iArr;
            try {
                iArr[EnumC8987b.CURSOR_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31353a[EnumC8987b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c$a.class */
    static final class C8986a extends AbstractC8559f<C8984c> {

        /* renamed from: a */
        public static final C8986a f31354a = new C8986a();

        C8986a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8984c c8984c;
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
                if ("cursor_error".equals(str)) {
                    expectField("cursor_error", jsonParser);
                    EnumC8992e.C8994a c8994a = EnumC8992e.C8994a.f31363a;
                    c8984c = C8984c.m24929a(EnumC8992e.C8994a.m24924a(jsonParser));
                } else {
                    c8984c = C8984c.f31350a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8984c;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8984c c8984c = (C8984c) obj;
            if (C89851.f31353a[c8984c.f31351b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("cursor_error", jsonGenerator);
            jsonGenerator.writeFieldName("cursor_error");
            EnumC8992e.C8994a c8994a = EnumC8992e.C8994a.f31363a;
            EnumC8992e.C8994a.m24925a(c8984c.f31352c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.c$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/c$b.class */
    public enum EnumC8987b {
        CURSOR_ERROR,
        OTHER
    }

    static {
        new C8984c();
        EnumC8987b enumC8987b = EnumC8987b.OTHER;
        C8984c c8984c = new C8984c();
        c8984c.f31351b = enumC8987b;
        f31350a = c8984c;
    }

    private C8984c() {
    }

    /* renamed from: a */
    public static C8984c m24929a(EnumC8992e enumC8992e) {
        if (enumC8992e != null) {
            new C8984c();
            EnumC8987b enumC8987b = EnumC8987b.CURSOR_ERROR;
            C8984c c8984c = new C8984c();
            c8984c.f31351b = enumC8987b;
            c8984c.f31352c = enumC8992e;
            return c8984c;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8984c)) {
            return false;
        }
        C8984c c8984c = (C8984c) obj;
        if (this.f31351b != c8984c.f31351b) {
            return false;
        }
        int i = C89851.f31353a[this.f31351b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        EnumC8992e enumC8992e = this.f31352c;
        EnumC8992e enumC8992e2 = c8984c.f31352c;
        return enumC8992e == enumC8992e2 || enumC8992e.equals(enumC8992e2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31351b, this.f31352c});
    }

    public final String toString() {
        return C8986a.f31354a.serialize((C8986a) this, false);
    }
}

package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8864aw;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.o */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o.class */
public final class C8951o {

    /* renamed from: a */
    public static final C8951o f31284a = m24948a(EnumC8954b.UNLOCKED);

    /* renamed from: b */
    public static final C8951o f31285b = m24948a(EnumC8954b.OTHER);

    /* renamed from: c */
    EnumC8954b f31286c;

    /* renamed from: d */
    private C8864aw f31287d;

    /* renamed from: com.dropbox.core.v2.files.o$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o$1.class */
    public static final /* synthetic */ class C89521 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31288a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8954b.values().length];
            f31288a = iArr;
            try {
                iArr[EnumC8954b.UNLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31288a[EnumC8954b.SINGLE_USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31288a[EnumC8954b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.o$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o$a.class */
    static final class C8953a extends AbstractC8559f<C8951o> {

        /* renamed from: a */
        public static final C8953a f31289a = new C8953a();

        C8953a() {
        }

        /* renamed from: a */
        public static C8951o m24945a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C8951o c8951o;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("unlocked".equals(str)) {
                    c8951o = C8951o.f31284a;
                } else if ("single_user".equals(str)) {
                    C8864aw.C8865a c8865a = C8864aw.C8865a.f31138a;
                    c8951o = C8951o.m24949a(C8864aw.C8865a.m25026a(jsonParser, true));
                } else {
                    c8951o = C8951o.f31285b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8951o;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8951o c8951o, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C89521.f31288a[c8951o.f31286c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unlocked");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("single_user", jsonGenerator);
                C8864aw.C8865a c8865a = C8864aw.C8865a.f31138a;
                C8864aw.C8865a.m25027a(c8951o.f31287d, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24945a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.o$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o$b.class */
    public enum EnumC8954b {
        UNLOCKED,
        SINGLE_USER,
        OTHER
    }

    static {
        new C8951o();
        new C8951o();
    }

    private C8951o() {
    }

    /* renamed from: a */
    public static C8951o m24949a(C8864aw c8864aw) {
        if (c8864aw != null) {
            new C8951o();
            EnumC8954b enumC8954b = EnumC8954b.SINGLE_USER;
            C8951o c8951o = new C8951o();
            c8951o.f31286c = enumC8954b;
            c8951o.f31287d = c8864aw;
            return c8951o;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8951o m24948a(EnumC8954b enumC8954b) {
        C8951o c8951o = new C8951o();
        c8951o.f31286c = enumC8954b;
        return c8951o;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8951o)) {
            return false;
        }
        C8951o c8951o = (C8951o) obj;
        if (this.f31286c != c8951o.f31286c) {
            return false;
        }
        int i = C89521.f31288a[this.f31286c.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        C8864aw c8864aw = this.f31287d;
        C8864aw c8864aw2 = c8951o.f31287d;
        return c8864aw == c8864aw2 || c8864aw.equals(c8864aw2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31286c, this.f31287d});
    }

    public final String toString() {
        return C8953a.f31289a.serialize((C8953a) this, false);
    }
}

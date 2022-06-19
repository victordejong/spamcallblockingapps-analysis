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
/* renamed from: com.dropbox.core.v2.paper.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d.class */
public final class C8988d {

    /* renamed from: a */
    public static final C8988d f31355a = m24928a(EnumC8991b.INSUFFICIENT_PERMISSIONS);

    /* renamed from: b */
    public static final C8988d f31356b = m24928a(EnumC8991b.OTHER);

    /* renamed from: c */
    public static final C8988d f31357c = m24928a(EnumC8991b.DOC_NOT_FOUND);

    /* renamed from: d */
    EnumC8991b f31358d;

    /* renamed from: e */
    private EnumC8992e f31359e;

    /* renamed from: com.dropbox.core.v2.paper.d$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d$1.class */
    static final /* synthetic */ class C89891 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31360a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8991b.values().length];
            f31360a = iArr;
            try {
                iArr[EnumC8991b.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31360a[EnumC8991b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31360a[EnumC8991b.DOC_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31360a[EnumC8991b.CURSOR_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d$a.class */
    static final class C8990a extends AbstractC8559f<C8988d> {

        /* renamed from: a */
        public static final C8990a f31361a = new C8990a();

        C8990a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8988d c8988d;
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
                if ("insufficient_permissions".equals(str)) {
                    c8988d = C8988d.f31355a;
                } else if ("other".equals(str)) {
                    c8988d = C8988d.f31356b;
                } else if ("doc_not_found".equals(str)) {
                    c8988d = C8988d.f31357c;
                } else if (!"cursor_error".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("cursor_error", jsonParser);
                    EnumC8992e.C8994a c8994a = EnumC8992e.C8994a.f31363a;
                    c8988d = C8988d.m24926a(EnumC8992e.C8994a.m24924a(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8988d;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8988d c8988d = (C8988d) obj;
            int i = C89891.f31360a[c8988d.f31358d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("insufficient_permissions");
            } else if (i == 2) {
                jsonGenerator.writeString("other");
            } else if (i == 3) {
                jsonGenerator.writeString("doc_not_found");
            } else if (i != 4) {
                throw new IllegalArgumentException("Unrecognized tag: " + c8988d.f31358d);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("cursor_error", jsonGenerator);
                jsonGenerator.writeFieldName("cursor_error");
                EnumC8992e.C8994a c8994a = EnumC8992e.C8994a.f31363a;
                EnumC8992e.C8994a.m24925a(c8988d.f31359e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.d$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d$b.class */
    public enum EnumC8991b {
        INSUFFICIENT_PERMISSIONS,
        OTHER,
        DOC_NOT_FOUND,
        CURSOR_ERROR
    }

    static {
        new C8988d();
        new C8988d();
        new C8988d();
    }

    private C8988d() {
    }

    /* renamed from: a */
    private static C8988d m24928a(EnumC8991b enumC8991b) {
        C8988d c8988d = new C8988d();
        c8988d.f31358d = enumC8991b;
        return c8988d;
    }

    /* renamed from: a */
    public static C8988d m24926a(EnumC8992e enumC8992e) {
        if (enumC8992e != null) {
            new C8988d();
            EnumC8991b enumC8991b = EnumC8991b.CURSOR_ERROR;
            C8988d c8988d = new C8988d();
            c8988d.f31358d = enumC8991b;
            c8988d.f31359e = enumC8992e;
            return c8988d;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8988d)) {
            return false;
        }
        C8988d c8988d = (C8988d) obj;
        if (this.f31358d != c8988d.f31358d) {
            return false;
        }
        int i = C89891.f31360a[this.f31358d.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return false;
        }
        EnumC8992e enumC8992e = this.f31359e;
        EnumC8992e enumC8992e2 = c8988d.f31359e;
        return enumC8992e == enumC8992e2 || enumC8992e.equals(enumC8992e2);
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31358d, this.f31359e});
    }

    public final String toString() {
        return C8990a.f31361a.serialize((C8990a) this, false);
    }
}

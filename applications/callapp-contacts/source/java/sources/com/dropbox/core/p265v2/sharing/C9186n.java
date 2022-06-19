package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9026ai;
import com.dropbox.core.p265v2.sharing.EnumC9119bm;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.n */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n.class */
public final class C9186n {

    /* renamed from: a */
    public static final C9186n f31754a = m24772a(EnumC9189b.INVALID_MEMBER);

    /* renamed from: b */
    public static final C9186n f31755b = m24772a(EnumC9189b.NO_PERMISSION);

    /* renamed from: c */
    public static final C9186n f31756c = m24772a(EnumC9189b.OTHER);

    /* renamed from: d */
    EnumC9189b f31757d;

    /* renamed from: e */
    private EnumC9119bm f31758e;

    /* renamed from: f */
    private C9026ai f31759f;

    /* renamed from: com.dropbox.core.v2.sharing.n$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n$1.class */
    static final /* synthetic */ class C91871 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31760a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9189b.values().length];
            f31760a = iArr;
            try {
                iArr[EnumC9189b.INVALID_MEMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31760a[EnumC9189b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31760a[EnumC9189b.ACCESS_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31760a[EnumC9189b.NO_EXPLICIT_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31760a[EnumC9189b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.n$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n$a.class */
    static final class C9188a extends AbstractC8559f<C9186n> {

        /* renamed from: a */
        public static final C9188a f31761a = new C9188a();

        C9188a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C9186n c9186n;
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
                if ("invalid_member".equals(str)) {
                    c9186n = C9186n.f31754a;
                } else if ("no_permission".equals(str)) {
                    c9186n = C9186n.f31755b;
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9186n = C9186n.m24773a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else if ("no_explicit_access".equals(str)) {
                    C9026ai.C9027a c9027a = C9026ai.C9027a.f31443a;
                    c9186n = C9186n.m24774a(C9026ai.C9027a.m24902a(jsonParser, true));
                } else {
                    c9186n = C9186n.f31756c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9186n;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9186n c9186n = (C9186n) obj;
            int i = C91871.f31760a[c9186n.f31757d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_member");
            } else if (i == 2) {
                jsonGenerator.writeString("no_permission");
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9186n.f31758e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                C9026ai.C9027a c9027a = C9026ai.C9027a.f31443a;
                C9026ai.C9027a.m24903a(c9186n.f31759f, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.n$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n$b.class */
    public enum EnumC9189b {
        INVALID_MEMBER,
        NO_PERMISSION,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new C9186n();
        new C9186n();
        new C9186n();
    }

    private C9186n() {
    }

    /* renamed from: a */
    public static C9186n m24774a(C9026ai c9026ai) {
        if (c9026ai != null) {
            new C9186n();
            EnumC9189b enumC9189b = EnumC9189b.NO_EXPLICIT_ACCESS;
            C9186n c9186n = new C9186n();
            c9186n.f31757d = enumC9189b;
            c9186n.f31759f = c9026ai;
            return c9186n;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9186n m24773a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9186n();
            EnumC9189b enumC9189b = EnumC9189b.ACCESS_ERROR;
            C9186n c9186n = new C9186n();
            c9186n.f31757d = enumC9189b;
            c9186n.f31758e = enumC9119bm;
            return c9186n;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9186n m24772a(EnumC9189b enumC9189b) {
        C9186n c9186n = new C9186n();
        c9186n.f31757d = enumC9189b;
        return c9186n;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9186n)) {
            return false;
        }
        C9186n c9186n = (C9186n) obj;
        if (this.f31757d != c9186n.f31757d) {
            return false;
        }
        int i = C91871.f31760a[this.f31757d.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i == 3) {
            EnumC9119bm enumC9119bm = this.f31758e;
            EnumC9119bm enumC9119bm2 = c9186n.f31758e;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        } else if (i != 4) {
            return i == 5;
        } else {
            C9026ai c9026ai = this.f31759f;
            C9026ai c9026ai2 = c9186n.f31759f;
            return c9026ai == c9026ai2 || c9026ai.equals(c9026ai2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31757d, this.f31758e, this.f31759f});
    }

    public final String toString() {
        return C9188a.f31761a.serialize((C9188a) this, false);
    }
}

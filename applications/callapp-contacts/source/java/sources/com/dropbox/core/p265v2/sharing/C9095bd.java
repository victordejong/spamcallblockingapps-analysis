package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9026ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bd */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd.class */
public final class C9095bd {

    /* renamed from: a */
    public static final C9095bd f31583a = m24854a(EnumC9098b.INVALID_DROPBOX_ID);

    /* renamed from: b */
    public static final C9095bd f31584b = m24854a(EnumC9098b.NOT_A_MEMBER);

    /* renamed from: c */
    public static final C9095bd f31585c = m24854a(EnumC9098b.OTHER);

    /* renamed from: d */
    EnumC9098b f31586d;

    /* renamed from: e */
    private C9026ai f31587e;

    /* renamed from: com.dropbox.core.v2.sharing.bd$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd$1.class */
    public static final /* synthetic */ class C90961 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31588a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9098b.values().length];
            f31588a = iArr;
            try {
                iArr[EnumC9098b.INVALID_DROPBOX_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31588a[EnumC9098b.NOT_A_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31588a[EnumC9098b.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31588a[EnumC9098b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bd$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd$a.class */
    static final class C9097a extends AbstractC8559f<C9095bd> {

        /* renamed from: a */
        public static final C9097a f31589a = new C9097a();

        C9097a() {
        }

        /* renamed from: a */
        public static C9095bd m24851a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C9095bd c9095bd;
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
                if ("invalid_dropbox_id".equals(str)) {
                    c9095bd = C9095bd.f31583a;
                } else if ("not_a_member".equals(str)) {
                    c9095bd = C9095bd.f31584b;
                } else if ("no_explicit_access".equals(str)) {
                    C9026ai.C9027a c9027a = C9026ai.C9027a.f31443a;
                    c9095bd = C9095bd.m24855a(C9026ai.C9027a.m24902a(jsonParser, true));
                } else {
                    c9095bd = C9095bd.f31585c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9095bd;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C9095bd c9095bd, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C90961.f31588a[c9095bd.f31586d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_dropbox_id");
            } else if (i == 2) {
                jsonGenerator.writeString("not_a_member");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                C9026ai.C9027a c9027a = C9026ai.C9027a.f31443a;
                C9026ai.C9027a.m24903a(c9095bd.f31587e, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24851a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bd$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd$b.class */
    public enum EnumC9098b {
        INVALID_DROPBOX_ID,
        NOT_A_MEMBER,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new C9095bd();
        new C9095bd();
        new C9095bd();
    }

    private C9095bd() {
    }

    /* renamed from: a */
    public static C9095bd m24855a(C9026ai c9026ai) {
        if (c9026ai != null) {
            new C9095bd();
            EnumC9098b enumC9098b = EnumC9098b.NO_EXPLICIT_ACCESS;
            C9095bd c9095bd = new C9095bd();
            c9095bd.f31586d = enumC9098b;
            c9095bd.f31587e = c9026ai;
            return c9095bd;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9095bd m24854a(EnumC9098b enumC9098b) {
        C9095bd c9095bd = new C9095bd();
        c9095bd.f31586d = enumC9098b;
        return c9095bd;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9095bd)) {
            return false;
        }
        C9095bd c9095bd = (C9095bd) obj;
        if (this.f31586d != c9095bd.f31586d) {
            return false;
        }
        int i = C90961.f31588a[this.f31586d.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return i == 4;
        }
        C9026ai c9026ai = this.f31587e;
        C9026ai c9026ai2 = c9095bd.f31587e;
        return c9026ai == c9026ai2 || c9026ai.equals(c9026ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31586d, this.f31587e});
    }

    public final String toString() {
        return C9097a.f31589a.serialize((C9097a) this, false);
    }
}

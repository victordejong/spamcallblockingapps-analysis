package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9119bm;
import com.dropbox.core.p265v2.sharing.EnumC9122bn;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.br */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br.class */
public final class C9135br {

    /* renamed from: a */
    public static final C9135br f31654a;

    /* renamed from: b */
    EnumC9138b f31655b;

    /* renamed from: c */
    private EnumC9122bn f31656c;

    /* renamed from: d */
    private EnumC9119bm f31657d;

    /* renamed from: com.dropbox.core.v2.sharing.br$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br$1.class */
    static final /* synthetic */ class C91361 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31658a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9138b.values().length];
            f31658a = iArr;
            try {
                iArr[EnumC9138b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31658a[EnumC9138b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31658a[EnumC9138b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.br$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br$a.class */
    static final class C9137a extends AbstractC8559f<C9135br> {

        /* renamed from: a */
        public static final C9137a f31659a = new C9137a();

        C9137a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9135br c9135br;
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
                if ("user_error".equals(str)) {
                    expectField("user_error", jsonParser);
                    EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                    c9135br = C9135br.m24829a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9135br = C9135br.m24830a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else {
                    c9135br = C9135br.f31654a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9135br;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9135br c9135br = (C9135br) obj;
            int i = C91361.f31658a[c9135br.f31655b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                EnumC9122bn.C9124a.m24838a(c9135br.f31656c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9135br.f31657d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.br$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br$b.class */
    public enum EnumC9138b {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    static {
        new C9135br();
        EnumC9138b enumC9138b = EnumC9138b.OTHER;
        C9135br c9135br = new C9135br();
        c9135br.f31655b = enumC9138b;
        f31654a = c9135br;
    }

    private C9135br() {
    }

    /* renamed from: a */
    public static C9135br m24830a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9135br();
            EnumC9138b enumC9138b = EnumC9138b.ACCESS_ERROR;
            C9135br c9135br = new C9135br();
            c9135br.f31655b = enumC9138b;
            c9135br.f31657d = enumC9119bm;
            return c9135br;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9135br m24829a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9135br();
            EnumC9138b enumC9138b = EnumC9138b.USER_ERROR;
            C9135br c9135br = new C9135br();
            c9135br.f31655b = enumC9138b;
            c9135br.f31656c = enumC9122bn;
            return c9135br;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9135br)) {
            return false;
        }
        C9135br c9135br = (C9135br) obj;
        if (this.f31655b != c9135br.f31655b) {
            return false;
        }
        int i = C91361.f31658a[this.f31655b.ordinal()];
        if (i == 1) {
            EnumC9122bn enumC9122bn = this.f31656c;
            EnumC9122bn enumC9122bn2 = c9135br.f31656c;
            return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
        } else if (i != 2) {
            return i == 3;
        } else {
            EnumC9119bm enumC9119bm = this.f31657d;
            EnumC9119bm enumC9119bm2 = c9135br.f31657d;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31655b, this.f31656c, this.f31657d});
    }

    public final String toString() {
        return C9137a.f31659a.serialize((C9137a) this, false);
    }
}

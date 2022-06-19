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
/* renamed from: com.dropbox.core.v2.sharing.s */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s.class */
public final class C9199s {

    /* renamed from: a */
    public static final C9199s f31775a;

    /* renamed from: b */
    EnumC9202b f31776b;

    /* renamed from: c */
    private EnumC9122bn f31777c;

    /* renamed from: d */
    private EnumC9119bm f31778d;

    /* renamed from: com.dropbox.core.v2.sharing.s$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s$1.class */
    static final /* synthetic */ class C92001 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31779a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9202b.values().length];
            f31779a = iArr;
            try {
                iArr[EnumC9202b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31779a[EnumC9202b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31779a[EnumC9202b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.s$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s$a.class */
    static final class C9201a extends AbstractC8559f<C9199s> {

        /* renamed from: a */
        public static final C9201a f31780a = new C9201a();

        C9201a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9199s c9199s;
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
                    c9199s = C9199s.m24763a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9199s = C9199s.m24764a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else {
                    c9199s = C9199s.f31775a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9199s;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9199s c9199s = (C9199s) obj;
            int i = C92001.f31779a[c9199s.f31776b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                EnumC9122bn.C9124a.m24838a(c9199s.f31777c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9199s.f31778d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.s$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s$b.class */
    public enum EnumC9202b {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    static {
        new C9199s();
        EnumC9202b enumC9202b = EnumC9202b.OTHER;
        C9199s c9199s = new C9199s();
        c9199s.f31776b = enumC9202b;
        f31775a = c9199s;
    }

    private C9199s() {
    }

    /* renamed from: a */
    public static C9199s m24764a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9199s();
            EnumC9202b enumC9202b = EnumC9202b.ACCESS_ERROR;
            C9199s c9199s = new C9199s();
            c9199s.f31776b = enumC9202b;
            c9199s.f31778d = enumC9119bm;
            return c9199s;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9199s m24763a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9199s();
            EnumC9202b enumC9202b = EnumC9202b.USER_ERROR;
            C9199s c9199s = new C9199s();
            c9199s.f31776b = enumC9202b;
            c9199s.f31777c = enumC9122bn;
            return c9199s;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9199s)) {
            return false;
        }
        C9199s c9199s = (C9199s) obj;
        if (this.f31776b != c9199s.f31776b) {
            return false;
        }
        int i = C92001.f31779a[this.f31776b.ordinal()];
        if (i == 1) {
            EnumC9122bn enumC9122bn = this.f31777c;
            EnumC9122bn enumC9122bn2 = c9199s.f31777c;
            return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
        } else if (i != 2) {
            return i == 3;
        } else {
            EnumC9119bm enumC9119bm = this.f31778d;
            EnumC9119bm enumC9119bm2 = c9199s.f31778d;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31776b, this.f31777c, this.f31778d});
    }

    public final String toString() {
        return C9201a.f31780a.serialize((C9201a) this, false);
    }
}

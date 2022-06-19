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
/* renamed from: com.dropbox.core.v2.sharing.ad */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad.class */
public final class C9009ad {

    /* renamed from: a */
    public static final C9009ad f31416a;

    /* renamed from: b */
    EnumC9012b f31417b;

    /* renamed from: c */
    private EnumC9122bn f31418c;

    /* renamed from: d */
    private EnumC9119bm f31419d;

    /* renamed from: com.dropbox.core.v2.sharing.ad$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad$1.class */
    static final /* synthetic */ class C90101 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31420a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9012b.values().length];
            f31420a = iArr;
            try {
                iArr[EnumC9012b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31420a[EnumC9012b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31420a[EnumC9012b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ad$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad$a.class */
    static final class C9011a extends AbstractC8559f<C9009ad> {

        /* renamed from: a */
        public static final C9011a f31421a = new C9011a();

        C9011a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9009ad c9009ad;
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
                    c9009ad = C9009ad.m24914a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9009ad = C9009ad.m24915a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else {
                    c9009ad = C9009ad.f31416a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9009ad;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9009ad c9009ad = (C9009ad) obj;
            int i = C90101.f31420a[c9009ad.f31417b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                EnumC9122bn.C9124a.m24838a(c9009ad.f31418c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9009ad.f31419d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ad$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad$b.class */
    public enum EnumC9012b {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    static {
        new C9009ad();
        EnumC9012b enumC9012b = EnumC9012b.OTHER;
        C9009ad c9009ad = new C9009ad();
        c9009ad.f31417b = enumC9012b;
        f31416a = c9009ad;
    }

    private C9009ad() {
    }

    /* renamed from: a */
    public static C9009ad m24915a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9009ad();
            EnumC9012b enumC9012b = EnumC9012b.ACCESS_ERROR;
            C9009ad c9009ad = new C9009ad();
            c9009ad.f31417b = enumC9012b;
            c9009ad.f31419d = enumC9119bm;
            return c9009ad;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9009ad m24914a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9009ad();
            EnumC9012b enumC9012b = EnumC9012b.USER_ERROR;
            C9009ad c9009ad = new C9009ad();
            c9009ad.f31417b = enumC9012b;
            c9009ad.f31418c = enumC9122bn;
            return c9009ad;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9009ad)) {
            return false;
        }
        C9009ad c9009ad = (C9009ad) obj;
        if (this.f31417b != c9009ad.f31417b) {
            return false;
        }
        int i = C90101.f31420a[this.f31417b.ordinal()];
        if (i == 1) {
            EnumC9122bn enumC9122bn = this.f31418c;
            EnumC9122bn enumC9122bn2 = c9009ad.f31418c;
            return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
        } else if (i != 2) {
            return i == 3;
        } else {
            EnumC9119bm enumC9119bm = this.f31419d;
            EnumC9119bm enumC9119bm2 = c9009ad.f31419d;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31417b, this.f31418c, this.f31419d});
    }

    public final String toString() {
        return C9011a.f31421a.serialize((C9011a) this, false);
    }
}

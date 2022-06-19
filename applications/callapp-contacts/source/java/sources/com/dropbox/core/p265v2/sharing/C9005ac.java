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
/* renamed from: com.dropbox.core.v2.sharing.ac */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac.class */
public final class C9005ac {

    /* renamed from: a */
    public static final C9005ac f31409a = m24921a(EnumC9008b.INVALID_CURSOR);

    /* renamed from: b */
    public static final C9005ac f31410b = m24921a(EnumC9008b.OTHER);

    /* renamed from: c */
    EnumC9008b f31411c;

    /* renamed from: d */
    private EnumC9122bn f31412d;

    /* renamed from: e */
    private EnumC9119bm f31413e;

    /* renamed from: com.dropbox.core.v2.sharing.ac$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac$1.class */
    static final /* synthetic */ class C90061 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31414a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9008b.values().length];
            f31414a = iArr;
            try {
                iArr[EnumC9008b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31414a[EnumC9008b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31414a[EnumC9008b.INVALID_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31414a[EnumC9008b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ac$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac$a.class */
    static final class C9007a extends AbstractC8559f<C9005ac> {

        /* renamed from: a */
        public static final C9007a f31415a = new C9007a();

        C9007a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9005ac c9005ac;
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
                    c9005ac = C9005ac.m24918a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9005ac = C9005ac.m24919a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else {
                    c9005ac = "invalid_cursor".equals(str) ? C9005ac.f31409a : C9005ac.f31410b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9005ac;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9005ac c9005ac = (C9005ac) obj;
            int i = C90061.f31414a[c9005ac.f31411c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                EnumC9122bn.C9124a.m24838a(c9005ac.f31412d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                if (i != 3) {
                    jsonGenerator.writeString("other");
                } else {
                    jsonGenerator.writeString("invalid_cursor");
                }
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9005ac.f31413e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ac$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac$b.class */
    public enum EnumC9008b {
        USER_ERROR,
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    static {
        new C9005ac();
        new C9005ac();
    }

    private C9005ac() {
    }

    /* renamed from: a */
    private static C9005ac m24921a(EnumC9008b enumC9008b) {
        C9005ac c9005ac = new C9005ac();
        c9005ac.f31411c = enumC9008b;
        return c9005ac;
    }

    /* renamed from: a */
    public static C9005ac m24919a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9005ac();
            EnumC9008b enumC9008b = EnumC9008b.ACCESS_ERROR;
            C9005ac c9005ac = new C9005ac();
            c9005ac.f31411c = enumC9008b;
            c9005ac.f31413e = enumC9119bm;
            return c9005ac;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9005ac m24918a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9005ac();
            EnumC9008b enumC9008b = EnumC9008b.USER_ERROR;
            C9005ac c9005ac = new C9005ac();
            c9005ac.f31411c = enumC9008b;
            c9005ac.f31412d = enumC9122bn;
            return c9005ac;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9005ac)) {
            return false;
        }
        C9005ac c9005ac = (C9005ac) obj;
        if (this.f31411c != c9005ac.f31411c) {
            return false;
        }
        int i = C90061.f31414a[this.f31411c.ordinal()];
        if (i == 1) {
            EnumC9122bn enumC9122bn = this.f31412d;
            EnumC9122bn enumC9122bn2 = c9005ac.f31412d;
            return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
        } else if (i != 2) {
            return i == 3 || i == 4;
        } else {
            EnumC9119bm enumC9119bm = this.f31413e;
            EnumC9119bm enumC9119bm2 = c9005ac.f31413e;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31411c, this.f31412d, this.f31413e});
    }

    public final String toString() {
        return C9007a.f31415a.serialize((C9007a) this, false);
    }
}

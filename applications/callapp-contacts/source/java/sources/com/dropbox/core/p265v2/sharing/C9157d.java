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
/* renamed from: com.dropbox.core.v2.sharing.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d.class */
public final class C9157d {

    /* renamed from: a */
    public static final C9157d f31691a = m24809a(EnumC9160b.RATE_LIMIT);

    /* renamed from: b */
    public static final C9157d f31692b = m24809a(EnumC9160b.INVALID_COMMENT);

    /* renamed from: c */
    public static final C9157d f31693c = m24809a(EnumC9160b.OTHER);

    /* renamed from: d */
    EnumC9160b f31694d;

    /* renamed from: e */
    private EnumC9122bn f31695e;

    /* renamed from: f */
    private EnumC9119bm f31696f;

    /* renamed from: com.dropbox.core.v2.sharing.d$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d$1.class */
    static final /* synthetic */ class C91581 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31697a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9160b.values().length];
            f31697a = iArr;
            try {
                iArr[EnumC9160b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31697a[EnumC9160b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31697a[EnumC9160b.RATE_LIMIT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31697a[EnumC9160b.INVALID_COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31697a[EnumC9160b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d$a.class */
    static final class C9159a extends AbstractC8559f<C9157d> {

        /* renamed from: a */
        public static final C9159a f31698a = new C9159a();

        C9159a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9157d c9157d;
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
                    c9157d = C9157d.m24810a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9157d = C9157d.m24811a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else {
                    c9157d = "rate_limit".equals(str) ? C9157d.f31691a : "invalid_comment".equals(str) ? C9157d.f31692b : C9157d.f31693c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9157d;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9157d c9157d = (C9157d) obj;
            int i = C91581.f31697a[c9157d.f31694d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
                EnumC9122bn.C9124a.m24838a(c9157d.f31695e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9157d.f31696f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("rate_limit");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_comment");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.d$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d$b.class */
    public enum EnumC9160b {
        USER_ERROR,
        ACCESS_ERROR,
        RATE_LIMIT,
        INVALID_COMMENT,
        OTHER
    }

    static {
        new C9157d();
        new C9157d();
        new C9157d();
    }

    private C9157d() {
    }

    /* renamed from: a */
    public static C9157d m24811a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9157d();
            EnumC9160b enumC9160b = EnumC9160b.ACCESS_ERROR;
            C9157d c9157d = new C9157d();
            c9157d.f31694d = enumC9160b;
            c9157d.f31696f = enumC9119bm;
            return c9157d;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9157d m24810a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9157d();
            EnumC9160b enumC9160b = EnumC9160b.USER_ERROR;
            C9157d c9157d = new C9157d();
            c9157d.f31694d = enumC9160b;
            c9157d.f31695e = enumC9122bn;
            return c9157d;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9157d m24809a(EnumC9160b enumC9160b) {
        C9157d c9157d = new C9157d();
        c9157d.f31694d = enumC9160b;
        return c9157d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9157d)) {
            return false;
        }
        C9157d c9157d = (C9157d) obj;
        if (this.f31694d != c9157d.f31694d) {
            return false;
        }
        int i = C91581.f31697a[this.f31694d.ordinal()];
        if (i == 1) {
            EnumC9122bn enumC9122bn = this.f31695e;
            EnumC9122bn enumC9122bn2 = c9157d.f31695e;
            return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
        } else if (i != 2) {
            return i == 3 || i == 4 || i == 5;
        } else {
            EnumC9119bm enumC9119bm = this.f31696f;
            EnumC9119bm enumC9119bm2 = c9157d.f31696f;
            return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31694d, this.f31695e, this.f31696f});
    }

    public final String toString() {
        return C9159a.f31698a.serialize((C9159a) this, false);
    }
}

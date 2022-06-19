package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9095bd;
import com.dropbox.core.p265v2.sharing.C9161e;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bt */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt.class */
public final class C9143bt {

    /* renamed from: a */
    public static final C9143bt f31668a = m24821a(EnumC9146b.INSUFFICIENT_PLAN);

    /* renamed from: b */
    public static final C9143bt f31669b = m24821a(EnumC9146b.NO_PERMISSION);

    /* renamed from: c */
    public static final C9143bt f31670c = m24821a(EnumC9146b.OTHER);

    /* renamed from: d */
    EnumC9146b f31671d;

    /* renamed from: e */
    private EnumC9092bc f31672e;

    /* renamed from: f */
    private C9095bd f31673f;

    /* renamed from: g */
    private C9161e f31674g;

    /* renamed from: com.dropbox.core.v2.sharing.bt$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt$1.class */
    static final /* synthetic */ class C91441 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31675a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9146b.values().length];
            f31675a = iArr;
            try {
                iArr[EnumC9146b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31675a[EnumC9146b.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31675a[EnumC9146b.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31675a[EnumC9146b.INSUFFICIENT_PLAN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31675a[EnumC9146b.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31675a[EnumC9146b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bt$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt$a.class */
    static final class C9145a extends AbstractC8559f<C9143bt> {

        /* renamed from: a */
        public static final C9145a f31676a = new C9145a();

        C9145a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9143bt c9143bt;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    c9143bt = C9143bt.m24823a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else if ("member_error".equals(str)) {
                    expectField("member_error", jsonParser);
                    C9095bd.C9097a c9097a = C9095bd.C9097a.f31589a;
                    c9143bt = C9143bt.m24822a(C9095bd.C9097a.m24851a(jsonParser));
                } else if ("no_explicit_access".equals(str)) {
                    expectField("no_explicit_access", jsonParser);
                    C9161e.C9163a c9163a = C9161e.C9163a.f31715a;
                    c9143bt = C9143bt.m24819a(C9161e.C9163a.m24796a(jsonParser));
                } else {
                    c9143bt = "insufficient_plan".equals(str) ? C9143bt.f31668a : "no_permission".equals(str) ? C9143bt.f31669b : C9143bt.f31670c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9143bt;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9143bt c9143bt = (C9143bt) obj;
            int i = C91441.f31675a[c9143bt.f31671d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                EnumC9092bc.C9094a.m24857a(c9143bt.f31672e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("member_error", jsonGenerator);
                jsonGenerator.writeFieldName("member_error");
                C9095bd.C9097a.f31589a.serialize(c9143bt.f31673f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                jsonGenerator.writeFieldName("no_explicit_access");
                C9161e.C9163a.f31715a.serialize(c9143bt.f31674g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("insufficient_plan");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bt$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt$b.class */
    public enum EnumC9146b {
        ACCESS_ERROR,
        MEMBER_ERROR,
        NO_EXPLICIT_ACCESS,
        INSUFFICIENT_PLAN,
        NO_PERMISSION,
        OTHER
    }

    static {
        new C9143bt();
        new C9143bt();
        new C9143bt();
    }

    private C9143bt() {
    }

    /* renamed from: a */
    public static C9143bt m24823a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9143bt();
            EnumC9146b enumC9146b = EnumC9146b.ACCESS_ERROR;
            C9143bt c9143bt = new C9143bt();
            c9143bt.f31671d = enumC9146b;
            c9143bt.f31672e = enumC9092bc;
            return c9143bt;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9143bt m24822a(C9095bd c9095bd) {
        if (c9095bd != null) {
            new C9143bt();
            EnumC9146b enumC9146b = EnumC9146b.MEMBER_ERROR;
            C9143bt c9143bt = new C9143bt();
            c9143bt.f31671d = enumC9146b;
            c9143bt.f31673f = c9095bd;
            return c9143bt;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9143bt m24821a(EnumC9146b enumC9146b) {
        C9143bt c9143bt = new C9143bt();
        c9143bt.f31671d = enumC9146b;
        return c9143bt;
    }

    /* renamed from: a */
    public static C9143bt m24819a(C9161e c9161e) {
        if (c9161e != null) {
            new C9143bt();
            EnumC9146b enumC9146b = EnumC9146b.NO_EXPLICIT_ACCESS;
            C9143bt c9143bt = new C9143bt();
            c9143bt.f31671d = enumC9146b;
            c9143bt.f31674g = c9161e;
            return c9143bt;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9143bt)) {
            return false;
        }
        C9143bt c9143bt = (C9143bt) obj;
        if (this.f31671d != c9143bt.f31671d) {
            return false;
        }
        switch (C91441.f31675a[this.f31671d.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31672e;
                EnumC9092bc enumC9092bc2 = c9143bt.f31672e;
                return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
            case 2:
                C9095bd c9095bd = this.f31673f;
                C9095bd c9095bd2 = c9143bt.f31673f;
                return c9095bd == c9095bd2 || c9095bd.equals(c9095bd2);
            case 3:
                C9161e c9161e = this.f31674g;
                C9161e c9161e2 = c9143bt.f31674g;
                return c9161e == c9161e2 || c9161e.equals(c9161e2);
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31671d, this.f31672e, this.f31673f, this.f31674g});
    }

    public final String toString() {
        return C9145a.f31676a.serialize((C9145a) this, false);
    }
}

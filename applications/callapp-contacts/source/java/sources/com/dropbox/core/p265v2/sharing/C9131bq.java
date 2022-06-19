package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bq */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bq.class */
public final class C9131bq {

    /* renamed from: a */
    public static final C9131bq f31647a = m24832a(EnumC9134b.NO_PERMISSION);

    /* renamed from: b */
    public static final C9131bq f31648b = m24832a(EnumC9134b.NOT_UNMOUNTABLE);

    /* renamed from: c */
    public static final C9131bq f31649c = m24832a(EnumC9134b.OTHER);

    /* renamed from: d */
    EnumC9134b f31650d;

    /* renamed from: e */
    private EnumC9092bc f31651e;

    /* renamed from: com.dropbox.core.v2.sharing.bq$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bq$1.class */
    static final /* synthetic */ class C91321 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31652a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9134b.values().length];
            f31652a = iArr;
            try {
                iArr[EnumC9134b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31652a[EnumC9134b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31652a[EnumC9134b.NOT_UNMOUNTABLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31652a[EnumC9134b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bq$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bq$a.class */
    static final class C9133a extends AbstractC8559f<C9131bq> {

        /* renamed from: a */
        public static final C9133a f31653a = new C9133a();

        C9133a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9131bq c9131bq;
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
                    c9131bq = C9131bq.m24833a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9131bq = "no_permission".equals(str) ? C9131bq.f31647a : "not_unmountable".equals(str) ? C9131bq.f31648b : C9131bq.f31649c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9131bq;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9131bq c9131bq = (C9131bq) obj;
            int i = C91321.f31652a[c9131bq.f31650d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                EnumC9092bc.C9094a.m24857a(c9131bq.f31651e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("no_permission");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("not_unmountable");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bq$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bq$b.class */
    public enum EnumC9134b {
        ACCESS_ERROR,
        NO_PERMISSION,
        NOT_UNMOUNTABLE,
        OTHER
    }

    static {
        new C9131bq();
        new C9131bq();
        new C9131bq();
    }

    private C9131bq() {
    }

    /* renamed from: a */
    public static C9131bq m24833a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9131bq();
            EnumC9134b enumC9134b = EnumC9134b.ACCESS_ERROR;
            C9131bq c9131bq = new C9131bq();
            c9131bq.f31650d = enumC9134b;
            c9131bq.f31651e = enumC9092bc;
            return c9131bq;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9131bq m24832a(EnumC9134b enumC9134b) {
        C9131bq c9131bq = new C9131bq();
        c9131bq.f31650d = enumC9134b;
        return c9131bq;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9131bq)) {
            return false;
        }
        C9131bq c9131bq = (C9131bq) obj;
        if (this.f31650d != c9131bq.f31650d) {
            return false;
        }
        int i = C91321.f31652a[this.f31650d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        EnumC9092bc enumC9092bc = this.f31651e;
        EnumC9092bc enumC9092bc2 = c9131bq.f31651e;
        return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31650d, this.f31651e});
    }

    public final String toString() {
        return C9133a.f31653a.serialize((C9133a) this, false);
    }
}

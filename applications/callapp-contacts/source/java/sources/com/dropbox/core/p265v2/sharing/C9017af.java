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
/* renamed from: com.dropbox.core.v2.sharing.af */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af.class */
public final class C9017af {

    /* renamed from: a */
    public static final C9017af f31428a = m24909a(EnumC9020b.INVALID_CURSOR);

    /* renamed from: b */
    public static final C9017af f31429b = m24909a(EnumC9020b.OTHER);

    /* renamed from: c */
    EnumC9020b f31430c;

    /* renamed from: d */
    private EnumC9092bc f31431d;

    /* renamed from: com.dropbox.core.v2.sharing.af$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af$1.class */
    static final /* synthetic */ class C90181 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31432a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9020b.values().length];
            f31432a = iArr;
            try {
                iArr[EnumC9020b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31432a[EnumC9020b.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31432a[EnumC9020b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.af$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af$a.class */
    static final class C9019a extends AbstractC8559f<C9017af> {

        /* renamed from: a */
        public static final C9019a f31433a = new C9019a();

        C9019a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9017af c9017af;
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
                    c9017af = C9017af.m24907a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9017af = "invalid_cursor".equals(str) ? C9017af.f31428a : C9017af.f31429b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9017af;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9017af c9017af = (C9017af) obj;
            int i = C90181.f31432a[c9017af.f31430c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString("other");
                    return;
                } else {
                    jsonGenerator.writeString("invalid_cursor");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
            EnumC9092bc.C9094a.m24857a(c9017af.f31431d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.af$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af$b.class */
    public enum EnumC9020b {
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    static {
        new C9017af();
        new C9017af();
    }

    private C9017af() {
    }

    /* renamed from: a */
    private static C9017af m24909a(EnumC9020b enumC9020b) {
        C9017af c9017af = new C9017af();
        c9017af.f31430c = enumC9020b;
        return c9017af;
    }

    /* renamed from: a */
    public static C9017af m24907a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9017af();
            EnumC9020b enumC9020b = EnumC9020b.ACCESS_ERROR;
            C9017af c9017af = new C9017af();
            c9017af.f31430c = enumC9020b;
            c9017af.f31431d = enumC9092bc;
            return c9017af;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9017af)) {
            return false;
        }
        C9017af c9017af = (C9017af) obj;
        if (this.f31430c != c9017af.f31430c) {
            return false;
        }
        int i = C90181.f31432a[this.f31430c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        EnumC9092bc enumC9092bc = this.f31431d;
        EnumC9092bc enumC9092bc2 = c9017af.f31431d;
        return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31430c, this.f31431d});
    }

    public final String toString() {
        return C9019a.f31433a.serialize((C9019a) this, false);
    }
}

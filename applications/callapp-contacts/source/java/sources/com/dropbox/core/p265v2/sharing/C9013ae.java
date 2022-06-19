package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9122bn;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.ae */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae.class */
public final class C9013ae {

    /* renamed from: a */
    public static final C9013ae f31422a = m24912a(EnumC9016b.INVALID_CURSOR);

    /* renamed from: b */
    public static final C9013ae f31423b = m24912a(EnumC9016b.OTHER);

    /* renamed from: c */
    EnumC9016b f31424c;

    /* renamed from: d */
    private EnumC9122bn f31425d;

    /* renamed from: com.dropbox.core.v2.sharing.ae$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae$1.class */
    static final /* synthetic */ class C90141 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31426a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9016b.values().length];
            f31426a = iArr;
            try {
                iArr[EnumC9016b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31426a[EnumC9016b.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31426a[EnumC9016b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ae$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae$a.class */
    static final class C9015a extends AbstractC8559f<C9013ae> {

        /* renamed from: a */
        public static final C9015a f31427a = new C9015a();

        C9015a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9013ae c9013ae;
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
                    c9013ae = C9013ae.m24910a(EnumC9122bn.C9124a.m24837a(jsonParser));
                } else {
                    c9013ae = "invalid_cursor".equals(str) ? C9013ae.f31422a : C9013ae.f31423b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9013ae;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9013ae c9013ae = (C9013ae) obj;
            int i = C90141.f31426a[c9013ae.f31424c.ordinal()];
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
            writeTag("user_error", jsonGenerator);
            jsonGenerator.writeFieldName("user_error");
            EnumC9122bn.C9124a c9124a = EnumC9122bn.C9124a.f31631a;
            EnumC9122bn.C9124a.m24838a(c9013ae.f31425d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ae$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae$b.class */
    public enum EnumC9016b {
        USER_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    static {
        new C9013ae();
        new C9013ae();
    }

    private C9013ae() {
    }

    /* renamed from: a */
    private static C9013ae m24912a(EnumC9016b enumC9016b) {
        C9013ae c9013ae = new C9013ae();
        c9013ae.f31424c = enumC9016b;
        return c9013ae;
    }

    /* renamed from: a */
    public static C9013ae m24910a(EnumC9122bn enumC9122bn) {
        if (enumC9122bn != null) {
            new C9013ae();
            EnumC9016b enumC9016b = EnumC9016b.USER_ERROR;
            C9013ae c9013ae = new C9013ae();
            c9013ae.f31424c = enumC9016b;
            c9013ae.f31425d = enumC9122bn;
            return c9013ae;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9013ae)) {
            return false;
        }
        C9013ae c9013ae = (C9013ae) obj;
        if (this.f31424c != c9013ae.f31424c) {
            return false;
        }
        int i = C90141.f31426a[this.f31424c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        EnumC9122bn enumC9122bn = this.f31425d;
        EnumC9122bn enumC9122bn2 = c9013ae.f31425d;
        return enumC9122bn == enumC9122bn2 || enumC9122bn.equals(enumC9122bn2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31424c, this.f31425d});
    }

    public final String toString() {
        return C9015a.f31427a.serialize((C9015a) this, false);
    }
}

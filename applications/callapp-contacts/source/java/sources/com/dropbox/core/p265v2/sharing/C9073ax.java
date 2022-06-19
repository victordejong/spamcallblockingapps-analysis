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
/* renamed from: com.dropbox.core.v2.sharing.ax */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax.class */
public final class C9073ax {

    /* renamed from: a */
    public static final C9073ax f31535a = m24871a(EnumC9076b.NO_PERMISSION);

    /* renamed from: b */
    public static final C9073ax f31536b = m24871a(EnumC9076b.OTHER);

    /* renamed from: c */
    EnumC9076b f31537c;

    /* renamed from: d */
    private EnumC9092bc f31538d;

    /* renamed from: com.dropbox.core.v2.sharing.ax$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax$1.class */
    static final /* synthetic */ class C90741 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31539a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9076b.values().length];
            f31539a = iArr;
            try {
                iArr[EnumC9076b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31539a[EnumC9076b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31539a[EnumC9076b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ax$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax$a.class */
    static final class C9075a extends AbstractC8559f<C9073ax> {

        /* renamed from: a */
        public static final C9075a f31540a = new C9075a();

        C9075a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9073ax c9073ax;
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
                    c9073ax = C9073ax.m24869a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9073ax = "no_permission".equals(str) ? C9073ax.f31535a : C9073ax.f31536b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9073ax;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9073ax c9073ax = (C9073ax) obj;
            int i = C90741.f31539a[c9073ax.f31537c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString("other");
                    return;
                } else {
                    jsonGenerator.writeString("no_permission");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
            EnumC9092bc.C9094a.m24857a(c9073ax.f31538d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ax$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax$b.class */
    public enum EnumC9076b {
        ACCESS_ERROR,
        NO_PERMISSION,
        OTHER
    }

    static {
        new C9073ax();
        new C9073ax();
    }

    private C9073ax() {
    }

    /* renamed from: a */
    private static C9073ax m24871a(EnumC9076b enumC9076b) {
        C9073ax c9073ax = new C9073ax();
        c9073ax.f31537c = enumC9076b;
        return c9073ax;
    }

    /* renamed from: a */
    public static C9073ax m24869a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9073ax();
            EnumC9076b enumC9076b = EnumC9076b.ACCESS_ERROR;
            C9073ax c9073ax = new C9073ax();
            c9073ax.f31537c = enumC9076b;
            c9073ax.f31538d = enumC9092bc;
            return c9073ax;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9073ax)) {
            return false;
        }
        C9073ax c9073ax = (C9073ax) obj;
        if (this.f31537c != c9073ax.f31537c) {
            return false;
        }
        int i = C90741.f31539a[this.f31537c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        EnumC9092bc enumC9092bc = this.f31538d;
        EnumC9092bc enumC9092bc2 = c9073ax.f31538d;
        return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31537c, this.f31538d});
    }

    public final String toString() {
        return C9075a.f31540a.serialize((C9075a) this, false);
    }
}

package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.clouddocs.EnumC8704c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.clouddocs.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e.class */
public final class C8709e {

    /* renamed from: a */
    public static final C8709e f30830a;

    /* renamed from: b */
    EnumC8712b f30831b;

    /* renamed from: c */
    private EnumC8704c f30832c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.clouddocs.e$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e$1.class */
    public static final /* synthetic */ class C87101 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30833a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8712b.values().length];
            f30833a = iArr;
            try {
                iArr[EnumC8712b.GENERIC_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30833a[EnumC8712b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e$a.class */
    static final class C8711a extends AbstractC8559f<C8709e> {

        /* renamed from: a */
        public static final C8711a f30834a = new C8711a();

        C8711a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8709e c8709e;
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
                if ("generic_error".equals(str)) {
                    expectField("generic_error", jsonParser);
                    EnumC8704c.C8706a c8706a = EnumC8704c.C8706a.f30827a;
                    c8709e = C8709e.m25150a(EnumC8704c.C8706a.m25151a(jsonParser));
                } else {
                    c8709e = C8709e.f30830a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8709e;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8709e c8709e = (C8709e) obj;
            if (C87101.f30833a[c8709e.f30831b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("generic_error", jsonGenerator);
            jsonGenerator.writeFieldName("generic_error");
            EnumC8704c.C8706a c8706a = EnumC8704c.C8706a.f30827a;
            EnumC8704c.C8706a.m25152a(c8709e.f30832c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.e$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/e$b.class */
    public enum EnumC8712b {
        GENERIC_ERROR,
        OTHER
    }

    static {
        new C8709e();
        EnumC8712b enumC8712b = EnumC8712b.OTHER;
        C8709e c8709e = new C8709e();
        c8709e.f30831b = enumC8712b;
        f30830a = c8709e;
    }

    private C8709e() {
    }

    /* renamed from: a */
    public static C8709e m25150a(EnumC8704c enumC8704c) {
        if (enumC8704c != null) {
            new C8709e();
            EnumC8712b enumC8712b = EnumC8712b.GENERIC_ERROR;
            C8709e c8709e = new C8709e();
            c8709e.f30831b = enumC8712b;
            c8709e.f30832c = enumC8704c;
            return c8709e;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8709e)) {
            return false;
        }
        C8709e c8709e = (C8709e) obj;
        if (this.f30831b != c8709e.f30831b) {
            return false;
        }
        int i = C87101.f30833a[this.f30831b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        EnumC8704c enumC8704c = this.f30832c;
        EnumC8704c enumC8704c2 = c8709e.f30832c;
        return enumC8704c == enumC8704c2 || enumC8704c.equals(enumC8704c2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30831b, this.f30832c});
    }

    public final String toString() {
        return C8711a.f30834a.serialize((C8711a) this, false);
    }
}

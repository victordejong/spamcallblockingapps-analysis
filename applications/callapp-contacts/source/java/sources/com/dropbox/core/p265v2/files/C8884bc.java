package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.fileproperties.C8743c;
import com.dropbox.core.p265v2.files.C8903bi;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.bc */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc.class */
public final class C8884bc {

    /* renamed from: a */
    public static final C8884bc f31182a;

    /* renamed from: b */
    EnumC8887b f31183b;

    /* renamed from: c */
    private C8903bi f31184c;

    /* renamed from: d */
    private C8743c f31185d;

    /* renamed from: com.dropbox.core.v2.files.bc$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc$1.class */
    static final /* synthetic */ class C88851 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31186a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8887b.values().length];
            f31186a = iArr;
            try {
                iArr[EnumC8887b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31186a[EnumC8887b.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31186a[EnumC8887b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bc$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc$a.class */
    public static final class C8886a extends AbstractC8559f<C8884bc> {

        /* renamed from: a */
        public static final C8886a f31187a = new C8886a();

        C8886a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C8884bc c8884bc;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("path".equals(str)) {
                    C8903bi.C8904a c8904a = C8903bi.C8904a.f31216a;
                    c8884bc = C8884bc.m25008a(C8903bi.C8904a.m24986a(jsonParser, true));
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    C8743c.C8745a c8745a = C8743c.C8745a.f30894a;
                    c8884bc = C8884bc.m25010a(C8743c.C8745a.m25121a(jsonParser));
                } else {
                    c8884bc = C8884bc.f31182a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8884bc;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8884bc c8884bc = (C8884bc) obj;
            int i = C88851.f31186a[c8884bc.f31183b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                C8903bi.C8904a c8904a = C8903bi.C8904a.f31216a;
                C8903bi.C8904a.m24987a(c8884bc.f31184c, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                C8743c.C8745a.f30894a.serialize(c8884bc.f31185d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bc$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bc$b.class */
    public enum EnumC8887b {
        PATH,
        PROPERTIES_ERROR,
        OTHER
    }

    static {
        new C8884bc();
        EnumC8887b enumC8887b = EnumC8887b.OTHER;
        C8884bc c8884bc = new C8884bc();
        c8884bc.f31183b = enumC8887b;
        f31182a = c8884bc;
    }

    private C8884bc() {
    }

    /* renamed from: a */
    public static C8884bc m25010a(C8743c c8743c) {
        if (c8743c != null) {
            new C8884bc();
            EnumC8887b enumC8887b = EnumC8887b.PROPERTIES_ERROR;
            C8884bc c8884bc = new C8884bc();
            c8884bc.f31183b = enumC8887b;
            c8884bc.f31185d = c8743c;
            return c8884bc;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8884bc m25008a(C8903bi c8903bi) {
        if (c8903bi != null) {
            new C8884bc();
            EnumC8887b enumC8887b = EnumC8887b.PATH;
            C8884bc c8884bc = new C8884bc();
            c8884bc.f31183b = enumC8887b;
            c8884bc.f31184c = c8903bi;
            return c8884bc;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8884bc)) {
            return false;
        }
        C8884bc c8884bc = (C8884bc) obj;
        if (this.f31183b != c8884bc.f31183b) {
            return false;
        }
        int i = C88851.f31186a[this.f31183b.ordinal()];
        if (i == 1) {
            C8903bi c8903bi = this.f31184c;
            C8903bi c8903bi2 = c8884bc.f31184c;
            return c8903bi == c8903bi2 || c8903bi.equals(c8903bi2);
        } else if (i != 2) {
            return i == 3;
        } else {
            C8743c c8743c = this.f31185d;
            C8743c c8743c2 = c8884bc.f31185d;
            return c8743c == c8743c2 || c8743c.equals(c8743c2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31183b, this.f31184c, this.f31185d});
    }

    public final String toString() {
        return C8886a.f31187a.serialize((C8886a) this, false);
    }
}

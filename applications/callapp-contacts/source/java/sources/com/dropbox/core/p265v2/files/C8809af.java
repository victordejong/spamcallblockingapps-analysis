package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.af */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af.class */
public final class C8809af {

    /* renamed from: a */
    public static final C8809af f31027a;

    /* renamed from: b */
    EnumC8812b f31028b;

    /* renamed from: c */
    private C8819ai f31029c;

    /* renamed from: com.dropbox.core.v2.files.af$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af$1.class */
    static final /* synthetic */ class C88101 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31030a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8812b.values().length];
            f31030a = iArr;
            try {
                iArr[EnumC8812b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31030a[EnumC8812b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.af$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af$a.class */
    static final class C8811a extends AbstractC8559f<C8809af> {

        /* renamed from: a */
        public static final C8811a f31031a = new C8811a();

        C8811a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8809af c8809af;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c8809af = C8809af.m25078a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8809af = C8809af.f31027a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8809af;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8809af c8809af = (C8809af) obj;
            if (C88101.f31030a[c8809af.f31028b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8819ai.C8821a.f31056a.serialize(c8809af.f31029c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.files.af$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af$b.class */
    public enum EnumC8812b {
        PATH,
        OTHER
    }

    static {
        new C8809af();
        EnumC8812b enumC8812b = EnumC8812b.OTHER;
        C8809af c8809af = new C8809af();
        c8809af.f31028b = enumC8812b;
        f31027a = c8809af;
    }

    private C8809af() {
    }

    /* renamed from: a */
    public static C8809af m25078a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8809af();
            EnumC8812b enumC8812b = EnumC8812b.PATH;
            C8809af c8809af = new C8809af();
            c8809af.f31028b = enumC8812b;
            c8809af.f31029c = c8819ai;
            return c8809af;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8809af)) {
            return false;
        }
        C8809af c8809af = (C8809af) obj;
        if (this.f31028b != c8809af.f31028b) {
            return false;
        }
        int i = C88101.f31030a[this.f31028b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        C8819ai c8819ai = this.f31029c;
        C8819ai c8819ai2 = c8809af.f31029c;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31028b, this.f31029c});
    }

    public final String toString() {
        return C8811a.f31031a.serialize((C8811a) this, false);
    }
}

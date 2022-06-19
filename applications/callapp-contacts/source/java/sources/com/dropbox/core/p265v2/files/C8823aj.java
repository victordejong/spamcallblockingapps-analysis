package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8827ak;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.aj */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj.class */
public final class C8823aj {

    /* renamed from: a */
    public static final C8823aj f31057a;

    /* renamed from: b */
    EnumC8826b f31058b;

    /* renamed from: c */
    private C8827ak f31059c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.aj$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj$1.class */
    public static final /* synthetic */ class C88241 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31060a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8826b.values().length];
            f31060a = iArr;
            try {
                iArr[EnumC8826b.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31060a[EnumC8826b.METADATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.aj$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj$a.class */
    public static final class C8825a extends AbstractC8559f<C8823aj> {

        /* renamed from: a */
        public static final C8825a f31061a = new C8825a();

        C8825a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8823aj c8823aj;
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
                if ("pending".equals(str)) {
                    c8823aj = C8823aj.f31057a;
                } else if (!"metadata".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("metadata", jsonParser);
                    c8823aj = C8823aj.m25063a(C8827ak.C8828a.f31065a.deserialize(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8823aj;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8823aj c8823aj = (C8823aj) obj;
            int i = C88241.f31060a[c8823aj.f31058b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("pending");
            } else if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + c8823aj.f31058b);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("metadata", jsonGenerator);
                jsonGenerator.writeFieldName("metadata");
                C8827ak.C8828a.f31065a.serialize((C8827ak.C8828a) c8823aj.f31059c, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.aj$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aj$b.class */
    public enum EnumC8826b {
        PENDING,
        METADATA
    }

    static {
        new C8823aj();
        EnumC8826b enumC8826b = EnumC8826b.PENDING;
        C8823aj c8823aj = new C8823aj();
        c8823aj.f31058b = enumC8826b;
        f31057a = c8823aj;
    }

    private C8823aj() {
    }

    /* renamed from: a */
    public static C8823aj m25063a(C8827ak c8827ak) {
        if (c8827ak != null) {
            new C8823aj();
            EnumC8826b enumC8826b = EnumC8826b.METADATA;
            C8823aj c8823aj = new C8823aj();
            c8823aj.f31058b = enumC8826b;
            c8823aj.f31059c = c8827ak;
            return c8823aj;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8823aj)) {
            return false;
        }
        C8823aj c8823aj = (C8823aj) obj;
        if (this.f31058b != c8823aj.f31058b) {
            return false;
        }
        int i = C88241.f31060a[this.f31058b.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        C8827ak c8827ak = this.f31059c;
        C8827ak c8827ak2 = c8823aj.f31059c;
        return c8827ak == c8827ak2 || c8827ak.equals(c8827ak2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31058b, this.f31059c});
    }

    public final String toString() {
        return C8825a.f31061a.serialize((C8825a) this, false);
    }
}

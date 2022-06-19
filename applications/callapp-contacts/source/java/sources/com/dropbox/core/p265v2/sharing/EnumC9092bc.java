package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bc */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bc.class */
public enum EnumC9092bc {
    INVALID_ID,
    NOT_A_MEMBER,
    EMAIL_UNVERIFIED,
    UNMOUNTED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.bc$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bc$1.class */
    public static final /* synthetic */ class C90931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31581a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9092bc.values().length];
            f31581a = iArr;
            try {
                iArr[EnumC9092bc.INVALID_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31581a[EnumC9092bc.NOT_A_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31581a[EnumC9092bc.EMAIL_UNVERIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31581a[EnumC9092bc.UNMOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bc$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bc$a.class */
    static final class C9094a extends AbstractC8559f<EnumC9092bc> {

        /* renamed from: a */
        public static final C9094a f31582a = new C9094a();

        C9094a() {
        }

        /* renamed from: a */
        public static EnumC9092bc m24856a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
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
                EnumC9092bc enumC9092bc = "invalid_id".equals(str) ? EnumC9092bc.INVALID_ID : "not_a_member".equals(str) ? EnumC9092bc.NOT_A_MEMBER : "email_unverified".equals(str) ? EnumC9092bc.EMAIL_UNVERIFIED : "unmounted".equals(str) ? EnumC9092bc.UNMOUNTED : EnumC9092bc.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9092bc;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24857a(EnumC9092bc enumC9092bc, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C90931.f31581a[enumC9092bc.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_id");
            } else if (i == 2) {
                jsonGenerator.writeString("not_a_member");
            } else if (i == 3) {
                jsonGenerator.writeString("email_unverified");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unmounted");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24856a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24857a((EnumC9092bc) obj, jsonGenerator);
        }
    }
}

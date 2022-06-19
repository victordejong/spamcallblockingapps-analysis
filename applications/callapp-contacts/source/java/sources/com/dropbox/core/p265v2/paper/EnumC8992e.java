package com.dropbox.core.p265v2.paper;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.paper.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/e.class */
public enum EnumC8992e {
    EXPIRED_CURSOR,
    INVALID_CURSOR,
    WRONG_USER_IN_CURSOR,
    RESET,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.e$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/e$1.class */
    public static final /* synthetic */ class C89931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31362a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8992e.values().length];
            f31362a = iArr;
            try {
                iArr[EnumC8992e.EXPIRED_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31362a[EnumC8992e.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31362a[EnumC8992e.WRONG_USER_IN_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31362a[EnumC8992e.RESET.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/e$a.class */
    static final class C8994a extends AbstractC8559f<EnumC8992e> {

        /* renamed from: a */
        public static final C8994a f31363a = new C8994a();

        C8994a() {
        }

        /* renamed from: a */
        public static EnumC8992e m24924a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8992e enumC8992e = "expired_cursor".equals(str) ? EnumC8992e.EXPIRED_CURSOR : "invalid_cursor".equals(str) ? EnumC8992e.INVALID_CURSOR : "wrong_user_in_cursor".equals(str) ? EnumC8992e.WRONG_USER_IN_CURSOR : "reset".equals(str) ? EnumC8992e.RESET : EnumC8992e.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8992e;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24925a(EnumC8992e enumC8992e, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C89931.f31362a[enumC8992e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("expired_cursor");
            } else if (i == 2) {
                jsonGenerator.writeString("invalid_cursor");
            } else if (i == 3) {
                jsonGenerator.writeString("wrong_user_in_cursor");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("reset");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24924a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24925a((EnumC8992e) obj, jsonGenerator);
        }
    }
}

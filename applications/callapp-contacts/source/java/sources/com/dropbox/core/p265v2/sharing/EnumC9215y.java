package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.y */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/y.class */
public enum EnumC9215y {
    CHANGE_ACCESS_LEVEL,
    CHANGE_AUDIENCE,
    REMOVE_EXPIRY,
    REMOVE_PASSWORD,
    SET_EXPIRY,
    SET_PASSWORD,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.y$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/y$1.class */
    public static final /* synthetic */ class C92161 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31795a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9215y.values().length];
            f31795a = iArr;
            try {
                iArr[EnumC9215y.CHANGE_ACCESS_LEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31795a[EnumC9215y.CHANGE_AUDIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31795a[EnumC9215y.REMOVE_EXPIRY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31795a[EnumC9215y.REMOVE_PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31795a[EnumC9215y.SET_EXPIRY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31795a[EnumC9215y.SET_PASSWORD.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.y$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/y$a.class */
    static final class C9217a extends AbstractC8559f<EnumC9215y> {

        /* renamed from: a */
        public static final C9217a f31796a = new C9217a();

        C9217a() {
        }

        /* renamed from: a */
        public static EnumC9215y m24752a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9215y enumC9215y = "change_access_level".equals(str) ? EnumC9215y.CHANGE_ACCESS_LEVEL : "change_audience".equals(str) ? EnumC9215y.CHANGE_AUDIENCE : "remove_expiry".equals(str) ? EnumC9215y.REMOVE_EXPIRY : "remove_password".equals(str) ? EnumC9215y.REMOVE_PASSWORD : "set_expiry".equals(str) ? EnumC9215y.SET_EXPIRY : "set_password".equals(str) ? EnumC9215y.SET_PASSWORD : EnumC9215y.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9215y;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24753a(EnumC9215y enumC9215y, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C92161.f31795a[enumC9215y.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("change_access_level");
                    return;
                case 2:
                    jsonGenerator.writeString("change_audience");
                    return;
                case 3:
                    jsonGenerator.writeString("remove_expiry");
                    return;
                case 4:
                    jsonGenerator.writeString("remove_password");
                    return;
                case 5:
                    jsonGenerator.writeString("set_expiry");
                    return;
                case 6:
                    jsonGenerator.writeString("set_password");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24752a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24753a((EnumC9215y) obj, jsonGenerator);
        }
    }
}

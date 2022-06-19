package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bl */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bl.class */
public enum EnumC9116bl {
    INVALID_SETTINGS,
    NOT_AUTHORIZED;

    /* renamed from: com.dropbox.core.v2.sharing.bl$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bl$1.class */
    public static final /* synthetic */ class C91171 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31626a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9116bl.values().length];
            f31626a = iArr;
            try {
                iArr[EnumC9116bl.INVALID_SETTINGS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31626a[EnumC9116bl.NOT_AUTHORIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bl$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bl$a.class */
    static final class C9118a extends AbstractC8559f<EnumC9116bl> {

        /* renamed from: a */
        public static final C9118a f31627a = new C9118a();

        C9118a() {
        }

        /* renamed from: a */
        public static EnumC9116bl m24841a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            EnumC9116bl enumC9116bl;
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
                if ("invalid_settings".equals(str)) {
                    enumC9116bl = EnumC9116bl.INVALID_SETTINGS;
                } else if (!"not_authorized".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    enumC9116bl = EnumC9116bl.NOT_AUTHORIZED;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9116bl;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24842a(EnumC9116bl enumC9116bl, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C91171.f31626a[enumC9116bl.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_settings");
            } else if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: ".concat(String.valueOf(enumC9116bl)));
            } else {
                jsonGenerator.writeString("not_authorized");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24841a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24842a((EnumC9116bl) obj, jsonGenerator);
        }
    }
}

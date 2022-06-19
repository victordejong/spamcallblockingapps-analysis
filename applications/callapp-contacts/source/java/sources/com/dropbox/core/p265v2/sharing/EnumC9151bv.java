package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bv */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bv.class */
public enum EnumC9151bv {
    ENABLED,
    DISABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.bv$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bv$1.class */
    static final /* synthetic */ class C91521 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31687a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9151bv.values().length];
            f31687a = iArr;
            try {
                iArr[EnumC9151bv.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31687a[EnumC9151bv.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bv$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bv$a.class */
    public static final class C9153a extends AbstractC8559f<EnumC9151bv> {

        /* renamed from: a */
        public static final C9153a f31688a = new C9153a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9151bv enumC9151bv = "enabled".equals(str) ? EnumC9151bv.ENABLED : "disabled".equals(str) ? EnumC9151bv.DISABLED : EnumC9151bv.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9151bv;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C91521.f31687a[((EnumC9151bv) obj).ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("enabled");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("disabled");
            }
        }
    }
}

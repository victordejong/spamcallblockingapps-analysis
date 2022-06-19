package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.al */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/al.class */
public enum EnumC9033al {
    TEAM,
    ANYONE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.al$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/al$1.class */
    static final /* synthetic */ class C90341 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31450a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9033al.values().length];
            f31450a = iArr;
            try {
                iArr[EnumC9033al.TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31450a[EnumC9033al.ANYONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.al$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/al$a.class */
    public static final class C9035a extends AbstractC8559f<EnumC9033al> {

        /* renamed from: a */
        public static final C9035a f31451a = new C9035a();

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
                EnumC9033al enumC9033al = "team".equals(str) ? EnumC9033al.TEAM : "anyone".equals(str) ? EnumC9033al.ANYONE : EnumC9033al.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9033al;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C90341.f31450a[((EnumC9033al) obj).ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("team");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("anyone");
            }
        }
    }
}

package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/c.class */
public enum EnumC9154c {
    OWNER,
    EDITORS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.c$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/c$1.class */
    public static final /* synthetic */ class C91551 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31689a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9154c.values().length];
            f31689a = iArr;
            try {
                iArr[EnumC9154c.OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31689a[EnumC9154c.EDITORS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/c$a.class */
    public static final class C9156a extends AbstractC8559f<EnumC9154c> {

        /* renamed from: a */
        public static final C9156a f31690a = new C9156a();

        /* renamed from: a */
        public static EnumC9154c m24812a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9154c enumC9154c = "owner".equals(str) ? EnumC9154c.OWNER : "editors".equals(str) ? EnumC9154c.EDITORS : EnumC9154c.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9154c;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24813a(EnumC9154c enumC9154c, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C91551.f31689a[enumC9154c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("owner");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("editors");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24812a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24813a((EnumC9154c) obj, jsonGenerator);
        }
    }
}

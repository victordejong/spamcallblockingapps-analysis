package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bk */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bk.class */
public enum EnumC9113bk {
    ANYONE,
    TEAM,
    MEMBERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.bk$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bk$1.class */
    public static final /* synthetic */ class C91141 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31624a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9113bk.values().length];
            f31624a = iArr;
            try {
                iArr[EnumC9113bk.ANYONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31624a[EnumC9113bk.TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31624a[EnumC9113bk.MEMBERS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bk$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bk$a.class */
    public static final class C9115a extends AbstractC8559f<EnumC9113bk> {

        /* renamed from: a */
        public static final C9115a f31625a = new C9115a();

        /* renamed from: a */
        public static EnumC9113bk m24843a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9113bk enumC9113bk = "anyone".equals(str) ? EnumC9113bk.ANYONE : "team".equals(str) ? EnumC9113bk.TEAM : "members".equals(str) ? EnumC9113bk.MEMBERS : EnumC9113bk.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9113bk;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24844a(EnumC9113bk enumC9113bk, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C91141.f31624a[enumC9113bk.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("anyone");
            } else if (i == 2) {
                jsonGenerator.writeString("team");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("members");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24843a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24844a((EnumC9113bk) obj, jsonGenerator);
        }
    }
}

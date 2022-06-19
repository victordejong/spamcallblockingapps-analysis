package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.z */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/z.class */
public enum EnumC9218z {
    PUBLIC,
    TEAM,
    NO_ONE,
    PASSWORD,
    MEMBERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.z$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/z$1.class */
    public static final /* synthetic */ class C92191 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31797a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9218z.values().length];
            f31797a = iArr;
            try {
                iArr[EnumC9218z.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31797a[EnumC9218z.TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31797a[EnumC9218z.NO_ONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31797a[EnumC9218z.PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31797a[EnumC9218z.MEMBERS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.z$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/z$a.class */
    public static final class C9220a extends AbstractC8559f<EnumC9218z> {

        /* renamed from: a */
        public static final C9220a f31798a = new C9220a();

        /* renamed from: a */
        public static EnumC9218z m24750a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9218z enumC9218z = "public".equals(str) ? EnumC9218z.PUBLIC : "team".equals(str) ? EnumC9218z.TEAM : "no_one".equals(str) ? EnumC9218z.NO_ONE : "password".equals(str) ? EnumC9218z.PASSWORD : "members".equals(str) ? EnumC9218z.MEMBERS : EnumC9218z.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9218z;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24751a(EnumC9218z enumC9218z, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C92191.f31797a[enumC9218z.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
            } else if (i == 2) {
                jsonGenerator.writeString("team");
            } else if (i == 3) {
                jsonGenerator.writeString("no_one");
            } else if (i == 4) {
                jsonGenerator.writeString("password");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("members");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24750a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24751a((EnumC9218z) obj, jsonGenerator);
        }
    }
}

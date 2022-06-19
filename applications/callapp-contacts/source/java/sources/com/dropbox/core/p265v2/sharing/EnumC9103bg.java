package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bg */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bg.class */
public enum EnumC9103bg {
    LOGIN_REQUIRED,
    EMAIL_VERIFY_REQUIRED,
    PASSWORD_REQUIRED,
    TEAM_ONLY,
    OWNER_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.bg$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bg$1.class */
    static final /* synthetic */ class C91041 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31608a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9103bg.values().length];
            f31608a = iArr;
            try {
                iArr[EnumC9103bg.LOGIN_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31608a[EnumC9103bg.EMAIL_VERIFY_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31608a[EnumC9103bg.PASSWORD_REQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31608a[EnumC9103bg.TEAM_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31608a[EnumC9103bg.OWNER_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bg$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bg$a.class */
    static final class C9105a extends AbstractC8559f<EnumC9103bg> {

        /* renamed from: a */
        public static final C9105a f31609a = new C9105a();

        C9105a() {
        }

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
                EnumC9103bg enumC9103bg = "login_required".equals(str) ? EnumC9103bg.LOGIN_REQUIRED : "email_verify_required".equals(str) ? EnumC9103bg.EMAIL_VERIFY_REQUIRED : "password_required".equals(str) ? EnumC9103bg.PASSWORD_REQUIRED : "team_only".equals(str) ? EnumC9103bg.TEAM_ONLY : "owner_only".equals(str) ? EnumC9103bg.OWNER_ONLY : EnumC9103bg.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9103bg;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C91041.f31608a[((EnumC9103bg) obj).ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("login_required");
            } else if (i == 2) {
                jsonGenerator.writeString("email_verify_required");
            } else if (i == 3) {
                jsonGenerator.writeString("password_required");
            } else if (i == 4) {
                jsonGenerator.writeString("team_only");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("owner_only");
            }
        }
    }
}

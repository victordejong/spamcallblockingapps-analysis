package com.dropbox.core.p265v2.auth;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.auth.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/e.class */
public enum EnumC8677e {
    PAPER_DISABLED,
    NOT_PAPER_USER,
    OTHER;

    /* renamed from: com.dropbox.core.v2.auth.e$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/e$1.class */
    public static final /* synthetic */ class C86781 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30769a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8677e.values().length];
            f30769a = iArr;
            try {
                iArr[EnumC8677e.PAPER_DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30769a[EnumC8677e.NOT_PAPER_USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/e$a.class */
    public static final class C8679a extends AbstractC8559f<EnumC8677e> {

        /* renamed from: a */
        public static final C8679a f30770a = new C8679a();

        /* renamed from: a */
        public static EnumC8677e m25183a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8677e enumC8677e = "paper_disabled".equals(str) ? EnumC8677e.PAPER_DISABLED : "not_paper_user".equals(str) ? EnumC8677e.NOT_PAPER_USER : EnumC8677e.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8677e;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25184a(EnumC8677e enumC8677e, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C86781.f30769a[enumC8677e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("paper_disabled");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("not_paper_user");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25183a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25184a((EnumC8677e) obj, jsonGenerator);
        }
    }
}

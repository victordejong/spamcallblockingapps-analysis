package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.au */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/au.class */
public enum EnumC9066au {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD;

    /* renamed from: com.dropbox.core.v2.sharing.au$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/au$1.class */
    static final /* synthetic */ class C90671 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31531a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9066au.values().length];
            f31531a = iArr;
            try {
                iArr[EnumC9066au.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31531a[EnumC9066au.TEAM_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31531a[EnumC9066au.PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.au$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/au$a.class */
    static final class C9068a extends AbstractC8559f<EnumC9066au> {

        /* renamed from: a */
        public static final C9068a f31532a = new C9068a();

        C9068a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            EnumC9066au enumC9066au;
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
                if ("public".equals(str)) {
                    enumC9066au = EnumC9066au.PUBLIC;
                } else if ("team_only".equals(str)) {
                    enumC9066au = EnumC9066au.TEAM_ONLY;
                } else if (!"password".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    enumC9066au = EnumC9066au.PASSWORD;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9066au;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            EnumC9066au enumC9066au = (EnumC9066au) obj;
            int i = C90671.f31531a[enumC9066au.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
            } else if (i == 2) {
                jsonGenerator.writeString("team_only");
            } else if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: ".concat(String.valueOf(enumC9066au)));
            } else {
                jsonGenerator.writeString("password");
            }
        }
    }
}

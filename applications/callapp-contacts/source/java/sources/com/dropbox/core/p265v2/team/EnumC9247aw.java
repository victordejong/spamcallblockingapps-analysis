package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.team.aw */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/aw.class */
public enum EnumC9247aw {
    INVALID_TEAM_FOLDER_ID,
    NO_ACCESS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.aw$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/aw$1.class */
    public static final /* synthetic */ class C92481 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31866a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9247aw.values().length];
            f31866a = iArr;
            try {
                iArr[EnumC9247aw.INVALID_TEAM_FOLDER_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31866a[EnumC9247aw.NO_ACCESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.aw$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/aw$a.class */
    static final class C9249a extends AbstractC8559f<EnumC9247aw> {

        /* renamed from: a */
        public static final C9249a f31867a = new C9249a();

        C9249a() {
        }

        /* renamed from: a */
        public static EnumC9247aw m24745a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9247aw enumC9247aw = "invalid_team_folder_id".equals(str) ? EnumC9247aw.INVALID_TEAM_FOLDER_ID : "no_access".equals(str) ? EnumC9247aw.NO_ACCESS : EnumC9247aw.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9247aw;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24746a(EnumC9247aw enumC9247aw, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C92481.f31866a[enumC9247aw.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_team_folder_id");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_access");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24745a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24746a((EnumC9247aw) obj, jsonGenerator);
        }
    }
}

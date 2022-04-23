package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/av.class */
public enum av {
    PUBLIC,
    TEAM_ONLY,
    PASSWORD,
    TEAM_AND_PASSWORD,
    SHARED_FOLDER_ONLY,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.av$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/av$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18541a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[av.values().length];
            f18541a = iArr;
            try {
                iArr[av.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18541a[av.TEAM_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18541a[av.PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18541a[av.TEAM_AND_PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18541a[av.SHARED_FOLDER_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/av$a.class */
    static final class a extends f<av> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18542a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
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
                av avVar = "public".equals(str) ? av.PUBLIC : "team_only".equals(str) ? av.TEAM_ONLY : "password".equals(str) ? av.PASSWORD : "team_and_password".equals(str) ? av.TEAM_AND_PASSWORD : "shared_folder_only".equals(str) ? av.SHARED_FOLDER_ONLY : av.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return avVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18541a[((av) obj).ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
            } else if (i == 2) {
                jsonGenerator.writeString("team_only");
            } else if (i == 3) {
                jsonGenerator.writeString("password");
            } else if (i == 4) {
                jsonGenerator.writeString("team_and_password");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("shared_folder_only");
            }
        }
    }
}

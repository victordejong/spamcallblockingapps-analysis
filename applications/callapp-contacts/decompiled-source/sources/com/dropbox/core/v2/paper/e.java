package com.dropbox.core.v2.paper;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/e.class */
public enum e {
    EXPIRED_CURSOR,
    INVALID_CURSOR,
    WRONG_USER_IN_CURSOR,
    RESET,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.paper.e$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/e$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18405a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[e.values().length];
            f18405a = iArr;
            try {
                iArr[e.EXPIRED_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18405a[e.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18405a[e.WRONG_USER_IN_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18405a[e.RESET.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/e$a.class */
    static final class a extends f<e> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18406a = new a();

        a() {
        }

        public static e a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                e eVar = "expired_cursor".equals(str) ? e.EXPIRED_CURSOR : "invalid_cursor".equals(str) ? e.INVALID_CURSOR : "wrong_user_in_cursor".equals(str) ? e.WRONG_USER_IN_CURSOR : "reset".equals(str) ? e.RESET : e.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return eVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(e eVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18405a[eVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("expired_cursor");
            } else if (i == 2) {
                jsonGenerator.writeString("invalid_cursor");
            } else if (i == 3) {
                jsonGenerator.writeString("wrong_user_in_cursor");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("reset");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((e) obj, jsonGenerator);
        }
    }
}

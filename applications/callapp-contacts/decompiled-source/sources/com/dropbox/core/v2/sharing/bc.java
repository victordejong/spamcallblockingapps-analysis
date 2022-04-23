package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bc.class */
public enum bc {
    INVALID_ID,
    NOT_A_MEMBER,
    EMAIL_UNVERIFIED,
    UNMOUNTED,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bc$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bc$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18569a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[bc.values().length];
            f18569a = iArr;
            try {
                iArr[bc.INVALID_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18569a[bc.NOT_A_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18569a[bc.EMAIL_UNVERIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18569a[bc.UNMOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bc$a.class */
    static final class a extends f<bc> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18570a = new a();

        a() {
        }

        public static bc a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                bc bcVar = "invalid_id".equals(str) ? bc.INVALID_ID : "not_a_member".equals(str) ? bc.NOT_A_MEMBER : "email_unverified".equals(str) ? bc.EMAIL_UNVERIFIED : "unmounted".equals(str) ? bc.UNMOUNTED : bc.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bcVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(bc bcVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18569a[bcVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_id");
            } else if (i == 2) {
                jsonGenerator.writeString("not_a_member");
            } else if (i == 3) {
                jsonGenerator.writeString("email_unverified");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unmounted");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((bc) obj, jsonGenerator);
        }
    }
}

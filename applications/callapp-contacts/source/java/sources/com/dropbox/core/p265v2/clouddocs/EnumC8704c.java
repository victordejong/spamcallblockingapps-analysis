package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.clouddocs.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/c.class */
public enum EnumC8704c {
    INVALID_ARGUMENT,
    UNAUTHENTICATED,
    PERMISSION_DENIED,
    DOC_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.c$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/c$1.class */
    public static final /* synthetic */ class C87051 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30826a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8704c.values().length];
            f30826a = iArr;
            try {
                iArr[EnumC8704c.INVALID_ARGUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30826a[EnumC8704c.UNAUTHENTICATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30826a[EnumC8704c.PERMISSION_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30826a[EnumC8704c.DOC_NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.c$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/c$a.class */
    static final class C8706a extends AbstractC8559f<EnumC8704c> {

        /* renamed from: a */
        public static final C8706a f30827a = new C8706a();

        C8706a() {
        }

        /* renamed from: a */
        public static EnumC8704c m25151a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8704c enumC8704c = "invalid_argument".equals(str) ? EnumC8704c.INVALID_ARGUMENT : "unauthenticated".equals(str) ? EnumC8704c.UNAUTHENTICATED : "permission_denied".equals(str) ? EnumC8704c.PERMISSION_DENIED : "doc_not_found".equals(str) ? EnumC8704c.DOC_NOT_FOUND : EnumC8704c.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8704c;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25152a(EnumC8704c enumC8704c, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C87051.f30826a[enumC8704c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_argument");
            } else if (i == 2) {
                jsonGenerator.writeString("unauthenticated");
            } else if (i == 3) {
                jsonGenerator.writeString("permission_denied");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("doc_not_found");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25151a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25152a((EnumC8704c) obj, jsonGenerator);
        }
    }
}

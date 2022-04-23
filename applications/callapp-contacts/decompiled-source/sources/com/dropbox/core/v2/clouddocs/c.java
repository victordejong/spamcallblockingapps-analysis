package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/c.class */
public enum c {
    INVALID_ARGUMENT,
    UNAUTHENTICATED,
    PERMISSION_DENIED,
    DOC_NOT_FOUND,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.clouddocs.c$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/c$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17978a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[c.values().length];
            f17978a = iArr;
            try {
                iArr[c.INVALID_ARGUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17978a[c.UNAUTHENTICATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17978a[c.PERMISSION_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17978a[c.DOC_NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/c$a.class */
    static final class a extends f<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17979a = new a();

        a() {
        }

        public static c a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                c cVar = "invalid_argument".equals(str) ? c.INVALID_ARGUMENT : "unauthenticated".equals(str) ? c.UNAUTHENTICATED : "permission_denied".equals(str) ? c.PERMISSION_DENIED : "doc_not_found".equals(str) ? c.DOC_NOT_FOUND : c.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return cVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(c cVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f17978a[cVar.ordinal()];
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

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((c) obj, jsonGenerator);
        }
    }
}

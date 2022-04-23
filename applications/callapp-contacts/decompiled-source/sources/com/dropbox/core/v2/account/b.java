package com.dropbox.core.v2.account;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/b.class */
public enum b {
    FILE_TYPE_ERROR,
    FILE_SIZE_ERROR,
    DIMENSION_ERROR,
    THUMBNAIL_ERROR,
    TRANSIENT_ERROR,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.account.b$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/b$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17918a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f17918a = iArr;
            try {
                iArr[b.FILE_TYPE_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17918a[b.FILE_SIZE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17918a[b.DIMENSION_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17918a[b.THUMBNAIL_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f17918a[b.TRANSIENT_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/b$a.class */
    public static final class a extends f<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17919a = new a();

        public static b a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                b bVar = "file_type_error".equals(str) ? b.FILE_TYPE_ERROR : "file_size_error".equals(str) ? b.FILE_SIZE_ERROR : "dimension_error".equals(str) ? b.DIMENSION_ERROR : "thumbnail_error".equals(str) ? b.THUMBNAIL_ERROR : "transient_error".equals(str) ? b.TRANSIENT_ERROR : b.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(b bVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f17918a[bVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("file_type_error");
            } else if (i == 2) {
                jsonGenerator.writeString("file_size_error");
            } else if (i == 3) {
                jsonGenerator.writeString("dimension_error");
            } else if (i == 4) {
                jsonGenerator.writeString("thumbnail_error");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("transient_error");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((b) obj, jsonGenerator);
        }
    }
}

package com.dropbox.core.p265v2.account;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.account.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/b.class */
public enum EnumC8661b {
    FILE_TYPE_ERROR,
    FILE_SIZE_ERROR,
    DIMENSION_ERROR,
    THUMBNAIL_ERROR,
    TRANSIENT_ERROR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.account.b$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/b$1.class */
    public static final /* synthetic */ class C86621 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30745a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8661b.values().length];
            f30745a = iArr;
            try {
                iArr[EnumC8661b.FILE_TYPE_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30745a[EnumC8661b.FILE_SIZE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30745a[EnumC8661b.DIMENSION_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30745a[EnumC8661b.THUMBNAIL_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30745a[EnumC8661b.TRANSIENT_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.account.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/account/b$a.class */
    public static final class C8663a extends AbstractC8559f<EnumC8661b> {

        /* renamed from: a */
        public static final C8663a f30746a = new C8663a();

        /* renamed from: a */
        public static EnumC8661b m25195a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8661b enumC8661b = "file_type_error".equals(str) ? EnumC8661b.FILE_TYPE_ERROR : "file_size_error".equals(str) ? EnumC8661b.FILE_SIZE_ERROR : "dimension_error".equals(str) ? EnumC8661b.DIMENSION_ERROR : "thumbnail_error".equals(str) ? EnumC8661b.THUMBNAIL_ERROR : "transient_error".equals(str) ? EnumC8661b.TRANSIENT_ERROR : EnumC8661b.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8661b;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25196a(EnumC8661b enumC8661b, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C86621.f30745a[enumC8661b.ordinal()];
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

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25195a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25196a((EnumC8661b) obj, jsonGenerator);
        }
    }
}

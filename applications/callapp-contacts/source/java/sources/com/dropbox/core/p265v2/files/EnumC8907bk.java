package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.files.bk */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bk.class */
public enum EnumC8907bk {
    FILE,
    FOLDER,
    FILE_ANCESTOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.bk$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bk$1.class */
    public static final /* synthetic */ class C89081 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31219a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8907bk.values().length];
            f31219a = iArr;
            try {
                iArr[EnumC8907bk.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31219a[EnumC8907bk.FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31219a[EnumC8907bk.FILE_ANCESTOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bk$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bk$a.class */
    public static final class C8909a extends AbstractC8559f<EnumC8907bk> {

        /* renamed from: a */
        public static final C8909a f31220a = new C8909a();

        C8909a() {
        }

        /* renamed from: a */
        public static EnumC8907bk m24981a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8907bk enumC8907bk = "file".equals(str) ? EnumC8907bk.FILE : "folder".equals(str) ? EnumC8907bk.FOLDER : "file_ancestor".equals(str) ? EnumC8907bk.FILE_ANCESTOR : EnumC8907bk.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8907bk;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24982a(EnumC8907bk enumC8907bk, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C89081.f31219a[enumC8907bk.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("file");
            } else if (i == 2) {
                jsonGenerator.writeString("folder");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("file_ancestor");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24981a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24982a((EnumC8907bk) obj, jsonGenerator);
        }
    }
}

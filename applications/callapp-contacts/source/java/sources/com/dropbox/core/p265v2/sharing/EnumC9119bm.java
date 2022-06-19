package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bm */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bm.class */
public enum EnumC9119bm {
    NO_PERMISSION,
    INVALID_FILE,
    IS_FOLDER,
    INSIDE_PUBLIC_FOLDER,
    INSIDE_OSX_PACKAGE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.bm$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bm$1.class */
    public static final /* synthetic */ class C91201 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31628a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9119bm.values().length];
            f31628a = iArr;
            try {
                iArr[EnumC9119bm.NO_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31628a[EnumC9119bm.INVALID_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31628a[EnumC9119bm.IS_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31628a[EnumC9119bm.INSIDE_PUBLIC_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31628a[EnumC9119bm.INSIDE_OSX_PACKAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bm$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bm$a.class */
    static final class C9121a extends AbstractC8559f<EnumC9119bm> {

        /* renamed from: a */
        public static final C9121a f31629a = new C9121a();

        C9121a() {
        }

        /* renamed from: a */
        public static EnumC9119bm m24839a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9119bm enumC9119bm = "no_permission".equals(str) ? EnumC9119bm.NO_PERMISSION : "invalid_file".equals(str) ? EnumC9119bm.INVALID_FILE : "is_folder".equals(str) ? EnumC9119bm.IS_FOLDER : "inside_public_folder".equals(str) ? EnumC9119bm.INSIDE_PUBLIC_FOLDER : "inside_osx_package".equals(str) ? EnumC9119bm.INSIDE_OSX_PACKAGE : EnumC9119bm.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9119bm;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24840a(EnumC9119bm enumC9119bm, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C91201.f31628a[enumC9119bm.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("no_permission");
            } else if (i == 2) {
                jsonGenerator.writeString("invalid_file");
            } else if (i == 3) {
                jsonGenerator.writeString("is_folder");
            } else if (i == 4) {
                jsonGenerator.writeString("inside_public_folder");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("inside_osx_package");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24839a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24840a((EnumC9119bm) obj, jsonGenerator);
        }
    }
}

package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.files.am */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/am.class */
public enum EnumC8831am {
    IS_SHARED_FOLDER,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.am$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/am$1.class */
    public static final /* synthetic */ class C88321 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31071a;

        static {
            int[] iArr = new int[EnumC8831am.values().length];
            f31071a = iArr;
            try {
                iArr[EnumC8831am.IS_SHARED_FOLDER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.am$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/am$a.class */
    static final class C8833a extends AbstractC8559f<EnumC8831am> {

        /* renamed from: a */
        public static final C8833a f31072a = new C8833a();

        C8833a() {
        }

        /* renamed from: a */
        public static EnumC8831am m25059a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8831am enumC8831am = "is_shared_folder".equals(str) ? EnumC8831am.IS_SHARED_FOLDER : EnumC8831am.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8831am;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25060a(EnumC8831am enumC8831am, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C88321.f31071a[enumC8831am.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("is_shared_folder");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25059a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25060a((EnumC8831am) obj, jsonGenerator);
        }
    }
}

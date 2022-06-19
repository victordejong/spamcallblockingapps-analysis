package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.clouddocs.j */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/j.class */
public enum EnumC8724j {
    INVALID_TITLE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.j$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/j$1.class */
    public static final /* synthetic */ class C87251 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30847a;

        static {
            int[] iArr = new int[EnumC8724j.values().length];
            f30847a = iArr;
            try {
                iArr[EnumC8724j.INVALID_TITLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.j$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/j$a.class */
    static final class C8726a extends AbstractC8559f<EnumC8724j> {

        /* renamed from: a */
        public static final C8726a f30848a = new C8726a();

        C8726a() {
        }

        /* renamed from: a */
        public static EnumC8724j m25141a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8724j enumC8724j = "invalid_title".equals(str) ? EnumC8724j.INVALID_TITLE : EnumC8724j.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8724j;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25142a(EnumC8724j enumC8724j, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C87251.f30847a[enumC8724j.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_title");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25141a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25142a((EnumC8724j) obj, jsonGenerator);
        }
    }
}

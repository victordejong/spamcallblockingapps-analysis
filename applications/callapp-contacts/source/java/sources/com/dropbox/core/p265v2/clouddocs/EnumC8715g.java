package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.clouddocs.g */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/g.class */
public enum EnumC8715g {
    CONFLICT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.g$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/g$1.class */
    public static final /* synthetic */ class C87161 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30837a;

        static {
            int[] iArr = new int[EnumC8715g.values().length];
            f30837a = iArr;
            try {
                iArr[EnumC8715g.CONFLICT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.g$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/g$a.class */
    static final class C8717a extends AbstractC8559f<EnumC8715g> {

        /* renamed from: a */
        public static final C8717a f30838a = new C8717a();

        C8717a() {
        }

        /* renamed from: a */
        public static EnumC8715g m25147a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8715g enumC8715g = "conflict".equals(str) ? EnumC8715g.CONFLICT : EnumC8715g.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8715g;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25148a(EnumC8715g enumC8715g, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C87161.f30837a[enumC8715g.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("conflict");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25147a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25148a((EnumC8715g) obj, jsonGenerator);
        }
    }
}

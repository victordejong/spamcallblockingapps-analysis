package com.dropbox.core.p265v2.auth;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.auth.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/d.class */
public enum EnumC8674d {
    ENDPOINT,
    FEATURE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.auth.d$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/d$1.class */
    public static final /* synthetic */ class C86751 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30767a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8674d.values().length];
            f30767a = iArr;
            try {
                iArr[EnumC8674d.ENDPOINT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30767a[EnumC8674d.FEATURE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/d$a.class */
    public static final class C8676a extends AbstractC8559f<EnumC8674d> {

        /* renamed from: a */
        public static final C8676a f30768a = new C8676a();

        /* renamed from: a */
        public static EnumC8674d m25185a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8674d enumC8674d = "endpoint".equals(str) ? EnumC8674d.ENDPOINT : "feature".equals(str) ? EnumC8674d.FEATURE : EnumC8674d.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8674d;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25186a(EnumC8674d enumC8674d, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C86751.f30767a[enumC8674d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("endpoint");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("feature");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25185a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25186a((EnumC8674d) obj, jsonGenerator);
        }
    }
}

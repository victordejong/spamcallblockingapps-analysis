package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.bn */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bn.class */
public enum EnumC9122bn {
    EMAIL_UNVERIFIED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.bn$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bn$1.class */
    public static final /* synthetic */ class C91231 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31630a;

        static {
            int[] iArr = new int[EnumC9122bn.values().length];
            f31630a = iArr;
            try {
                iArr[EnumC9122bn.EMAIL_UNVERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bn$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bn$a.class */
    static final class C9124a extends AbstractC8559f<EnumC9122bn> {

        /* renamed from: a */
        public static final C9124a f31631a = new C9124a();

        C9124a() {
        }

        /* renamed from: a */
        public static EnumC9122bn m24837a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9122bn enumC9122bn = "email_unverified".equals(str) ? EnumC9122bn.EMAIL_UNVERIFIED : EnumC9122bn.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9122bn;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24838a(EnumC9122bn enumC9122bn, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C91231.f31630a[enumC9122bn.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("email_unverified");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24837a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24838a((EnumC9122bn) obj, jsonGenerator);
        }
    }
}

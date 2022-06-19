package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/a.class */
public enum EnumC8998a {
    INHERIT,
    NO_INHERIT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.a$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/a$1.class */
    public static final /* synthetic */ class C89991 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31396a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8998a.values().length];
            f31396a = iArr;
            try {
                iArr[EnumC8998a.INHERIT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31396a[EnumC8998a.NO_INHERIT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/a$a.class */
    public static final class C9000a extends AbstractC8559f<EnumC8998a> {

        /* renamed from: a */
        public static final C9000a f31397a = new C9000a();

        C9000a() {
        }

        /* renamed from: a */
        public static EnumC8998a m24922a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8998a enumC8998a = "inherit".equals(str) ? EnumC8998a.INHERIT : "no_inherit".equals(str) ? EnumC8998a.NO_INHERIT : EnumC8998a.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8998a;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24923a(EnumC8998a enumC8998a, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C89991.f31396a[enumC8998a.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("inherit");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_inherit");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24922a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24923a((EnumC8998a) obj, jsonGenerator);
        }
    }
}

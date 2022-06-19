package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.team.bf */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bf.class */
public enum EnumC9277bf {
    DISALLOWED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.bf$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bf$1.class */
    public static final /* synthetic */ class C92781 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31911a;

        static {
            int[] iArr = new int[EnumC9277bf.values().length];
            f31911a = iArr;
            try {
                iArr[EnumC9277bf.DISALLOWED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.bf$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bf$a.class */
    static final class C9279a extends AbstractC8559f<EnumC9277bf> {

        /* renamed from: a */
        public static final C9279a f31912a = new C9279a();

        C9279a() {
        }

        /* renamed from: a */
        public static EnumC9277bf m24713a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9277bf enumC9277bf = "disallowed".equals(str) ? EnumC9277bf.DISALLOWED : EnumC9277bf.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9277bf;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24714a(EnumC9277bf enumC9277bf, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C92781.f31911a[enumC9277bf.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("disallowed");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24713a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24714a((EnumC9277bf) obj, jsonGenerator);
        }
    }
}

package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.fileproperties.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/d.class */
public enum EnumC8747d {
    PROPERTY_GROUP_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.fileproperties.d$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/d$1.class */
    public static final /* synthetic */ class C87481 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30895a;

        static {
            int[] iArr = new int[EnumC8747d.values().length];
            f30895a = iArr;
            try {
                iArr[EnumC8747d.PROPERTY_GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/d$a.class */
    public static final class C8749a extends AbstractC8559f<EnumC8747d> {

        /* renamed from: a */
        public static final C8749a f30896a = new C8749a();

        /* renamed from: a */
        public static EnumC8747d m25119a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC8747d enumC8747d = "property_group_not_found".equals(str) ? EnumC8747d.PROPERTY_GROUP_NOT_FOUND : EnumC8747d.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC8747d;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m25120a(EnumC8747d enumC8747d, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C87481.f30895a[enumC8747d.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("property_group_not_found");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25119a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m25120a((EnumC8747d) obj, jsonGenerator);
        }
    }
}

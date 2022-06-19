package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.fileproperties.EnumC8747d;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a.class */
public final class C8792a {

    /* renamed from: a */
    EnumC8795b f30995a;

    /* renamed from: b */
    C8819ai f30996b;

    /* renamed from: c */
    EnumC8747d f30997c;

    /* renamed from: com.dropbox.core.v2.files.a$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a$1.class */
    static final /* synthetic */ class C87931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30998a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8795b.values().length];
            f30998a = iArr;
            try {
                iArr[EnumC8795b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30998a[EnumC8795b.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a$a.class */
    static final class C8794a extends AbstractC8559f<C8792a> {

        /* renamed from: a */
        public static final C8794a f30999a = new C8794a();

        C8794a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8792a c8792a;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    C8819ai m25065a = C8819ai.C8821a.m25065a(jsonParser);
                    if (m25065a == null) {
                        throw new IllegalArgumentException("Value is null");
                    }
                    new C8792a();
                    EnumC8795b enumC8795b = EnumC8795b.PATH;
                    c8792a = new C8792a();
                    c8792a.f30995a = enumC8795b;
                    c8792a.f30996b = m25065a;
                } else if (!"properties_error".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("properties_error", jsonParser);
                    EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                    EnumC8747d m25119a = EnumC8747d.C8749a.m25119a(jsonParser);
                    if (m25119a == null) {
                        throw new IllegalArgumentException("Value is null");
                    }
                    new C8792a();
                    EnumC8795b enumC8795b2 = EnumC8795b.PROPERTIES_ERROR;
                    c8792a = new C8792a();
                    c8792a.f30995a = enumC8795b2;
                    c8792a.f30997c = m25119a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8792a;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8792a c8792a = (C8792a) obj;
            int i = C87931.f30998a[c8792a.f30995a.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8792a.f30996b, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + c8792a.f30995a);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                EnumC8747d.C8749a.m25120a(c8792a.f30997c, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a$b.class */
    public enum EnumC8795b {
        PATH,
        PROPERTIES_ERROR
    }

    C8792a() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8792a)) {
            return false;
        }
        C8792a c8792a = (C8792a) obj;
        if (this.f30995a != c8792a.f30995a) {
            return false;
        }
        int i = C87931.f30998a[this.f30995a.ordinal()];
        if (i == 1) {
            C8819ai c8819ai = this.f30996b;
            C8819ai c8819ai2 = c8792a.f30996b;
            return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
        } else if (i != 2) {
            return false;
        } else {
            EnumC8747d enumC8747d = this.f30997c;
            EnumC8747d enumC8747d2 = c8792a.f30997c;
            return enumC8747d == enumC8747d2 || enumC8747d.equals(enumC8747d2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30995a, this.f30996b, this.f30997c});
    }

    public final String toString() {
        return C8794a.f30999a.serialize((C8794a) this, false);
    }
}

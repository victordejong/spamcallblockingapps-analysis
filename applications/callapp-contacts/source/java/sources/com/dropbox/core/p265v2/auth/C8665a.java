package com.dropbox.core.p265v2.auth;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.auth.EnumC8674d;
import com.dropbox.core.p265v2.auth.EnumC8677e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.auth.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a.class */
public final class C8665a {

    /* renamed from: a */
    public static final C8665a f30749a;

    /* renamed from: b */
    EnumC8668b f30750b;

    /* renamed from: c */
    private EnumC8674d f30751c;

    /* renamed from: d */
    private EnumC8677e f30752d;

    /* renamed from: com.dropbox.core.v2.auth.a$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a$1.class */
    static final /* synthetic */ class C86661 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30753a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8668b.values().length];
            f30753a = iArr;
            try {
                iArr[EnumC8668b.INVALID_ACCOUNT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30753a[EnumC8668b.PAPER_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30753a[EnumC8668b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a$a.class */
    public static final class C8667a extends AbstractC8559f<C8665a> {

        /* renamed from: a */
        public static final C8667a f30754a = new C8667a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8665a c8665a;
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
                if ("invalid_account_type".equals(str)) {
                    expectField("invalid_account_type", jsonParser);
                    EnumC8674d.C8676a c8676a = EnumC8674d.C8676a.f30768a;
                    c8665a = C8665a.m25193a(EnumC8674d.C8676a.m25185a(jsonParser));
                } else if ("paper_access_denied".equals(str)) {
                    expectField("paper_access_denied", jsonParser);
                    EnumC8677e.C8679a c8679a = EnumC8677e.C8679a.f30770a;
                    c8665a = C8665a.m25192a(EnumC8677e.C8679a.m25183a(jsonParser));
                } else {
                    c8665a = C8665a.f30749a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8665a;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8665a c8665a = (C8665a) obj;
            int i = C86661.f30753a[c8665a.f30750b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("invalid_account_type", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_account_type");
                EnumC8674d.C8676a c8676a = EnumC8674d.C8676a.f30768a;
                EnumC8674d.C8676a.m25186a(c8665a.f30751c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("paper_access_denied", jsonGenerator);
                jsonGenerator.writeFieldName("paper_access_denied");
                EnumC8677e.C8679a c8679a = EnumC8677e.C8679a.f30770a;
                EnumC8677e.C8679a.m25184a(c8665a.f30752d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a$b.class */
    public enum EnumC8668b {
        INVALID_ACCOUNT_TYPE,
        PAPER_ACCESS_DENIED,
        OTHER
    }

    static {
        new C8665a();
        EnumC8668b enumC8668b = EnumC8668b.OTHER;
        C8665a c8665a = new C8665a();
        c8665a.f30750b = enumC8668b;
        f30749a = c8665a;
    }

    private C8665a() {
    }

    /* renamed from: a */
    public static C8665a m25193a(EnumC8674d enumC8674d) {
        if (enumC8674d != null) {
            new C8665a();
            EnumC8668b enumC8668b = EnumC8668b.INVALID_ACCOUNT_TYPE;
            C8665a c8665a = new C8665a();
            c8665a.f30750b = enumC8668b;
            c8665a.f30751c = enumC8674d;
            return c8665a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8665a m25192a(EnumC8677e enumC8677e) {
        if (enumC8677e != null) {
            new C8665a();
            EnumC8668b enumC8668b = EnumC8668b.PAPER_ACCESS_DENIED;
            C8665a c8665a = new C8665a();
            c8665a.f30750b = enumC8668b;
            c8665a.f30752d = enumC8677e;
            return c8665a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8665a)) {
            return false;
        }
        C8665a c8665a = (C8665a) obj;
        if (this.f30750b != c8665a.f30750b) {
            return false;
        }
        int i = C86661.f30753a[this.f30750b.ordinal()];
        if (i == 1) {
            EnumC8674d enumC8674d = this.f30751c;
            EnumC8674d enumC8674d2 = c8665a.f30751c;
            return enumC8674d == enumC8674d2 || enumC8674d.equals(enumC8674d2);
        } else if (i != 2) {
            return i == 3;
        } else {
            EnumC8677e enumC8677e = this.f30752d;
            EnumC8677e enumC8677e2 = c8665a.f30752d;
            return enumC8677e == enumC8677e2 || enumC8677e.equals(enumC8677e2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30750b, this.f30751c, this.f30752d});
    }

    public final String toString() {
        return C8667a.f30754a.serialize((C8667a) this, false);
    }
}

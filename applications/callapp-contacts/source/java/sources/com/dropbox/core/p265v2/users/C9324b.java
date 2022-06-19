package com.dropbox.core.p265v2.users;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.users.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b.class */
public final class C9324b {

    /* renamed from: a */
    public static final C9324b f31955a;

    /* renamed from: b */
    EnumC9327b f31956b;

    /* renamed from: c */
    private String f31957c;

    /* renamed from: com.dropbox.core.v2.users.b$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b$1.class */
    static final /* synthetic */ class C93251 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31958a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9327b.values().length];
            f31958a = iArr;
            try {
                iArr[EnumC9327b.NO_ACCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31958a[EnumC9327b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b$a.class */
    public static final class C9326a extends AbstractC8559f<C9324b> {

        /* renamed from: a */
        public static final C9326a f31959a = new C9326a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9324b c9324b;
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
                if ("no_account".equals(str)) {
                    expectField("no_account", jsonParser);
                    c9324b = C9324b.m24688a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else {
                    c9324b = C9324b.f31955a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9324b;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9324b c9324b = (C9324b) obj;
            if (C93251.f31958a[c9324b.f31956b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("no_account", jsonGenerator);
            jsonGenerator.writeFieldName("no_account");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9324b.f31957c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.users.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b$b.class */
    public enum EnumC9327b {
        NO_ACCOUNT,
        OTHER
    }

    static {
        new C9324b();
        EnumC9327b enumC9327b = EnumC9327b.OTHER;
        C9324b c9324b = new C9324b();
        c9324b.f31956b = enumC9327b;
        f31955a = c9324b;
    }

    private C9324b() {
    }

    /* renamed from: a */
    public static C9324b m24688a(String str) {
        if (str != null) {
            if (str.length() < 40) {
                throw new IllegalArgumentException("String is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("String is longer than 40");
            }
            new C9324b();
            EnumC9327b enumC9327b = EnumC9327b.NO_ACCOUNT;
            C9324b c9324b = new C9324b();
            c9324b.f31956b = enumC9327b;
            c9324b.f31957c = str;
            return c9324b;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9324b)) {
            return false;
        }
        C9324b c9324b = (C9324b) obj;
        if (this.f31956b != c9324b.f31956b) {
            return false;
        }
        int i = C93251.f31958a[this.f31956b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f31957c;
        String str2 = c9324b.f31957c;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31956b, this.f31957c});
    }

    public final String toString() {
        return C9326a.f31959a.serialize((C9326a) this, false);
    }
}

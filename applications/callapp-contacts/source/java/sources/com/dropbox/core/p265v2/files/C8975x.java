package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.x */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x.class */
public final class C8975x {

    /* renamed from: a */
    public static final C8975x f31333a = m24932a(EnumC8978b.EMAIL_NOT_VERIFIED);

    /* renamed from: b */
    public static final C8975x f31334b = m24932a(EnumC8978b.UNSUPPORTED_FILE);

    /* renamed from: c */
    public static final C8975x f31335c = m24932a(EnumC8978b.OTHER);

    /* renamed from: d */
    EnumC8978b f31336d;

    /* renamed from: e */
    private C8819ai f31337e;

    /* renamed from: com.dropbox.core.v2.files.x$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x$1.class */
    static final /* synthetic */ class C89761 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31338a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8978b.values().length];
            f31338a = iArr;
            try {
                iArr[EnumC8978b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31338a[EnumC8978b.EMAIL_NOT_VERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31338a[EnumC8978b.UNSUPPORTED_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31338a[EnumC8978b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.x$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x$a.class */
    static final class C8977a extends AbstractC8559f<C8975x> {

        /* renamed from: a */
        public static final C8977a f31339a = new C8977a();

        C8977a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8975x c8975x;
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
                    c8975x = C8975x.m24933a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8975x = "email_not_verified".equals(str) ? C8975x.f31333a : "unsupported_file".equals(str) ? C8975x.f31334b : C8975x.f31335c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8975x;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8975x c8975x = (C8975x) obj;
            int i = C89761.f31338a[c8975x.f31336d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8975x.f31337e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("email_not_verified");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unsupported_file");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.x$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x$b.class */
    public enum EnumC8978b {
        PATH,
        EMAIL_NOT_VERIFIED,
        UNSUPPORTED_FILE,
        OTHER
    }

    static {
        new C8975x();
        new C8975x();
        new C8975x();
    }

    private C8975x() {
    }

    /* renamed from: a */
    public static C8975x m24933a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8975x();
            EnumC8978b enumC8978b = EnumC8978b.PATH;
            C8975x c8975x = new C8975x();
            c8975x.f31336d = enumC8978b;
            c8975x.f31337e = c8819ai;
            return c8975x;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8975x m24932a(EnumC8978b enumC8978b) {
        C8975x c8975x = new C8975x();
        c8975x.f31336d = enumC8978b;
        return c8975x;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8975x)) {
            return false;
        }
        C8975x c8975x = (C8975x) obj;
        if (this.f31336d != c8975x.f31336d) {
            return false;
        }
        int i = C89761.f31338a[this.f31336d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        C8819ai c8819ai = this.f31337e;
        C8819ai c8819ai2 = c8975x.f31337e;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31336d, this.f31337e});
    }

    public final String toString() {
        return C8977a.f31339a.serialize((C8977a) this, false);
    }
}

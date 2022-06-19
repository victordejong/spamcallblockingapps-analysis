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
/* renamed from: com.dropbox.core.v2.files.l */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l.class */
public final class C8943l {

    /* renamed from: a */
    public static final C8943l f31273a = m24951a(EnumC8946b.NON_EXPORTABLE);

    /* renamed from: b */
    public static final C8943l f31274b = m24951a(EnumC8946b.RETRY_ERROR);

    /* renamed from: c */
    public static final C8943l f31275c = m24951a(EnumC8946b.OTHER);

    /* renamed from: d */
    EnumC8946b f31276d;

    /* renamed from: e */
    private C8819ai f31277e;

    /* renamed from: com.dropbox.core.v2.files.l$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l$1.class */
    static final /* synthetic */ class C89441 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31278a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8946b.values().length];
            f31278a = iArr;
            try {
                iArr[EnumC8946b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31278a[EnumC8946b.NON_EXPORTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31278a[EnumC8946b.RETRY_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31278a[EnumC8946b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.l$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l$a.class */
    public static final class C8945a extends AbstractC8559f<C8943l> {

        /* renamed from: a */
        public static final C8945a f31279a = new C8945a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8943l c8943l;
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
                    c8943l = C8943l.m24952a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8943l = "non_exportable".equals(str) ? C8943l.f31273a : "retry_error".equals(str) ? C8943l.f31274b : C8943l.f31275c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8943l;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8943l c8943l = (C8943l) obj;
            int i = C89441.f31278a[c8943l.f31276d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8943l.f31277e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("non_exportable");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("retry_error");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.l$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l$b.class */
    public enum EnumC8946b {
        PATH,
        NON_EXPORTABLE,
        RETRY_ERROR,
        OTHER
    }

    static {
        new C8943l();
        new C8943l();
        new C8943l();
    }

    private C8943l() {
    }

    /* renamed from: a */
    public static C8943l m24952a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8943l();
            EnumC8946b enumC8946b = EnumC8946b.PATH;
            C8943l c8943l = new C8943l();
            c8943l.f31276d = enumC8946b;
            c8943l.f31277e = c8819ai;
            return c8943l;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8943l m24951a(EnumC8946b enumC8946b) {
        C8943l c8943l = new C8943l();
        c8943l.f31276d = enumC8946b;
        return c8943l;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8943l)) {
            return false;
        }
        C8943l c8943l = (C8943l) obj;
        if (this.f31276d != c8943l.f31276d) {
            return false;
        }
        int i = C89441.f31278a[this.f31276d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        C8819ai c8819ai = this.f31277e;
        C8819ai c8819ai2 = c8943l.f31277e;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31276d, this.f31277e});
    }

    public final String toString() {
        return C8945a.f31279a.serialize((C8945a) this, false);
    }
}

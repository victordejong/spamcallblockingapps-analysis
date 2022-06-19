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
/* renamed from: com.dropbox.core.v2.files.ao */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao.class */
public final class C8836ao {

    /* renamed from: a */
    public static final C8836ao f31074a = m25055a(EnumC8839b.IN_PROGRESS);

    /* renamed from: b */
    public static final C8836ao f31075b = m25055a(EnumC8839b.UNSUPPORTED_EXTENSION);

    /* renamed from: c */
    public static final C8836ao f31076c = m25055a(EnumC8839b.UNSUPPORTED_CONTENT);

    /* renamed from: d */
    EnumC8839b f31077d;

    /* renamed from: e */
    private C8819ai f31078e;

    /* renamed from: com.dropbox.core.v2.files.ao$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao$1.class */
    static final /* synthetic */ class C88371 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31079a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8839b.values().length];
            f31079a = iArr;
            try {
                iArr[EnumC8839b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31079a[EnumC8839b.IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31079a[EnumC8839b.UNSUPPORTED_EXTENSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31079a[EnumC8839b.UNSUPPORTED_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ao$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao$a.class */
    static final class C8838a extends AbstractC8559f<C8836ao> {

        /* renamed from: a */
        public static final C8838a f31080a = new C8838a();

        C8838a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8836ao c8836ao;
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
                    c8836ao = C8836ao.m25056a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("in_progress".equals(str)) {
                    c8836ao = C8836ao.f31074a;
                } else if ("unsupported_extension".equals(str)) {
                    c8836ao = C8836ao.f31075b;
                } else if (!"unsupported_content".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c8836ao = C8836ao.f31076c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8836ao;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8836ao c8836ao = (C8836ao) obj;
            int i = C88371.f31079a[c8836ao.f31077d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8836ao.f31078e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("in_progress");
            } else if (i == 3) {
                jsonGenerator.writeString("unsupported_extension");
            } else if (i == 4) {
                jsonGenerator.writeString("unsupported_content");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + c8836ao.f31077d);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ao$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao$b.class */
    public enum EnumC8839b {
        PATH,
        IN_PROGRESS,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_CONTENT
    }

    static {
        new C8836ao();
        new C8836ao();
        new C8836ao();
    }

    private C8836ao() {
    }

    /* renamed from: a */
    public static C8836ao m25056a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8836ao();
            EnumC8839b enumC8839b = EnumC8839b.PATH;
            C8836ao c8836ao = new C8836ao();
            c8836ao.f31077d = enumC8839b;
            c8836ao.f31078e = c8819ai;
            return c8836ao;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8836ao m25055a(EnumC8839b enumC8839b) {
        C8836ao c8836ao = new C8836ao();
        c8836ao.f31077d = enumC8839b;
        return c8836ao;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8836ao)) {
            return false;
        }
        C8836ao c8836ao = (C8836ao) obj;
        if (this.f31077d != c8836ao.f31077d) {
            return false;
        }
        int i = C88371.f31079a[this.f31077d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        C8819ai c8819ai = this.f31078e;
        C8819ai c8819ai2 = c8836ao.f31078e;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31077d, this.f31078e});
    }

    public final String toString() {
        return C8838a.f31080a.serialize((C8838a) this, false);
    }
}

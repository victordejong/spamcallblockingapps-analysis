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
/* renamed from: com.dropbox.core.v2.files.k */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k.class */
public final class C8939k {

    /* renamed from: a */
    public static final C8939k f31266a = m24954a(EnumC8942b.TOO_LARGE);

    /* renamed from: b */
    public static final C8939k f31267b = m24954a(EnumC8942b.TOO_MANY_FILES);

    /* renamed from: c */
    public static final C8939k f31268c = m24954a(EnumC8942b.OTHER);

    /* renamed from: d */
    EnumC8942b f31269d;

    /* renamed from: e */
    private C8819ai f31270e;

    /* renamed from: com.dropbox.core.v2.files.k$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k$1.class */
    static final /* synthetic */ class C89401 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31271a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8942b.values().length];
            f31271a = iArr;
            try {
                iArr[EnumC8942b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31271a[EnumC8942b.TOO_LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31271a[EnumC8942b.TOO_MANY_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31271a[EnumC8942b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.k$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k$a.class */
    static final class C8941a extends AbstractC8559f<C8939k> {

        /* renamed from: a */
        public static final C8941a f31272a = new C8941a();

        C8941a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8939k c8939k;
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
                    c8939k = C8939k.m24955a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8939k = "too_large".equals(str) ? C8939k.f31266a : "too_many_files".equals(str) ? C8939k.f31267b : C8939k.f31268c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8939k;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8939k c8939k = (C8939k) obj;
            int i = C89401.f31271a[c8939k.f31269d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8939k.f31270e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("too_large");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.k$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k$b.class */
    public enum EnumC8942b {
        PATH,
        TOO_LARGE,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new C8939k();
        new C8939k();
        new C8939k();
    }

    private C8939k() {
    }

    /* renamed from: a */
    public static C8939k m24955a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8939k();
            EnumC8942b enumC8942b = EnumC8942b.PATH;
            C8939k c8939k = new C8939k();
            c8939k.f31269d = enumC8942b;
            c8939k.f31270e = c8819ai;
            return c8939k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8939k m24954a(EnumC8942b enumC8942b) {
        C8939k c8939k = new C8939k();
        c8939k.f31269d = enumC8942b;
        return c8939k;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8939k)) {
            return false;
        }
        C8939k c8939k = (C8939k) obj;
        if (this.f31269d != c8939k.f31269d) {
            return false;
        }
        int i = C89401.f31271a[this.f31269d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        C8819ai c8819ai = this.f31270e;
        C8819ai c8819ai2 = c8939k.f31270e;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31269d, this.f31270e});
    }

    public final String toString() {
        return C8941a.f31272a.serialize((C8941a) this, false);
    }
}

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
/* renamed from: com.dropbox.core.v2.files.ba */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba.class */
public final class C8879ba {

    /* renamed from: a */
    public static final C8879ba f31170a = m25013a(EnumC8882b.UNSUPPORTED_EXTENSION);

    /* renamed from: b */
    public static final C8879ba f31171b = m25013a(EnumC8882b.UNSUPPORTED_IMAGE);

    /* renamed from: c */
    public static final C8879ba f31172c = m25013a(EnumC8882b.CONVERSION_ERROR);

    /* renamed from: d */
    public static final C8879ba f31173d = m25013a(EnumC8882b.ACCESS_DENIED);

    /* renamed from: e */
    public static final C8879ba f31174e = m25013a(EnumC8882b.NOT_FOUND);

    /* renamed from: f */
    public static final C8879ba f31175f = m25013a(EnumC8882b.OTHER);

    /* renamed from: g */
    EnumC8882b f31176g;

    /* renamed from: h */
    private C8819ai f31177h;

    /* renamed from: com.dropbox.core.v2.files.ba$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba$1.class */
    static final /* synthetic */ class C88801 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31178a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8882b.values().length];
            f31178a = iArr;
            try {
                iArr[EnumC8882b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31178a[EnumC8882b.UNSUPPORTED_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31178a[EnumC8882b.UNSUPPORTED_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31178a[EnumC8882b.CONVERSION_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31178a[EnumC8882b.ACCESS_DENIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31178a[EnumC8882b.NOT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31178a[EnumC8882b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ba$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba$a.class */
    static final class C8881a extends AbstractC8559f<C8879ba> {

        /* renamed from: a */
        public static final C8881a f31179a = new C8881a();

        C8881a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8879ba c8879ba;
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
                    c8879ba = C8879ba.m25014a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8879ba = "unsupported_extension".equals(str) ? C8879ba.f31170a : "unsupported_image".equals(str) ? C8879ba.f31171b : "conversion_error".equals(str) ? C8879ba.f31172c : "access_denied".equals(str) ? C8879ba.f31173d : "not_found".equals(str) ? C8879ba.f31174e : C8879ba.f31175f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8879ba;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8879ba c8879ba = (C8879ba) obj;
            switch (C88801.f31178a[c8879ba.f31176g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("path", jsonGenerator);
                    jsonGenerator.writeFieldName("path");
                    C8819ai.C8821a.f31056a.serialize(c8879ba.f31177h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("unsupported_extension");
                    return;
                case 3:
                    jsonGenerator.writeString("unsupported_image");
                    return;
                case 4:
                    jsonGenerator.writeString("conversion_error");
                    return;
                case 5:
                    jsonGenerator.writeString("access_denied");
                    return;
                case 6:
                    jsonGenerator.writeString("not_found");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ba$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ba$b.class */
    public enum EnumC8882b {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR,
        ACCESS_DENIED,
        NOT_FOUND,
        OTHER
    }

    static {
        new C8879ba();
        new C8879ba();
        new C8879ba();
        new C8879ba();
        new C8879ba();
        new C8879ba();
    }

    private C8879ba() {
    }

    /* renamed from: a */
    public static C8879ba m25014a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8879ba();
            EnumC8882b enumC8882b = EnumC8882b.PATH;
            C8879ba c8879ba = new C8879ba();
            c8879ba.f31176g = enumC8882b;
            c8879ba.f31177h = c8819ai;
            return c8879ba;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8879ba m25013a(EnumC8882b enumC8882b) {
        C8879ba c8879ba = new C8879ba();
        c8879ba.f31176g = enumC8882b;
        return c8879ba;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8879ba)) {
            return false;
        }
        C8879ba c8879ba = (C8879ba) obj;
        if (this.f31176g != c8879ba.f31176g) {
            return false;
        }
        switch (C88801.f31178a[this.f31176g.ordinal()]) {
            case 1:
                C8819ai c8819ai = this.f31177h;
                C8819ai c8819ai2 = c8879ba.f31177h;
                return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31176g, this.f31177h});
    }

    public final String toString() {
        return C8881a.f31179a.serialize((C8881a) this, false);
    }
}

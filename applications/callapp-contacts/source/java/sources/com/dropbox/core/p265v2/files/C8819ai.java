package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ai */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai.class */
public final class C8819ai {

    /* renamed from: a */
    public static final C8819ai f31046a = m25069a(EnumC8822b.NOT_FOUND);

    /* renamed from: b */
    public static final C8819ai f31047b = m25069a(EnumC8822b.NOT_FILE);

    /* renamed from: c */
    public static final C8819ai f31048c = m25069a(EnumC8822b.NOT_FOLDER);

    /* renamed from: d */
    public static final C8819ai f31049d = m25069a(EnumC8822b.RESTRICTED_CONTENT);

    /* renamed from: e */
    public static final C8819ai f31050e = m25069a(EnumC8822b.UNSUPPORTED_CONTENT_TYPE);

    /* renamed from: f */
    public static final C8819ai f31051f = m25069a(EnumC8822b.LOCKED);

    /* renamed from: g */
    public static final C8819ai f31052g = m25069a(EnumC8822b.OTHER);

    /* renamed from: h */
    EnumC8822b f31053h;

    /* renamed from: i */
    private String f31054i;

    /* renamed from: com.dropbox.core.v2.files.ai$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai$1.class */
    public static final /* synthetic */ class C88201 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31055a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8822b.values().length];
            f31055a = iArr;
            try {
                iArr[EnumC8822b.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31055a[EnumC8822b.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31055a[EnumC8822b.NOT_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31055a[EnumC8822b.NOT_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31055a[EnumC8822b.RESTRICTED_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31055a[EnumC8822b.UNSUPPORTED_CONTENT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31055a[EnumC8822b.LOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31055a[EnumC8822b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ai$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai$a.class */
    public static final class C8821a extends AbstractC8559f<C8819ai> {

        /* renamed from: a */
        public static final C8821a f31056a = new C8821a();

        /* renamed from: a */
        public static C8819ai m25065a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8819ai c8819ai;
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
                if ("malformed_path".equals(str)) {
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("malformed_path", jsonParser);
                        str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                    }
                    c8819ai = str2 == null ? C8819ai.m25070a() : C8819ai.m25067a(str2);
                } else {
                    c8819ai = "not_found".equals(str) ? C8819ai.f31046a : "not_file".equals(str) ? C8819ai.f31047b : "not_folder".equals(str) ? C8819ai.f31048c : "restricted_content".equals(str) ? C8819ai.f31049d : "unsupported_content_type".equals(str) ? C8819ai.f31050e : "locked".equals(str) ? C8819ai.f31051f : C8819ai.f31052g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8819ai;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8819ai c8819ai, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C88201.f31055a[c8819ai.f31053h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("malformed_path", jsonGenerator);
                    jsonGenerator.writeFieldName("malformed_path");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8819ai.f31054i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("not_found");
                    return;
                case 3:
                    jsonGenerator.writeString("not_file");
                    return;
                case 4:
                    jsonGenerator.writeString("not_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 6:
                    jsonGenerator.writeString("unsupported_content_type");
                    return;
                case 7:
                    jsonGenerator.writeString("locked");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25065a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ai$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ai$b.class */
    public enum EnumC8822b {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        UNSUPPORTED_CONTENT_TYPE,
        LOCKED,
        OTHER
    }

    static {
        new C8819ai();
        new C8819ai();
        new C8819ai();
        new C8819ai();
        new C8819ai();
        new C8819ai();
        new C8819ai();
    }

    private C8819ai() {
    }

    /* renamed from: a */
    public static C8819ai m25070a() {
        return m25067a((String) null);
    }

    /* renamed from: a */
    private static C8819ai m25069a(EnumC8822b enumC8822b) {
        C8819ai c8819ai = new C8819ai();
        c8819ai.f31053h = enumC8822b;
        return c8819ai;
    }

    /* renamed from: a */
    public static C8819ai m25067a(String str) {
        new C8819ai();
        EnumC8822b enumC8822b = EnumC8822b.MALFORMED_PATH;
        C8819ai c8819ai = new C8819ai();
        c8819ai.f31053h = enumC8822b;
        c8819ai.f31054i = str;
        return c8819ai;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8819ai)) {
            return false;
        }
        C8819ai c8819ai = (C8819ai) obj;
        if (this.f31053h != c8819ai.f31053h) {
            return false;
        }
        switch (C88201.f31055a[this.f31053h.ordinal()]) {
            case 1:
                String str = this.f31054i;
                String str2 = c8819ai.f31054i;
                if (str == str2) {
                    return true;
                }
                return str != null && str.equals(str2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31053h, this.f31054i});
    }

    public final String toString() {
        return C8821a.f31056a.serialize((C8821a) this, false);
    }
}

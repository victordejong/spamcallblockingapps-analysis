package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.fileproperties.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e.class */
public final class C8750e {

    /* renamed from: a */
    public static final C8750e f30897a = m25118a(EnumC8753b.NOT_FOUND);

    /* renamed from: b */
    public static final C8750e f30898b = m25118a(EnumC8753b.NOT_FILE);

    /* renamed from: c */
    public static final C8750e f30899c = m25118a(EnumC8753b.NOT_FOLDER);

    /* renamed from: d */
    public static final C8750e f30900d = m25118a(EnumC8753b.RESTRICTED_CONTENT);

    /* renamed from: e */
    public static final C8750e f30901e = m25118a(EnumC8753b.OTHER);

    /* renamed from: f */
    EnumC8753b f30902f;

    /* renamed from: g */
    private String f30903g;

    /* renamed from: com.dropbox.core.v2.fileproperties.e$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e$1.class */
    public static final /* synthetic */ class C87511 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30904a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8753b.values().length];
            f30904a = iArr;
            try {
                iArr[EnumC8753b.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30904a[EnumC8753b.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30904a[EnumC8753b.NOT_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30904a[EnumC8753b.NOT_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30904a[EnumC8753b.RESTRICTED_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30904a[EnumC8753b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.fileproperties.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e$a.class */
    public static final class C8752a extends AbstractC8559f<C8750e> {

        /* renamed from: a */
        public static final C8752a f30905a = new C8752a();

        C8752a() {
        }

        /* renamed from: a */
        public static C8750e m25114a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8750e c8750e;
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
                    expectField("malformed_path", jsonParser);
                    c8750e = C8750e.m25116a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else {
                    c8750e = "not_found".equals(str) ? C8750e.f30897a : "not_file".equals(str) ? C8750e.f30898b : "not_folder".equals(str) ? C8750e.f30899c : "restricted_content".equals(str) ? C8750e.f30900d : C8750e.f30901e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8750e;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8750e c8750e, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C87511.f30904a[c8750e.f30902f.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("malformed_path", jsonGenerator);
                jsonGenerator.writeFieldName("malformed_path");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8750e.f30903g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("not_found");
            } else if (i == 3) {
                jsonGenerator.writeString("not_file");
            } else if (i == 4) {
                jsonGenerator.writeString("not_folder");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("restricted_content");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25114a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.e$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/e$b.class */
    public enum EnumC8753b {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        OTHER
    }

    static {
        new C8750e();
        new C8750e();
        new C8750e();
        new C8750e();
        new C8750e();
    }

    private C8750e() {
    }

    /* renamed from: a */
    private static C8750e m25118a(EnumC8753b enumC8753b) {
        C8750e c8750e = new C8750e();
        c8750e.f30902f = enumC8753b;
        return c8750e;
    }

    /* renamed from: a */
    public static C8750e m25116a(String str) {
        if (str != null) {
            new C8750e();
            EnumC8753b enumC8753b = EnumC8753b.MALFORMED_PATH;
            C8750e c8750e = new C8750e();
            c8750e.f30902f = enumC8753b;
            c8750e.f30903g = str;
            return c8750e;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8750e)) {
            return false;
        }
        C8750e c8750e = (C8750e) obj;
        if (this.f30902f != c8750e.f30902f) {
            return false;
        }
        switch (C87511.f30904a[this.f30902f.ordinal()]) {
            case 1:
                String str = this.f30903g;
                String str2 = c8750e.f30903g;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30902f, this.f30903g});
    }

    public final String toString() {
        return C8752a.f30905a.serialize((C8752a) this, false);
    }
}

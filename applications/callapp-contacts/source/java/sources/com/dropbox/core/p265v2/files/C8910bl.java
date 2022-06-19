package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.EnumC8907bk;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.bl */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl.class */
public final class C8910bl {

    /* renamed from: a */
    public static final C8910bl f31221a = m24978a(EnumC8913b.NO_WRITE_PERMISSION);

    /* renamed from: b */
    public static final C8910bl f31222b = m24978a(EnumC8913b.INSUFFICIENT_SPACE);

    /* renamed from: c */
    public static final C8910bl f31223c = m24978a(EnumC8913b.DISALLOWED_NAME);

    /* renamed from: d */
    public static final C8910bl f31224d = m24978a(EnumC8913b.TEAM_FOLDER);

    /* renamed from: e */
    public static final C8910bl f31225e = m24978a(EnumC8913b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: f */
    public static final C8910bl f31226f = m24978a(EnumC8913b.OTHER);

    /* renamed from: g */
    EnumC8913b f31227g;

    /* renamed from: h */
    private String f31228h;

    /* renamed from: i */
    private EnumC8907bk f31229i;

    /* renamed from: com.dropbox.core.v2.files.bl$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl$1.class */
    public static final /* synthetic */ class C89111 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31230a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8913b.values().length];
            f31230a = iArr;
            try {
                iArr[EnumC8913b.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31230a[EnumC8913b.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31230a[EnumC8913b.NO_WRITE_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31230a[EnumC8913b.INSUFFICIENT_SPACE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31230a[EnumC8913b.DISALLOWED_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31230a[EnumC8913b.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31230a[EnumC8913b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31230a[EnumC8913b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bl$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl$a.class */
    public static final class C8912a extends AbstractC8559f<C8910bl> {

        /* renamed from: a */
        public static final C8912a f31231a = new C8912a();

        C8912a() {
        }

        /* renamed from: a */
        public static C8910bl m24973a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8910bl c8910bl;
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
                    c8910bl = str2 == null ? C8910bl.m24980a() : C8910bl.m24976a(str2);
                } else if ("conflict".equals(str)) {
                    expectField("conflict", jsonParser);
                    EnumC8907bk.C8909a c8909a = EnumC8907bk.C8909a.f31220a;
                    c8910bl = C8910bl.m24979a(EnumC8907bk.C8909a.m24981a(jsonParser));
                } else {
                    c8910bl = "no_write_permission".equals(str) ? C8910bl.f31221a : "insufficient_space".equals(str) ? C8910bl.f31222b : "disallowed_name".equals(str) ? C8910bl.f31223c : "team_folder".equals(str) ? C8910bl.f31224d : "too_many_write_operations".equals(str) ? C8910bl.f31225e : C8910bl.f31226f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8910bl;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8910bl c8910bl, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C89111.f31230a[c8910bl.f31227g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("malformed_path", jsonGenerator);
                    jsonGenerator.writeFieldName("malformed_path");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8910bl.f31228h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("conflict", jsonGenerator);
                    jsonGenerator.writeFieldName("conflict");
                    EnumC8907bk.C8909a c8909a = EnumC8907bk.C8909a.f31220a;
                    EnumC8907bk.C8909a.m24982a(c8910bl.f31229i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("no_write_permission");
                    return;
                case 4:
                    jsonGenerator.writeString("insufficient_space");
                    return;
                case 5:
                    jsonGenerator.writeString("disallowed_name");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24973a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bl$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl$b.class */
    public enum EnumC8913b {
        MALFORMED_PATH,
        CONFLICT,
        NO_WRITE_PERMISSION,
        INSUFFICIENT_SPACE,
        DISALLOWED_NAME,
        TEAM_FOLDER,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    static {
        new C8910bl();
        new C8910bl();
        new C8910bl();
        new C8910bl();
        new C8910bl();
        new C8910bl();
    }

    private C8910bl() {
    }

    /* renamed from: a */
    public static C8910bl m24980a() {
        return m24976a((String) null);
    }

    /* renamed from: a */
    public static C8910bl m24979a(EnumC8907bk enumC8907bk) {
        if (enumC8907bk != null) {
            new C8910bl();
            EnumC8913b enumC8913b = EnumC8913b.CONFLICT;
            C8910bl c8910bl = new C8910bl();
            c8910bl.f31227g = enumC8913b;
            c8910bl.f31229i = enumC8907bk;
            return c8910bl;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8910bl m24978a(EnumC8913b enumC8913b) {
        C8910bl c8910bl = new C8910bl();
        c8910bl.f31227g = enumC8913b;
        return c8910bl;
    }

    /* renamed from: a */
    public static C8910bl m24976a(String str) {
        new C8910bl();
        EnumC8913b enumC8913b = EnumC8913b.MALFORMED_PATH;
        C8910bl c8910bl = new C8910bl();
        c8910bl.f31227g = enumC8913b;
        c8910bl.f31228h = str;
        return c8910bl;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8910bl)) {
            return false;
        }
        C8910bl c8910bl = (C8910bl) obj;
        if (this.f31227g != c8910bl.f31227g) {
            return false;
        }
        switch (C89111.f31230a[this.f31227g.ordinal()]) {
            case 1:
                String str = this.f31228h;
                String str2 = c8910bl.f31228h;
                if (str == str2) {
                    return true;
                }
                return str != null && str.equals(str2);
            case 2:
                EnumC8907bk enumC8907bk = this.f31229i;
                EnumC8907bk enumC8907bk2 = c8910bl.f31229i;
                return enumC8907bk == enumC8907bk2 || enumC8907bk.equals(enumC8907bk2);
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
        return Arrays.hashCode(new Object[]{this.f31227g, this.f31228h, this.f31229i});
    }

    public final String toString() {
        return C8912a.f31231a.serialize((C8912a) this, false);
    }
}

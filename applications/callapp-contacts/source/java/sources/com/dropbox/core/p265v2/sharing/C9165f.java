package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.sharing.f */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f.class */
public final class C9165f {

    /* renamed from: a */
    public static final C9165f f31716a = m24795a(EnumC9168b.AUTOMATIC_GROUP);

    /* renamed from: b */
    public static final C9165f f31717b = m24795a(EnumC9168b.GROUP_DELETED);

    /* renamed from: c */
    public static final C9165f f31718c = m24795a(EnumC9168b.GROUP_NOT_ON_TEAM);

    /* renamed from: d */
    public static final C9165f f31719d = m24795a(EnumC9168b.OTHER);

    /* renamed from: e */
    EnumC9168b f31720e;

    /* renamed from: f */
    private String f31721f;

    /* renamed from: g */
    private String f31722g;

    /* renamed from: h */
    private String f31723h;

    /* renamed from: com.dropbox.core.v2.sharing.f$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f$1.class */
    public static final /* synthetic */ class C91661 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31724a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9168b.values().length];
            f31724a = iArr;
            try {
                iArr[EnumC9168b.AUTOMATIC_GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31724a[EnumC9168b.INVALID_DROPBOX_ID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31724a[EnumC9168b.INVALID_EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31724a[EnumC9168b.UNVERIFIED_DROPBOX_ID.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31724a[EnumC9168b.GROUP_DELETED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31724a[EnumC9168b.GROUP_NOT_ON_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31724a[EnumC9168b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.f$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f$a.class */
    public static final class C9167a extends AbstractC8559f<C9165f> {

        /* renamed from: a */
        public static final C9167a f31725a = new C9167a();

        C9167a() {
        }

        /* renamed from: a */
        public static C9165f m24787a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9165f c9165f;
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
                if ("automatic_group".equals(str)) {
                    c9165f = C9165f.f31716a;
                } else if ("invalid_dropbox_id".equals(str)) {
                    expectField("invalid_dropbox_id", jsonParser);
                    c9165f = C9165f.m24793a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("invalid_email".equals(str)) {
                    expectField("invalid_email", jsonParser);
                    c9165f = C9165f.m24791b(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else if ("unverified_dropbox_id".equals(str)) {
                    expectField("unverified_dropbox_id", jsonParser);
                    c9165f = C9165f.m24789c(C8548d.C8556h.f30459a.deserialize(jsonParser));
                } else {
                    c9165f = "group_deleted".equals(str) ? C9165f.f31717b : "group_not_on_team".equals(str) ? C9165f.f31718c : C9165f.f31719d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9165f;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C9165f c9165f, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C91661.f31724a[c9165f.f31720e.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("automatic_group");
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("invalid_dropbox_id", jsonGenerator);
                    jsonGenerator.writeFieldName("invalid_dropbox_id");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9165f.f31721f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("invalid_email", jsonGenerator);
                    jsonGenerator.writeFieldName("invalid_email");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9165f.f31722g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("unverified_dropbox_id", jsonGenerator);
                    jsonGenerator.writeFieldName("unverified_dropbox_id");
                    C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9165f.f31723h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("group_deleted");
                    return;
                case 6:
                    jsonGenerator.writeString("group_not_on_team");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24787a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.f$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f$b.class */
    public enum EnumC9168b {
        AUTOMATIC_GROUP,
        INVALID_DROPBOX_ID,
        INVALID_EMAIL,
        UNVERIFIED_DROPBOX_ID,
        GROUP_DELETED,
        GROUP_NOT_ON_TEAM,
        OTHER
    }

    static {
        new C9165f();
        new C9165f();
        new C9165f();
        new C9165f();
    }

    private C9165f() {
    }

    /* renamed from: a */
    private static C9165f m24795a(EnumC9168b enumC9168b) {
        C9165f c9165f = new C9165f();
        c9165f.f31720e = enumC9168b;
        return c9165f;
    }

    /* renamed from: a */
    public static C9165f m24793a(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            new C9165f();
            EnumC9168b enumC9168b = EnumC9168b.INVALID_DROPBOX_ID;
            C9165f c9165f = new C9165f();
            c9165f.f31720e = enumC9168b;
            c9165f.f31721f = str;
            return c9165f;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public static C9165f m24791b(String str) {
        if (str != null) {
            if (str.length() > 255) {
                throw new IllegalArgumentException("String is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C9165f();
            EnumC9168b enumC9168b = EnumC9168b.INVALID_EMAIL;
            C9165f c9165f = new C9165f();
            c9165f.f31720e = enumC9168b;
            c9165f.f31722g = str;
            return c9165f;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public static C9165f m24789c(String str) {
        if (str != null) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("String is shorter than 1");
            }
            new C9165f();
            EnumC9168b enumC9168b = EnumC9168b.UNVERIFIED_DROPBOX_ID;
            C9165f c9165f = new C9165f();
            c9165f.f31720e = enumC9168b;
            c9165f.f31723h = str;
            return c9165f;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9165f)) {
            return false;
        }
        C9165f c9165f = (C9165f) obj;
        if (this.f31720e != c9165f.f31720e) {
            return false;
        }
        switch (C91661.f31724a[this.f31720e.ordinal()]) {
            case 1:
                return true;
            case 2:
                String str = this.f31721f;
                String str2 = c9165f.f31721f;
                return str == str2 || str.equals(str2);
            case 3:
                String str3 = this.f31722g;
                String str4 = c9165f.f31722g;
                return str3 == str4 || str3.equals(str4);
            case 4:
                String str5 = this.f31723h;
                String str6 = c9165f.f31723h;
                return str5 == str6 || str5.equals(str6);
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31720e, this.f31721f, this.f31722g, this.f31723h});
    }

    public final String toString() {
        return C9167a.f31725a.serialize((C9167a) this, false);
    }
}

package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.team.EnumC9247aw;
import com.dropbox.core.p265v2.team.EnumC9263ba;
import com.dropbox.core.p265v2.team.EnumC9277bf;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.team.be */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be.class */
public final class C9273be {

    /* renamed from: a */
    public static final C9273be f31901a = m24719a(EnumC9276b.OTHER);

    /* renamed from: b */
    public static final C9273be f31902b = m24719a(EnumC9276b.INVALID_FOLDER_NAME);

    /* renamed from: c */
    public static final C9273be f31903c = m24719a(EnumC9276b.FOLDER_NAME_ALREADY_USED);

    /* renamed from: d */
    public static final C9273be f31904d = m24719a(EnumC9276b.FOLDER_NAME_RESERVED);

    /* renamed from: e */
    EnumC9276b f31905e;

    /* renamed from: f */
    private EnumC9247aw f31906f;

    /* renamed from: g */
    private EnumC9263ba f31907g;

    /* renamed from: h */
    private EnumC9277bf f31908h;

    /* renamed from: com.dropbox.core.v2.team.be$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be$1.class */
    static final /* synthetic */ class C92741 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31909a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9276b.values().length];
            f31909a = iArr;
            try {
                iArr[EnumC9276b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31909a[EnumC9276b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31909a[EnumC9276b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31909a[EnumC9276b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31909a[EnumC9276b.INVALID_FOLDER_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31909a[EnumC9276b.FOLDER_NAME_ALREADY_USED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31909a[EnumC9276b.FOLDER_NAME_RESERVED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.be$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be$a.class */
    static final class C9275a extends AbstractC8559f<C9273be> {

        /* renamed from: a */
        public static final C9275a f31910a = new C9275a();

        C9275a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9273be c9273be;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
                    c9273be = C9273be.m24721a(EnumC9247aw.C9249a.m24745a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    EnumC9263ba.C9265a c9265a = EnumC9263ba.C9265a.f31891a;
                    c9273be = C9273be.m24720a(EnumC9263ba.C9265a.m24728a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    EnumC9277bf.C9279a c9279a = EnumC9277bf.C9279a.f31912a;
                    c9273be = C9273be.m24717a(EnumC9277bf.C9279a.m24713a(jsonParser));
                } else if ("other".equals(str)) {
                    c9273be = C9273be.f31901a;
                } else if ("invalid_folder_name".equals(str)) {
                    c9273be = C9273be.f31902b;
                } else if ("folder_name_already_used".equals(str)) {
                    c9273be = C9273be.f31903c;
                } else if (!"folder_name_reserved".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c9273be = C9273be.f31904d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9273be;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9273be c9273be = (C9273be) obj;
            switch (C92741.f31909a[c9273be.f31905e.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
                    EnumC9247aw.C9249a.m24746a(c9273be.f31906f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("status_error", jsonGenerator);
                    jsonGenerator.writeFieldName("status_error");
                    EnumC9263ba.C9265a c9265a = EnumC9263ba.C9265a.f31891a;
                    EnumC9263ba.C9265a.m24729a(c9273be.f31907g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("team_shared_dropbox_error", jsonGenerator);
                    jsonGenerator.writeFieldName("team_shared_dropbox_error");
                    EnumC9277bf.C9279a c9279a = EnumC9277bf.C9279a.f31912a;
                    EnumC9277bf.C9279a.m24714a(c9273be.f31908h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("other");
                    return;
                case 5:
                    jsonGenerator.writeString("invalid_folder_name");
                    return;
                case 6:
                    jsonGenerator.writeString("folder_name_already_used");
                    return;
                case 7:
                    jsonGenerator.writeString("folder_name_reserved");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c9273be.f31905e);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.be$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be$b.class */
    public enum EnumC9276b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED
    }

    static {
        new C9273be();
        new C9273be();
        new C9273be();
        new C9273be();
    }

    private C9273be() {
    }

    /* renamed from: a */
    public static C9273be m24721a(EnumC9247aw enumC9247aw) {
        if (enumC9247aw != null) {
            new C9273be();
            EnumC9276b enumC9276b = EnumC9276b.ACCESS_ERROR;
            C9273be c9273be = new C9273be();
            c9273be.f31905e = enumC9276b;
            c9273be.f31906f = enumC9247aw;
            return c9273be;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9273be m24720a(EnumC9263ba enumC9263ba) {
        if (enumC9263ba != null) {
            new C9273be();
            EnumC9276b enumC9276b = EnumC9276b.STATUS_ERROR;
            C9273be c9273be = new C9273be();
            c9273be.f31905e = enumC9276b;
            c9273be.f31907g = enumC9263ba;
            return c9273be;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9273be m24719a(EnumC9276b enumC9276b) {
        C9273be c9273be = new C9273be();
        c9273be.f31905e = enumC9276b;
        return c9273be;
    }

    /* renamed from: a */
    public static C9273be m24717a(EnumC9277bf enumC9277bf) {
        if (enumC9277bf != null) {
            new C9273be();
            EnumC9276b enumC9276b = EnumC9276b.TEAM_SHARED_DROPBOX_ERROR;
            C9273be c9273be = new C9273be();
            c9273be.f31905e = enumC9276b;
            c9273be.f31908h = enumC9277bf;
            return c9273be;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9273be)) {
            return false;
        }
        C9273be c9273be = (C9273be) obj;
        if (this.f31905e != c9273be.f31905e) {
            return false;
        }
        switch (C92741.f31909a[this.f31905e.ordinal()]) {
            case 1:
                EnumC9247aw enumC9247aw = this.f31906f;
                EnumC9247aw enumC9247aw2 = c9273be.f31906f;
                return enumC9247aw == enumC9247aw2 || enumC9247aw.equals(enumC9247aw2);
            case 2:
                EnumC9263ba enumC9263ba = this.f31907g;
                EnumC9263ba enumC9263ba2 = c9273be.f31907g;
                return enumC9263ba == enumC9263ba2 || enumC9263ba.equals(enumC9263ba2);
            case 3:
                EnumC9277bf enumC9277bf = this.f31908h;
                EnumC9277bf enumC9277bf2 = c9273be.f31908h;
                return enumC9277bf == enumC9277bf2 || enumC9277bf.equals(enumC9277bf2);
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31905e, this.f31906f, this.f31907g, this.f31908h});
    }

    public final String toString() {
        return C9275a.f31910a.serialize((C9275a) this, false);
    }
}

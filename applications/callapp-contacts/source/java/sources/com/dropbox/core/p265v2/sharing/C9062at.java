package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9095bd;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.at */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at.class */
public final class C9062at {

    /* renamed from: a */
    public static final C9062at f31520a = m24876a(EnumC9065b.FOLDER_OWNER);

    /* renamed from: b */
    public static final C9062at f31521b = m24876a(EnumC9065b.GROUP_ACCESS);

    /* renamed from: c */
    public static final C9062at f31522c = m24876a(EnumC9065b.TEAM_FOLDER);

    /* renamed from: d */
    public static final C9062at f31523d = m24876a(EnumC9065b.NO_PERMISSION);

    /* renamed from: e */
    public static final C9062at f31524e = m24876a(EnumC9065b.TOO_MANY_FILES);

    /* renamed from: f */
    public static final C9062at f31525f = m24876a(EnumC9065b.OTHER);

    /* renamed from: g */
    EnumC9065b f31526g;

    /* renamed from: h */
    private EnumC9092bc f31527h;

    /* renamed from: i */
    private C9095bd f31528i;

    /* renamed from: com.dropbox.core.v2.sharing.at$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at$1.class */
    static final /* synthetic */ class C90631 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31529a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9065b.values().length];
            f31529a = iArr;
            try {
                iArr[EnumC9065b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31529a[EnumC9065b.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31529a[EnumC9065b.FOLDER_OWNER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31529a[EnumC9065b.GROUP_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31529a[EnumC9065b.TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31529a[EnumC9065b.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31529a[EnumC9065b.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31529a[EnumC9065b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.at$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at$a.class */
    static final class C9064a extends AbstractC8559f<C9062at> {

        /* renamed from: a */
        public static final C9064a f31530a = new C9064a();

        C9064a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9062at c9062at;
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
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    c9062at = C9062at.m24874a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else if ("member_error".equals(str)) {
                    expectField("member_error", jsonParser);
                    C9095bd.C9097a c9097a = C9095bd.C9097a.f31589a;
                    c9062at = C9062at.m24873a(C9095bd.C9097a.m24851a(jsonParser));
                } else {
                    c9062at = "folder_owner".equals(str) ? C9062at.f31520a : "group_access".equals(str) ? C9062at.f31521b : "team_folder".equals(str) ? C9062at.f31522c : "no_permission".equals(str) ? C9062at.f31523d : "too_many_files".equals(str) ? C9062at.f31524e : C9062at.f31525f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9062at;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9062at c9062at = (C9062at) obj;
            switch (C90631.f31529a[c9062at.f31526g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    EnumC9092bc.C9094a.m24857a(c9062at.f31527h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("member_error", jsonGenerator);
                    jsonGenerator.writeFieldName("member_error");
                    C9095bd.C9097a.f31589a.serialize(c9062at.f31528i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("folder_owner");
                    return;
                case 4:
                    jsonGenerator.writeString("group_access");
                    return;
                case 5:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_files");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.at$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at$b.class */
    public enum EnumC9065b {
        ACCESS_ERROR,
        MEMBER_ERROR,
        FOLDER_OWNER,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new C9062at();
        new C9062at();
        new C9062at();
        new C9062at();
        new C9062at();
        new C9062at();
    }

    private C9062at() {
    }

    /* renamed from: a */
    private static C9062at m24876a(EnumC9065b enumC9065b) {
        C9062at c9062at = new C9062at();
        c9062at.f31526g = enumC9065b;
        return c9062at;
    }

    /* renamed from: a */
    public static C9062at m24874a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9062at();
            EnumC9065b enumC9065b = EnumC9065b.ACCESS_ERROR;
            C9062at c9062at = new C9062at();
            c9062at.f31526g = enumC9065b;
            c9062at.f31527h = enumC9092bc;
            return c9062at;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9062at m24873a(C9095bd c9095bd) {
        if (c9095bd != null) {
            new C9062at();
            EnumC9065b enumC9065b = EnumC9065b.MEMBER_ERROR;
            C9062at c9062at = new C9062at();
            c9062at.f31526g = enumC9065b;
            c9062at.f31528i = c9095bd;
            return c9062at;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9062at)) {
            return false;
        }
        C9062at c9062at = (C9062at) obj;
        if (this.f31526g != c9062at.f31526g) {
            return false;
        }
        switch (C90631.f31529a[this.f31526g.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31527h;
                EnumC9092bc enumC9092bc2 = c9062at.f31527h;
                return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
            case 2:
                C9095bd c9095bd = this.f31528i;
                C9095bd c9095bd2 = c9062at.f31528i;
                return c9095bd == c9095bd2 || c9095bd.equals(c9095bd2);
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
        return Arrays.hashCode(new Object[]{this.f31526g, this.f31527h, this.f31528i});
    }

    public final String toString() {
        return C9064a.f31530a.serialize((C9064a) this, false);
    }
}

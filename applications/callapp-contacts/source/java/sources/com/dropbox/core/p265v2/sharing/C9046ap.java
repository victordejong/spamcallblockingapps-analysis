package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9208v;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.ap */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap.class */
public final class C9046ap {

    /* renamed from: a */
    public static final C9046ap f31476a = m24891a(EnumC9049b.USER_NOT_SAME_TEAM_AS_OWNER);

    /* renamed from: b */
    public static final C9046ap f31477b = m24891a(EnumC9049b.USER_NOT_ALLOWED_BY_OWNER);

    /* renamed from: c */
    public static final C9046ap f31478c = m24891a(EnumC9049b.TARGET_IS_INDIRECT_MEMBER);

    /* renamed from: d */
    public static final C9046ap f31479d = m24891a(EnumC9049b.TARGET_IS_OWNER);

    /* renamed from: e */
    public static final C9046ap f31480e = m24891a(EnumC9049b.TARGET_IS_SELF);

    /* renamed from: f */
    public static final C9046ap f31481f = m24891a(EnumC9049b.TARGET_NOT_ACTIVE);

    /* renamed from: g */
    public static final C9046ap f31482g = m24891a(EnumC9049b.FOLDER_IS_LIMITED_TEAM_FOLDER);

    /* renamed from: h */
    public static final C9046ap f31483h = m24891a(EnumC9049b.OWNER_NOT_ON_TEAM);

    /* renamed from: i */
    public static final C9046ap f31484i = m24891a(EnumC9049b.PERMISSION_DENIED);

    /* renamed from: j */
    public static final C9046ap f31485j = m24891a(EnumC9049b.RESTRICTED_BY_TEAM);

    /* renamed from: k */
    public static final C9046ap f31486k = m24891a(EnumC9049b.USER_ACCOUNT_TYPE);

    /* renamed from: l */
    public static final C9046ap f31487l = m24891a(EnumC9049b.USER_NOT_ON_TEAM);

    /* renamed from: m */
    public static final C9046ap f31488m = m24891a(EnumC9049b.FOLDER_IS_INSIDE_SHARED_FOLDER);

    /* renamed from: n */
    public static final C9046ap f31489n = m24891a(EnumC9049b.RESTRICTED_BY_PARENT_FOLDER);

    /* renamed from: o */
    public static final C9046ap f31490o = m24891a(EnumC9049b.OTHER);

    /* renamed from: p */
    EnumC9049b f31491p;

    /* renamed from: q */
    private C9208v f31492q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.ap$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap$1.class */
    public static final /* synthetic */ class C90471 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31493a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c5 -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c9 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cd -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d1 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d5 -> B:73:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:69:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dd -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e1 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e5 -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e9 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ed -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f1 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:71:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00f9 -> B:67:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00fd -> B:79:0x00b8). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9049b.values().length];
            f31493a = iArr;
            try {
                iArr[EnumC9049b.USER_NOT_SAME_TEAM_AS_OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31493a[EnumC9049b.USER_NOT_ALLOWED_BY_OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31493a[EnumC9049b.TARGET_IS_INDIRECT_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31493a[EnumC9049b.TARGET_IS_OWNER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31493a[EnumC9049b.TARGET_IS_SELF.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31493a[EnumC9049b.TARGET_NOT_ACTIVE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31493a[EnumC9049b.FOLDER_IS_LIMITED_TEAM_FOLDER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31493a[EnumC9049b.OWNER_NOT_ON_TEAM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31493a[EnumC9049b.PERMISSION_DENIED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31493a[EnumC9049b.RESTRICTED_BY_TEAM.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31493a[EnumC9049b.USER_ACCOUNT_TYPE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31493a[EnumC9049b.USER_NOT_ON_TEAM.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31493a[EnumC9049b.FOLDER_IS_INSIDE_SHARED_FOLDER.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31493a[EnumC9049b.RESTRICTED_BY_PARENT_FOLDER.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f31493a[EnumC9049b.INSUFFICIENT_PLAN.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f31493a[EnumC9049b.OTHER.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ap$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap$a.class */
    static final class C9048a extends AbstractC8559f<C9046ap> {

        /* renamed from: a */
        public static final C9048a f31494a = new C9048a();

        C9048a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C9046ap c9046ap;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("user_not_same_team_as_owner".equals(str)) {
                    c9046ap = C9046ap.f31476a;
                } else if ("user_not_allowed_by_owner".equals(str)) {
                    c9046ap = C9046ap.f31477b;
                } else if ("target_is_indirect_member".equals(str)) {
                    c9046ap = C9046ap.f31478c;
                } else if ("target_is_owner".equals(str)) {
                    c9046ap = C9046ap.f31479d;
                } else if ("target_is_self".equals(str)) {
                    c9046ap = C9046ap.f31480e;
                } else if ("target_not_active".equals(str)) {
                    c9046ap = C9046ap.f31481f;
                } else if ("folder_is_limited_team_folder".equals(str)) {
                    c9046ap = C9046ap.f31482g;
                } else if ("owner_not_on_team".equals(str)) {
                    c9046ap = C9046ap.f31483h;
                } else if ("permission_denied".equals(str)) {
                    c9046ap = C9046ap.f31484i;
                } else if ("restricted_by_team".equals(str)) {
                    c9046ap = C9046ap.f31485j;
                } else if ("user_account_type".equals(str)) {
                    c9046ap = C9046ap.f31486k;
                } else if ("user_not_on_team".equals(str)) {
                    c9046ap = C9046ap.f31487l;
                } else if ("folder_is_inside_shared_folder".equals(str)) {
                    c9046ap = C9046ap.f31488m;
                } else if ("restricted_by_parent_folder".equals(str)) {
                    c9046ap = C9046ap.f31489n;
                } else if ("insufficient_plan".equals(str)) {
                    C9208v.C9209a c9209a = C9208v.C9209a.f31788a;
                    c9046ap = C9046ap.m24889a(C9208v.C9209a.m24756a(jsonParser, true));
                } else {
                    c9046ap = C9046ap.f31490o;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9046ap;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9046ap c9046ap = (C9046ap) obj;
            switch (C90471.f31493a[c9046ap.f31491p.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("user_not_same_team_as_owner");
                    return;
                case 2:
                    jsonGenerator.writeString("user_not_allowed_by_owner");
                    return;
                case 3:
                    jsonGenerator.writeString("target_is_indirect_member");
                    return;
                case 4:
                    jsonGenerator.writeString("target_is_owner");
                    return;
                case 5:
                    jsonGenerator.writeString("target_is_self");
                    return;
                case 6:
                    jsonGenerator.writeString("target_not_active");
                    return;
                case 7:
                    jsonGenerator.writeString("folder_is_limited_team_folder");
                    return;
                case 8:
                    jsonGenerator.writeString("owner_not_on_team");
                    return;
                case 9:
                    jsonGenerator.writeString("permission_denied");
                    return;
                case 10:
                    jsonGenerator.writeString("restricted_by_team");
                    return;
                case 11:
                    jsonGenerator.writeString("user_account_type");
                    return;
                case 12:
                    jsonGenerator.writeString("user_not_on_team");
                    return;
                case 13:
                    jsonGenerator.writeString("folder_is_inside_shared_folder");
                    return;
                case 14:
                    jsonGenerator.writeString("restricted_by_parent_folder");
                    return;
                case 15:
                    jsonGenerator.writeStartObject();
                    writeTag("insufficient_plan", jsonGenerator);
                    C9208v.C9209a c9209a = C9208v.C9209a.f31788a;
                    C9208v.C9209a.m24757a(c9046ap.f31492q, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ap$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap$b.class */
    public enum EnumC9049b {
        USER_NOT_SAME_TEAM_AS_OWNER,
        USER_NOT_ALLOWED_BY_OWNER,
        TARGET_IS_INDIRECT_MEMBER,
        TARGET_IS_OWNER,
        TARGET_IS_SELF,
        TARGET_NOT_ACTIVE,
        FOLDER_IS_LIMITED_TEAM_FOLDER,
        OWNER_NOT_ON_TEAM,
        PERMISSION_DENIED,
        RESTRICTED_BY_TEAM,
        USER_ACCOUNT_TYPE,
        USER_NOT_ON_TEAM,
        FOLDER_IS_INSIDE_SHARED_FOLDER,
        RESTRICTED_BY_PARENT_FOLDER,
        INSUFFICIENT_PLAN,
        OTHER
    }

    static {
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
        new C9046ap();
    }

    private C9046ap() {
    }

    /* renamed from: a */
    private static C9046ap m24891a(EnumC9049b enumC9049b) {
        C9046ap c9046ap = new C9046ap();
        c9046ap.f31491p = enumC9049b;
        return c9046ap;
    }

    /* renamed from: a */
    public static C9046ap m24889a(C9208v c9208v) {
        if (c9208v != null) {
            new C9046ap();
            EnumC9049b enumC9049b = EnumC9049b.INSUFFICIENT_PLAN;
            C9046ap c9046ap = new C9046ap();
            c9046ap.f31491p = enumC9049b;
            c9046ap.f31492q = c9208v;
            return c9046ap;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9046ap)) {
            return false;
        }
        C9046ap c9046ap = (C9046ap) obj;
        if (this.f31491p != c9046ap.f31491p) {
            return false;
        }
        switch (C90471.f31493a[this.f31491p.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return true;
            case 15:
                C9208v c9208v = this.f31492q;
                C9208v c9208v2 = c9046ap.f31492q;
                return c9208v == c9208v2 || c9208v.equals(c9208v2);
            case 16:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31491p, this.f31492q});
    }

    public final String toString() {
        return C9048a.f31494a.serialize((C9048a) this, false);
    }
}

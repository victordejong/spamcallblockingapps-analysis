package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.v;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap.class */
public final class ap {

    /* renamed from: a  reason: collision with root package name */
    public static final ap f18509a = a(b.USER_NOT_SAME_TEAM_AS_OWNER);

    /* renamed from: b  reason: collision with root package name */
    public static final ap f18510b = a(b.USER_NOT_ALLOWED_BY_OWNER);

    /* renamed from: c  reason: collision with root package name */
    public static final ap f18511c = a(b.TARGET_IS_INDIRECT_MEMBER);

    /* renamed from: d  reason: collision with root package name */
    public static final ap f18512d = a(b.TARGET_IS_OWNER);
    public static final ap e = a(b.TARGET_IS_SELF);
    public static final ap f = a(b.TARGET_NOT_ACTIVE);
    public static final ap g = a(b.FOLDER_IS_LIMITED_TEAM_FOLDER);
    public static final ap h = a(b.OWNER_NOT_ON_TEAM);
    public static final ap i = a(b.PERMISSION_DENIED);
    public static final ap j = a(b.RESTRICTED_BY_TEAM);
    public static final ap k = a(b.USER_ACCOUNT_TYPE);
    public static final ap l = a(b.USER_NOT_ON_TEAM);
    public static final ap m = a(b.FOLDER_IS_INSIDE_SHARED_FOLDER);
    public static final ap n = a(b.RESTRICTED_BY_PARENT_FOLDER);
    public static final ap o = a(b.OTHER);
    b p;
    private v q;

    /* renamed from: com.dropbox.core.v2.sharing.ap$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18513a;

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
            int[] iArr = new int[b.values().length];
            f18513a = iArr;
            try {
                iArr[b.USER_NOT_SAME_TEAM_AS_OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18513a[b.USER_NOT_ALLOWED_BY_OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18513a[b.TARGET_IS_INDIRECT_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18513a[b.TARGET_IS_OWNER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18513a[b.TARGET_IS_SELF.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18513a[b.TARGET_NOT_ACTIVE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18513a[b.FOLDER_IS_LIMITED_TEAM_FOLDER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18513a[b.OWNER_NOT_ON_TEAM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18513a[b.PERMISSION_DENIED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f18513a[b.RESTRICTED_BY_TEAM.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f18513a[b.USER_ACCOUNT_TYPE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f18513a[b.USER_NOT_ON_TEAM.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f18513a[b.FOLDER_IS_INSIDE_SHARED_FOLDER.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f18513a[b.RESTRICTED_BY_PARENT_FOLDER.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f18513a[b.INSUFFICIENT_PLAN.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f18513a[b.OTHER.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap$a.class */
    static final class a extends f<ap> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18514a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            ap apVar;
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
                    apVar = ap.f18509a;
                } else if ("user_not_allowed_by_owner".equals(str)) {
                    apVar = ap.f18510b;
                } else if ("target_is_indirect_member".equals(str)) {
                    apVar = ap.f18511c;
                } else if ("target_is_owner".equals(str)) {
                    apVar = ap.f18512d;
                } else if ("target_is_self".equals(str)) {
                    apVar = ap.e;
                } else if ("target_not_active".equals(str)) {
                    apVar = ap.f;
                } else if ("folder_is_limited_team_folder".equals(str)) {
                    apVar = ap.g;
                } else if ("owner_not_on_team".equals(str)) {
                    apVar = ap.h;
                } else if ("permission_denied".equals(str)) {
                    apVar = ap.i;
                } else if ("restricted_by_team".equals(str)) {
                    apVar = ap.j;
                } else if ("user_account_type".equals(str)) {
                    apVar = ap.k;
                } else if ("user_not_on_team".equals(str)) {
                    apVar = ap.l;
                } else if ("folder_is_inside_shared_folder".equals(str)) {
                    apVar = ap.m;
                } else if ("restricted_by_parent_folder".equals(str)) {
                    apVar = ap.n;
                } else if ("insufficient_plan".equals(str)) {
                    v.a aVar = v.a.f18718a;
                    apVar = ap.a(v.a.a(jsonParser, true));
                } else {
                    apVar = ap.o;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return apVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ap apVar = (ap) obj;
            switch (AnonymousClass1.f18513a[apVar.p.ordinal()]) {
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
                    v.a aVar = v.a.f18718a;
                    v.a.a(apVar.q, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ap$b.class */
    public enum b {
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
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
    }

    private ap() {
    }

    private static ap a(b bVar) {
        ap apVar = new ap();
        apVar.p = bVar;
        return apVar;
    }

    public static ap a(v vVar) {
        if (vVar != null) {
            new ap();
            b bVar = b.INSUFFICIENT_PLAN;
            ap apVar = new ap();
            apVar.p = bVar;
            apVar.q = vVar;
            return apVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ap)) {
            return false;
        }
        ap apVar = (ap) obj;
        if (this.p != apVar.p) {
            return false;
        }
        switch (AnonymousClass1.f18513a[this.p.ordinal()]) {
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
                v vVar = this.q;
                v vVar2 = apVar.q;
                return vVar == vVar2 || vVar.equals(vVar2);
            case 16:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.p, this.q});
    }

    public final String toString() {
        return a.f18514a.serialize((a) this, false);
    }
}

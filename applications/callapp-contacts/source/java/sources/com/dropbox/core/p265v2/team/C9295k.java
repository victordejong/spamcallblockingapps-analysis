package com.dropbox.core.p265v2.team;

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
import java.util.List;
/* renamed from: com.dropbox.core.v2.team.k */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k.class */
public final class C9295k {

    /* renamed from: a */
    public static final C9295k f31921a = m24704a(EnumC9298b.GROUP_NOT_FOUND);

    /* renamed from: b */
    public static final C9295k f31922b = m24704a(EnumC9298b.OTHER);

    /* renamed from: c */
    public static final C9295k f31923c = m24704a(EnumC9298b.SYSTEM_MANAGED_GROUP_DISALLOWED);

    /* renamed from: d */
    public static final C9295k f31924d = m24704a(EnumC9298b.DUPLICATE_USER);

    /* renamed from: e */
    public static final C9295k f31925e = m24704a(EnumC9298b.GROUP_NOT_IN_TEAM);

    /* renamed from: f */
    public static final C9295k f31926f = m24704a(EnumC9298b.USER_MUST_BE_ACTIVE_TO_BE_OWNER);

    /* renamed from: g */
    EnumC9298b f31927g;

    /* renamed from: h */
    private List<String> f31928h;

    /* renamed from: i */
    private List<String> f31929i;

    /* renamed from: j */
    private List<String> f31930j;

    /* renamed from: com.dropbox.core.v2.team.k$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k$1.class */
    static final /* synthetic */ class C92961 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31931a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9298b.values().length];
            f31931a = iArr;
            try {
                iArr[EnumC9298b.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31931a[EnumC9298b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31931a[EnumC9298b.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31931a[EnumC9298b.DUPLICATE_USER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31931a[EnumC9298b.GROUP_NOT_IN_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31931a[EnumC9298b.MEMBERS_NOT_IN_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31931a[EnumC9298b.USERS_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31931a[EnumC9298b.USER_MUST_BE_ACTIVE_TO_BE_OWNER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31931a[EnumC9298b.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.k$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k$a.class */
    static final class C9297a extends AbstractC8559f<C9295k> {

        /* renamed from: a */
        public static final C9297a f31932a = new C9297a();

        C9297a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9295k c9295k;
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
                if ("group_not_found".equals(str)) {
                    c9295k = C9295k.f31921a;
                } else if ("other".equals(str)) {
                    c9295k = C9295k.f31922b;
                } else if ("system_managed_group_disallowed".equals(str)) {
                    c9295k = C9295k.f31923c;
                } else if ("duplicate_user".equals(str)) {
                    c9295k = C9295k.f31924d;
                } else if ("group_not_in_team".equals(str)) {
                    c9295k = C9295k.f31925e;
                } else if ("members_not_in_team".equals(str)) {
                    expectField("members_not_in_team", jsonParser);
                    c9295k = C9295k.m24702a((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                } else if ("users_not_found".equals(str)) {
                    expectField("users_not_found", jsonParser);
                    c9295k = C9295k.m24700b((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                } else if ("user_must_be_active_to_be_owner".equals(str)) {
                    c9295k = C9295k.f31926f;
                } else if (!"user_cannot_be_manager_of_company_managed_group".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("user_cannot_be_manager_of_company_managed_group", jsonParser);
                    c9295k = C9295k.m24698c((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9295k;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9295k c9295k = (C9295k) obj;
            switch (C92961.f31931a[c9295k.f31927g.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("group_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("other");
                    return;
                case 3:
                    jsonGenerator.writeString("system_managed_group_disallowed");
                    return;
                case 4:
                    jsonGenerator.writeString("duplicate_user");
                    return;
                case 5:
                    jsonGenerator.writeString("group_not_in_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("members_not_in_team", jsonGenerator);
                    jsonGenerator.writeFieldName("members_not_in_team");
                    C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9295k.f31928h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("users_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("users_not_found");
                    C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9295k.f31929i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("user_must_be_active_to_be_owner");
                    return;
                case 9:
                    jsonGenerator.writeStartObject();
                    writeTag("user_cannot_be_manager_of_company_managed_group", jsonGenerator);
                    jsonGenerator.writeFieldName("user_cannot_be_manager_of_company_managed_group");
                    C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9295k.f31930j, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c9295k.f31927g);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.k$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k$b.class */
    public enum EnumC9298b {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        DUPLICATE_USER,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND,
        USER_MUST_BE_ACTIVE_TO_BE_OWNER,
        USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP
    }

    static {
        new C9295k();
        new C9295k();
        new C9295k();
        new C9295k();
        new C9295k();
        new C9295k();
    }

    private C9295k() {
    }

    /* renamed from: a */
    private static C9295k m24704a(EnumC9298b enumC9298b) {
        C9295k c9295k = new C9295k();
        c9295k.f31927g = enumC9298b;
        return c9295k;
    }

    /* renamed from: a */
    public static C9295k m24702a(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new C9295k();
            EnumC9298b enumC9298b = EnumC9298b.MEMBERS_NOT_IN_TEAM;
            C9295k c9295k = new C9295k();
            c9295k.f31927g = enumC9298b;
            c9295k.f31928h = list;
            return c9295k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public static C9295k m24700b(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new C9295k();
            EnumC9298b enumC9298b = EnumC9298b.USERS_NOT_FOUND;
            C9295k c9295k = new C9295k();
            c9295k.f31927g = enumC9298b;
            c9295k.f31929i = list;
            return c9295k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public static C9295k m24698c(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new C9295k();
            EnumC9298b enumC9298b = EnumC9298b.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
            C9295k c9295k = new C9295k();
            c9295k.f31927g = enumC9298b;
            c9295k.f31930j = list;
            return c9295k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9295k)) {
            return false;
        }
        C9295k c9295k = (C9295k) obj;
        if (this.f31927g != c9295k.f31927g) {
            return false;
        }
        switch (C92961.f31931a[this.f31927g.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                List<String> list = this.f31928h;
                List<String> list2 = c9295k.f31928h;
                return list == list2 || list.equals(list2);
            case 7:
                List<String> list3 = this.f31929i;
                List<String> list4 = c9295k.f31929i;
                return list3 == list4 || list3.equals(list4);
            case 8:
                return true;
            case 9:
                List<String> list5 = this.f31930j;
                List<String> list6 = c9295k.f31930j;
                return list5 == list6 || list5.equals(list6);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31927g, this.f31928h, this.f31929i, this.f31930j});
    }

    public final String toString() {
        return C9297a.f31932a.serialize((C9297a) this, false);
    }
}

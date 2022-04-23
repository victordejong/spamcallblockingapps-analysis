package com.dropbox.core.v2.team;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f18838a = a(b.GROUP_NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final k f18839b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final k f18840c = a(b.SYSTEM_MANAGED_GROUP_DISALLOWED);

    /* renamed from: d  reason: collision with root package name */
    public static final k f18841d = a(b.DUPLICATE_USER);
    public static final k e = a(b.GROUP_NOT_IN_TEAM);
    public static final k f = a(b.USER_MUST_BE_ACTIVE_TO_BE_OWNER);
    b g;
    private List<String> h;
    private List<String> i;
    private List<String> j;

    /* renamed from: com.dropbox.core.v2.team.k$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18842a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18842a = iArr;
            try {
                iArr[b.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18842a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18842a[b.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18842a[b.DUPLICATE_USER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18842a[b.GROUP_NOT_IN_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18842a[b.MEMBERS_NOT_IN_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18842a[b.USERS_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18842a[b.USER_MUST_BE_ACTIVE_TO_BE_OWNER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18842a[b.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k$a.class */
    static final class a extends f<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18843a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            k kVar;
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
                    kVar = k.f18838a;
                } else if ("other".equals(str)) {
                    kVar = k.f18839b;
                } else if ("system_managed_group_disallowed".equals(str)) {
                    kVar = k.f18840c;
                } else if ("duplicate_user".equals(str)) {
                    kVar = k.f18841d;
                } else if ("group_not_in_team".equals(str)) {
                    kVar = k.e;
                } else if ("members_not_in_team".equals(str)) {
                    expectField("members_not_in_team", jsonParser);
                    kVar = k.a((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else if ("users_not_found".equals(str)) {
                    expectField("users_not_found", jsonParser);
                    kVar = k.b((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else if ("user_must_be_active_to_be_owner".equals(str)) {
                    kVar = k.f;
                } else if ("user_cannot_be_manager_of_company_managed_group".equals(str)) {
                    expectField("user_cannot_be_manager_of_company_managed_group", jsonParser);
                    kVar = k.c((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return kVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            k kVar = (k) obj;
            switch (AnonymousClass1.f18842a[kVar.g.ordinal()]) {
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
                    d.b(d.h.f17717a).serialize((c) kVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("users_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("users_not_found");
                    d.b(d.h.f17717a).serialize((c) kVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("user_must_be_active_to_be_owner");
                    return;
                case 9:
                    jsonGenerator.writeStartObject();
                    writeTag("user_cannot_be_manager_of_company_managed_group", jsonGenerator);
                    jsonGenerator.writeFieldName("user_cannot_be_manager_of_company_managed_group");
                    d.b(d.h.f17717a).serialize((c) kVar.j, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + kVar.g);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/k$b.class */
    public enum b {
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
        new k();
        new k();
        new k();
        new k();
        new k();
        new k();
    }

    private k() {
    }

    private static k a(b bVar) {
        k kVar = new k();
        kVar.g = bVar;
        return kVar;
    }

    public static k a(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new k();
            b bVar = b.MEMBERS_NOT_IN_TEAM;
            k kVar = new k();
            kVar.g = bVar;
            kVar.h = list;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static k b(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new k();
            b bVar = b.USERS_NOT_FOUND;
            k kVar = new k();
            kVar.g = bVar;
            kVar.i = list;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static k c(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new k();
            b bVar = b.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
            k kVar = new k();
            kVar.g = bVar;
            kVar.j = list;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.g != kVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18842a[this.g.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                List<String> list = this.h;
                List<String> list2 = kVar.h;
                return list == list2 || list.equals(list2);
            case 7:
                List<String> list3 = this.i;
                List<String> list4 = kVar.i;
                return list3 == list4 || list3.equals(list4);
            case 8:
                return true;
            case 9:
                List<String> list5 = this.j;
                List<String> list6 = kVar.j;
                return list5 == list6 || list5.equals(list6);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.g, this.h, this.i, this.j});
    }

    public final String toString() {
        return a.f18843a.serialize((a) this, false);
    }
}

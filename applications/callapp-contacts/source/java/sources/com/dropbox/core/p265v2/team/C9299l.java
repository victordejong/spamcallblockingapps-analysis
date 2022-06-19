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
/* renamed from: com.dropbox.core.v2.team.l */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l.class */
public final class C9299l {

    /* renamed from: a */
    public static final C9299l f31933a = m24697a(EnumC9302b.GROUP_NOT_FOUND);

    /* renamed from: b */
    public static final C9299l f31934b = m24697a(EnumC9302b.OTHER);

    /* renamed from: c */
    public static final C9299l f31935c = m24697a(EnumC9302b.SYSTEM_MANAGED_GROUP_DISALLOWED);

    /* renamed from: d */
    public static final C9299l f31936d = m24697a(EnumC9302b.MEMBER_NOT_IN_GROUP);

    /* renamed from: e */
    public static final C9299l f31937e = m24697a(EnumC9302b.GROUP_NOT_IN_TEAM);

    /* renamed from: f */
    EnumC9302b f31938f;

    /* renamed from: g */
    private List<String> f31939g;

    /* renamed from: h */
    private List<String> f31940h;

    /* renamed from: com.dropbox.core.v2.team.l$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l$1.class */
    static final /* synthetic */ class C93001 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31941a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9302b.values().length];
            f31941a = iArr;
            try {
                iArr[EnumC9302b.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31941a[EnumC9302b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31941a[EnumC9302b.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31941a[EnumC9302b.MEMBER_NOT_IN_GROUP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31941a[EnumC9302b.GROUP_NOT_IN_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31941a[EnumC9302b.MEMBERS_NOT_IN_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31941a[EnumC9302b.USERS_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.l$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l$a.class */
    static final class C9301a extends AbstractC8559f<C9299l> {

        /* renamed from: a */
        public static final C9301a f31942a = new C9301a();

        C9301a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9299l c9299l;
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
                    c9299l = C9299l.f31933a;
                } else if ("other".equals(str)) {
                    c9299l = C9299l.f31934b;
                } else if ("system_managed_group_disallowed".equals(str)) {
                    c9299l = C9299l.f31935c;
                } else if ("member_not_in_group".equals(str)) {
                    c9299l = C9299l.f31936d;
                } else if ("group_not_in_team".equals(str)) {
                    c9299l = C9299l.f31937e;
                } else if ("members_not_in_team".equals(str)) {
                    expectField("members_not_in_team", jsonParser);
                    c9299l = C9299l.m24695a((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                } else if (!"users_not_found".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("users_not_found", jsonParser);
                    c9299l = C9299l.m24693b((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9299l;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9299l c9299l = (C9299l) obj;
            switch (C93001.f31941a[c9299l.f31938f.ordinal()]) {
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
                    jsonGenerator.writeString("member_not_in_group");
                    return;
                case 5:
                    jsonGenerator.writeString("group_not_in_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("members_not_in_team", jsonGenerator);
                    jsonGenerator.writeFieldName("members_not_in_team");
                    C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9299l.f31939g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("users_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("users_not_found");
                    C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9299l.f31940h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c9299l.f31938f);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.l$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l$b.class */
    public enum EnumC9302b {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        MEMBER_NOT_IN_GROUP,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND
    }

    static {
        new C9299l();
        new C9299l();
        new C9299l();
        new C9299l();
        new C9299l();
    }

    private C9299l() {
    }

    /* renamed from: a */
    private static C9299l m24697a(EnumC9302b enumC9302b) {
        C9299l c9299l = new C9299l();
        c9299l.f31938f = enumC9302b;
        return c9299l;
    }

    /* renamed from: a */
    public static C9299l m24695a(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new C9299l();
            EnumC9302b enumC9302b = EnumC9302b.MEMBERS_NOT_IN_TEAM;
            C9299l c9299l = new C9299l();
            c9299l.f31938f = enumC9302b;
            c9299l.f31939g = list;
            return c9299l;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public static C9299l m24693b(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new C9299l();
            EnumC9302b enumC9302b = EnumC9302b.USERS_NOT_FOUND;
            C9299l c9299l = new C9299l();
            c9299l.f31938f = enumC9302b;
            c9299l.f31940h = list;
            return c9299l;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9299l)) {
            return false;
        }
        C9299l c9299l = (C9299l) obj;
        if (this.f31938f != c9299l.f31938f) {
            return false;
        }
        switch (C93001.f31941a[this.f31938f.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                List<String> list = this.f31939g;
                List<String> list2 = c9299l.f31939g;
                return list == list2 || list.equals(list2);
            case 7:
                List<String> list3 = this.f31940h;
                List<String> list4 = c9299l.f31940h;
                return list3 == list4 || list3.equals(list4);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31938f, this.f31939g, this.f31940h});
    }

    public final String toString() {
        return C9301a.f31942a.serialize((C9301a) this, false);
    }
}

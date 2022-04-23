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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f18844a = a(b.GROUP_NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final l f18845b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final l f18846c = a(b.SYSTEM_MANAGED_GROUP_DISALLOWED);

    /* renamed from: d  reason: collision with root package name */
    public static final l f18847d = a(b.MEMBER_NOT_IN_GROUP);
    public static final l e = a(b.GROUP_NOT_IN_TEAM);
    b f;
    private List<String> g;
    private List<String> h;

    /* renamed from: com.dropbox.core.v2.team.l$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18848a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18848a = iArr;
            try {
                iArr[b.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18848a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18848a[b.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18848a[b.MEMBER_NOT_IN_GROUP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18848a[b.GROUP_NOT_IN_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18848a[b.MEMBERS_NOT_IN_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18848a[b.USERS_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l$a.class */
    static final class a extends f<l> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18849a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            l lVar;
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
                    lVar = l.f18844a;
                } else if ("other".equals(str)) {
                    lVar = l.f18845b;
                } else if ("system_managed_group_disallowed".equals(str)) {
                    lVar = l.f18846c;
                } else if ("member_not_in_group".equals(str)) {
                    lVar = l.f18847d;
                } else if ("group_not_in_team".equals(str)) {
                    lVar = l.e;
                } else if ("members_not_in_team".equals(str)) {
                    expectField("members_not_in_team", jsonParser);
                    lVar = l.a((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else if ("users_not_found".equals(str)) {
                    expectField("users_not_found", jsonParser);
                    lVar = l.b((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return lVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            l lVar = (l) obj;
            switch (AnonymousClass1.f18848a[lVar.f.ordinal()]) {
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
                    d.b(d.h.f17717a).serialize((c) lVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("users_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("users_not_found");
                    d.b(d.h.f17717a).serialize((c) lVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + lVar.f);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/l$b.class */
    public enum b {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        MEMBER_NOT_IN_GROUP,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND
    }

    static {
        new l();
        new l();
        new l();
        new l();
        new l();
    }

    private l() {
    }

    private static l a(b bVar) {
        l lVar = new l();
        lVar.f = bVar;
        return lVar;
    }

    public static l a(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new l();
            b bVar = b.MEMBERS_NOT_IN_TEAM;
            l lVar = new l();
            lVar.f = bVar;
            lVar.g = list;
            return lVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static l b(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
            }
            new l();
            b bVar = b.USERS_NOT_FOUND;
            l lVar = new l();
            lVar.f = bVar;
            lVar.h = list;
            return lVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f != lVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18848a[this.f.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                List<String> list = this.g;
                List<String> list2 = lVar.g;
                return list == list2 || list.equals(list2);
            case 7:
                List<String> list3 = this.h;
                List<String> list4 = lVar.h;
                return list3 == list4 || list3.equals(list4);
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f, this.g, this.h});
    }

    public final String toString() {
        return a.f18849a.serialize((a) this, false);
    }
}

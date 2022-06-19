package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bu */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu.class */
public final class C9147bu {

    /* renamed from: a */
    public static final C9147bu f31677a = m24815a(EnumC9150b.NOT_ON_TEAM);

    /* renamed from: b */
    public static final C9147bu f31678b = m24815a(EnumC9150b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);

    /* renamed from: c */
    public static final C9147bu f31679c = m24815a(EnumC9150b.DISALLOWED_SHARED_LINK_POLICY);

    /* renamed from: d */
    public static final C9147bu f31680d = m24815a(EnumC9150b.NO_PERMISSION);

    /* renamed from: e */
    public static final C9147bu f31681e = m24815a(EnumC9150b.TEAM_FOLDER);

    /* renamed from: f */
    public static final C9147bu f31682f = m24815a(EnumC9150b.OTHER);

    /* renamed from: g */
    EnumC9150b f31683g;

    /* renamed from: h */
    private EnumC9092bc f31684h;

    /* renamed from: com.dropbox.core.v2.sharing.bu$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu$1.class */
    static final /* synthetic */ class C91481 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31685a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9150b.values().length];
            f31685a = iArr;
            try {
                iArr[EnumC9150b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31685a[EnumC9150b.NOT_ON_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31685a[EnumC9150b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31685a[EnumC9150b.DISALLOWED_SHARED_LINK_POLICY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31685a[EnumC9150b.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31685a[EnumC9150b.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31685a[EnumC9150b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bu$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu$a.class */
    static final class C9149a extends AbstractC8559f<C9147bu> {

        /* renamed from: a */
        public static final C9149a f31686a = new C9149a();

        C9149a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9147bu c9147bu;
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
                    c9147bu = C9147bu.m24816a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9147bu = "not_on_team".equals(str) ? C9147bu.f31677a : "team_policy_disallows_member_policy".equals(str) ? C9147bu.f31678b : "disallowed_shared_link_policy".equals(str) ? C9147bu.f31679c : "no_permission".equals(str) ? C9147bu.f31680d : "team_folder".equals(str) ? C9147bu.f31681e : C9147bu.f31682f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9147bu;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9147bu c9147bu = (C9147bu) obj;
            switch (C91481.f31685a[c9147bu.f31683g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    EnumC9092bc.C9094a.m24857a(c9147bu.f31684h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("not_on_team");
                    return;
                case 3:
                    jsonGenerator.writeString("team_policy_disallows_member_policy");
                    return;
                case 4:
                    jsonGenerator.writeString("disallowed_shared_link_policy");
                    return;
                case 5:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bu$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu$b.class */
    public enum EnumC9150b {
        ACCESS_ERROR,
        NOT_ON_TEAM,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        NO_PERMISSION,
        TEAM_FOLDER,
        OTHER
    }

    static {
        new C9147bu();
        new C9147bu();
        new C9147bu();
        new C9147bu();
        new C9147bu();
        new C9147bu();
    }

    private C9147bu() {
    }

    /* renamed from: a */
    public static C9147bu m24816a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9147bu();
            EnumC9150b enumC9150b = EnumC9150b.ACCESS_ERROR;
            C9147bu c9147bu = new C9147bu();
            c9147bu.f31683g = enumC9150b;
            c9147bu.f31684h = enumC9092bc;
            return c9147bu;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9147bu m24815a(EnumC9150b enumC9150b) {
        C9147bu c9147bu = new C9147bu();
        c9147bu.f31683g = enumC9150b;
        return c9147bu;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9147bu)) {
            return false;
        }
        C9147bu c9147bu = (C9147bu) obj;
        if (this.f31683g != c9147bu.f31683g) {
            return false;
        }
        switch (C91481.f31685a[this.f31683g.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31684h;
                EnumC9092bc enumC9092bc2 = c9147bu.f31684h;
                return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
            case 2:
            case 3:
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
        return Arrays.hashCode(new Object[]{this.f31683g, this.f31684h});
    }

    public final String toString() {
        return C9149a.f31686a.serialize((C9149a) this, false);
    }
}

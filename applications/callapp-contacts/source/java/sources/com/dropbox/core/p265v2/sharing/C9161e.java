package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9165f;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e.class */
public final class C9161e {

    /* renamed from: a */
    public static final C9161e f31699a = m24804a(EnumC9164b.EMAIL_UNVERIFIED);

    /* renamed from: b */
    public static final C9161e f31700b = m24804a(EnumC9164b.BANNED_MEMBER);

    /* renamed from: c */
    public static final C9161e f31701c = m24804a(EnumC9164b.CANT_SHARE_OUTSIDE_TEAM);

    /* renamed from: d */
    public static final C9161e f31702d = m24804a(EnumC9164b.RATE_LIMIT);

    /* renamed from: e */
    public static final C9161e f31703e = m24804a(EnumC9164b.TOO_MANY_INVITEES);

    /* renamed from: f */
    public static final C9161e f31704f = m24804a(EnumC9164b.INSUFFICIENT_PLAN);

    /* renamed from: g */
    public static final C9161e f31705g = m24804a(EnumC9164b.TEAM_FOLDER);

    /* renamed from: h */
    public static final C9161e f31706h = m24804a(EnumC9164b.NO_PERMISSION);

    /* renamed from: i */
    public static final C9161e f31707i = m24804a(EnumC9164b.INVALID_SHARED_FOLDER);

    /* renamed from: j */
    public static final C9161e f31708j = m24804a(EnumC9164b.OTHER);

    /* renamed from: k */
    EnumC9164b f31709k;

    /* renamed from: l */
    private EnumC9092bc f31710l;

    /* renamed from: m */
    private C9165f f31711m;

    /* renamed from: n */
    private Long f31712n;

    /* renamed from: o */
    private Long f31713o;

    /* renamed from: com.dropbox.core.v2.sharing.e$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e$1.class */
    public static final /* synthetic */ class C91621 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31714a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ad -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b5 -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b9 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c5 -> B:49:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c9 -> B:45:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cd -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d1 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d5 -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d9 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dd -> B:69:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9164b.values().length];
            f31714a = iArr;
            try {
                iArr[EnumC9164b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31714a[EnumC9164b.EMAIL_UNVERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31714a[EnumC9164b.BANNED_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31714a[EnumC9164b.BAD_MEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31714a[EnumC9164b.CANT_SHARE_OUTSIDE_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31714a[EnumC9164b.TOO_MANY_MEMBERS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31714a[EnumC9164b.TOO_MANY_PENDING_INVITES.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31714a[EnumC9164b.RATE_LIMIT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31714a[EnumC9164b.TOO_MANY_INVITEES.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31714a[EnumC9164b.INSUFFICIENT_PLAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31714a[EnumC9164b.TEAM_FOLDER.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31714a[EnumC9164b.NO_PERMISSION.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31714a[EnumC9164b.INVALID_SHARED_FOLDER.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31714a[EnumC9164b.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e$a.class */
    static final class C9163a extends AbstractC8559f<C9161e> {

        /* renamed from: a */
        public static final C9163a f31715a = new C9163a();

        C9163a() {
        }

        /* renamed from: a */
        public static C9161e m24796a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9161e c9161e;
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
                    c9161e = C9161e.m24805a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else if ("email_unverified".equals(str)) {
                    c9161e = C9161e.f31699a;
                } else if ("banned_member".equals(str)) {
                    c9161e = C9161e.f31700b;
                } else if ("bad_member".equals(str)) {
                    expectField("bad_member", jsonParser);
                    C9165f.C9167a c9167a = C9165f.C9167a.f31725a;
                    c9161e = C9161e.m24802a(C9165f.C9167a.m24787a(jsonParser));
                } else if ("cant_share_outside_team".equals(str)) {
                    c9161e = C9161e.f31701c;
                } else if ("too_many_members".equals(str)) {
                    expectField("too_many_members", jsonParser);
                    c9161e = C9161e.m24806a(C8548d.C8553e.f30456a.deserialize(jsonParser).longValue());
                } else if ("too_many_pending_invites".equals(str)) {
                    expectField("too_many_pending_invites", jsonParser);
                    c9161e = C9161e.m24801b(C8548d.C8553e.f30456a.deserialize(jsonParser).longValue());
                } else {
                    c9161e = "rate_limit".equals(str) ? C9161e.f31702d : "too_many_invitees".equals(str) ? C9161e.f31703e : "insufficient_plan".equals(str) ? C9161e.f31704f : "team_folder".equals(str) ? C9161e.f31705g : "no_permission".equals(str) ? C9161e.f31706h : "invalid_shared_folder".equals(str) ? C9161e.f31707i : C9161e.f31708j;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9161e;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C9161e c9161e, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C91621.f31714a[c9161e.f31709k.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    EnumC9092bc.C9094a.m24857a(c9161e.f31710l, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("email_unverified");
                    return;
                case 3:
                    jsonGenerator.writeString("banned_member");
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("bad_member", jsonGenerator);
                    jsonGenerator.writeFieldName("bad_member");
                    C9165f.C9167a.f31725a.serialize(c9161e.f31711m, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("cant_share_outside_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_members", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_members");
                    C8548d.C8553e.f30456a.serialize((C8548d.C8553e) c9161e.f31712n, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_pending_invites", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_pending_invites");
                    C8548d.C8553e.f30456a.serialize((C8548d.C8553e) c9161e.f31713o, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("rate_limit");
                    return;
                case 9:
                    jsonGenerator.writeString("too_many_invitees");
                    return;
                case 10:
                    jsonGenerator.writeString("insufficient_plan");
                    return;
                case 11:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 12:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 13:
                    jsonGenerator.writeString("invalid_shared_folder");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24796a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.e$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e$b.class */
    public enum EnumC9164b {
        ACCESS_ERROR,
        EMAIL_UNVERIFIED,
        BANNED_MEMBER,
        BAD_MEMBER,
        CANT_SHARE_OUTSIDE_TEAM,
        TOO_MANY_MEMBERS,
        TOO_MANY_PENDING_INVITES,
        RATE_LIMIT,
        TOO_MANY_INVITEES,
        INSUFFICIENT_PLAN,
        TEAM_FOLDER,
        NO_PERMISSION,
        INVALID_SHARED_FOLDER,
        OTHER
    }

    static {
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
        new C9161e();
    }

    private C9161e() {
    }

    /* renamed from: a */
    public static C9161e m24806a(long j) {
        new C9161e();
        EnumC9164b enumC9164b = EnumC9164b.TOO_MANY_MEMBERS;
        C9161e c9161e = new C9161e();
        c9161e.f31709k = enumC9164b;
        c9161e.f31712n = Long.valueOf(j);
        return c9161e;
    }

    /* renamed from: a */
    public static C9161e m24805a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9161e();
            EnumC9164b enumC9164b = EnumC9164b.ACCESS_ERROR;
            C9161e c9161e = new C9161e();
            c9161e.f31709k = enumC9164b;
            c9161e.f31710l = enumC9092bc;
            return c9161e;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9161e m24804a(EnumC9164b enumC9164b) {
        C9161e c9161e = new C9161e();
        c9161e.f31709k = enumC9164b;
        return c9161e;
    }

    /* renamed from: a */
    public static C9161e m24802a(C9165f c9165f) {
        if (c9165f != null) {
            new C9161e();
            EnumC9164b enumC9164b = EnumC9164b.BAD_MEMBER;
            C9161e c9161e = new C9161e();
            c9161e.f31709k = enumC9164b;
            c9161e.f31711m = c9165f;
            return c9161e;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public static C9161e m24801b(long j) {
        new C9161e();
        EnumC9164b enumC9164b = EnumC9164b.TOO_MANY_PENDING_INVITES;
        C9161e c9161e = new C9161e();
        c9161e.f31709k = enumC9164b;
        c9161e.f31713o = Long.valueOf(j);
        return c9161e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9161e)) {
            return false;
        }
        C9161e c9161e = (C9161e) obj;
        if (this.f31709k != c9161e.f31709k) {
            return false;
        }
        switch (C91621.f31714a[this.f31709k.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31710l;
                EnumC9092bc enumC9092bc2 = c9161e.f31710l;
                return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
            case 2:
            case 3:
                return true;
            case 4:
                C9165f c9165f = this.f31711m;
                C9165f c9165f2 = c9161e.f31711m;
                return c9165f == c9165f2 || c9165f.equals(c9165f2);
            case 5:
                return true;
            case 6:
                return this.f31712n == c9161e.f31712n;
            case 7:
                return this.f31713o == c9161e.f31713o;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31709k, this.f31710l, this.f31711m, this.f31712n, this.f31713o});
    }

    public final String toString() {
        return C9163a.f31715a.serialize((C9163a) this, false);
    }
}

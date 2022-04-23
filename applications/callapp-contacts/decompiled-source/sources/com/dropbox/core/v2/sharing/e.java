package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.dropbox.core.v2.sharing.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f18649a = a(b.EMAIL_UNVERIFIED);

    /* renamed from: b  reason: collision with root package name */
    public static final e f18650b = a(b.BANNED_MEMBER);

    /* renamed from: c  reason: collision with root package name */
    public static final e f18651c = a(b.CANT_SHARE_OUTSIDE_TEAM);

    /* renamed from: d  reason: collision with root package name */
    public static final e f18652d = a(b.RATE_LIMIT);
    public static final e e = a(b.TOO_MANY_INVITEES);
    public static final e f = a(b.INSUFFICIENT_PLAN);
    public static final e g = a(b.TEAM_FOLDER);
    public static final e h = a(b.NO_PERMISSION);
    public static final e i = a(b.INVALID_SHARED_FOLDER);
    public static final e j = a(b.OTHER);
    b k;
    private bc l;
    private f m;
    private Long n;
    private Long o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.e$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18653a;

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
            int[] iArr = new int[b.values().length];
            f18653a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18653a[b.EMAIL_UNVERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18653a[b.BANNED_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18653a[b.BAD_MEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18653a[b.CANT_SHARE_OUTSIDE_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18653a[b.TOO_MANY_MEMBERS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18653a[b.TOO_MANY_PENDING_INVITES.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18653a[b.RATE_LIMIT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18653a[b.TOO_MANY_INVITEES.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f18653a[b.INSUFFICIENT_PLAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f18653a[b.TEAM_FOLDER.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f18653a[b.NO_PERMISSION.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f18653a[b.INVALID_SHARED_FOLDER.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f18653a[b.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e$a.class */
    static final class a extends f<e> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18654a = new a();

        a() {
        }

        public static e a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            e eVar;
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
                    bc.a aVar = bc.a.f18570a;
                    eVar = e.a(bc.a.a(jsonParser));
                } else if ("email_unverified".equals(str)) {
                    eVar = e.f18649a;
                } else if ("banned_member".equals(str)) {
                    eVar = e.f18650b;
                } else if ("bad_member".equals(str)) {
                    expectField("bad_member", jsonParser);
                    f.a aVar2 = f.a.f18660a;
                    eVar = e.a(f.a.a(jsonParser));
                } else if ("cant_share_outside_team".equals(str)) {
                    eVar = e.f18651c;
                } else if ("too_many_members".equals(str)) {
                    expectField("too_many_members", jsonParser);
                    eVar = e.a(d.e.f17714a.deserialize(jsonParser).longValue());
                } else if ("too_many_pending_invites".equals(str)) {
                    expectField("too_many_pending_invites", jsonParser);
                    eVar = e.b(d.e.f17714a.deserialize(jsonParser).longValue());
                } else {
                    eVar = "rate_limit".equals(str) ? e.f18652d : "too_many_invitees".equals(str) ? e.e : "insufficient_plan".equals(str) ? e.f : "team_folder".equals(str) ? e.g : "no_permission".equals(str) ? e.h : "invalid_shared_folder".equals(str) ? e.i : e.j;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return eVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(e eVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18653a[eVar.k.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    bc.a aVar = bc.a.f18570a;
                    bc.a.a(eVar.l, jsonGenerator);
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
                    f.a.f18660a.serialize(eVar.m, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("cant_share_outside_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_members", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_members");
                    d.e.f17714a.serialize((d.e) eVar.n, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("too_many_pending_invites", jsonGenerator);
                    jsonGenerator.writeFieldName("too_many_pending_invites");
                    d.e.f17714a.serialize((d.e) eVar.o, jsonGenerator);
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

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/e$b.class */
    public enum b {
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
        new e();
        new e();
        new e();
        new e();
        new e();
        new e();
        new e();
        new e();
        new e();
        new e();
    }

    private e() {
    }

    public static e a(long j2) {
        new e();
        b bVar = b.TOO_MANY_MEMBERS;
        e eVar = new e();
        eVar.k = bVar;
        eVar.n = Long.valueOf(j2);
        return eVar;
    }

    public static e a(bc bcVar) {
        if (bcVar != null) {
            new e();
            b bVar = b.ACCESS_ERROR;
            e eVar = new e();
            eVar.k = bVar;
            eVar.l = bcVar;
            return eVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static e a(b bVar) {
        e eVar = new e();
        eVar.k = bVar;
        return eVar;
    }

    public static e a(f fVar) {
        if (fVar != null) {
            new e();
            b bVar = b.BAD_MEMBER;
            e eVar = new e();
            eVar.k = bVar;
            eVar.m = fVar;
            return eVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static e b(long j2) {
        new e();
        b bVar = b.TOO_MANY_PENDING_INVITES;
        e eVar = new e();
        eVar.k = bVar;
        eVar.o = Long.valueOf(j2);
        return eVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.k != eVar.k) {
            return false;
        }
        switch (AnonymousClass1.f18653a[this.k.ordinal()]) {
            case 1:
                bc bcVar = this.l;
                bc bcVar2 = eVar.l;
                return bcVar == bcVar2 || bcVar.equals(bcVar2);
            case 2:
            case 3:
                return true;
            case 4:
                f fVar = this.m;
                f fVar2 = eVar.m;
                return fVar == fVar2 || fVar.equals(fVar2);
            case 5:
                return true;
            case 6:
                return this.n == eVar.n;
            case 7:
                return this.o == eVar.o;
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
        return Arrays.hashCode(new Object[]{this.k, this.l, this.m, this.n, this.o});
    }

    public final String toString() {
        return a.f18654a.serialize((a) this, false);
    }
}

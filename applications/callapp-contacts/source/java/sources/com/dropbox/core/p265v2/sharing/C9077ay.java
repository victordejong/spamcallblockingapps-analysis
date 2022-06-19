package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9081az;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.ay */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay.class */
public final class C9077ay {

    /* renamed from: a */
    public static final C9077ay f31541a = m24868a(EnumC9080b.EMAIL_UNVERIFIED);

    /* renamed from: b */
    public static final C9077ay f31542b = m24868a(EnumC9080b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);

    /* renamed from: c */
    public static final C9077ay f31543c = m24868a(EnumC9080b.DISALLOWED_SHARED_LINK_POLICY);

    /* renamed from: d */
    public static final C9077ay f31544d = m24868a(EnumC9080b.OTHER);

    /* renamed from: e */
    public static final C9077ay f31545e = m24868a(EnumC9080b.NO_PERMISSION);

    /* renamed from: f */
    EnumC9080b f31546f;

    /* renamed from: g */
    private C9081az f31547g;

    /* renamed from: com.dropbox.core.v2.sharing.ay$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay$1.class */
    static final /* synthetic */ class C90781 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31548a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9080b.values().length];
            f31548a = iArr;
            try {
                iArr[EnumC9080b.EMAIL_UNVERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31548a[EnumC9080b.BAD_PATH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31548a[EnumC9080b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31548a[EnumC9080b.DISALLOWED_SHARED_LINK_POLICY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31548a[EnumC9080b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31548a[EnumC9080b.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ay$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay$a.class */
    static final class C9079a extends AbstractC8559f<C9077ay> {

        /* renamed from: a */
        public static final C9079a f31549a = new C9079a();

        C9079a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9077ay c9077ay;
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
                if ("email_unverified".equals(str)) {
                    c9077ay = C9077ay.f31541a;
                } else if ("bad_path".equals(str)) {
                    expectField("bad_path", jsonParser);
                    C9081az.C9083a c9083a = C9081az.C9083a.f31567a;
                    c9077ay = C9077ay.m24866a(C9081az.C9083a.m24861a(jsonParser));
                } else if ("team_policy_disallows_member_policy".equals(str)) {
                    c9077ay = C9077ay.f31542b;
                } else if ("disallowed_shared_link_policy".equals(str)) {
                    c9077ay = C9077ay.f31543c;
                } else if ("other".equals(str)) {
                    c9077ay = C9077ay.f31544d;
                } else if (!"no_permission".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c9077ay = C9077ay.f31545e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9077ay;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9077ay c9077ay = (C9077ay) obj;
            switch (C90781.f31548a[c9077ay.f31546f.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("email_unverified");
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("bad_path", jsonGenerator);
                    jsonGenerator.writeFieldName("bad_path");
                    C9081az.C9083a.f31567a.serialize(c9077ay.f31547g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("team_policy_disallows_member_policy");
                    return;
                case 4:
                    jsonGenerator.writeString("disallowed_shared_link_policy");
                    return;
                case 5:
                    jsonGenerator.writeString("other");
                    return;
                case 6:
                    jsonGenerator.writeString("no_permission");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c9077ay.f31546f);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ay$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay$b.class */
    public enum EnumC9080b {
        EMAIL_UNVERIFIED,
        BAD_PATH,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        OTHER,
        NO_PERMISSION
    }

    static {
        new C9077ay();
        new C9077ay();
        new C9077ay();
        new C9077ay();
        new C9077ay();
    }

    private C9077ay() {
    }

    /* renamed from: a */
    private static C9077ay m24868a(EnumC9080b enumC9080b) {
        C9077ay c9077ay = new C9077ay();
        c9077ay.f31546f = enumC9080b;
        return c9077ay;
    }

    /* renamed from: a */
    public static C9077ay m24866a(C9081az c9081az) {
        if (c9081az != null) {
            new C9077ay();
            EnumC9080b enumC9080b = EnumC9080b.BAD_PATH;
            C9077ay c9077ay = new C9077ay();
            c9077ay.f31546f = enumC9080b;
            c9077ay.f31547g = c9081az;
            return c9077ay;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9077ay)) {
            return false;
        }
        C9077ay c9077ay = (C9077ay) obj;
        if (this.f31546f != c9077ay.f31546f) {
            return false;
        }
        switch (C90781.f31548a[this.f31546f.ordinal()]) {
            case 1:
                return true;
            case 2:
                C9081az c9081az = this.f31547g;
                C9081az c9081az2 = c9077ay.f31547g;
                return c9081az == c9081az2 || c9081az.equals(c9081az2);
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31546f, this.f31547g});
    }

    public final String toString() {
        return C9079a.f31549a.serialize((C9079a) this, false);
    }
}

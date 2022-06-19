package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.account.EnumC8661b;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.team.an */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an.class */
public final class C9235an {

    /* renamed from: a */
    public static final C9235an f31858a = m24748a(EnumC9238b.USER_NOT_FOUND);

    /* renamed from: b */
    public static final C9235an f31859b = m24748a(EnumC9238b.USER_NOT_IN_TEAM);

    /* renamed from: c */
    public static final C9235an f31860c = m24748a(EnumC9238b.SET_PROFILE_DISALLOWED);

    /* renamed from: d */
    public static final C9235an f31861d = m24748a(EnumC9238b.OTHER);

    /* renamed from: e */
    EnumC9238b f31862e;

    /* renamed from: f */
    private EnumC8661b f31863f;

    /* renamed from: com.dropbox.core.v2.team.an$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an$1.class */
    static final /* synthetic */ class C92361 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31864a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9238b.values().length];
            f31864a = iArr;
            try {
                iArr[EnumC9238b.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31864a[EnumC9238b.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31864a[EnumC9238b.SET_PROFILE_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31864a[EnumC9238b.PHOTO_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31864a[EnumC9238b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.an$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an$a.class */
    static final class C9237a extends AbstractC8559f<C9235an> {

        /* renamed from: a */
        public static final C9237a f31865a = new C9237a();

        C9237a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9235an c9235an;
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
                if ("user_not_found".equals(str)) {
                    c9235an = C9235an.f31858a;
                } else if ("user_not_in_team".equals(str)) {
                    c9235an = C9235an.f31859b;
                } else if ("set_profile_disallowed".equals(str)) {
                    c9235an = C9235an.f31860c;
                } else if ("photo_error".equals(str)) {
                    expectField("photo_error", jsonParser);
                    EnumC8661b.C8663a c8663a = EnumC8661b.C8663a.f30746a;
                    c9235an = C9235an.m24749a(EnumC8661b.C8663a.m25195a(jsonParser));
                } else {
                    c9235an = C9235an.f31861d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9235an;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9235an c9235an = (C9235an) obj;
            int i = C92361.f31864a[c9235an.f31862e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
            } else if (i == 2) {
                jsonGenerator.writeString("user_not_in_team");
            } else if (i == 3) {
                jsonGenerator.writeString("set_profile_disallowed");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("photo_error", jsonGenerator);
                jsonGenerator.writeFieldName("photo_error");
                EnumC8661b.C8663a c8663a = EnumC8661b.C8663a.f30746a;
                EnumC8661b.C8663a.m25196a(c9235an.f31863f, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.an$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an$b.class */
    public enum EnumC9238b {
        USER_NOT_FOUND,
        USER_NOT_IN_TEAM,
        SET_PROFILE_DISALLOWED,
        PHOTO_ERROR,
        OTHER
    }

    static {
        new C9235an();
        new C9235an();
        new C9235an();
        new C9235an();
    }

    private C9235an() {
    }

    /* renamed from: a */
    public static C9235an m24749a(EnumC8661b enumC8661b) {
        if (enumC8661b != null) {
            new C9235an();
            EnumC9238b enumC9238b = EnumC9238b.PHOTO_ERROR;
            C9235an c9235an = new C9235an();
            c9235an.f31862e = enumC9238b;
            c9235an.f31863f = enumC8661b;
            return c9235an;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9235an m24748a(EnumC9238b enumC9238b) {
        C9235an c9235an = new C9235an();
        c9235an.f31862e = enumC9238b;
        return c9235an;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9235an)) {
            return false;
        }
        C9235an c9235an = (C9235an) obj;
        if (this.f31862e != c9235an.f31862e) {
            return false;
        }
        int i = C92361.f31864a[this.f31862e.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return i == 5;
        }
        EnumC8661b enumC8661b = this.f31863f;
        EnumC8661b enumC8661b2 = c9235an.f31863f;
        return enumC8661b == enumC8661b2 || enumC8661b.equals(enumC8661b2);
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31862e, this.f31863f});
    }

    public final String toString() {
        return C9237a.f31865a.serialize((C9237a) this, false);
    }
}

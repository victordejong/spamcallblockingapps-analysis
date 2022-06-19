package com.dropbox.core.p265v2.auth;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.auth.C8681g;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.auth.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b.class */
public final class C8669b {

    /* renamed from: a */
    public static final C8669b f30755a = m25190a(EnumC8672b.INVALID_ACCESS_TOKEN);

    /* renamed from: b */
    public static final C8669b f30756b = m25190a(EnumC8672b.INVALID_SELECT_USER);

    /* renamed from: c */
    public static final C8669b f30757c = m25190a(EnumC8672b.INVALID_SELECT_ADMIN);

    /* renamed from: d */
    public static final C8669b f30758d = m25190a(EnumC8672b.USER_SUSPENDED);

    /* renamed from: e */
    public static final C8669b f30759e = m25190a(EnumC8672b.EXPIRED_ACCESS_TOKEN);

    /* renamed from: f */
    public static final C8669b f30760f = m25190a(EnumC8672b.ROUTE_ACCESS_DENIED);

    /* renamed from: g */
    public static final C8669b f30761g = m25190a(EnumC8672b.OTHER);

    /* renamed from: h */
    EnumC8672b f30762h;

    /* renamed from: i */
    private C8681g f30763i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.auth.b$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b$1.class */
    public static final /* synthetic */ class C86701 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30764a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8672b.values().length];
            f30764a = iArr;
            try {
                iArr[EnumC8672b.INVALID_ACCESS_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30764a[EnumC8672b.INVALID_SELECT_USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30764a[EnumC8672b.INVALID_SELECT_ADMIN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30764a[EnumC8672b.USER_SUSPENDED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30764a[EnumC8672b.EXPIRED_ACCESS_TOKEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30764a[EnumC8672b.MISSING_SCOPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30764a[EnumC8672b.ROUTE_ACCESS_DENIED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f30764a[EnumC8672b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b$a.class */
    public static final class C8671a extends AbstractC8559f<C8669b> {

        /* renamed from: a */
        public static final C8671a f30765a = new C8671a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C8669b c8669b;
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
                if ("invalid_access_token".equals(str)) {
                    c8669b = C8669b.f30755a;
                } else if ("invalid_select_user".equals(str)) {
                    c8669b = C8669b.f30756b;
                } else if ("invalid_select_admin".equals(str)) {
                    c8669b = C8669b.f30757c;
                } else if ("user_suspended".equals(str)) {
                    c8669b = C8669b.f30758d;
                } else if ("expired_access_token".equals(str)) {
                    c8669b = C8669b.f30759e;
                } else if ("missing_scope".equals(str)) {
                    C8681g.C8682a c8682a = C8681g.C8682a.f30772a;
                    c8669b = C8669b.m25188a(C8681g.C8682a.m25181a(jsonParser, true));
                } else {
                    c8669b = "route_access_denied".equals(str) ? C8669b.f30760f : C8669b.f30761g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8669b;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8669b c8669b = (C8669b) obj;
            switch (C86701.f30764a[c8669b.f30762h.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("invalid_access_token");
                    return;
                case 2:
                    jsonGenerator.writeString("invalid_select_user");
                    return;
                case 3:
                    jsonGenerator.writeString("invalid_select_admin");
                    return;
                case 4:
                    jsonGenerator.writeString("user_suspended");
                    return;
                case 5:
                    jsonGenerator.writeString("expired_access_token");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("missing_scope", jsonGenerator);
                    C8681g.C8682a c8682a = C8681g.C8682a.f30772a;
                    C8681g.C8682a.m25182a(c8669b.f30763i, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeString("route_access_denied");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b$b.class */
    public enum EnumC8672b {
        INVALID_ACCESS_TOKEN,
        INVALID_SELECT_USER,
        INVALID_SELECT_ADMIN,
        USER_SUSPENDED,
        EXPIRED_ACCESS_TOKEN,
        MISSING_SCOPE,
        ROUTE_ACCESS_DENIED,
        OTHER
    }

    static {
        new C8669b();
        new C8669b();
        new C8669b();
        new C8669b();
        new C8669b();
        new C8669b();
        new C8669b();
    }

    private C8669b() {
    }

    /* renamed from: a */
    private static C8669b m25190a(EnumC8672b enumC8672b) {
        C8669b c8669b = new C8669b();
        c8669b.f30762h = enumC8672b;
        return c8669b;
    }

    /* renamed from: a */
    public static C8669b m25188a(C8681g c8681g) {
        if (c8681g != null) {
            new C8669b();
            EnumC8672b enumC8672b = EnumC8672b.MISSING_SCOPE;
            C8669b c8669b = new C8669b();
            c8669b.f30762h = enumC8672b;
            c8669b.f30763i = c8681g;
            return c8669b;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8669b)) {
            return false;
        }
        C8669b c8669b = (C8669b) obj;
        if (this.f30762h != c8669b.f30762h) {
            return false;
        }
        switch (C86701.f30764a[this.f30762h.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                C8681g c8681g = this.f30763i;
                C8681g c8681g2 = c8669b.f30763i;
                return c8681g == c8681g2 || c8681g.equals(c8681g2);
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30762h, this.f30763i});
    }

    public final String toString() {
        return C8671a.f30765a.serialize((C8671a) this, false);
    }
}

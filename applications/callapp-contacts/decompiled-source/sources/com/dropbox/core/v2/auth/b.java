package com.dropbox.core.v2.auth;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.auth.g;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f17928a = a(EnumC0362b.INVALID_ACCESS_TOKEN);

    /* renamed from: b  reason: collision with root package name */
    public static final b f17929b = a(EnumC0362b.INVALID_SELECT_USER);

    /* renamed from: c  reason: collision with root package name */
    public static final b f17930c = a(EnumC0362b.INVALID_SELECT_ADMIN);

    /* renamed from: d  reason: collision with root package name */
    public static final b f17931d = a(EnumC0362b.USER_SUSPENDED);
    public static final b e = a(EnumC0362b.EXPIRED_ACCESS_TOKEN);
    public static final b f = a(EnumC0362b.ROUTE_ACCESS_DENIED);
    public static final b g = a(EnumC0362b.OTHER);
    EnumC0362b h;
    private g i;

    /* renamed from: com.dropbox.core.v2.auth.b$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17932a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0362b.values().length];
            f17932a = iArr;
            try {
                iArr[EnumC0362b.INVALID_ACCESS_TOKEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17932a[EnumC0362b.INVALID_SELECT_USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17932a[EnumC0362b.INVALID_SELECT_ADMIN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17932a[EnumC0362b.USER_SUSPENDED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f17932a[EnumC0362b.EXPIRED_ACCESS_TOKEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f17932a[EnumC0362b.MISSING_SCOPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f17932a[EnumC0362b.ROUTE_ACCESS_DENIED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f17932a[EnumC0362b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b$a.class */
    public static final class a extends f<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17933a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            b bVar;
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
                    bVar = b.f17928a;
                } else if ("invalid_select_user".equals(str)) {
                    bVar = b.f17929b;
                } else if ("invalid_select_admin".equals(str)) {
                    bVar = b.f17930c;
                } else if ("user_suspended".equals(str)) {
                    bVar = b.f17931d;
                } else if ("expired_access_token".equals(str)) {
                    bVar = b.e;
                } else if ("missing_scope".equals(str)) {
                    g.a aVar = g.a.f17940a;
                    bVar = b.a(g.a.a(jsonParser, true));
                } else {
                    bVar = "route_access_denied".equals(str) ? b.f : b.g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            b bVar = (b) obj;
            switch (AnonymousClass1.f17932a[bVar.h.ordinal()]) {
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
                    g.a aVar = g.a.f17940a;
                    g.a.a(bVar.i, jsonGenerator, true);
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

    /* renamed from: com.dropbox.core.v2.auth.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/b$b.class */
    public enum EnumC0362b {
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
        new b();
        new b();
        new b();
        new b();
        new b();
        new b();
        new b();
    }

    private b() {
    }

    private static b a(EnumC0362b bVar) {
        b bVar2 = new b();
        bVar2.h = bVar;
        return bVar2;
    }

    public static b a(g gVar) {
        if (gVar != null) {
            new b();
            EnumC0362b bVar = EnumC0362b.MISSING_SCOPE;
            b bVar2 = new b();
            bVar2.h = bVar;
            bVar2.i = gVar;
            return bVar2;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.h != bVar.h) {
            return false;
        }
        switch (AnonymousClass1.f17932a[this.h.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                g gVar = this.i;
                g gVar2 = bVar.i;
                return gVar == gVar2 || gVar.equals(gVar2);
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.h, this.i});
    }

    public final String toString() {
        return a.f17933a.serialize((a) this, false);
    }
}

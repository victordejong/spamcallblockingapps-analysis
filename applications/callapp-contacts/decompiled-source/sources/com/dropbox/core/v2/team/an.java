package com.dropbox.core.v2.team;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.account.b;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an.class */
public final class an {

    /* renamed from: a  reason: collision with root package name */
    public static final an f18788a = a(b.USER_NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final an f18789b = a(b.USER_NOT_IN_TEAM);

    /* renamed from: c  reason: collision with root package name */
    public static final an f18790c = a(b.SET_PROFILE_DISALLOWED);

    /* renamed from: d  reason: collision with root package name */
    public static final an f18791d = a(b.OTHER);
    b e;
    private com.dropbox.core.v2.account.b f;

    /* renamed from: com.dropbox.core.v2.team.an$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18792a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18792a = iArr;
            try {
                iArr[b.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18792a[b.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18792a[b.SET_PROFILE_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18792a[b.PHOTO_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18792a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an$a.class */
    static final class a extends f<an> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18793a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            an anVar;
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
                    anVar = an.f18788a;
                } else if ("user_not_in_team".equals(str)) {
                    anVar = an.f18789b;
                } else if ("set_profile_disallowed".equals(str)) {
                    anVar = an.f18790c;
                } else if ("photo_error".equals(str)) {
                    expectField("photo_error", jsonParser);
                    b.a aVar = b.a.f17919a;
                    anVar = an.a(b.a.a(jsonParser));
                } else {
                    anVar = an.f18791d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return anVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            an anVar = (an) obj;
            int i = AnonymousClass1.f18792a[anVar.e.ordinal()];
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
                b.a aVar = b.a.f17919a;
                b.a.a(anVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/an$b.class */
    public enum b {
        USER_NOT_FOUND,
        USER_NOT_IN_TEAM,
        SET_PROFILE_DISALLOWED,
        PHOTO_ERROR,
        OTHER
    }

    static {
        new an();
        new an();
        new an();
        new an();
    }

    private an() {
    }

    public static an a(com.dropbox.core.v2.account.b bVar) {
        if (bVar != null) {
            new an();
            b bVar2 = b.PHOTO_ERROR;
            an anVar = new an();
            anVar.e = bVar2;
            anVar.f = bVar;
            return anVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static an a(b bVar) {
        an anVar = new an();
        anVar.e = bVar;
        return anVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof an)) {
            return false;
        }
        an anVar = (an) obj;
        if (this.e != anVar.e) {
            return false;
        }
        int i = AnonymousClass1.f18792a[this.e.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return i == 5;
        }
        com.dropbox.core.v2.account.b bVar = this.f;
        com.dropbox.core.v2.account.b bVar2 = anVar.f;
        return bVar == bVar2 || bVar.equals(bVar2);
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.e, this.f});
    }

    public final String toString() {
        return a.f18793a.serialize((a) this, false);
    }
}

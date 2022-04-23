package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.az;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay.class */
public final class ay {

    /* renamed from: a  reason: collision with root package name */
    public static final ay f18549a = a(b.EMAIL_UNVERIFIED);

    /* renamed from: b  reason: collision with root package name */
    public static final ay f18550b = a(b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);

    /* renamed from: c  reason: collision with root package name */
    public static final ay f18551c = a(b.DISALLOWED_SHARED_LINK_POLICY);

    /* renamed from: d  reason: collision with root package name */
    public static final ay f18552d = a(b.OTHER);
    public static final ay e = a(b.NO_PERMISSION);
    b f;
    private az g;

    /* renamed from: com.dropbox.core.v2.sharing.ay$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18553a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18553a = iArr;
            try {
                iArr[b.EMAIL_UNVERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18553a[b.BAD_PATH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18553a[b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18553a[b.DISALLOWED_SHARED_LINK_POLICY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18553a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18553a[b.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay$a.class */
    static final class a extends f<ay> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18554a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ay ayVar;
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
                    ayVar = ay.f18549a;
                } else if ("bad_path".equals(str)) {
                    expectField("bad_path", jsonParser);
                    az.a aVar = az.a.f18560a;
                    ayVar = ay.a(az.a.a(jsonParser));
                } else if ("team_policy_disallows_member_policy".equals(str)) {
                    ayVar = ay.f18550b;
                } else if ("disallowed_shared_link_policy".equals(str)) {
                    ayVar = ay.f18551c;
                } else if ("other".equals(str)) {
                    ayVar = ay.f18552d;
                } else if ("no_permission".equals(str)) {
                    ayVar = ay.e;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ayVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ay ayVar = (ay) obj;
            switch (AnonymousClass1.f18553a[ayVar.f.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("email_unverified");
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("bad_path", jsonGenerator);
                    jsonGenerator.writeFieldName("bad_path");
                    az.a.f18560a.serialize(ayVar.g, jsonGenerator);
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
                    throw new IllegalArgumentException("Unrecognized tag: " + ayVar.f);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ay$b.class */
    public enum b {
        EMAIL_UNVERIFIED,
        BAD_PATH,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        OTHER,
        NO_PERMISSION
    }

    static {
        new ay();
        new ay();
        new ay();
        new ay();
        new ay();
    }

    private ay() {
    }

    private static ay a(b bVar) {
        ay ayVar = new ay();
        ayVar.f = bVar;
        return ayVar;
    }

    public static ay a(az azVar) {
        if (azVar != null) {
            new ay();
            b bVar = b.BAD_PATH;
            ay ayVar = new ay();
            ayVar.f = bVar;
            ayVar.g = azVar;
            return ayVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ay)) {
            return false;
        }
        ay ayVar = (ay) obj;
        if (this.f != ayVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18553a[this.f.ordinal()]) {
            case 1:
                return true;
            case 2:
                az azVar = this.g;
                az azVar2 = ayVar.g;
                return azVar == azVar2 || azVar.equals(azVar2);
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f, this.g});
    }

    public final String toString() {
        return a.f18554a.serialize((a) this, false);
    }
}

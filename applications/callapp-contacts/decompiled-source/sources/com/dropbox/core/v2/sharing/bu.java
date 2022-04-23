package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu.class */
public final class bu {

    /* renamed from: a  reason: collision with root package name */
    public static final bu f18633a = a(b.NOT_ON_TEAM);

    /* renamed from: b  reason: collision with root package name */
    public static final bu f18634b = a(b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);

    /* renamed from: c  reason: collision with root package name */
    public static final bu f18635c = a(b.DISALLOWED_SHARED_LINK_POLICY);

    /* renamed from: d  reason: collision with root package name */
    public static final bu f18636d = a(b.NO_PERMISSION);
    public static final bu e = a(b.TEAM_FOLDER);
    public static final bu f = a(b.OTHER);
    b g;
    private bc h;

    /* renamed from: com.dropbox.core.v2.sharing.bu$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18637a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18637a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18637a[b.NOT_ON_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18637a[b.TEAM_POLICY_DISALLOWS_MEMBER_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18637a[b.DISALLOWED_SHARED_LINK_POLICY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18637a[b.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18637a[b.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18637a[b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu$a.class */
    static final class a extends f<bu> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18638a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bu buVar;
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
                    buVar = bu.a(bc.a.a(jsonParser));
                } else {
                    buVar = "not_on_team".equals(str) ? bu.f18633a : "team_policy_disallows_member_policy".equals(str) ? bu.f18634b : "disallowed_shared_link_policy".equals(str) ? bu.f18635c : "no_permission".equals(str) ? bu.f18636d : "team_folder".equals(str) ? bu.e : bu.f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return buVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bu buVar = (bu) obj;
            switch (AnonymousClass1.f18637a[buVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    bc.a aVar = bc.a.f18570a;
                    bc.a.a(buVar.h, jsonGenerator);
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

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bu$b.class */
    public enum b {
        ACCESS_ERROR,
        NOT_ON_TEAM,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        NO_PERMISSION,
        TEAM_FOLDER,
        OTHER
    }

    static {
        new bu();
        new bu();
        new bu();
        new bu();
        new bu();
        new bu();
    }

    private bu() {
    }

    public static bu a(bc bcVar) {
        if (bcVar != null) {
            new bu();
            b bVar = b.ACCESS_ERROR;
            bu buVar = new bu();
            buVar.g = bVar;
            buVar.h = bcVar;
            return buVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static bu a(b bVar) {
        bu buVar = new bu();
        buVar.g = bVar;
        return buVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bu)) {
            return false;
        }
        bu buVar = (bu) obj;
        if (this.g != buVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18637a[this.g.ordinal()]) {
            case 1:
                bc bcVar = this.h;
                bc bcVar2 = buVar.h;
                return bcVar == bcVar2 || bcVar.equals(bcVar2);
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
        return Arrays.hashCode(new Object[]{this.g, this.h});
    }

    public final String toString() {
        return a.f18638a.serialize((a) this, false);
    }
}

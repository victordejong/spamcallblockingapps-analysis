package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.dropbox.core.v2.sharing.bd;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at.class */
public final class at {

    /* renamed from: a  reason: collision with root package name */
    public static final at f18533a = a(b.FOLDER_OWNER);

    /* renamed from: b  reason: collision with root package name */
    public static final at f18534b = a(b.GROUP_ACCESS);

    /* renamed from: c  reason: collision with root package name */
    public static final at f18535c = a(b.TEAM_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final at f18536d = a(b.NO_PERMISSION);
    public static final at e = a(b.TOO_MANY_FILES);
    public static final at f = a(b.OTHER);
    b g;
    private bc h;
    private bd i;

    /* renamed from: com.dropbox.core.v2.sharing.at$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18537a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18537a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18537a[b.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18537a[b.FOLDER_OWNER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18537a[b.GROUP_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18537a[b.TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18537a[b.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18537a[b.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18537a[b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at$a.class */
    static final class a extends f<at> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18538a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            at atVar;
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
                    atVar = at.a(bc.a.a(jsonParser));
                } else if ("member_error".equals(str)) {
                    expectField("member_error", jsonParser);
                    bd.a aVar2 = bd.a.f18576a;
                    atVar = at.a(bd.a.a(jsonParser));
                } else {
                    atVar = "folder_owner".equals(str) ? at.f18533a : "group_access".equals(str) ? at.f18534b : "team_folder".equals(str) ? at.f18535c : "no_permission".equals(str) ? at.f18536d : "too_many_files".equals(str) ? at.e : at.f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return atVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            at atVar = (at) obj;
            switch (AnonymousClass1.f18537a[atVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    bc.a aVar = bc.a.f18570a;
                    bc.a.a(atVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("member_error", jsonGenerator);
                    jsonGenerator.writeFieldName("member_error");
                    bd.a.f18576a.serialize(atVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("folder_owner");
                    return;
                case 4:
                    jsonGenerator.writeString("group_access");
                    return;
                case 5:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_files");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/at$b.class */
    public enum b {
        ACCESS_ERROR,
        MEMBER_ERROR,
        FOLDER_OWNER,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new at();
        new at();
        new at();
        new at();
        new at();
        new at();
    }

    private at() {
    }

    private static at a(b bVar) {
        at atVar = new at();
        atVar.g = bVar;
        return atVar;
    }

    public static at a(bc bcVar) {
        if (bcVar != null) {
            new at();
            b bVar = b.ACCESS_ERROR;
            at atVar = new at();
            atVar.g = bVar;
            atVar.h = bcVar;
            return atVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static at a(bd bdVar) {
        if (bdVar != null) {
            new at();
            b bVar = b.MEMBER_ERROR;
            at atVar = new at();
            atVar.g = bVar;
            atVar.i = bdVar;
            return atVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof at)) {
            return false;
        }
        at atVar = (at) obj;
        if (this.g != atVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18537a[this.g.ordinal()]) {
            case 1:
                bc bcVar = this.h;
                bc bcVar2 = atVar.h;
                return bcVar == bcVar2 || bcVar.equals(bcVar2);
            case 2:
                bd bdVar = this.i;
                bd bdVar2 = atVar.i;
                return bdVar == bdVar2 || bdVar.equals(bdVar2);
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.g, this.h, this.i});
    }

    public final String toString() {
        return a.f18538a.serialize((a) this, false);
    }
}

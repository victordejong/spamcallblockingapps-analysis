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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar.class */
public final class ar {

    /* renamed from: a  reason: collision with root package name */
    public static final ar f18521a = a(b.FOLDER_OWNER);

    /* renamed from: b  reason: collision with root package name */
    public static final ar f18522b = a(b.MOUNTED);

    /* renamed from: c  reason: collision with root package name */
    public static final ar f18523c = a(b.GROUP_ACCESS);

    /* renamed from: d  reason: collision with root package name */
    public static final ar f18524d = a(b.TEAM_FOLDER);
    public static final ar e = a(b.NO_PERMISSION);
    public static final ar f = a(b.NO_EXPLICIT_ACCESS);
    public static final ar g = a(b.OTHER);
    b h;
    private bc i;

    /* renamed from: com.dropbox.core.v2.sharing.ar$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18525a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18525a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18525a[b.FOLDER_OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18525a[b.MOUNTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18525a[b.GROUP_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18525a[b.TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18525a[b.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18525a[b.NO_EXPLICIT_ACCESS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18525a[b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar$a.class */
    static final class a extends f<ar> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18526a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ar arVar;
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
                    arVar = ar.a(bc.a.a(jsonParser));
                } else {
                    arVar = "folder_owner".equals(str) ? ar.f18521a : "mounted".equals(str) ? ar.f18522b : "group_access".equals(str) ? ar.f18523c : "team_folder".equals(str) ? ar.f18524d : "no_permission".equals(str) ? ar.e : "no_explicit_access".equals(str) ? ar.f : ar.g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return arVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ar arVar = (ar) obj;
            switch (AnonymousClass1.f18525a[arVar.h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    bc.a aVar = bc.a.f18570a;
                    bc.a.a(arVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("folder_owner");
                    return;
                case 3:
                    jsonGenerator.writeString("mounted");
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
                    jsonGenerator.writeString("no_explicit_access");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar$b.class */
    public enum b {
        ACCESS_ERROR,
        FOLDER_OWNER,
        MOUNTED,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new ar();
        new ar();
        new ar();
        new ar();
        new ar();
        new ar();
        new ar();
    }

    private ar() {
    }

    private static ar a(b bVar) {
        ar arVar = new ar();
        arVar.h = bVar;
        return arVar;
    }

    public static ar a(bc bcVar) {
        if (bcVar != null) {
            new ar();
            b bVar = b.ACCESS_ERROR;
            ar arVar = new ar();
            arVar.h = bVar;
            arVar.i = bcVar;
            return arVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ar)) {
            return false;
        }
        ar arVar = (ar) obj;
        if (this.h != arVar.h) {
            return false;
        }
        switch (AnonymousClass1.f18525a[this.h.ordinal()]) {
            case 1:
                bc bcVar = this.i;
                bc bcVar2 = arVar.i;
                return bcVar == bcVar2 || bcVar.equals(bcVar2);
            case 2:
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
        return Arrays.hashCode(new Object[]{this.h, this.i});
    }

    public final String toString() {
        return a.f18526a.serialize((a) this, false);
    }
}

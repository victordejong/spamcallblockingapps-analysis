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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp.class */
public final class bp {

    /* renamed from: a  reason: collision with root package name */
    public static final bp f18603a = a(b.INVALID_DROPBOX_ID);

    /* renamed from: b  reason: collision with root package name */
    public static final bp f18604b = a(b.NEW_OWNER_NOT_A_MEMBER);

    /* renamed from: c  reason: collision with root package name */
    public static final bp f18605c = a(b.NEW_OWNER_UNMOUNTED);

    /* renamed from: d  reason: collision with root package name */
    public static final bp f18606d = a(b.NEW_OWNER_EMAIL_UNVERIFIED);
    public static final bp e = a(b.TEAM_FOLDER);
    public static final bp f = a(b.NO_PERMISSION);
    public static final bp g = a(b.OTHER);
    b h;
    private bc i;

    /* renamed from: com.dropbox.core.v2.sharing.bp$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18607a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18607a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18607a[b.INVALID_DROPBOX_ID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18607a[b.NEW_OWNER_NOT_A_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18607a[b.NEW_OWNER_UNMOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18607a[b.NEW_OWNER_EMAIL_UNVERIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18607a[b.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18607a[b.NO_PERMISSION.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18607a[b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp$a.class */
    static final class a extends f<bp> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18608a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bp bpVar;
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
                    bpVar = bp.a(bc.a.a(jsonParser));
                } else {
                    bpVar = "invalid_dropbox_id".equals(str) ? bp.f18603a : "new_owner_not_a_member".equals(str) ? bp.f18604b : "new_owner_unmounted".equals(str) ? bp.f18605c : "new_owner_email_unverified".equals(str) ? bp.f18606d : "team_folder".equals(str) ? bp.e : "no_permission".equals(str) ? bp.f : bp.g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bpVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bp bpVar = (bp) obj;
            switch (AnonymousClass1.f18607a[bpVar.h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    bc.a aVar = bc.a.f18570a;
                    bc.a.a(bpVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("invalid_dropbox_id");
                    return;
                case 3:
                    jsonGenerator.writeString("new_owner_not_a_member");
                    return;
                case 4:
                    jsonGenerator.writeString("new_owner_unmounted");
                    return;
                case 5:
                    jsonGenerator.writeString("new_owner_email_unverified");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("no_permission");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp$b.class */
    public enum b {
        ACCESS_ERROR,
        INVALID_DROPBOX_ID,
        NEW_OWNER_NOT_A_MEMBER,
        NEW_OWNER_UNMOUNTED,
        NEW_OWNER_EMAIL_UNVERIFIED,
        TEAM_FOLDER,
        NO_PERMISSION,
        OTHER
    }

    static {
        new bp();
        new bp();
        new bp();
        new bp();
        new bp();
        new bp();
        new bp();
    }

    private bp() {
    }

    public static bp a(bc bcVar) {
        if (bcVar != null) {
            new bp();
            b bVar = b.ACCESS_ERROR;
            bp bpVar = new bp();
            bpVar.h = bVar;
            bpVar.i = bcVar;
            return bpVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static bp a(b bVar) {
        bp bpVar = new bp();
        bpVar.h = bVar;
        return bpVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bp)) {
            return false;
        }
        bp bpVar = (bp) obj;
        if (this.h != bpVar.h) {
            return false;
        }
        switch (AnonymousClass1.f18607a[this.h.ordinal()]) {
            case 1:
                bc bcVar = this.i;
                bc bcVar2 = bpVar.i;
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
        return a.f18608a.serialize((a) this, false);
    }
}

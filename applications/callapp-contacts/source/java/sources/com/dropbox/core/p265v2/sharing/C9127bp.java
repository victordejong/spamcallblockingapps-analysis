package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bp */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp.class */
public final class C9127bp {

    /* renamed from: a */
    public static final C9127bp f31636a = m24835a(EnumC9130b.INVALID_DROPBOX_ID);

    /* renamed from: b */
    public static final C9127bp f31637b = m24835a(EnumC9130b.NEW_OWNER_NOT_A_MEMBER);

    /* renamed from: c */
    public static final C9127bp f31638c = m24835a(EnumC9130b.NEW_OWNER_UNMOUNTED);

    /* renamed from: d */
    public static final C9127bp f31639d = m24835a(EnumC9130b.NEW_OWNER_EMAIL_UNVERIFIED);

    /* renamed from: e */
    public static final C9127bp f31640e = m24835a(EnumC9130b.TEAM_FOLDER);

    /* renamed from: f */
    public static final C9127bp f31641f = m24835a(EnumC9130b.NO_PERMISSION);

    /* renamed from: g */
    public static final C9127bp f31642g = m24835a(EnumC9130b.OTHER);

    /* renamed from: h */
    EnumC9130b f31643h;

    /* renamed from: i */
    private EnumC9092bc f31644i;

    /* renamed from: com.dropbox.core.v2.sharing.bp$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp$1.class */
    static final /* synthetic */ class C91281 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31645a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9130b.values().length];
            f31645a = iArr;
            try {
                iArr[EnumC9130b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31645a[EnumC9130b.INVALID_DROPBOX_ID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31645a[EnumC9130b.NEW_OWNER_NOT_A_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31645a[EnumC9130b.NEW_OWNER_UNMOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31645a[EnumC9130b.NEW_OWNER_EMAIL_UNVERIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31645a[EnumC9130b.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31645a[EnumC9130b.NO_PERMISSION.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31645a[EnumC9130b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bp$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp$a.class */
    static final class C9129a extends AbstractC8559f<C9127bp> {

        /* renamed from: a */
        public static final C9129a f31646a = new C9129a();

        C9129a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9127bp c9127bp;
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
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    c9127bp = C9127bp.m24836a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9127bp = "invalid_dropbox_id".equals(str) ? C9127bp.f31636a : "new_owner_not_a_member".equals(str) ? C9127bp.f31637b : "new_owner_unmounted".equals(str) ? C9127bp.f31638c : "new_owner_email_unverified".equals(str) ? C9127bp.f31639d : "team_folder".equals(str) ? C9127bp.f31640e : "no_permission".equals(str) ? C9127bp.f31641f : C9127bp.f31642g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9127bp;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9127bp c9127bp = (C9127bp) obj;
            switch (C91281.f31645a[c9127bp.f31643h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    EnumC9092bc.C9094a.m24857a(c9127bp.f31644i, jsonGenerator);
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

    /* renamed from: com.dropbox.core.v2.sharing.bp$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bp$b.class */
    public enum EnumC9130b {
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
        new C9127bp();
        new C9127bp();
        new C9127bp();
        new C9127bp();
        new C9127bp();
        new C9127bp();
        new C9127bp();
    }

    private C9127bp() {
    }

    /* renamed from: a */
    public static C9127bp m24836a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9127bp();
            EnumC9130b enumC9130b = EnumC9130b.ACCESS_ERROR;
            C9127bp c9127bp = new C9127bp();
            c9127bp.f31643h = enumC9130b;
            c9127bp.f31644i = enumC9092bc;
            return c9127bp;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9127bp m24835a(EnumC9130b enumC9130b) {
        C9127bp c9127bp = new C9127bp();
        c9127bp.f31643h = enumC9130b;
        return c9127bp;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9127bp)) {
            return false;
        }
        C9127bp c9127bp = (C9127bp) obj;
        if (this.f31643h != c9127bp.f31643h) {
            return false;
        }
        switch (C91281.f31645a[this.f31643h.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31644i;
                EnumC9092bc enumC9092bc2 = c9127bp.f31644i;
                return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
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
        return Arrays.hashCode(new Object[]{this.f31643h, this.f31644i});
    }

    public final String toString() {
        return C9129a.f31646a.serialize((C9129a) this, false);
    }
}

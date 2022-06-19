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
/* renamed from: com.dropbox.core.v2.sharing.ar */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar.class */
public final class C9054ar {

    /* renamed from: a */
    public static final C9054ar f31502a = m24885a(EnumC9057b.FOLDER_OWNER);

    /* renamed from: b */
    public static final C9054ar f31503b = m24885a(EnumC9057b.MOUNTED);

    /* renamed from: c */
    public static final C9054ar f31504c = m24885a(EnumC9057b.GROUP_ACCESS);

    /* renamed from: d */
    public static final C9054ar f31505d = m24885a(EnumC9057b.TEAM_FOLDER);

    /* renamed from: e */
    public static final C9054ar f31506e = m24885a(EnumC9057b.NO_PERMISSION);

    /* renamed from: f */
    public static final C9054ar f31507f = m24885a(EnumC9057b.NO_EXPLICIT_ACCESS);

    /* renamed from: g */
    public static final C9054ar f31508g = m24885a(EnumC9057b.OTHER);

    /* renamed from: h */
    EnumC9057b f31509h;

    /* renamed from: i */
    private EnumC9092bc f31510i;

    /* renamed from: com.dropbox.core.v2.sharing.ar$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar$1.class */
    static final /* synthetic */ class C90551 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31511a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9057b.values().length];
            f31511a = iArr;
            try {
                iArr[EnumC9057b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31511a[EnumC9057b.FOLDER_OWNER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31511a[EnumC9057b.MOUNTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31511a[EnumC9057b.GROUP_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31511a[EnumC9057b.TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31511a[EnumC9057b.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31511a[EnumC9057b.NO_EXPLICIT_ACCESS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31511a[EnumC9057b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ar$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar$a.class */
    static final class C9056a extends AbstractC8559f<C9054ar> {

        /* renamed from: a */
        public static final C9056a f31512a = new C9056a();

        C9056a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9054ar c9054ar;
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
                    c9054ar = C9054ar.m24883a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9054ar = "folder_owner".equals(str) ? C9054ar.f31502a : "mounted".equals(str) ? C9054ar.f31503b : "group_access".equals(str) ? C9054ar.f31504c : "team_folder".equals(str) ? C9054ar.f31505d : "no_permission".equals(str) ? C9054ar.f31506e : "no_explicit_access".equals(str) ? C9054ar.f31507f : C9054ar.f31508g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9054ar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9054ar c9054ar = (C9054ar) obj;
            switch (C90551.f31511a[c9054ar.f31509h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    EnumC9092bc.C9094a.m24857a(c9054ar.f31510i, jsonGenerator);
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

    /* renamed from: com.dropbox.core.v2.sharing.ar$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ar$b.class */
    public enum EnumC9057b {
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
        new C9054ar();
        new C9054ar();
        new C9054ar();
        new C9054ar();
        new C9054ar();
        new C9054ar();
        new C9054ar();
    }

    private C9054ar() {
    }

    /* renamed from: a */
    private static C9054ar m24885a(EnumC9057b enumC9057b) {
        C9054ar c9054ar = new C9054ar();
        c9054ar.f31509h = enumC9057b;
        return c9054ar;
    }

    /* renamed from: a */
    public static C9054ar m24883a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9054ar();
            EnumC9057b enumC9057b = EnumC9057b.ACCESS_ERROR;
            C9054ar c9054ar = new C9054ar();
            c9054ar.f31509h = enumC9057b;
            c9054ar.f31510i = enumC9092bc;
            return c9054ar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9054ar)) {
            return false;
        }
        C9054ar c9054ar = (C9054ar) obj;
        if (this.f31509h != c9054ar.f31509h) {
            return false;
        }
        switch (C90551.f31511a[this.f31509h.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31510i;
                EnumC9092bc enumC9092bc2 = c9054ar.f31510i;
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
        return Arrays.hashCode(new Object[]{this.f31509h, this.f31510i});
    }

    public final String toString() {
        return C9056a.f31512a.serialize((C9056a) this, false);
    }
}

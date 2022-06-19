package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9099be;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.az */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az.class */
public final class C9081az {

    /* renamed from: a */
    public static final C9081az f31550a = m24865a(EnumC9084b.IS_FILE);

    /* renamed from: b */
    public static final C9081az f31551b = m24865a(EnumC9084b.INSIDE_SHARED_FOLDER);

    /* renamed from: c */
    public static final C9081az f31552c = m24865a(EnumC9084b.CONTAINS_SHARED_FOLDER);

    /* renamed from: d */
    public static final C9081az f31553d = m24865a(EnumC9084b.CONTAINS_APP_FOLDER);

    /* renamed from: e */
    public static final C9081az f31554e = m24865a(EnumC9084b.CONTAINS_TEAM_FOLDER);

    /* renamed from: f */
    public static final C9081az f31555f = m24865a(EnumC9084b.IS_APP_FOLDER);

    /* renamed from: g */
    public static final C9081az f31556g = m24865a(EnumC9084b.INSIDE_APP_FOLDER);

    /* renamed from: h */
    public static final C9081az f31557h = m24865a(EnumC9084b.IS_PUBLIC_FOLDER);

    /* renamed from: i */
    public static final C9081az f31558i = m24865a(EnumC9084b.INSIDE_PUBLIC_FOLDER);

    /* renamed from: j */
    public static final C9081az f31559j = m24865a(EnumC9084b.INVALID_PATH);

    /* renamed from: k */
    public static final C9081az f31560k = m24865a(EnumC9084b.IS_OSX_PACKAGE);

    /* renamed from: l */
    public static final C9081az f31561l = m24865a(EnumC9084b.INSIDE_OSX_PACKAGE);

    /* renamed from: m */
    public static final C9081az f31562m = m24865a(EnumC9084b.IS_VAULT);

    /* renamed from: n */
    public static final C9081az f31563n = m24865a(EnumC9084b.OTHER);

    /* renamed from: o */
    EnumC9084b f31564o;

    /* renamed from: p */
    private C9099be f31565p;

    /* renamed from: com.dropbox.core.v2.sharing.az$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az$1.class */
    public static final /* synthetic */ class C90821 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31566a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9084b.values().length];
            f31566a = iArr;
            try {
                iArr[EnumC9084b.IS_FILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31566a[EnumC9084b.INSIDE_SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31566a[EnumC9084b.CONTAINS_SHARED_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31566a[EnumC9084b.CONTAINS_APP_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31566a[EnumC9084b.CONTAINS_TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31566a[EnumC9084b.IS_APP_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31566a[EnumC9084b.INSIDE_APP_FOLDER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31566a[EnumC9084b.IS_PUBLIC_FOLDER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31566a[EnumC9084b.INSIDE_PUBLIC_FOLDER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31566a[EnumC9084b.ALREADY_SHARED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31566a[EnumC9084b.INVALID_PATH.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31566a[EnumC9084b.IS_OSX_PACKAGE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31566a[EnumC9084b.INSIDE_OSX_PACKAGE.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31566a[EnumC9084b.IS_VAULT.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f31566a[EnumC9084b.OTHER.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.az$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az$a.class */
    static final class C9083a extends AbstractC8559f<C9081az> {

        /* renamed from: a */
        public static final C9083a f31567a = new C9083a();

        C9083a() {
        }

        /* renamed from: a */
        public static C9081az m24861a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C9081az c9081az;
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
                if ("is_file".equals(str)) {
                    c9081az = C9081az.f31550a;
                } else if ("inside_shared_folder".equals(str)) {
                    c9081az = C9081az.f31551b;
                } else if ("contains_shared_folder".equals(str)) {
                    c9081az = C9081az.f31552c;
                } else if ("contains_app_folder".equals(str)) {
                    c9081az = C9081az.f31553d;
                } else if ("contains_team_folder".equals(str)) {
                    c9081az = C9081az.f31554e;
                } else if ("is_app_folder".equals(str)) {
                    c9081az = C9081az.f31555f;
                } else if ("inside_app_folder".equals(str)) {
                    c9081az = C9081az.f31556g;
                } else if ("is_public_folder".equals(str)) {
                    c9081az = C9081az.f31557h;
                } else if ("inside_public_folder".equals(str)) {
                    c9081az = C9081az.f31558i;
                } else if ("already_shared".equals(str)) {
                    C9099be.C9100a c9100a = C9099be.C9100a.f31598a;
                    c9081az = C9081az.m24863a(C9099be.C9100a.m24849a(jsonParser, true));
                } else {
                    c9081az = "invalid_path".equals(str) ? C9081az.f31559j : "is_osx_package".equals(str) ? C9081az.f31560k : "inside_osx_package".equals(str) ? C9081az.f31561l : "is_vault".equals(str) ? C9081az.f31562m : C9081az.f31563n;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9081az;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C9081az c9081az, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C90821.f31566a[c9081az.f31564o.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("is_file");
                    return;
                case 2:
                    jsonGenerator.writeString("inside_shared_folder");
                    return;
                case 3:
                    jsonGenerator.writeString("contains_shared_folder");
                    return;
                case 4:
                    jsonGenerator.writeString("contains_app_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("contains_team_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("is_app_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("inside_app_folder");
                    return;
                case 8:
                    jsonGenerator.writeString("is_public_folder");
                    return;
                case 9:
                    jsonGenerator.writeString("inside_public_folder");
                    return;
                case 10:
                    jsonGenerator.writeStartObject();
                    writeTag("already_shared", jsonGenerator);
                    C9099be.C9100a c9100a = C9099be.C9100a.f31598a;
                    C9099be.C9100a.m24850a(c9081az.f31565p, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 11:
                    jsonGenerator.writeString("invalid_path");
                    return;
                case 12:
                    jsonGenerator.writeString("is_osx_package");
                    return;
                case 13:
                    jsonGenerator.writeString("inside_osx_package");
                    return;
                case 14:
                    jsonGenerator.writeString("is_vault");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24861a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.az$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az$b.class */
    public enum EnumC9084b {
        IS_FILE,
        INSIDE_SHARED_FOLDER,
        CONTAINS_SHARED_FOLDER,
        CONTAINS_APP_FOLDER,
        CONTAINS_TEAM_FOLDER,
        IS_APP_FOLDER,
        INSIDE_APP_FOLDER,
        IS_PUBLIC_FOLDER,
        INSIDE_PUBLIC_FOLDER,
        ALREADY_SHARED,
        INVALID_PATH,
        IS_OSX_PACKAGE,
        INSIDE_OSX_PACKAGE,
        IS_VAULT,
        OTHER
    }

    static {
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
        new C9081az();
    }

    private C9081az() {
    }

    /* renamed from: a */
    private static C9081az m24865a(EnumC9084b enumC9084b) {
        C9081az c9081az = new C9081az();
        c9081az.f31564o = enumC9084b;
        return c9081az;
    }

    /* renamed from: a */
    public static C9081az m24863a(C9099be c9099be) {
        if (c9099be != null) {
            new C9081az();
            EnumC9084b enumC9084b = EnumC9084b.ALREADY_SHARED;
            C9081az c9081az = new C9081az();
            c9081az.f31564o = enumC9084b;
            c9081az.f31565p = c9099be;
            return c9081az;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9081az)) {
            return false;
        }
        C9081az c9081az = (C9081az) obj;
        if (this.f31564o != c9081az.f31564o) {
            return false;
        }
        switch (C90821.f31566a[this.f31564o.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            case 10:
                C9099be c9099be = this.f31565p;
                C9099be c9099be2 = c9081az.f31565p;
                return c9099be == c9099be2 || c9099be.equals(c9099be2);
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31564o, this.f31565p});
    }

    public final String toString() {
        return C9083a.f31567a.serialize((C9083a) this, false);
    }
}

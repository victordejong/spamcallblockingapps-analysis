package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8868ay;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.team.az */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az.class */
public final class C9258az {

    /* renamed from: a */
    public static final C9258az f31882a = m24731a(EnumC9261b.INVALID_FOLDER_NAME);

    /* renamed from: b */
    public static final C9258az f31883b = m24731a(EnumC9261b.FOLDER_NAME_ALREADY_USED);

    /* renamed from: c */
    public static final C9258az f31884c = m24731a(EnumC9261b.FOLDER_NAME_RESERVED);

    /* renamed from: d */
    public static final C9258az f31885d = m24731a(EnumC9261b.OTHER);

    /* renamed from: e */
    EnumC9261b f31886e;

    /* renamed from: f */
    private C8868ay f31887f;

    /* renamed from: com.dropbox.core.v2.team.az$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az$1.class */
    static final /* synthetic */ class C92591 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31888a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9261b.values().length];
            f31888a = iArr;
            try {
                iArr[EnumC9261b.INVALID_FOLDER_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31888a[EnumC9261b.FOLDER_NAME_ALREADY_USED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31888a[EnumC9261b.FOLDER_NAME_RESERVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31888a[EnumC9261b.SYNC_SETTINGS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31888a[EnumC9261b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.az$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az$a.class */
    static final class C9260a extends AbstractC8559f<C9258az> {

        /* renamed from: a */
        public static final C9260a f31889a = new C9260a();

        C9260a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9258az c9258az;
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
                if ("invalid_folder_name".equals(str)) {
                    c9258az = C9258az.f31882a;
                } else if ("folder_name_already_used".equals(str)) {
                    c9258az = C9258az.f31883b;
                } else if ("folder_name_reserved".equals(str)) {
                    c9258az = C9258az.f31884c;
                } else if ("sync_settings_error".equals(str)) {
                    expectField("sync_settings_error", jsonParser);
                    C8868ay.C8870a c8870a = C8868ay.C8870a.f31147a;
                    c9258az = C9258az.m24732a(C8868ay.C8870a.m25021a(jsonParser));
                } else {
                    c9258az = C9258az.f31885d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9258az;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9258az c9258az = (C9258az) obj;
            int i = C92591.f31888a[c9258az.f31886e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_folder_name");
            } else if (i == 2) {
                jsonGenerator.writeString("folder_name_already_used");
            } else if (i == 3) {
                jsonGenerator.writeString("folder_name_reserved");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("sync_settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("sync_settings_error");
                C8868ay.C8870a.f31147a.serialize(c9258az.f31887f, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.az$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az$b.class */
    public enum EnumC9261b {
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED,
        SYNC_SETTINGS_ERROR,
        OTHER
    }

    static {
        new C9258az();
        new C9258az();
        new C9258az();
        new C9258az();
    }

    private C9258az() {
    }

    /* renamed from: a */
    public static C9258az m24732a(C8868ay c8868ay) {
        if (c8868ay != null) {
            new C9258az();
            EnumC9261b enumC9261b = EnumC9261b.SYNC_SETTINGS_ERROR;
            C9258az c9258az = new C9258az();
            c9258az.f31886e = enumC9261b;
            c9258az.f31887f = c8868ay;
            return c9258az;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9258az m24731a(EnumC9261b enumC9261b) {
        C9258az c9258az = new C9258az();
        c9258az.f31886e = enumC9261b;
        return c9258az;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9258az)) {
            return false;
        }
        C9258az c9258az = (C9258az) obj;
        if (this.f31886e != c9258az.f31886e) {
            return false;
        }
        int i = C92591.f31888a[this.f31886e.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return i == 5;
        }
        C8868ay c8868ay = this.f31887f;
        C8868ay c8868ay2 = c9258az.f31887f;
        return c8868ay == c8868ay2 || c8868ay.equals(c8868ay2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31886e, this.f31887f});
    }

    public final String toString() {
        return C9260a.f31889a.serialize((C9260a) this, false);
    }
}

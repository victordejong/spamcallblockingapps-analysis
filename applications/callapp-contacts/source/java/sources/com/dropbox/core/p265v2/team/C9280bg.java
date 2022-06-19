package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8868ay;
import com.dropbox.core.p265v2.team.EnumC9247aw;
import com.dropbox.core.p265v2.team.EnumC9263ba;
import com.dropbox.core.p265v2.team.EnumC9277bf;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.team.bg */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg.class */
public final class C9280bg {

    /* renamed from: a */
    public static final C9280bg f31913a;

    /* renamed from: b */
    EnumC9283b f31914b;

    /* renamed from: c */
    private EnumC9247aw f31915c;

    /* renamed from: d */
    private EnumC9263ba f31916d;

    /* renamed from: e */
    private EnumC9277bf f31917e;

    /* renamed from: f */
    private C8868ay f31918f;

    /* renamed from: com.dropbox.core.v2.team.bg$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg$1.class */
    static final /* synthetic */ class C92811 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31919a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9283b.values().length];
            f31919a = iArr;
            try {
                iArr[EnumC9283b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31919a[EnumC9283b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31919a[EnumC9283b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31919a[EnumC9283b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31919a[EnumC9283b.SYNC_SETTINGS_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.bg$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg$a.class */
    static final class C9282a extends AbstractC8559f<C9280bg> {

        /* renamed from: a */
        public static final C9282a f31920a = new C9282a();

        C9282a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9280bg c9280bg;
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
                    EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
                    c9280bg = C9280bg.m24711a(EnumC9247aw.C9249a.m24745a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    EnumC9263ba.C9265a c9265a = EnumC9263ba.C9265a.f31891a;
                    c9280bg = C9280bg.m24710a(EnumC9263ba.C9265a.m24728a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    EnumC9277bf.C9279a c9279a = EnumC9277bf.C9279a.f31912a;
                    c9280bg = C9280bg.m24709a(EnumC9277bf.C9279a.m24713a(jsonParser));
                } else if ("other".equals(str)) {
                    c9280bg = C9280bg.f31913a;
                } else if (!"sync_settings_error".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("sync_settings_error", jsonParser);
                    C8868ay.C8870a c8870a = C8868ay.C8870a.f31147a;
                    c9280bg = C9280bg.m24712a(C8868ay.C8870a.m25021a(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9280bg;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9280bg c9280bg = (C9280bg) obj;
            int i = C92811.f31919a[c9280bg.f31914b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
                EnumC9247aw.C9249a.m24746a(c9280bg.f31915c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                EnumC9263ba.C9265a c9265a = EnumC9263ba.C9265a.f31891a;
                EnumC9263ba.C9265a.m24729a(c9280bg.f31916d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                EnumC9277bf.C9279a c9279a = EnumC9277bf.C9279a.f31912a;
                EnumC9277bf.C9279a.m24714a(c9280bg.f31917e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("other");
            } else if (i != 5) {
                throw new IllegalArgumentException("Unrecognized tag: " + c9280bg.f31914b);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("sync_settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("sync_settings_error");
                C8868ay.C8870a.f31147a.serialize(c9280bg.f31918f, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.bg$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg$b.class */
    public enum EnumC9283b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        SYNC_SETTINGS_ERROR
    }

    static {
        new C9280bg();
        EnumC9283b enumC9283b = EnumC9283b.OTHER;
        C9280bg c9280bg = new C9280bg();
        c9280bg.f31914b = enumC9283b;
        f31913a = c9280bg;
    }

    private C9280bg() {
    }

    /* renamed from: a */
    public static C9280bg m24712a(C8868ay c8868ay) {
        if (c8868ay != null) {
            new C9280bg();
            EnumC9283b enumC9283b = EnumC9283b.SYNC_SETTINGS_ERROR;
            C9280bg c9280bg = new C9280bg();
            c9280bg.f31914b = enumC9283b;
            c9280bg.f31918f = c8868ay;
            return c9280bg;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9280bg m24711a(EnumC9247aw enumC9247aw) {
        if (enumC9247aw != null) {
            new C9280bg();
            EnumC9283b enumC9283b = EnumC9283b.ACCESS_ERROR;
            C9280bg c9280bg = new C9280bg();
            c9280bg.f31914b = enumC9283b;
            c9280bg.f31915c = enumC9247aw;
            return c9280bg;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9280bg m24710a(EnumC9263ba enumC9263ba) {
        if (enumC9263ba != null) {
            new C9280bg();
            EnumC9283b enumC9283b = EnumC9283b.STATUS_ERROR;
            C9280bg c9280bg = new C9280bg();
            c9280bg.f31914b = enumC9283b;
            c9280bg.f31916d = enumC9263ba;
            return c9280bg;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9280bg m24709a(EnumC9277bf enumC9277bf) {
        if (enumC9277bf != null) {
            new C9280bg();
            EnumC9283b enumC9283b = EnumC9283b.TEAM_SHARED_DROPBOX_ERROR;
            C9280bg c9280bg = new C9280bg();
            c9280bg.f31914b = enumC9283b;
            c9280bg.f31917e = enumC9277bf;
            return c9280bg;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9280bg)) {
            return false;
        }
        C9280bg c9280bg = (C9280bg) obj;
        if (this.f31914b != c9280bg.f31914b) {
            return false;
        }
        int i = C92811.f31919a[this.f31914b.ordinal()];
        if (i == 1) {
            EnumC9247aw enumC9247aw = this.f31915c;
            EnumC9247aw enumC9247aw2 = c9280bg.f31915c;
            return enumC9247aw == enumC9247aw2 || enumC9247aw.equals(enumC9247aw2);
        } else if (i == 2) {
            EnumC9263ba enumC9263ba = this.f31916d;
            EnumC9263ba enumC9263ba2 = c9280bg.f31916d;
            return enumC9263ba == enumC9263ba2 || enumC9263ba.equals(enumC9263ba2);
        } else if (i == 3) {
            EnumC9277bf enumC9277bf = this.f31917e;
            EnumC9277bf enumC9277bf2 = c9280bg.f31917e;
            return enumC9277bf == enumC9277bf2 || enumC9277bf.equals(enumC9277bf2);
        } else if (i == 4) {
            return true;
        } else {
            if (i != 5) {
                return false;
            }
            C8868ay c8868ay = this.f31918f;
            C8868ay c8868ay2 = c9280bg.f31918f;
            return c8868ay == c8868ay2 || c8868ay.equals(c8868ay2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31914b, this.f31915c, this.f31916d, this.f31917e, this.f31918f});
    }

    public final String toString() {
        return C9282a.f31920a.serialize((C9282a) this, false);
    }
}

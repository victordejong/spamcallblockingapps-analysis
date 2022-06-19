package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
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
/* renamed from: com.dropbox.core.v2.team.bd */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bd.class */
public final class C9269bd {

    /* renamed from: a */
    public static final C9269bd f31894a;

    /* renamed from: b */
    EnumC9272b f31895b;

    /* renamed from: c */
    private EnumC9247aw f31896c;

    /* renamed from: d */
    private EnumC9263ba f31897d;

    /* renamed from: e */
    private EnumC9277bf f31898e;

    /* renamed from: com.dropbox.core.v2.team.bd$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bd$1.class */
    static final /* synthetic */ class C92701 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31899a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9272b.values().length];
            f31899a = iArr;
            try {
                iArr[EnumC9272b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31899a[EnumC9272b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31899a[EnumC9272b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31899a[EnumC9272b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.bd$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bd$a.class */
    static final class C9271a extends AbstractC8559f<C9269bd> {

        /* renamed from: a */
        public static final C9271a f31900a = new C9271a();

        C9271a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9269bd c9269bd;
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
                    c9269bd = C9269bd.m24727a(EnumC9247aw.C9249a.m24745a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    EnumC9263ba.C9265a c9265a = EnumC9263ba.C9265a.f31891a;
                    c9269bd = C9269bd.m24726a(EnumC9263ba.C9265a.m24728a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    EnumC9277bf.C9279a c9279a = EnumC9277bf.C9279a.f31912a;
                    c9269bd = C9269bd.m24724a(EnumC9277bf.C9279a.m24713a(jsonParser));
                } else if (!"other".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c9269bd = C9269bd.f31894a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9269bd;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9269bd c9269bd = (C9269bd) obj;
            int i = C92701.f31899a[c9269bd.f31895b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9247aw.C9249a c9249a = EnumC9247aw.C9249a.f31867a;
                EnumC9247aw.C9249a.m24746a(c9269bd.f31896c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                EnumC9263ba.C9265a c9265a = EnumC9263ba.C9265a.f31891a;
                EnumC9263ba.C9265a.m24729a(c9269bd.f31897d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                if (i == 4) {
                    jsonGenerator.writeString("other");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + c9269bd.f31895b);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                EnumC9277bf.C9279a c9279a = EnumC9277bf.C9279a.f31912a;
                EnumC9277bf.C9279a.m24714a(c9269bd.f31898e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.bd$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bd$b.class */
    public enum EnumC9272b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    static {
        new C9269bd();
        EnumC9272b enumC9272b = EnumC9272b.OTHER;
        C9269bd c9269bd = new C9269bd();
        c9269bd.f31895b = enumC9272b;
        f31894a = c9269bd;
    }

    private C9269bd() {
    }

    /* renamed from: a */
    public static C9269bd m24727a(EnumC9247aw enumC9247aw) {
        if (enumC9247aw != null) {
            new C9269bd();
            EnumC9272b enumC9272b = EnumC9272b.ACCESS_ERROR;
            C9269bd c9269bd = new C9269bd();
            c9269bd.f31895b = enumC9272b;
            c9269bd.f31896c = enumC9247aw;
            return c9269bd;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9269bd m24726a(EnumC9263ba enumC9263ba) {
        if (enumC9263ba != null) {
            new C9269bd();
            EnumC9272b enumC9272b = EnumC9272b.STATUS_ERROR;
            C9269bd c9269bd = new C9269bd();
            c9269bd.f31895b = enumC9272b;
            c9269bd.f31897d = enumC9263ba;
            return c9269bd;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9269bd m24724a(EnumC9277bf enumC9277bf) {
        if (enumC9277bf != null) {
            new C9269bd();
            EnumC9272b enumC9272b = EnumC9272b.TEAM_SHARED_DROPBOX_ERROR;
            C9269bd c9269bd = new C9269bd();
            c9269bd.f31895b = enumC9272b;
            c9269bd.f31898e = enumC9277bf;
            return c9269bd;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9269bd)) {
            return false;
        }
        C9269bd c9269bd = (C9269bd) obj;
        if (this.f31895b != c9269bd.f31895b) {
            return false;
        }
        int i = C92701.f31899a[this.f31895b.ordinal()];
        if (i == 1) {
            EnumC9247aw enumC9247aw = this.f31896c;
            EnumC9247aw enumC9247aw2 = c9269bd.f31896c;
            return enumC9247aw == enumC9247aw2 || enumC9247aw.equals(enumC9247aw2);
        } else if (i == 2) {
            EnumC9263ba enumC9263ba = this.f31897d;
            EnumC9263ba enumC9263ba2 = c9269bd.f31897d;
            return enumC9263ba == enumC9263ba2 || enumC9263ba.equals(enumC9263ba2);
        } else if (i != 3) {
            return i == 4;
        } else {
            EnumC9277bf enumC9277bf = this.f31898e;
            EnumC9277bf enumC9277bf2 = c9269bd.f31898e;
            return enumC9277bf == enumC9277bf2 || enumC9277bf.equals(enumC9277bf2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31895b, this.f31896c, this.f31897d, this.f31898e});
    }

    public final String toString() {
        return C9271a.f31900a.serialize((C9271a) this, false);
    }
}

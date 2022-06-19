package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8819ai;
import com.dropbox.core.p265v2.sharing.C9106bh;
import com.dropbox.core.p265v2.sharing.EnumC9116bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.k */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k.class */
public final class C9179k {

    /* renamed from: a */
    public static final C9179k f31740a = m24780a(EnumC9182b.EMAIL_NOT_VERIFIED);

    /* renamed from: b */
    public static final C9179k f31741b = m24780a(EnumC9182b.ACCESS_DENIED);

    /* renamed from: c */
    EnumC9182b f31742c;

    /* renamed from: d */
    private C8819ai f31743d;

    /* renamed from: e */
    private C9106bh f31744e;

    /* renamed from: f */
    private EnumC9116bl f31745f;

    /* renamed from: com.dropbox.core.v2.sharing.k$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k$1.class */
    static final /* synthetic */ class C91801 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31746a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9182b.values().length];
            f31746a = iArr;
            try {
                iArr[EnumC9182b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31746a[EnumC9182b.EMAIL_NOT_VERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31746a[EnumC9182b.SHARED_LINK_ALREADY_EXISTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31746a[EnumC9182b.SETTINGS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31746a[EnumC9182b.ACCESS_DENIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.k$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k$a.class */
    static final class C9181a extends AbstractC8559f<C9179k> {

        /* renamed from: a */
        public static final C9181a f31747a = new C9181a();

        C9181a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9179k c9179k;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c9179k = C9179k.m24783a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("email_not_verified".equals(str)) {
                    c9179k = C9179k.f31740a;
                } else if ("shared_link_already_exists".equals(str)) {
                    C9106bh c9106bh = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("shared_link_already_exists", jsonParser);
                        c9106bh = (C9106bh) C8548d.m25354a(C9106bh.C9108a.f31614a).deserialize(jsonParser);
                    }
                    c9179k = c9106bh == null ? C9179k.m24784a() : C9179k.m24782a(c9106bh);
                } else if ("settings_error".equals(str)) {
                    expectField("settings_error", jsonParser);
                    EnumC9116bl.C9118a c9118a = EnumC9116bl.C9118a.f31627a;
                    c9179k = C9179k.m24781a(EnumC9116bl.C9118a.m24841a(jsonParser));
                } else if (!"access_denied".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c9179k = C9179k.f31741b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9179k;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9179k c9179k = (C9179k) obj;
            int i = C91801.f31746a[c9179k.f31742c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c9179k.f31743d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("email_not_verified");
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("shared_link_already_exists", jsonGenerator);
                jsonGenerator.writeFieldName("shared_link_already_exists");
                C8548d.m25354a(C9106bh.C9108a.f31614a).serialize((AbstractC8547c) c9179k.f31744e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 4) {
                if (i == 5) {
                    jsonGenerator.writeString("access_denied");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + c9179k.f31742c);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("settings_error");
                EnumC9116bl.C9118a c9118a = EnumC9116bl.C9118a.f31627a;
                EnumC9116bl.C9118a.m24842a(c9179k.f31745f, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.k$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k$b.class */
    public enum EnumC9182b {
        PATH,
        EMAIL_NOT_VERIFIED,
        SHARED_LINK_ALREADY_EXISTS,
        SETTINGS_ERROR,
        ACCESS_DENIED
    }

    static {
        new C9179k();
        new C9179k();
    }

    private C9179k() {
    }

    /* renamed from: a */
    public static C9179k m24784a() {
        return m24782a((C9106bh) null);
    }

    /* renamed from: a */
    public static C9179k m24783a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C9179k();
            EnumC9182b enumC9182b = EnumC9182b.PATH;
            C9179k c9179k = new C9179k();
            c9179k.f31742c = enumC9182b;
            c9179k.f31743d = c8819ai;
            return c9179k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9179k m24782a(C9106bh c9106bh) {
        new C9179k();
        EnumC9182b enumC9182b = EnumC9182b.SHARED_LINK_ALREADY_EXISTS;
        C9179k c9179k = new C9179k();
        c9179k.f31742c = enumC9182b;
        c9179k.f31744e = c9106bh;
        return c9179k;
    }

    /* renamed from: a */
    public static C9179k m24781a(EnumC9116bl enumC9116bl) {
        if (enumC9116bl != null) {
            new C9179k();
            EnumC9182b enumC9182b = EnumC9182b.SETTINGS_ERROR;
            C9179k c9179k = new C9179k();
            c9179k.f31742c = enumC9182b;
            c9179k.f31745f = enumC9116bl;
            return c9179k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9179k m24780a(EnumC9182b enumC9182b) {
        C9179k c9179k = new C9179k();
        c9179k.f31742c = enumC9182b;
        return c9179k;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9179k)) {
            return false;
        }
        C9179k c9179k = (C9179k) obj;
        if (this.f31742c != c9179k.f31742c) {
            return false;
        }
        int i = C91801.f31746a[this.f31742c.ordinal()];
        if (i == 1) {
            C8819ai c8819ai = this.f31743d;
            C8819ai c8819ai2 = c9179k.f31743d;
            return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
        } else if (i == 2) {
            return true;
        } else {
            if (i != 3) {
                if (i != 4) {
                    return i == 5;
                }
                EnumC9116bl enumC9116bl = this.f31745f;
                EnumC9116bl enumC9116bl2 = c9179k.f31745f;
                return enumC9116bl == enumC9116bl2 || enumC9116bl.equals(enumC9116bl2);
            }
            C9106bh c9106bh = this.f31744e;
            C9106bh c9106bh2 = c9179k.f31744e;
            if (c9106bh == c9106bh2) {
                return true;
            }
            return c9106bh != null && c9106bh.equals(c9106bh2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31742c, this.f31743d, this.f31744e, this.f31745f});
    }

    public final String toString() {
        return C9181a.f31747a.serialize((C9181a) this, false);
    }
}

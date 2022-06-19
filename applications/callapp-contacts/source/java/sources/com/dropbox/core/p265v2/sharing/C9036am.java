package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9116bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.am */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am.class */
public final class C9036am {

    /* renamed from: a */
    public static final C9036am f31452a = m24899a(EnumC9039b.SHARED_LINK_NOT_FOUND);

    /* renamed from: b */
    public static final C9036am f31453b = m24899a(EnumC9039b.SHARED_LINK_ACCESS_DENIED);

    /* renamed from: c */
    public static final C9036am f31454c = m24899a(EnumC9039b.UNSUPPORTED_LINK_TYPE);

    /* renamed from: d */
    public static final C9036am f31455d = m24899a(EnumC9039b.OTHER);

    /* renamed from: e */
    public static final C9036am f31456e = m24899a(EnumC9039b.EMAIL_NOT_VERIFIED);

    /* renamed from: f */
    EnumC9039b f31457f;

    /* renamed from: g */
    private EnumC9116bl f31458g;

    /* renamed from: com.dropbox.core.v2.sharing.am$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am$1.class */
    static final /* synthetic */ class C90371 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31459a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9039b.values().length];
            f31459a = iArr;
            try {
                iArr[EnumC9039b.SHARED_LINK_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31459a[EnumC9039b.SHARED_LINK_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31459a[EnumC9039b.UNSUPPORTED_LINK_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31459a[EnumC9039b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31459a[EnumC9039b.SETTINGS_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31459a[EnumC9039b.EMAIL_NOT_VERIFIED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.am$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am$a.class */
    static final class C9038a extends AbstractC8559f<C9036am> {

        /* renamed from: a */
        public static final C9038a f31460a = new C9038a();

        C9038a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9036am c9036am;
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
                if ("shared_link_not_found".equals(str)) {
                    c9036am = C9036am.f31452a;
                } else if ("shared_link_access_denied".equals(str)) {
                    c9036am = C9036am.f31453b;
                } else if ("unsupported_link_type".equals(str)) {
                    c9036am = C9036am.f31454c;
                } else if ("other".equals(str)) {
                    c9036am = C9036am.f31455d;
                } else if ("settings_error".equals(str)) {
                    expectField("settings_error", jsonParser);
                    EnumC9116bl.C9118a c9118a = EnumC9116bl.C9118a.f31627a;
                    c9036am = C9036am.m24897a(EnumC9116bl.C9118a.m24841a(jsonParser));
                } else if (!"email_not_verified".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    c9036am = C9036am.f31456e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9036am;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9036am c9036am = (C9036am) obj;
            switch (C90371.f31459a[c9036am.f31457f.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("shared_link_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("shared_link_access_denied");
                    return;
                case 3:
                    jsonGenerator.writeString("unsupported_link_type");
                    return;
                case 4:
                    jsonGenerator.writeString("other");
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("settings_error", jsonGenerator);
                    jsonGenerator.writeFieldName("settings_error");
                    EnumC9116bl.C9118a c9118a = EnumC9116bl.C9118a.f31627a;
                    EnumC9116bl.C9118a.m24842a(c9036am.f31458g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeString("email_not_verified");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + c9036am.f31457f);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.am$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am$b.class */
    public enum EnumC9039b {
        SHARED_LINK_NOT_FOUND,
        SHARED_LINK_ACCESS_DENIED,
        UNSUPPORTED_LINK_TYPE,
        OTHER,
        SETTINGS_ERROR,
        EMAIL_NOT_VERIFIED
    }

    static {
        new C9036am();
        new C9036am();
        new C9036am();
        new C9036am();
        new C9036am();
    }

    private C9036am() {
    }

    /* renamed from: a */
    private static C9036am m24899a(EnumC9039b enumC9039b) {
        C9036am c9036am = new C9036am();
        c9036am.f31457f = enumC9039b;
        return c9036am;
    }

    /* renamed from: a */
    public static C9036am m24897a(EnumC9116bl enumC9116bl) {
        if (enumC9116bl != null) {
            new C9036am();
            EnumC9039b enumC9039b = EnumC9039b.SETTINGS_ERROR;
            C9036am c9036am = new C9036am();
            c9036am.f31457f = enumC9039b;
            c9036am.f31458g = enumC9116bl;
            return c9036am;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9036am)) {
            return false;
        }
        C9036am c9036am = (C9036am) obj;
        if (this.f31457f != c9036am.f31457f) {
            return false;
        }
        switch (C90371.f31459a[this.f31457f.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            case 5:
                EnumC9116bl enumC9116bl = this.f31458g;
                EnumC9116bl enumC9116bl2 = c9036am.f31458g;
                return enumC9116bl == enumC9116bl2 || enumC9116bl.equals(enumC9116bl2);
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31457f, this.f31458g});
    }

    public final String toString() {
        return C9038a.f31460a.serialize((C9038a) this, false);
    }
}

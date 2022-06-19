package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9210w;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.an */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an.class */
public final class C9040an {

    /* renamed from: a */
    public static final C9040an f31461a = m24896a(EnumC9043b.INSIDE_SHARED_FOLDER);

    /* renamed from: b */
    public static final C9040an f31462b = m24896a(EnumC9043b.ALREADY_MOUNTED);

    /* renamed from: c */
    public static final C9040an f31463c = m24896a(EnumC9043b.NO_PERMISSION);

    /* renamed from: d */
    public static final C9040an f31464d = m24896a(EnumC9043b.NOT_MOUNTABLE);

    /* renamed from: e */
    public static final C9040an f31465e = m24896a(EnumC9043b.OTHER);

    /* renamed from: f */
    EnumC9043b f31466f;

    /* renamed from: g */
    private EnumC9092bc f31467g;

    /* renamed from: h */
    private C9210w f31468h;

    /* renamed from: com.dropbox.core.v2.sharing.an$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an$1.class */
    static final /* synthetic */ class C90411 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31469a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9043b.values().length];
            f31469a = iArr;
            try {
                iArr[EnumC9043b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31469a[EnumC9043b.INSIDE_SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31469a[EnumC9043b.INSUFFICIENT_QUOTA.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31469a[EnumC9043b.ALREADY_MOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31469a[EnumC9043b.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31469a[EnumC9043b.NOT_MOUNTABLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31469a[EnumC9043b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.an$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an$a.class */
    static final class C9042a extends AbstractC8559f<C9040an> {

        /* renamed from: a */
        public static final C9042a f31470a = new C9042a();

        C9042a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C9040an c9040an;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    c9040an = C9040an.m24894a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else if ("inside_shared_folder".equals(str)) {
                    c9040an = C9040an.f31461a;
                } else if ("insufficient_quota".equals(str)) {
                    C9210w.C9211a c9211a = C9210w.C9211a.f31792a;
                    c9040an = C9040an.m24893a(C9210w.C9211a.m24754a(jsonParser, true));
                } else {
                    c9040an = "already_mounted".equals(str) ? C9040an.f31462b : "no_permission".equals(str) ? C9040an.f31463c : "not_mountable".equals(str) ? C9040an.f31464d : C9040an.f31465e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9040an;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9040an c9040an = (C9040an) obj;
            switch (C90411.f31469a[c9040an.f31466f.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    EnumC9092bc.C9094a.m24857a(c9040an.f31467g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("inside_shared_folder");
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("insufficient_quota", jsonGenerator);
                    C9210w.C9211a c9211a = C9210w.C9211a.f31792a;
                    C9210w.C9211a.m24755a(c9040an.f31468h, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("already_mounted");
                    return;
                case 5:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 6:
                    jsonGenerator.writeString("not_mountable");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.an$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an$b.class */
    public enum EnumC9043b {
        ACCESS_ERROR,
        INSIDE_SHARED_FOLDER,
        INSUFFICIENT_QUOTA,
        ALREADY_MOUNTED,
        NO_PERMISSION,
        NOT_MOUNTABLE,
        OTHER
    }

    static {
        new C9040an();
        new C9040an();
        new C9040an();
        new C9040an();
        new C9040an();
    }

    private C9040an() {
    }

    /* renamed from: a */
    private static C9040an m24896a(EnumC9043b enumC9043b) {
        C9040an c9040an = new C9040an();
        c9040an.f31466f = enumC9043b;
        return c9040an;
    }

    /* renamed from: a */
    public static C9040an m24894a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9040an();
            EnumC9043b enumC9043b = EnumC9043b.ACCESS_ERROR;
            C9040an c9040an = new C9040an();
            c9040an.f31466f = enumC9043b;
            c9040an.f31467g = enumC9092bc;
            return c9040an;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C9040an m24893a(C9210w c9210w) {
        if (c9210w != null) {
            new C9040an();
            EnumC9043b enumC9043b = EnumC9043b.INSUFFICIENT_QUOTA;
            C9040an c9040an = new C9040an();
            c9040an.f31466f = enumC9043b;
            c9040an.f31468h = c9210w;
            return c9040an;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9040an)) {
            return false;
        }
        C9040an c9040an = (C9040an) obj;
        if (this.f31466f != c9040an.f31466f) {
            return false;
        }
        switch (C90411.f31469a[this.f31466f.ordinal()]) {
            case 1:
                EnumC9092bc enumC9092bc = this.f31467g;
                EnumC9092bc enumC9092bc2 = c9040an.f31467g;
                return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
            case 2:
                return true;
            case 3:
                C9210w c9210w = this.f31468h;
                C9210w c9210w2 = c9040an.f31468h;
                return c9210w == c9210w2 || c9210w.equals(c9210w2);
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31466f, this.f31467g, this.f31468h});
    }

    public final String toString() {
        return C9042a.f31470a.serialize((C9042a) this, false);
    }
}

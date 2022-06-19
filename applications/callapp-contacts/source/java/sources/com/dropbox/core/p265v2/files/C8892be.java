package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.fileproperties.C8743c;
import com.dropbox.core.p265v2.files.C8896bf;
import com.dropbox.core.p265v2.files.C8910bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.be */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be.class */
public final class C8892be {

    /* renamed from: a */
    public static final C8892be f31194a = m25001a(EnumC8895b.TOO_MANY_SHARED_FOLDER_TARGETS);

    /* renamed from: b */
    public static final C8892be f31195b = m25001a(EnumC8895b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: c */
    public static final C8892be f31196c = m25001a(EnumC8895b.OTHER);

    /* renamed from: d */
    EnumC8895b f31197d;

    /* renamed from: e */
    private C8896bf f31198e;

    /* renamed from: f */
    private C8910bl f31199f;

    /* renamed from: g */
    private C8743c f31200g;

    /* renamed from: com.dropbox.core.v2.files.be$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be$1.class */
    static final /* synthetic */ class C88931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31201a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8895b.values().length];
            f31201a = iArr;
            try {
                iArr[EnumC8895b.LOOKUP_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31201a[EnumC8895b.PATH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31201a[EnumC8895b.PROPERTIES_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31201a[EnumC8895b.TOO_MANY_SHARED_FOLDER_TARGETS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31201a[EnumC8895b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31201a[EnumC8895b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.be$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be$a.class */
    static final class C8894a extends AbstractC8559f<C8892be> {

        /* renamed from: a */
        public static final C8894a f31202a = new C8894a();

        C8894a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8892be c8892be;
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
                if ("lookup_failed".equals(str)) {
                    expectField("lookup_failed", jsonParser);
                    C8896bf.C8898a c8898a = C8896bf.C8898a.f31211a;
                    c8892be = C8892be.m24999a(C8896bf.C8898a.m24991a(jsonParser));
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                    c8892be = C8892be.m24998a(C8910bl.C8912a.m24973a(jsonParser));
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    C8743c.C8745a c8745a = C8743c.C8745a.f30894a;
                    c8892be = C8892be.m25002a(C8743c.C8745a.m25121a(jsonParser));
                } else {
                    c8892be = "too_many_shared_folder_targets".equals(str) ? C8892be.f31194a : "too_many_write_operations".equals(str) ? C8892be.f31195b : C8892be.f31196c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8892be;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8892be c8892be = (C8892be) obj;
            int i = C88931.f31201a[c8892be.f31197d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("lookup_failed", jsonGenerator);
                jsonGenerator.writeFieldName("lookup_failed");
                C8896bf.C8898a.f31211a.serialize(c8892be.f31198e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8910bl.C8912a.f31231a.serialize(c8892be.f31199f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                C8743c.C8745a.f30894a.serialize(c8892be.f31200g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("too_many_shared_folder_targets");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_write_operations");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.be$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be$b.class */
    public enum EnumC8895b {
        LOOKUP_FAILED,
        PATH,
        PROPERTIES_ERROR,
        TOO_MANY_SHARED_FOLDER_TARGETS,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    static {
        new C8892be();
        new C8892be();
        new C8892be();
    }

    private C8892be() {
    }

    /* renamed from: a */
    public static C8892be m25002a(C8743c c8743c) {
        if (c8743c != null) {
            new C8892be();
            EnumC8895b enumC8895b = EnumC8895b.PROPERTIES_ERROR;
            C8892be c8892be = new C8892be();
            c8892be.f31197d = enumC8895b;
            c8892be.f31200g = c8743c;
            return c8892be;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8892be m25001a(EnumC8895b enumC8895b) {
        C8892be c8892be = new C8892be();
        c8892be.f31197d = enumC8895b;
        return c8892be;
    }

    /* renamed from: a */
    public static C8892be m24999a(C8896bf c8896bf) {
        if (c8896bf != null) {
            new C8892be();
            EnumC8895b enumC8895b = EnumC8895b.LOOKUP_FAILED;
            C8892be c8892be = new C8892be();
            c8892be.f31197d = enumC8895b;
            c8892be.f31198e = c8896bf;
            return c8892be;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8892be m24998a(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8892be();
            EnumC8895b enumC8895b = EnumC8895b.PATH;
            C8892be c8892be = new C8892be();
            c8892be.f31197d = enumC8895b;
            c8892be.f31199f = c8910bl;
            return c8892be;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8892be)) {
            return false;
        }
        C8892be c8892be = (C8892be) obj;
        if (this.f31197d != c8892be.f31197d) {
            return false;
        }
        switch (C88931.f31201a[this.f31197d.ordinal()]) {
            case 1:
                C8896bf c8896bf = this.f31198e;
                C8896bf c8896bf2 = c8892be.f31198e;
                return c8896bf == c8896bf2 || c8896bf.equals(c8896bf2);
            case 2:
                C8910bl c8910bl = this.f31199f;
                C8910bl c8910bl2 = c8892be.f31199f;
                return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
            case 3:
                C8743c c8743c = this.f31200g;
                C8743c c8743c2 = c8892be.f31200g;
                return c8743c == c8743c2 || c8743c.equals(c8743c2);
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31197d, this.f31198e, this.f31199f, this.f31200g});
    }

    public final String toString() {
        return C8894a.f31202a.serialize((C8894a) this, false);
    }
}

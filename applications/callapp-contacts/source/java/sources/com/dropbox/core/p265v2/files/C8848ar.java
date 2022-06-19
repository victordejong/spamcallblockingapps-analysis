package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8910bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ar */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar.class */
public final class C8848ar {

    /* renamed from: a */
    public static final C8848ar f31106a = m25039a(EnumC8851b.INVALID_COPY_REFERENCE);

    /* renamed from: b */
    public static final C8848ar f31107b = m25039a(EnumC8851b.NO_PERMISSION);

    /* renamed from: c */
    public static final C8848ar f31108c = m25039a(EnumC8851b.NOT_FOUND);

    /* renamed from: d */
    public static final C8848ar f31109d = m25039a(EnumC8851b.TOO_MANY_FILES);

    /* renamed from: e */
    public static final C8848ar f31110e = m25039a(EnumC8851b.OTHER);

    /* renamed from: f */
    EnumC8851b f31111f;

    /* renamed from: g */
    private C8910bl f31112g;

    /* renamed from: com.dropbox.core.v2.files.ar$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar$1.class */
    static final /* synthetic */ class C88491 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31113a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8851b.values().length];
            f31113a = iArr;
            try {
                iArr[EnumC8851b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31113a[EnumC8851b.INVALID_COPY_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31113a[EnumC8851b.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31113a[EnumC8851b.NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31113a[EnumC8851b.TOO_MANY_FILES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31113a[EnumC8851b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ar$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar$a.class */
    static final class C8850a extends AbstractC8559f<C8848ar> {

        /* renamed from: a */
        public static final C8850a f31114a = new C8850a();

        C8850a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8848ar c8848ar;
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
                    C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                    c8848ar = C8848ar.m25037a(C8910bl.C8912a.m24973a(jsonParser));
                } else {
                    c8848ar = "invalid_copy_reference".equals(str) ? C8848ar.f31106a : "no_permission".equals(str) ? C8848ar.f31107b : "not_found".equals(str) ? C8848ar.f31108c : "too_many_files".equals(str) ? C8848ar.f31109d : C8848ar.f31110e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8848ar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8848ar c8848ar = (C8848ar) obj;
            int i = C88491.f31113a[c8848ar.f31111f.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8910bl.C8912a.f31231a.serialize(c8848ar.f31112g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("invalid_copy_reference");
            } else if (i == 3) {
                jsonGenerator.writeString("no_permission");
            } else if (i == 4) {
                jsonGenerator.writeString("not_found");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ar$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ar$b.class */
    public enum EnumC8851b {
        PATH,
        INVALID_COPY_REFERENCE,
        NO_PERMISSION,
        NOT_FOUND,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new C8848ar();
        new C8848ar();
        new C8848ar();
        new C8848ar();
        new C8848ar();
    }

    private C8848ar() {
    }

    /* renamed from: a */
    private static C8848ar m25039a(EnumC8851b enumC8851b) {
        C8848ar c8848ar = new C8848ar();
        c8848ar.f31111f = enumC8851b;
        return c8848ar;
    }

    /* renamed from: a */
    public static C8848ar m25037a(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8848ar();
            EnumC8851b enumC8851b = EnumC8851b.PATH;
            C8848ar c8848ar = new C8848ar();
            c8848ar.f31111f = enumC8851b;
            c8848ar.f31112g = c8910bl;
            return c8848ar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8848ar)) {
            return false;
        }
        C8848ar c8848ar = (C8848ar) obj;
        if (this.f31111f != c8848ar.f31111f) {
            return false;
        }
        switch (C88491.f31113a[this.f31111f.ordinal()]) {
            case 1:
                C8910bl c8910bl = this.f31112g;
                C8910bl c8910bl2 = c8848ar.f31112g;
                return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31111f, this.f31112g});
    }

    public final String toString() {
        return C8850a.f31114a.serialize((C8850a) this, false);
    }
}

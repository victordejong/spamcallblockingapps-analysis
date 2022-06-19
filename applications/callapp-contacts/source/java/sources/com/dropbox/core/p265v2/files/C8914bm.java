package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.files.bm */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm.class */
public final class C8914bm {

    /* renamed from: a */
    public static final C8914bm f31232a = m24972a(EnumC8917b.ADD);

    /* renamed from: b */
    public static final C8914bm f31233b = m24972a(EnumC8917b.OVERWRITE);

    /* renamed from: c */
    EnumC8917b f31234c;

    /* renamed from: d */
    private String f31235d;

    /* renamed from: com.dropbox.core.v2.files.bm$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm$1.class */
    public static final /* synthetic */ class C89151 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31236a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8917b.values().length];
            f31236a = iArr;
            try {
                iArr[EnumC8917b.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31236a[EnumC8917b.OVERWRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31236a[EnumC8917b.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bm$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm$a.class */
    static final class C8916a extends AbstractC8559f<C8914bm> {

        /* renamed from: a */
        public static final C8916a f31237a = new C8916a();

        C8916a() {
        }

        /* renamed from: a */
        public static C8914bm m24968a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8914bm c8914bm;
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
                if ("add".equals(str)) {
                    c8914bm = C8914bm.f31232a;
                } else if ("overwrite".equals(str)) {
                    c8914bm = C8914bm.f31233b;
                } else if (!"update".equals(str)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                } else {
                    expectField("update", jsonParser);
                    c8914bm = C8914bm.m24970a(C8548d.C8556h.f30459a.deserialize(jsonParser));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8914bm;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(C8914bm c8914bm, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C89151.f31236a[c8914bm.f31234c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("add");
            } else if (i == 2) {
                jsonGenerator.writeString("overwrite");
            } else if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + c8914bm.f31234c);
            } else {
                jsonGenerator.writeStartObject();
                writeTag("update", jsonGenerator);
                jsonGenerator.writeFieldName("update");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8914bm.f31235d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24968a(jsonParser);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.bm$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm$b.class */
    public enum EnumC8917b {
        ADD,
        OVERWRITE,
        UPDATE
    }

    static {
        new C8914bm();
        new C8914bm();
    }

    private C8914bm() {
    }

    /* renamed from: a */
    private static C8914bm m24972a(EnumC8917b enumC8917b) {
        C8914bm c8914bm = new C8914bm();
        c8914bm.f31234c = enumC8917b;
        return c8914bm;
    }

    /* renamed from: a */
    public static C8914bm m24970a(String str) {
        if (str != null) {
            if (str.length() < 9) {
                throw new IllegalArgumentException("String is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str)) {
                throw new IllegalArgumentException("String does not match pattern");
            }
            new C8914bm();
            EnumC8917b enumC8917b = EnumC8917b.UPDATE;
            C8914bm c8914bm = new C8914bm();
            c8914bm.f31234c = enumC8917b;
            c8914bm.f31235d = str;
            return c8914bm;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8914bm)) {
            return false;
        }
        C8914bm c8914bm = (C8914bm) obj;
        if (this.f31234c != c8914bm.f31234c) {
            return false;
        }
        int i = C89151.f31236a[this.f31234c.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return false;
        }
        String str = this.f31235d;
        String str2 = c8914bm.f31235d;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31234c, this.f31235d});
    }

    public final String toString() {
        return C8916a.f31237a.serialize((C8916a) this, false);
    }
}

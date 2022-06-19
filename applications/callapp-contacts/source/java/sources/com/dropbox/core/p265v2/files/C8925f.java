package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.dropbox.core.p265v2.files.C8910bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.f */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f.class */
public final class C8925f {

    /* renamed from: a */
    public static final C8925f f31246a = m24963a(EnumC8928b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: b */
    public static final C8925f f31247b = m24963a(EnumC8928b.TOO_MANY_FILES);

    /* renamed from: c */
    public static final C8925f f31248c = m24963a(EnumC8928b.OTHER);

    /* renamed from: d */
    EnumC8928b f31249d;

    /* renamed from: e */
    private C8819ai f31250e;

    /* renamed from: f */
    private C8910bl f31251f;

    /* renamed from: com.dropbox.core.v2.files.f$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f$1.class */
    static final /* synthetic */ class C89261 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31252a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8928b.values().length];
            f31252a = iArr;
            try {
                iArr[EnumC8928b.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31252a[EnumC8928b.PATH_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31252a[EnumC8928b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31252a[EnumC8928b.TOO_MANY_FILES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31252a[EnumC8928b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.f$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f$a.class */
    static final class C8927a extends AbstractC8559f<C8925f> {

        /* renamed from: a */
        public static final C8927a f31253a = new C8927a();

        C8927a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8925f c8925f;
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
                if ("path_lookup".equals(str)) {
                    expectField("path_lookup", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c8925f = C8925f.m24965a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("path_write".equals(str)) {
                    expectField("path_write", jsonParser);
                    C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                    c8925f = C8925f.m24964a(C8910bl.C8912a.m24973a(jsonParser));
                } else {
                    c8925f = "too_many_write_operations".equals(str) ? C8925f.f31246a : "too_many_files".equals(str) ? C8925f.f31247b : C8925f.f31248c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8925f;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8925f c8925f = (C8925f) obj;
            int i = C89261.f31252a[c8925f.f31249d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path_lookup", jsonGenerator);
                jsonGenerator.writeFieldName("path_lookup");
                C8819ai.C8821a.f31056a.serialize(c8925f.f31250e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path_write", jsonGenerator);
                jsonGenerator.writeFieldName("path_write");
                C8910bl.C8912a.f31231a.serialize(c8925f.f31251f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("too_many_write_operations");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.f$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/f$b.class */
    public enum EnumC8928b {
        PATH_LOOKUP,
        PATH_WRITE,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new C8925f();
        new C8925f();
        new C8925f();
    }

    private C8925f() {
    }

    /* renamed from: a */
    public static C8925f m24965a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8925f();
            EnumC8928b enumC8928b = EnumC8928b.PATH_LOOKUP;
            C8925f c8925f = new C8925f();
            c8925f.f31249d = enumC8928b;
            c8925f.f31250e = c8819ai;
            return c8925f;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8925f m24964a(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8925f();
            EnumC8928b enumC8928b = EnumC8928b.PATH_WRITE;
            C8925f c8925f = new C8925f();
            c8925f.f31249d = enumC8928b;
            c8925f.f31251f = c8910bl;
            return c8925f;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8925f m24963a(EnumC8928b enumC8928b) {
        C8925f c8925f = new C8925f();
        c8925f.f31249d = enumC8928b;
        return c8925f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8925f)) {
            return false;
        }
        C8925f c8925f = (C8925f) obj;
        if (this.f31249d != c8925f.f31249d) {
            return false;
        }
        int i = C89261.f31252a[this.f31249d.ordinal()];
        if (i == 1) {
            C8819ai c8819ai = this.f31250e;
            C8819ai c8819ai2 = c8925f.f31250e;
            return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
        } else if (i != 2) {
            return i == 3 || i == 4 || i == 5;
        } else {
            C8910bl c8910bl = this.f31251f;
            C8910bl c8910bl2 = c8925f.f31251f;
            return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31249d, this.f31250e, this.f31251f});
    }

    public final String toString() {
        return C8927a.f31253a.serialize((C8927a) this, false);
    }
}

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
/* renamed from: com.dropbox.core.v2.files.aq */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq.class */
public final class C8844aq {

    /* renamed from: a */
    public static final C8844aq f31099a = m25043a(EnumC8847b.INVALID_REVISION);

    /* renamed from: b */
    public static final C8844aq f31100b = m25043a(EnumC8847b.OTHER);

    /* renamed from: c */
    EnumC8847b f31101c;

    /* renamed from: d */
    private C8819ai f31102d;

    /* renamed from: e */
    private C8910bl f31103e;

    /* renamed from: com.dropbox.core.v2.files.aq$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq$1.class */
    static final /* synthetic */ class C88451 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31104a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8847b.values().length];
            f31104a = iArr;
            try {
                iArr[EnumC8847b.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31104a[EnumC8847b.PATH_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31104a[EnumC8847b.INVALID_REVISION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31104a[EnumC8847b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.aq$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq$a.class */
    static final class C8846a extends AbstractC8559f<C8844aq> {

        /* renamed from: a */
        public static final C8846a f31105a = new C8846a();

        C8846a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8844aq c8844aq;
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
                    c8844aq = C8844aq.m25044a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("path_write".equals(str)) {
                    expectField("path_write", jsonParser);
                    C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                    c8844aq = C8844aq.m25041a(C8910bl.C8912a.m24973a(jsonParser));
                } else {
                    c8844aq = "invalid_revision".equals(str) ? C8844aq.f31099a : C8844aq.f31100b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8844aq;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8844aq c8844aq = (C8844aq) obj;
            int i = C88451.f31104a[c8844aq.f31101c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path_lookup", jsonGenerator);
                jsonGenerator.writeFieldName("path_lookup");
                C8819ai.C8821a.f31056a.serialize(c8844aq.f31102d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                if (i != 3) {
                    jsonGenerator.writeString("other");
                } else {
                    jsonGenerator.writeString("invalid_revision");
                }
            } else {
                jsonGenerator.writeStartObject();
                writeTag("path_write", jsonGenerator);
                jsonGenerator.writeFieldName("path_write");
                C8910bl.C8912a.f31231a.serialize(c8844aq.f31103e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.aq$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq$b.class */
    public enum EnumC8847b {
        PATH_LOOKUP,
        PATH_WRITE,
        INVALID_REVISION,
        OTHER
    }

    static {
        new C8844aq();
        new C8844aq();
    }

    private C8844aq() {
    }

    /* renamed from: a */
    public static C8844aq m25044a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8844aq();
            EnumC8847b enumC8847b = EnumC8847b.PATH_LOOKUP;
            C8844aq c8844aq = new C8844aq();
            c8844aq.f31101c = enumC8847b;
            c8844aq.f31102d = c8819ai;
            return c8844aq;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8844aq m25043a(EnumC8847b enumC8847b) {
        C8844aq c8844aq = new C8844aq();
        c8844aq.f31101c = enumC8847b;
        return c8844aq;
    }

    /* renamed from: a */
    public static C8844aq m25041a(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8844aq();
            EnumC8847b enumC8847b = EnumC8847b.PATH_WRITE;
            C8844aq c8844aq = new C8844aq();
            c8844aq.f31101c = enumC8847b;
            c8844aq.f31103e = c8910bl;
            return c8844aq;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8844aq)) {
            return false;
        }
        C8844aq c8844aq = (C8844aq) obj;
        if (this.f31101c != c8844aq.f31101c) {
            return false;
        }
        int i = C88451.f31104a[this.f31101c.ordinal()];
        if (i == 1) {
            C8819ai c8819ai = this.f31102d;
            C8819ai c8819ai2 = c8844aq.f31102d;
            return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
        } else if (i != 2) {
            return i == 3 || i == 4;
        } else {
            C8910bl c8910bl = this.f31103e;
            C8910bl c8910bl2 = c8844aq.f31103e;
            return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31101c, this.f31102d, this.f31103e});
    }

    public final String toString() {
        return C8846a.f31105a.serialize((C8846a) this, false);
    }
}

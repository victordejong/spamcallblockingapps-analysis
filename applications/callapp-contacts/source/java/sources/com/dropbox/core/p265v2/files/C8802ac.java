package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.fileproperties.C8771l;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ac */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac.class */
public final class C8802ac {

    /* renamed from: a */
    public static final C8802ac f31017a;

    /* renamed from: b */
    EnumC8805b f31018b;

    /* renamed from: c */
    private C8819ai f31019c;

    /* renamed from: d */
    private C8771l f31020d;

    /* renamed from: com.dropbox.core.v2.files.ac$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac$1.class */
    static final /* synthetic */ class C88031 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31021a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8805b.values().length];
            f31021a = iArr;
            try {
                iArr[EnumC8805b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31021a[EnumC8805b.TEMPLATE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31021a[EnumC8805b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ac$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac$a.class */
    static final class C8804a extends AbstractC8559f<C8802ac> {

        /* renamed from: a */
        public static final C8804a f31022a = new C8804a();

        C8804a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8802ac c8802ac;
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
                    c8802ac = C8802ac.m25082a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("template_error".equals(str)) {
                    expectField("template_error", jsonParser);
                    C8771l.C8773a c8773a = C8771l.C8773a.f30941a;
                    c8802ac = C8802ac.m25084a(C8771l.C8773a.m25097a(jsonParser));
                } else {
                    c8802ac = C8802ac.f31017a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8802ac;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8802ac c8802ac = (C8802ac) obj;
            int i = C88031.f31021a[c8802ac.f31018b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8819ai.C8821a.f31056a.serialize(c8802ac.f31019c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("template_error", jsonGenerator);
                jsonGenerator.writeFieldName("template_error");
                C8771l.C8773a.f30941a.serialize(c8802ac.f31020d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ac$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac$b.class */
    public enum EnumC8805b {
        PATH,
        TEMPLATE_ERROR,
        OTHER
    }

    static {
        new C8802ac();
        EnumC8805b enumC8805b = EnumC8805b.OTHER;
        C8802ac c8802ac = new C8802ac();
        c8802ac.f31018b = enumC8805b;
        f31017a = c8802ac;
    }

    private C8802ac() {
    }

    /* renamed from: a */
    public static C8802ac m25084a(C8771l c8771l) {
        if (c8771l != null) {
            new C8802ac();
            EnumC8805b enumC8805b = EnumC8805b.TEMPLATE_ERROR;
            C8802ac c8802ac = new C8802ac();
            c8802ac.f31018b = enumC8805b;
            c8802ac.f31020d = c8771l;
            return c8802ac;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8802ac m25082a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8802ac();
            EnumC8805b enumC8805b = EnumC8805b.PATH;
            C8802ac c8802ac = new C8802ac();
            c8802ac.f31018b = enumC8805b;
            c8802ac.f31019c = c8819ai;
            return c8802ac;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8802ac)) {
            return false;
        }
        C8802ac c8802ac = (C8802ac) obj;
        if (this.f31018b != c8802ac.f31018b) {
            return false;
        }
        int i = C88031.f31021a[this.f31018b.ordinal()];
        if (i == 1) {
            C8819ai c8819ai = this.f31019c;
            C8819ai c8819ai2 = c8802ac.f31019c;
            return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
        } else if (i != 2) {
            return i == 3;
        } else {
            C8771l c8771l = this.f31020d;
            C8771l c8771l2 = c8802ac.f31020d;
            return c8771l == c8771l2 || c8771l.equals(c8771l2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31018b, this.f31019c, this.f31020d});
    }

    public final String toString() {
        return C8804a.f31022a.serialize((C8804a) this, false);
    }
}

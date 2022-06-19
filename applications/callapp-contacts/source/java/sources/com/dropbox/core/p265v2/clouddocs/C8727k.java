package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.clouddocs.EnumC8704c;
import com.dropbox.core.p265v2.clouddocs.EnumC8715g;
import com.dropbox.core.p265v2.clouddocs.EnumC8724j;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.clouddocs.k */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k.class */
public final class C8727k {

    /* renamed from: a */
    public static final C8727k f30849a;

    /* renamed from: b */
    EnumC8730b f30850b;

    /* renamed from: c */
    private EnumC8724j f30851c;

    /* renamed from: d */
    private EnumC8704c f30852d;

    /* renamed from: e */
    private EnumC8715g f30853e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.clouddocs.k$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k$1.class */
    public static final /* synthetic */ class C87281 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30854a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8730b.values().length];
            f30854a = iArr;
            try {
                iArr[EnumC8730b.RENAME_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30854a[EnumC8730b.GENERIC_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30854a[EnumC8730b.LOCKING_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30854a[EnumC8730b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.k$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k$a.class */
    static final class C8729a extends AbstractC8559f<C8727k> {

        /* renamed from: a */
        public static final C8729a f30855a = new C8729a();

        C8729a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8727k c8727k;
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
                if ("rename_error".equals(str)) {
                    expectField("rename_error", jsonParser);
                    EnumC8724j.C8726a c8726a = EnumC8724j.C8726a.f30848a;
                    c8727k = C8727k.m25138a(EnumC8724j.C8726a.m25141a(jsonParser));
                } else if ("generic_error".equals(str)) {
                    expectField("generic_error", jsonParser);
                    EnumC8704c.C8706a c8706a = EnumC8704c.C8706a.f30827a;
                    c8727k = C8727k.m25140a(EnumC8704c.C8706a.m25151a(jsonParser));
                } else if ("locking_error".equals(str)) {
                    expectField("locking_error", jsonParser);
                    EnumC8715g.C8717a c8717a = EnumC8715g.C8717a.f30838a;
                    c8727k = C8727k.m25139a(EnumC8715g.C8717a.m25147a(jsonParser));
                } else {
                    c8727k = C8727k.f30849a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8727k;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8727k c8727k = (C8727k) obj;
            int i = C87281.f30854a[c8727k.f30850b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("rename_error", jsonGenerator);
                jsonGenerator.writeFieldName("rename_error");
                EnumC8724j.C8726a c8726a = EnumC8724j.C8726a.f30848a;
                EnumC8724j.C8726a.m25142a(c8727k.f30851c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("generic_error", jsonGenerator);
                jsonGenerator.writeFieldName("generic_error");
                EnumC8704c.C8706a c8706a = EnumC8704c.C8706a.f30827a;
                EnumC8704c.C8706a.m25152a(c8727k.f30852d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("locking_error", jsonGenerator);
                jsonGenerator.writeFieldName("locking_error");
                EnumC8715g.C8717a c8717a = EnumC8715g.C8717a.f30838a;
                EnumC8715g.C8717a.m25148a(c8727k.f30853e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.k$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k$b.class */
    public enum EnumC8730b {
        RENAME_ERROR,
        GENERIC_ERROR,
        LOCKING_ERROR,
        OTHER
    }

    static {
        new C8727k();
        EnumC8730b enumC8730b = EnumC8730b.OTHER;
        C8727k c8727k = new C8727k();
        c8727k.f30850b = enumC8730b;
        f30849a = c8727k;
    }

    private C8727k() {
    }

    /* renamed from: a */
    public static C8727k m25140a(EnumC8704c enumC8704c) {
        if (enumC8704c != null) {
            new C8727k();
            EnumC8730b enumC8730b = EnumC8730b.GENERIC_ERROR;
            C8727k c8727k = new C8727k();
            c8727k.f30850b = enumC8730b;
            c8727k.f30852d = enumC8704c;
            return c8727k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8727k m25139a(EnumC8715g enumC8715g) {
        if (enumC8715g != null) {
            new C8727k();
            EnumC8730b enumC8730b = EnumC8730b.LOCKING_ERROR;
            C8727k c8727k = new C8727k();
            c8727k.f30850b = enumC8730b;
            c8727k.f30853e = enumC8715g;
            return c8727k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8727k m25138a(EnumC8724j enumC8724j) {
        if (enumC8724j != null) {
            new C8727k();
            EnumC8730b enumC8730b = EnumC8730b.RENAME_ERROR;
            C8727k c8727k = new C8727k();
            c8727k.f30850b = enumC8730b;
            c8727k.f30851c = enumC8724j;
            return c8727k;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8727k)) {
            return false;
        }
        C8727k c8727k = (C8727k) obj;
        if (this.f30850b != c8727k.f30850b) {
            return false;
        }
        int i = C87281.f30854a[this.f30850b.ordinal()];
        if (i == 1) {
            EnumC8724j enumC8724j = this.f30851c;
            EnumC8724j enumC8724j2 = c8727k.f30851c;
            return enumC8724j == enumC8724j2 || enumC8724j.equals(enumC8724j2);
        } else if (i == 2) {
            EnumC8704c enumC8704c = this.f30852d;
            EnumC8704c enumC8704c2 = c8727k.f30852d;
            return enumC8704c == enumC8704c2 || enumC8704c.equals(enumC8704c2);
        } else if (i != 3) {
            return i == 4;
        } else {
            EnumC8715g enumC8715g = this.f30853e;
            EnumC8715g enumC8715g2 = c8727k.f30853e;
            return enumC8715g == enumC8715g2 || enumC8715g.equals(enumC8715g2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30850b, this.f30851c, this.f30852d, this.f30853e});
    }

    public final String toString() {
        return C8729a.f30855a.serialize((C8729a) this, false);
    }
}

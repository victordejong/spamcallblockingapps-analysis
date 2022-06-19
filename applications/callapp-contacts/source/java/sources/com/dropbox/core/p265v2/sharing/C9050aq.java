package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9119bm;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.aq */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq.class */
public final class C9050aq {

    /* renamed from: a */
    public static final C9050aq f31495a = m24888a(EnumC9053b.GROUP_ACCESS);

    /* renamed from: b */
    public static final C9050aq f31496b = m24888a(EnumC9053b.NO_PERMISSION);

    /* renamed from: c */
    public static final C9050aq f31497c = m24888a(EnumC9053b.OTHER);

    /* renamed from: d */
    EnumC9053b f31498d;

    /* renamed from: e */
    private EnumC9119bm f31499e;

    /* renamed from: com.dropbox.core.v2.sharing.aq$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq$1.class */
    static final /* synthetic */ class C90511 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31500a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9053b.values().length];
            f31500a = iArr;
            try {
                iArr[EnumC9053b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31500a[EnumC9053b.GROUP_ACCESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31500a[EnumC9053b.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31500a[EnumC9053b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.aq$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq$a.class */
    static final class C9052a extends AbstractC8559f<C9050aq> {

        /* renamed from: a */
        public static final C9052a f31501a = new C9052a();

        C9052a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9050aq c9050aq;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                    c9050aq = C9050aq.m24886a(EnumC9119bm.C9121a.m24839a(jsonParser));
                } else {
                    c9050aq = "group_access".equals(str) ? C9050aq.f31495a : "no_permission".equals(str) ? C9050aq.f31496b : C9050aq.f31497c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9050aq;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9050aq c9050aq = (C9050aq) obj;
            int i = C90511.f31500a[c9050aq.f31498d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9119bm.C9121a c9121a = EnumC9119bm.C9121a.f31629a;
                EnumC9119bm.C9121a.m24840a(c9050aq.f31499e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("group_access");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.aq$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq$b.class */
    public enum EnumC9053b {
        ACCESS_ERROR,
        GROUP_ACCESS,
        NO_PERMISSION,
        OTHER
    }

    static {
        new C9050aq();
        new C9050aq();
        new C9050aq();
    }

    private C9050aq() {
    }

    /* renamed from: a */
    private static C9050aq m24888a(EnumC9053b enumC9053b) {
        C9050aq c9050aq = new C9050aq();
        c9050aq.f31498d = enumC9053b;
        return c9050aq;
    }

    /* renamed from: a */
    public static C9050aq m24886a(EnumC9119bm enumC9119bm) {
        if (enumC9119bm != null) {
            new C9050aq();
            EnumC9053b enumC9053b = EnumC9053b.ACCESS_ERROR;
            C9050aq c9050aq = new C9050aq();
            c9050aq.f31498d = enumC9053b;
            c9050aq.f31499e = enumC9119bm;
            return c9050aq;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9050aq)) {
            return false;
        }
        C9050aq c9050aq = (C9050aq) obj;
        if (this.f31498d != c9050aq.f31498d) {
            return false;
        }
        int i = C90511.f31500a[this.f31498d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        EnumC9119bm enumC9119bm = this.f31499e;
        EnumC9119bm enumC9119bm2 = c9050aq.f31499e;
        return enumC9119bm == enumC9119bm2 || enumC9119bm.equals(enumC9119bm2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31498d, this.f31499e});
    }

    public final String toString() {
        return C9052a.f31501a.serialize((C9052a) this, false);
    }
}

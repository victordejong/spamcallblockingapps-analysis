package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.u */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u.class */
public final class C9204u {

    /* renamed from: a */
    public static final C9204u f31781a;

    /* renamed from: b */
    EnumC9207b f31782b;

    /* renamed from: c */
    private String f31783c;

    /* renamed from: com.dropbox.core.v2.sharing.u$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u$1.class */
    static final /* synthetic */ class C92051 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31784a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9207b.values().length];
            f31784a = iArr;
            try {
                iArr[EnumC9207b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31784a[EnumC9207b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.u$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u$a.class */
    static final class C9206a extends AbstractC8559f<C9204u> {

        /* renamed from: a */
        public static final C9206a f31785a = new C9206a();

        C9206a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9204u c9204u;
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
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("path", jsonParser);
                        str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                    }
                    c9204u = str2 == null ? C9204u.m24760a() : C9204u.m24758a(str2);
                } else {
                    c9204u = C9204u.f31781a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9204u;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9204u c9204u = (C9204u) obj;
            if (C92051.f31784a[c9204u.f31782b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9204u.f31783c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.u$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u$b.class */
    public enum EnumC9207b {
        PATH,
        OTHER
    }

    static {
        new C9204u();
        EnumC9207b enumC9207b = EnumC9207b.OTHER;
        C9204u c9204u = new C9204u();
        c9204u.f31782b = enumC9207b;
        f31781a = c9204u;
    }

    private C9204u() {
    }

    /* renamed from: a */
    public static C9204u m24760a() {
        return m24758a((String) null);
    }

    /* renamed from: a */
    public static C9204u m24758a(String str) {
        new C9204u();
        EnumC9207b enumC9207b = EnumC9207b.PATH;
        C9204u c9204u = new C9204u();
        c9204u.f31782b = enumC9207b;
        c9204u.f31783c = str;
        return c9204u;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9204u)) {
            return false;
        }
        C9204u c9204u = (C9204u) obj;
        if (this.f31782b != c9204u.f31782b) {
            return false;
        }
        int i = C92051.f31784a[this.f31782b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f31783c;
        String str2 = c9204u.f31783c;
        if (str == str2) {
            return true;
        }
        return str != null && str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31782b, this.f31783c});
    }

    public final String toString() {
        return C9206a.f31785a.serialize((C9206a) this, false);
    }
}

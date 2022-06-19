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
/* renamed from: com.dropbox.core.v2.files.as */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as.class */
public final class C8852as {

    /* renamed from: a */
    public static final C8852as f31115a = m25036a(EnumC8855b.DOWNLOAD_FAILED);

    /* renamed from: b */
    public static final C8852as f31116b = m25036a(EnumC8855b.INVALID_URL);

    /* renamed from: c */
    public static final C8852as f31117c = m25036a(EnumC8855b.NOT_FOUND);

    /* renamed from: d */
    public static final C8852as f31118d = m25036a(EnumC8855b.OTHER);

    /* renamed from: e */
    EnumC8855b f31119e;

    /* renamed from: f */
    private C8910bl f31120f;

    /* renamed from: com.dropbox.core.v2.files.as$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as$1.class */
    static final /* synthetic */ class C88531 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31121a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8855b.values().length];
            f31121a = iArr;
            try {
                iArr[EnumC8855b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31121a[EnumC8855b.DOWNLOAD_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31121a[EnumC8855b.INVALID_URL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31121a[EnumC8855b.NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31121a[EnumC8855b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.as$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as$a.class */
    static final class C8854a extends AbstractC8559f<C8852as> {

        /* renamed from: a */
        public static final C8854a f31122a = new C8854a();

        C8854a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8852as c8852as;
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
                    c8852as = C8852as.m25034a(C8910bl.C8912a.m24973a(jsonParser));
                } else {
                    c8852as = "download_failed".equals(str) ? C8852as.f31115a : "invalid_url".equals(str) ? C8852as.f31116b : "not_found".equals(str) ? C8852as.f31117c : C8852as.f31118d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8852as;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8852as c8852as = (C8852as) obj;
            int i = C88531.f31121a[c8852as.f31119e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                C8910bl.C8912a.f31231a.serialize(c8852as.f31120f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("download_failed");
            } else if (i == 3) {
                jsonGenerator.writeString("invalid_url");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("not_found");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.as$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as$b.class */
    public enum EnumC8855b {
        PATH,
        DOWNLOAD_FAILED,
        INVALID_URL,
        NOT_FOUND,
        OTHER
    }

    static {
        new C8852as();
        new C8852as();
        new C8852as();
        new C8852as();
    }

    private C8852as() {
    }

    /* renamed from: a */
    private static C8852as m25036a(EnumC8855b enumC8855b) {
        C8852as c8852as = new C8852as();
        c8852as.f31119e = enumC8855b;
        return c8852as;
    }

    /* renamed from: a */
    public static C8852as m25034a(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8852as();
            EnumC8855b enumC8855b = EnumC8855b.PATH;
            C8852as c8852as = new C8852as();
            c8852as.f31119e = enumC8855b;
            c8852as.f31120f = c8910bl;
            return c8852as;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8852as)) {
            return false;
        }
        C8852as c8852as = (C8852as) obj;
        if (this.f31119e != c8852as.f31119e) {
            return false;
        }
        int i = C88531.f31121a[this.f31119e.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4 || i == 5;
        }
        C8910bl c8910bl = this.f31120f;
        C8910bl c8910bl2 = c8852as.f31120f;
        return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31119e, this.f31120f});
    }

    public final String toString() {
        return C8854a.f31122a.serialize((C8854a) this, false);
    }
}

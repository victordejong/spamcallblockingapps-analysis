package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as.class */
public final class as {

    /* renamed from: a  reason: collision with root package name */
    public static final as f18201a = a(b.DOWNLOAD_FAILED);

    /* renamed from: b  reason: collision with root package name */
    public static final as f18202b = a(b.INVALID_URL);

    /* renamed from: c  reason: collision with root package name */
    public static final as f18203c = a(b.NOT_FOUND);

    /* renamed from: d  reason: collision with root package name */
    public static final as f18204d = a(b.OTHER);
    b e;
    private bl f;

    /* renamed from: com.dropbox.core.v2.files.as$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18205a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18205a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18205a[b.DOWNLOAD_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18205a[b.INVALID_URL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18205a[b.NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18205a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as$a.class */
    static final class a extends f<as> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18206a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            as asVar;
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
                    bl.a aVar = bl.a.f18290a;
                    asVar = as.a(bl.a.a(jsonParser));
                } else {
                    asVar = "download_failed".equals(str) ? as.f18201a : "invalid_url".equals(str) ? as.f18202b : "not_found".equals(str) ? as.f18203c : as.f18204d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return asVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            as asVar = (as) obj;
            int i = AnonymousClass1.f18205a[asVar.e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                bl.a.f18290a.serialize(asVar.f, jsonGenerator);
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

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/as$b.class */
    public enum b {
        PATH,
        DOWNLOAD_FAILED,
        INVALID_URL,
        NOT_FOUND,
        OTHER
    }

    static {
        new as();
        new as();
        new as();
        new as();
    }

    private as() {
    }

    private static as a(b bVar) {
        as asVar = new as();
        asVar.e = bVar;
        return asVar;
    }

    public static as a(bl blVar) {
        if (blVar != null) {
            new as();
            b bVar = b.PATH;
            as asVar = new as();
            asVar.e = bVar;
            asVar.f = blVar;
            return asVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof as)) {
            return false;
        }
        as asVar = (as) obj;
        if (this.e != asVar.e) {
            return false;
        }
        int i = AnonymousClass1.f18205a[this.e.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4 || i == 5;
        }
        bl blVar = this.f;
        bl blVar2 = asVar.f;
        return blVar == blVar2 || blVar.equals(blVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f});
    }

    public final String toString() {
        return a.f18206a.serialize((a) this, false);
    }
}

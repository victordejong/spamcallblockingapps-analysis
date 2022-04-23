package com.dropbox.core.v2.files;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm.class */
public final class bm {

    /* renamed from: a  reason: collision with root package name */
    public static final bm f18291a = a(b.ADD);

    /* renamed from: b  reason: collision with root package name */
    public static final bm f18292b = a(b.OVERWRITE);

    /* renamed from: c  reason: collision with root package name */
    b f18293c;

    /* renamed from: d  reason: collision with root package name */
    private String f18294d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bm$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18295a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18295a = iArr;
            try {
                iArr[b.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18295a[b.OVERWRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18295a[b.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm$a.class */
    static final class a extends f<bm> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18296a = new a();

        a() {
        }

        public static bm a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bm bmVar;
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
                    bmVar = bm.f18291a;
                } else if ("overwrite".equals(str)) {
                    bmVar = bm.f18292b;
                } else if ("update".equals(str)) {
                    expectField("update", jsonParser);
                    bmVar = bm.a(d.h.f17717a.deserialize(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bmVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(bm bmVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18295a[bmVar.f18293c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("add");
            } else if (i == 2) {
                jsonGenerator.writeString("overwrite");
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("update", jsonGenerator);
                jsonGenerator.writeFieldName("update");
                d.h.f17717a.serialize((d.h) bmVar.f18294d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + bmVar.f18293c);
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bm$b.class */
    public enum b {
        ADD,
        OVERWRITE,
        UPDATE
    }

    static {
        new bm();
        new bm();
    }

    private bm() {
    }

    private static bm a(b bVar) {
        bm bmVar = new bm();
        bmVar.f18293c = bVar;
        return bmVar;
    }

    public static bm a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() < 9) {
            throw new IllegalArgumentException("String is shorter than 9");
        } else if (Pattern.matches("[0-9a-f]+", str)) {
            new bm();
            b bVar = b.UPDATE;
            bm bmVar = new bm();
            bmVar.f18293c = bVar;
            bmVar.f18294d = str;
            return bmVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bm)) {
            return false;
        }
        bm bmVar = (bm) obj;
        if (this.f18293c != bmVar.f18293c) {
            return false;
        }
        int i = AnonymousClass1.f18295a[this.f18293c.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return false;
        }
        String str = this.f18294d;
        String str2 = bmVar.f18294d;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18293c, this.f18294d});
    }

    public final String toString() {
        return a.f18296a.serialize((a) this, false);
    }
}

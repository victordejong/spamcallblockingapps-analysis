package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static final x f18378a = a(b.EMAIL_NOT_VERIFIED);

    /* renamed from: b  reason: collision with root package name */
    public static final x f18379b = a(b.UNSUPPORTED_FILE);

    /* renamed from: c  reason: collision with root package name */
    public static final x f18380c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18381d;
    private ai e;

    /* renamed from: com.dropbox.core.v2.files.x$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18382a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18382a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18382a[b.EMAIL_NOT_VERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18382a[b.UNSUPPORTED_FILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18382a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x$a.class */
    static final class a extends f<x> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18383a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            x xVar;
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
                    ai.a aVar = ai.a.f18163a;
                    xVar = x.a(ai.a.a(jsonParser));
                } else {
                    xVar = "email_not_verified".equals(str) ? x.f18378a : "unsupported_file".equals(str) ? x.f18379b : x.f18380c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return xVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            x xVar = (x) obj;
            int i = AnonymousClass1.f18382a[xVar.f18381d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(xVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("email_not_verified");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("unsupported_file");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/x$b.class */
    public enum b {
        PATH,
        EMAIL_NOT_VERIFIED,
        UNSUPPORTED_FILE,
        OTHER
    }

    static {
        new x();
        new x();
        new x();
    }

    private x() {
    }

    public static x a(ai aiVar) {
        if (aiVar != null) {
            new x();
            b bVar = b.PATH;
            x xVar = new x();
            xVar.f18381d = bVar;
            xVar.e = aiVar;
            return xVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static x a(b bVar) {
        x xVar = new x();
        xVar.f18381d = bVar;
        return xVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        if (this.f18381d != xVar.f18381d) {
            return false;
        }
        int i = AnonymousClass1.f18382a[this.f18381d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = xVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18381d, this.e});
    }

    public final String toString() {
        return a.f18383a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.c;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f17954a = a(b.HOME);

    /* renamed from: b  reason: collision with root package name */
    public static final a f17955b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f17956c;

    /* renamed from: d  reason: collision with root package name */
    private String f17957d;
    private String e;

    /* renamed from: com.dropbox.core.v2.c.a$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17958a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f17958a = iArr;
            try {
                iArr[b.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17958a[b.ROOT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17958a[b.NAMESPACE_ID.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17958a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a$a.class */
    public static final class C0363a extends f<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0363a f17959a = new C0363a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            a aVar;
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
                if ("home".equals(str)) {
                    aVar = a.f17954a;
                } else if ("root".equals(str)) {
                    expectField("root", jsonParser);
                    aVar = a.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("namespace_id".equals(str)) {
                    expectField("namespace_id", jsonParser);
                    aVar = a.b(d.h.f17717a.deserialize(jsonParser));
                } else {
                    aVar = a.f17955b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a aVar = (a) obj;
            int i = AnonymousClass1.f17958a[aVar.f17956c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("home");
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("root", jsonGenerator);
                jsonGenerator.writeFieldName("root");
                d.h.f17717a.serialize((d.h) aVar.f17957d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("namespace_id", jsonGenerator);
                jsonGenerator.writeFieldName("namespace_id");
                d.h.f17717a.serialize((d.h) aVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/a$b.class */
    public enum b {
        HOME,
        ROOT,
        NAMESPACE_ID,
        OTHER
    }

    static {
        new a();
        new a();
    }

    private a() {
    }

    private static a a(b bVar) {
        a aVar = new a();
        aVar.f17956c = bVar;
        return aVar;
    }

    public static a a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            new a();
            b bVar = b.ROOT;
            a aVar = new a();
            aVar.f17956c = bVar;
            aVar.f17957d = str;
            return aVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public static a b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            new a();
            b bVar = b.NAMESPACE_ID;
            a aVar = new a();
            aVar.f17956c = bVar;
            aVar.e = str;
            return aVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f17956c != aVar.f17956c) {
            return false;
        }
        int i = AnonymousClass1.f17958a[this.f17956c.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            String str = this.f17957d;
            String str2 = aVar.f17957d;
            return str == str2 || str.equals(str2);
        } else if (i != 3) {
            return i == 4;
        } else {
            String str3 = this.e;
            String str4 = aVar.e;
            return str3 == str4 || str3.equals(str4);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17956c, this.f17957d, this.e});
    }

    public final String toString() {
        return C0363a.f17959a.serialize((C0363a) this, false);
    }
}

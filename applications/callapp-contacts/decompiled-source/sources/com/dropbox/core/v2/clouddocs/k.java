package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.clouddocs.c;
import com.dropbox.core.v2.clouddocs.g;
import com.dropbox.core.v2.clouddocs.j;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f18001a;

    /* renamed from: b  reason: collision with root package name */
    b f18002b;

    /* renamed from: c  reason: collision with root package name */
    private j f18003c;

    /* renamed from: d  reason: collision with root package name */
    private c f18004d;
    private g e;

    /* renamed from: com.dropbox.core.v2.clouddocs.k$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18005a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18005a = iArr;
            try {
                iArr[b.RENAME_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18005a[b.GENERIC_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18005a[b.LOCKING_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18005a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k$a.class */
    static final class a extends f<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18006a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            k kVar;
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
                    j.a aVar = j.a.f18000a;
                    kVar = k.a(j.a.a(jsonParser));
                } else if ("generic_error".equals(str)) {
                    expectField("generic_error", jsonParser);
                    c.a aVar2 = c.a.f17979a;
                    kVar = k.a(c.a.a(jsonParser));
                } else if ("locking_error".equals(str)) {
                    expectField("locking_error", jsonParser);
                    g.a aVar3 = g.a.f17990a;
                    kVar = k.a(g.a.a(jsonParser));
                } else {
                    kVar = k.f18001a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return kVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            k kVar = (k) obj;
            int i = AnonymousClass1.f18005a[kVar.f18002b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("rename_error", jsonGenerator);
                jsonGenerator.writeFieldName("rename_error");
                j.a aVar = j.a.f18000a;
                j.a.a(kVar.f18003c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("generic_error", jsonGenerator);
                jsonGenerator.writeFieldName("generic_error");
                c.a aVar2 = c.a.f17979a;
                c.a.a(kVar.f18004d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("locking_error", jsonGenerator);
                jsonGenerator.writeFieldName("locking_error");
                g.a aVar3 = g.a.f17990a;
                g.a.a(kVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/k$b.class */
    public enum b {
        RENAME_ERROR,
        GENERIC_ERROR,
        LOCKING_ERROR,
        OTHER
    }

    static {
        new k();
        b bVar = b.OTHER;
        k kVar = new k();
        kVar.f18002b = bVar;
        f18001a = kVar;
    }

    private k() {
    }

    public static k a(c cVar) {
        if (cVar != null) {
            new k();
            b bVar = b.GENERIC_ERROR;
            k kVar = new k();
            kVar.f18002b = bVar;
            kVar.f18004d = cVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static k a(g gVar) {
        if (gVar != null) {
            new k();
            b bVar = b.LOCKING_ERROR;
            k kVar = new k();
            kVar.f18002b = bVar;
            kVar.e = gVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static k a(j jVar) {
        if (jVar != null) {
            new k();
            b bVar = b.RENAME_ERROR;
            k kVar = new k();
            kVar.f18002b = bVar;
            kVar.f18003c = jVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f18002b != kVar.f18002b) {
            return false;
        }
        int i = AnonymousClass1.f18005a[this.f18002b.ordinal()];
        if (i == 1) {
            j jVar = this.f18003c;
            j jVar2 = kVar.f18003c;
            return jVar == jVar2 || jVar.equals(jVar2);
        } else if (i == 2) {
            c cVar = this.f18004d;
            c cVar2 = kVar.f18004d;
            return cVar == cVar2 || cVar.equals(cVar2);
        } else if (i != 3) {
            return i == 4;
        } else {
            g gVar = this.e;
            g gVar2 = kVar.e;
            return gVar == gVar2 || gVar.equals(gVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18002b, this.f18003c, this.f18004d, this.e});
    }

    public final String toString() {
        return a.f18006a.serialize((a) this, false);
    }
}

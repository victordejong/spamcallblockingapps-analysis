package com.dropbox.core.v2.clouddocs;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.clouddocs.c;
import com.dropbox.core.v2.clouddocs.g;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f17991a;

    /* renamed from: b  reason: collision with root package name */
    b f17992b;

    /* renamed from: c  reason: collision with root package name */
    private g f17993c;

    /* renamed from: d  reason: collision with root package name */
    private c f17994d;

    /* renamed from: com.dropbox.core.v2.clouddocs.h$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17995a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f17995a = iArr;
            try {
                iArr[b.LOCKING_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17995a[b.GENERIC_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17995a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h$a.class */
    static final class a extends f<h> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17996a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            h hVar;
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
                if ("locking_error".equals(str)) {
                    expectField("locking_error", jsonParser);
                    g.a aVar = g.a.f17990a;
                    hVar = h.a(g.a.a(jsonParser));
                } else if ("generic_error".equals(str)) {
                    expectField("generic_error", jsonParser);
                    c.a aVar2 = c.a.f17979a;
                    hVar = h.a(c.a.a(jsonParser));
                } else {
                    hVar = h.f17991a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return hVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            h hVar = (h) obj;
            int i = AnonymousClass1.f17995a[hVar.f17992b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("locking_error", jsonGenerator);
                jsonGenerator.writeFieldName("locking_error");
                g.a aVar = g.a.f17990a;
                g.a.a(hVar.f17993c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("generic_error", jsonGenerator);
                jsonGenerator.writeFieldName("generic_error");
                c.a aVar2 = c.a.f17979a;
                c.a.a(hVar.f17994d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/h$b.class */
    public enum b {
        LOCKING_ERROR,
        GENERIC_ERROR,
        OTHER
    }

    static {
        new h();
        b bVar = b.OTHER;
        h hVar = new h();
        hVar.f17992b = bVar;
        f17991a = hVar;
    }

    private h() {
    }

    public static h a(c cVar) {
        if (cVar != null) {
            new h();
            b bVar = b.GENERIC_ERROR;
            h hVar = new h();
            hVar.f17992b = bVar;
            hVar.f17994d = cVar;
            return hVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static h a(g gVar) {
        if (gVar != null) {
            new h();
            b bVar = b.LOCKING_ERROR;
            h hVar = new h();
            hVar.f17992b = bVar;
            hVar.f17993c = gVar;
            return hVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f17992b != hVar.f17992b) {
            return false;
        }
        int i = AnonymousClass1.f17995a[this.f17992b.ordinal()];
        if (i == 1) {
            g gVar = this.f17993c;
            g gVar2 = hVar.f17993c;
            return gVar == gVar2 || gVar.equals(gVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            c cVar = this.f17994d;
            c cVar2 = hVar.f17994d;
            return cVar == cVar2 || cVar.equals(cVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17992b, this.f17993c, this.f17994d});
    }

    public final String toString() {
        return a.f17996a.serialize((a) this, false);
    }
}

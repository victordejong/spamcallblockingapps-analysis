package com.dropbox.core.v2.paper;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.paper.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f18399a = a(b.INSUFFICIENT_PERMISSIONS);

    /* renamed from: b  reason: collision with root package name */
    public static final d f18400b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    public static final d f18401c = a(b.DOC_NOT_FOUND);

    /* renamed from: d  reason: collision with root package name */
    b f18402d;
    private e e;

    /* renamed from: com.dropbox.core.v2.paper.d$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18403a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18403a = iArr;
            try {
                iArr[b.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18403a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18403a[b.DOC_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18403a[b.CURSOR_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d$a.class */
    static final class a extends f<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18404a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            d dVar;
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
                if ("insufficient_permissions".equals(str)) {
                    dVar = d.f18399a;
                } else if ("other".equals(str)) {
                    dVar = d.f18400b;
                } else if ("doc_not_found".equals(str)) {
                    dVar = d.f18401c;
                } else if ("cursor_error".equals(str)) {
                    expectField("cursor_error", jsonParser);
                    e.a aVar = e.a.f18406a;
                    dVar = d.a(e.a.a(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return dVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            d dVar = (d) obj;
            int i = AnonymousClass1.f18403a[dVar.f18402d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("insufficient_permissions");
            } else if (i == 2) {
                jsonGenerator.writeString("other");
            } else if (i == 3) {
                jsonGenerator.writeString("doc_not_found");
            } else if (i == 4) {
                jsonGenerator.writeStartObject();
                writeTag("cursor_error", jsonGenerator);
                jsonGenerator.writeFieldName("cursor_error");
                e.a aVar = e.a.f18406a;
                e.a.a(dVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + dVar.f18402d);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/paper/d$b.class */
    public enum b {
        INSUFFICIENT_PERMISSIONS,
        OTHER,
        DOC_NOT_FOUND,
        CURSOR_ERROR
    }

    static {
        new d();
        new d();
        new d();
    }

    private d() {
    }

    private static d a(b bVar) {
        d dVar = new d();
        dVar.f18402d = bVar;
        return dVar;
    }

    public static d a(e eVar) {
        if (eVar != null) {
            new d();
            b bVar = b.CURSOR_ERROR;
            d dVar = new d();
            dVar.f18402d = bVar;
            dVar.e = eVar;
            return dVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f18402d != dVar.f18402d) {
            return false;
        }
        int i = AnonymousClass1.f18403a[this.f18402d.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return false;
        }
        e eVar = this.e;
        e eVar2 = dVar.e;
        return eVar == eVar2 || eVar.equals(eVar2);
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18402d, this.e});
    }

    public final String toString() {
        return a.f18404a.serialize((a) this, false);
    }
}

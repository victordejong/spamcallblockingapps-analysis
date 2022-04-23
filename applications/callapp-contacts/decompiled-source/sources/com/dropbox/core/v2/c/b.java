package com.dropbox.core.v2.c;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.c.c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f17960a = a(EnumC0364b.NO_PERMISSION);

    /* renamed from: b  reason: collision with root package name */
    public static final b f17961b = a(EnumC0364b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    EnumC0364b f17962c;

    /* renamed from: d  reason: collision with root package name */
    private c f17963d;

    /* renamed from: com.dropbox.core.v2.c.b$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17964a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0364b.values().length];
            f17964a = iArr;
            try {
                iArr[EnumC0364b.INVALID_ROOT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17964a[EnumC0364b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17964a[EnumC0364b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b$a.class */
    public static final class a extends f<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17965a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            b bVar;
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
                if ("invalid_root".equals(str)) {
                    expectField("invalid_root", jsonParser);
                    bVar = b.a(c.a.f17968a.deserialize(jsonParser));
                } else {
                    bVar = "no_permission".equals(str) ? b.f17960a : b.f17961b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            b bVar = (b) obj;
            int i = AnonymousClass1.f17964a[bVar.f17962c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("invalid_root", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_root");
                c.a.f17968a.serialize((c.a) bVar.f17963d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b$b.class */
    public enum EnumC0364b {
        INVALID_ROOT,
        NO_PERMISSION,
        OTHER
    }

    static {
        new b();
        new b();
    }

    private b() {
    }

    private static b a(EnumC0364b bVar) {
        b bVar2 = new b();
        bVar2.f17962c = bVar;
        return bVar2;
    }

    public static b a(c cVar) {
        if (cVar != null) {
            new b();
            EnumC0364b bVar = EnumC0364b.INVALID_ROOT;
            b bVar2 = new b();
            bVar2.f17962c = bVar;
            bVar2.f17963d = cVar;
            return bVar2;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f17962c != bVar.f17962c) {
            return false;
        }
        int i = AnonymousClass1.f17964a[this.f17962c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        c cVar = this.f17963d;
        c cVar2 = bVar.f17963d;
        return cVar == cVar2 || cVar.equals(cVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17962c, this.f17963d});
    }

    public final String toString() {
        return a.f17965a.serialize((a) this, false);
    }
}

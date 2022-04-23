package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f18049a;

    /* renamed from: b  reason: collision with root package name */
    b f18050b;

    /* renamed from: c  reason: collision with root package name */
    private d f18051c;

    /* renamed from: com.dropbox.core.v2.fileproperties.h$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18052a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18052a = iArr;
            try {
                iArr[b.PROPERTY_GROUP_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18052a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h$a.class */
    static final class a extends f<h> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18053a = new a();

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
                if ("property_group_lookup".equals(str)) {
                    expectField("property_group_lookup", jsonParser);
                    d.a aVar = d.a.f18036a;
                    hVar = h.a(d.a.a(jsonParser));
                } else {
                    hVar = h.f18049a;
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
            if (AnonymousClass1.f18052a[hVar.f18050b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("property_group_lookup", jsonGenerator);
            jsonGenerator.writeFieldName("property_group_lookup");
            d.a aVar = d.a.f18036a;
            d.a.a(hVar.f18051c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h$b.class */
    public enum b {
        PROPERTY_GROUP_LOOKUP,
        OTHER
    }

    static {
        new h();
        b bVar = b.OTHER;
        h hVar = new h();
        hVar.f18050b = bVar;
        f18049a = hVar;
    }

    private h() {
    }

    public static h a(d dVar) {
        if (dVar != null) {
            new h();
            b bVar = b.PROPERTY_GROUP_LOOKUP;
            h hVar = new h();
            hVar.f18050b = bVar;
            hVar.f18051c = dVar;
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
        if (this.f18050b != hVar.f18050b) {
            return false;
        }
        int i = AnonymousClass1.f18052a[this.f18050b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        d dVar = this.f18051c;
        d dVar2 = hVar.f18051c;
        return dVar == dVar2 || dVar.equals(dVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18050b, this.f18051c});
    }

    public final String toString() {
        return a.f18053a.serialize((a) this, false);
    }
}

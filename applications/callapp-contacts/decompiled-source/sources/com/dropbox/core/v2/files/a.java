package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.d;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    b f18119a;

    /* renamed from: b  reason: collision with root package name */
    ai f18120b;

    /* renamed from: c  reason: collision with root package name */
    d f18121c;

    /* renamed from: com.dropbox.core.v2.files.a$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18122a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18122a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18122a[b.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a$a.class */
    static final class C0367a extends f<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0367a f18123a = new C0367a();

        C0367a() {
        }

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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    ai.a aVar2 = ai.a.f18163a;
                    ai a2 = ai.a.a(jsonParser);
                    if (a2 != null) {
                        new a();
                        b bVar = b.PATH;
                        aVar = new a();
                        aVar.f18119a = bVar;
                        aVar.f18120b = a2;
                    } else {
                        throw new IllegalArgumentException("Value is null");
                    }
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    d.a aVar3 = d.a.f18036a;
                    d a3 = d.a.a(jsonParser);
                    if (a3 != null) {
                        new a();
                        b bVar2 = b.PROPERTIES_ERROR;
                        aVar = new a();
                        aVar.f18119a = bVar2;
                        aVar.f18121c = a3;
                    } else {
                        throw new IllegalArgumentException("Value is null");
                    }
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
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
            int i = AnonymousClass1.f18122a[aVar.f18119a.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(aVar.f18120b, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                d.a aVar2 = d.a.f18036a;
                d.a.a(aVar.f18121c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + aVar.f18119a);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/a$b.class */
    public enum b {
        PATH,
        PROPERTIES_ERROR
    }

    a() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f18119a != aVar.f18119a) {
            return false;
        }
        int i = AnonymousClass1.f18122a[this.f18119a.ordinal()];
        if (i == 1) {
            ai aiVar = this.f18120b;
            ai aiVar2 = aVar.f18120b;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        } else if (i != 2) {
            return false;
        } else {
            d dVar = this.f18121c;
            d dVar2 = aVar.f18121c;
            return dVar == dVar2 || dVar.equals(dVar2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18119a, this.f18120b, this.f18121c});
    }

    public final String toString() {
        return C0367a.f18123a.serialize((C0367a) this, false);
    }
}

package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.l;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    public static final ac f18135a;

    /* renamed from: b  reason: collision with root package name */
    b f18136b;

    /* renamed from: c  reason: collision with root package name */
    private ai f18137c;

    /* renamed from: d  reason: collision with root package name */
    private l f18138d;

    /* renamed from: com.dropbox.core.v2.files.ac$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18139a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18139a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18139a[b.TEMPLATE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18139a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac$a.class */
    static final class a extends f<ac> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18140a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ac acVar;
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
                    acVar = ac.a(ai.a.a(jsonParser));
                } else if ("template_error".equals(str)) {
                    expectField("template_error", jsonParser);
                    l.a aVar2 = l.a.f18071a;
                    acVar = ac.a(l.a.a(jsonParser));
                } else {
                    acVar = ac.f18135a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return acVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ac acVar = (ac) obj;
            int i = AnonymousClass1.f18139a[acVar.f18136b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(acVar.f18137c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("template_error", jsonGenerator);
                jsonGenerator.writeFieldName("template_error");
                l.a.f18071a.serialize(acVar.f18138d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ac$b.class */
    public enum b {
        PATH,
        TEMPLATE_ERROR,
        OTHER
    }

    static {
        new ac();
        b bVar = b.OTHER;
        ac acVar = new ac();
        acVar.f18136b = bVar;
        f18135a = acVar;
    }

    private ac() {
    }

    public static ac a(l lVar) {
        if (lVar != null) {
            new ac();
            b bVar = b.TEMPLATE_ERROR;
            ac acVar = new ac();
            acVar.f18136b = bVar;
            acVar.f18138d = lVar;
            return acVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ac a(ai aiVar) {
        if (aiVar != null) {
            new ac();
            b bVar = b.PATH;
            ac acVar = new ac();
            acVar.f18136b = bVar;
            acVar.f18137c = aiVar;
            return acVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ac)) {
            return false;
        }
        ac acVar = (ac) obj;
        if (this.f18136b != acVar.f18136b) {
            return false;
        }
        int i = AnonymousClass1.f18139a[this.f18136b.ordinal()];
        if (i == 1) {
            ai aiVar = this.f18137c;
            ai aiVar2 = acVar.f18137c;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            l lVar = this.f18138d;
            l lVar2 = acVar.f18138d;
            return lVar == lVar2 || lVar.equals(lVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18136b, this.f18137c, this.f18138d});
    }

    public final String toString() {
        return a.f18140a.serialize((a) this, false);
    }
}

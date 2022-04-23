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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public static final af f18145a;

    /* renamed from: b  reason: collision with root package name */
    b f18146b;

    /* renamed from: c  reason: collision with root package name */
    private ai f18147c;

    /* renamed from: com.dropbox.core.v2.files.af$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18148a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18148a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18148a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af$a.class */
    static final class a extends f<af> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18149a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            af afVar;
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
                    afVar = af.a(ai.a.a(jsonParser));
                } else {
                    afVar = af.f18145a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return afVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            af afVar = (af) obj;
            if (AnonymousClass1.f18148a[afVar.f18146b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            ai.a.f18163a.serialize(afVar.f18147c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/af$b.class */
    public enum b {
        PATH,
        OTHER
    }

    static {
        new af();
        b bVar = b.OTHER;
        af afVar = new af();
        afVar.f18146b = bVar;
        f18145a = afVar;
    }

    private af() {
    }

    public static af a(ai aiVar) {
        if (aiVar != null) {
            new af();
            b bVar = b.PATH;
            af afVar = new af();
            afVar.f18146b = bVar;
            afVar.f18147c = aiVar;
            return afVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof af)) {
            return false;
        }
        af afVar = (af) obj;
        if (this.f18146b != afVar.f18146b) {
            return false;
        }
        int i = AnonymousClass1.f18148a[this.f18146b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        ai aiVar = this.f18147c;
        ai aiVar2 = afVar.f18147c;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18146b, this.f18147c});
    }

    public final String toString() {
        return a.f18149a.serialize((a) this, false);
    }
}

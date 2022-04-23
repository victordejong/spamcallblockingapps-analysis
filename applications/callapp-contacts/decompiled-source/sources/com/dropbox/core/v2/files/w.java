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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    b f18374a;

    /* renamed from: b  reason: collision with root package name */
    ai f18375b;

    /* renamed from: com.dropbox.core.v2.files.w$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18376a;

        static {
            int[] iArr = new int[b.values().length];
            f18376a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w$a.class */
    static final class a extends f<w> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18377a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                z = true;
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
            } else {
                z = false;
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            }
            if (str == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            } else if ("path".equals(str)) {
                expectField("path", jsonParser);
                ai.a aVar = ai.a.f18163a;
                ai a2 = ai.a.a(jsonParser);
                if (a2 != null) {
                    new w();
                    b bVar = b.PATH;
                    w wVar = new w();
                    wVar.f18374a = bVar;
                    wVar.f18375b = a2;
                    if (!z) {
                        skipFields(jsonParser);
                        expectEndObject(jsonParser);
                    }
                    return wVar;
                }
                throw new IllegalArgumentException("Value is null");
            } else {
                throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            w wVar = (w) obj;
            if (AnonymousClass1.f18376a[wVar.f18374a.ordinal()] == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(wVar.f18375b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + wVar.f18374a);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/w$b.class */
    public enum b {
        PATH
    }

    w() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        if (this.f18374a != wVar.f18374a || AnonymousClass1.f18376a[this.f18374a.ordinal()] != 1) {
            return false;
        }
        ai aiVar = this.f18375b;
        ai aiVar2 = wVar.f18375b;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18374a, this.f18375b});
    }

    public final String toString() {
        return a.f18377a.serialize((a) this, false);
    }
}

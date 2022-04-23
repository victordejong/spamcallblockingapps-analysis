package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    b f18297a;

    /* renamed from: b  reason: collision with root package name */
    bl f18298b;

    /* renamed from: com.dropbox.core.v2.files.c$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18299a;

        static {
            int[] iArr = new int[b.values().length];
            f18299a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c$a.class */
    static final class a extends f<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18300a = new a();

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
                bl.a aVar = bl.a.f18290a;
                bl a2 = bl.a.a(jsonParser);
                if (a2 != null) {
                    new c();
                    b bVar = b.PATH;
                    c cVar = new c();
                    cVar.f18297a = bVar;
                    cVar.f18298b = a2;
                    if (!z) {
                        skipFields(jsonParser);
                        expectEndObject(jsonParser);
                    }
                    return cVar;
                }
                throw new IllegalArgumentException("Value is null");
            } else {
                throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            c cVar = (c) obj;
            if (AnonymousClass1.f18299a[cVar.f18297a.ordinal()] == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                bl.a.f18290a.serialize(cVar.f18298b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + cVar.f18297a);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/c$b.class */
    public enum b {
        PATH
    }

    c() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f18297a != cVar.f18297a || AnonymousClass1.f18299a[this.f18297a.ordinal()] != 1) {
            return false;
        }
        bl blVar = this.f18298b;
        bl blVar2 = cVar.f18298b;
        return blVar == blVar2 || blVar.equals(blVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18297a, this.f18298b});
    }

    public final String toString() {
        return a.f18300a.serialize((a) this, false);
    }
}

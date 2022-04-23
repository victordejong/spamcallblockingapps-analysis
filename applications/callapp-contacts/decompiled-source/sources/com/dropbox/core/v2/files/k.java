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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f18323a = a(b.TOO_LARGE);

    /* renamed from: b  reason: collision with root package name */
    public static final k f18324b = a(b.TOO_MANY_FILES);

    /* renamed from: c  reason: collision with root package name */
    public static final k f18325c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18326d;
    private ai e;

    /* renamed from: com.dropbox.core.v2.files.k$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18327a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18327a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18327a[b.TOO_LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18327a[b.TOO_MANY_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18327a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k$a.class */
    static final class a extends f<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18328a = new a();

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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    ai.a aVar = ai.a.f18163a;
                    kVar = k.a(ai.a.a(jsonParser));
                } else {
                    kVar = "too_large".equals(str) ? k.f18323a : "too_many_files".equals(str) ? k.f18324b : k.f18325c;
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
            int i = AnonymousClass1.f18327a[kVar.f18326d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(kVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("too_large");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/k$b.class */
    public enum b {
        PATH,
        TOO_LARGE,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new k();
        new k();
        new k();
    }

    private k() {
    }

    public static k a(ai aiVar) {
        if (aiVar != null) {
            new k();
            b bVar = b.PATH;
            k kVar = new k();
            kVar.f18326d = bVar;
            kVar.e = aiVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static k a(b bVar) {
        k kVar = new k();
        kVar.f18326d = bVar;
        return kVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f18326d != kVar.f18326d) {
            return false;
        }
        int i = AnonymousClass1.f18327a[this.f18326d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = kVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18326d, this.e});
    }

    public final String toString() {
        return a.f18328a.serialize((a) this, false);
    }
}

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f18329a = a(b.NON_EXPORTABLE);

    /* renamed from: b  reason: collision with root package name */
    public static final l f18330b = a(b.RETRY_ERROR);

    /* renamed from: c  reason: collision with root package name */
    public static final l f18331c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18332d;
    private ai e;

    /* renamed from: com.dropbox.core.v2.files.l$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18333a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18333a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18333a[b.NON_EXPORTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18333a[b.RETRY_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18333a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l$a.class */
    public static final class a extends f<l> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18334a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            l lVar;
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
                    lVar = l.a(ai.a.a(jsonParser));
                } else {
                    lVar = "non_exportable".equals(str) ? l.f18329a : "retry_error".equals(str) ? l.f18330b : l.f18331c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return lVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            l lVar = (l) obj;
            int i = AnonymousClass1.f18333a[lVar.f18332d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(lVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("non_exportable");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("retry_error");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/l$b.class */
    public enum b {
        PATH,
        NON_EXPORTABLE,
        RETRY_ERROR,
        OTHER
    }

    static {
        new l();
        new l();
        new l();
    }

    private l() {
    }

    public static l a(ai aiVar) {
        if (aiVar != null) {
            new l();
            b bVar = b.PATH;
            l lVar = new l();
            lVar.f18332d = bVar;
            lVar.e = aiVar;
            return lVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static l a(b bVar) {
        l lVar = new l();
        lVar.f18332d = bVar;
        return lVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f18332d != lVar.f18332d) {
            return false;
        }
        int i = AnonymousClass1.f18333a[this.f18332d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = lVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18332d, this.e});
    }

    public final String toString() {
        return a.f18334a.serialize((a) this, false);
    }
}

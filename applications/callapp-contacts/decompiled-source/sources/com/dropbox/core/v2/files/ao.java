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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao.class */
public final class ao {

    /* renamed from: a  reason: collision with root package name */
    public static final ao f18177a = a(b.IN_PROGRESS);

    /* renamed from: b  reason: collision with root package name */
    public static final ao f18178b = a(b.UNSUPPORTED_EXTENSION);

    /* renamed from: c  reason: collision with root package name */
    public static final ao f18179c = a(b.UNSUPPORTED_CONTENT);

    /* renamed from: d  reason: collision with root package name */
    b f18180d;
    private ai e;

    /* renamed from: com.dropbox.core.v2.files.ao$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18181a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18181a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18181a[b.IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18181a[b.UNSUPPORTED_EXTENSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18181a[b.UNSUPPORTED_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao$a.class */
    static final class a extends f<ao> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18182a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ao aoVar;
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
                    aoVar = ao.a(ai.a.a(jsonParser));
                } else if ("in_progress".equals(str)) {
                    aoVar = ao.f18177a;
                } else if ("unsupported_extension".equals(str)) {
                    aoVar = ao.f18178b;
                } else if ("unsupported_content".equals(str)) {
                    aoVar = ao.f18179c;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aoVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ao aoVar = (ao) obj;
            int i = AnonymousClass1.f18181a[aoVar.f18180d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(aoVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("in_progress");
            } else if (i == 3) {
                jsonGenerator.writeString("unsupported_extension");
            } else if (i == 4) {
                jsonGenerator.writeString("unsupported_content");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + aoVar.f18180d);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ao$b.class */
    public enum b {
        PATH,
        IN_PROGRESS,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_CONTENT
    }

    static {
        new ao();
        new ao();
        new ao();
    }

    private ao() {
    }

    public static ao a(ai aiVar) {
        if (aiVar != null) {
            new ao();
            b bVar = b.PATH;
            ao aoVar = new ao();
            aoVar.f18180d = bVar;
            aoVar.e = aiVar;
            return aoVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static ao a(b bVar) {
        ao aoVar = new ao();
        aoVar.f18180d = bVar;
        return aoVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ao)) {
            return false;
        }
        ao aoVar = (ao) obj;
        if (this.f18180d != aoVar.f18180d) {
            return false;
        }
        int i = AnonymousClass1.f18181a[this.f18180d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = aoVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18180d, this.e});
    }

    public final String toString() {
        return a.f18182a.serialize((a) this, false);
    }
}

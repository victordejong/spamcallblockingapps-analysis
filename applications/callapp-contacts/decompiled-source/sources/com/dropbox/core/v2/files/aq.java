package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq.class */
public final class aq {

    /* renamed from: a  reason: collision with root package name */
    public static final aq f18189a = a(b.INVALID_REVISION);

    /* renamed from: b  reason: collision with root package name */
    public static final aq f18190b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18191c;

    /* renamed from: d  reason: collision with root package name */
    private ai f18192d;
    private bl e;

    /* renamed from: com.dropbox.core.v2.files.aq$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18193a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18193a = iArr;
            try {
                iArr[b.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18193a[b.PATH_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18193a[b.INVALID_REVISION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18193a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq$a.class */
    static final class a extends f<aq> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18194a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            aq aqVar;
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
                if ("path_lookup".equals(str)) {
                    expectField("path_lookup", jsonParser);
                    ai.a aVar = ai.a.f18163a;
                    aqVar = aq.a(ai.a.a(jsonParser));
                } else if ("path_write".equals(str)) {
                    expectField("path_write", jsonParser);
                    bl.a aVar2 = bl.a.f18290a;
                    aqVar = aq.a(bl.a.a(jsonParser));
                } else {
                    aqVar = "invalid_revision".equals(str) ? aq.f18189a : aq.f18190b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aqVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            aq aqVar = (aq) obj;
            int i = AnonymousClass1.f18193a[aqVar.f18191c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path_lookup", jsonGenerator);
                jsonGenerator.writeFieldName("path_lookup");
                ai.a.f18163a.serialize(aqVar.f18192d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path_write", jsonGenerator);
                jsonGenerator.writeFieldName("path_write");
                bl.a.f18290a.serialize(aqVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_revision");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aq$b.class */
    public enum b {
        PATH_LOOKUP,
        PATH_WRITE,
        INVALID_REVISION,
        OTHER
    }

    static {
        new aq();
        new aq();
    }

    private aq() {
    }

    public static aq a(ai aiVar) {
        if (aiVar != null) {
            new aq();
            b bVar = b.PATH_LOOKUP;
            aq aqVar = new aq();
            aqVar.f18191c = bVar;
            aqVar.f18192d = aiVar;
            return aqVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static aq a(b bVar) {
        aq aqVar = new aq();
        aqVar.f18191c = bVar;
        return aqVar;
    }

    public static aq a(bl blVar) {
        if (blVar != null) {
            new aq();
            b bVar = b.PATH_WRITE;
            aq aqVar = new aq();
            aqVar.f18191c = bVar;
            aqVar.e = blVar;
            return aqVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof aq)) {
            return false;
        }
        aq aqVar = (aq) obj;
        if (this.f18191c != aqVar.f18191c) {
            return false;
        }
        int i = AnonymousClass1.f18193a[this.f18191c.ordinal()];
        if (i == 1) {
            ai aiVar = this.f18192d;
            ai aiVar2 = aqVar.f18192d;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        } else if (i != 2) {
            return i == 3 || i == 4;
        } else {
            bl blVar = this.e;
            bl blVar2 = aqVar.e;
            return blVar == blVar2 || blVar.equals(blVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18191c, this.f18192d, this.e});
    }

    public final String toString() {
        return a.f18194a.serialize((a) this, false);
    }
}

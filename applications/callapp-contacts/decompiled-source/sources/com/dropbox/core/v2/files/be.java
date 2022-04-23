package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.fileproperties.c;
import com.dropbox.core.v2.files.bf;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be.class */
public final class be {

    /* renamed from: a  reason: collision with root package name */
    public static final be f18264a = a(b.TOO_MANY_SHARED_FOLDER_TARGETS);

    /* renamed from: b  reason: collision with root package name */
    public static final be f18265b = a(b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: c  reason: collision with root package name */
    public static final be f18266c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18267d;
    private bf e;
    private bl f;
    private c g;

    /* renamed from: com.dropbox.core.v2.files.be$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18268a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18268a = iArr;
            try {
                iArr[b.LOOKUP_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18268a[b.PATH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18268a[b.PROPERTIES_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18268a[b.TOO_MANY_SHARED_FOLDER_TARGETS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18268a[b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18268a[b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be$a.class */
    static final class a extends f<be> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18269a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            be beVar;
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
                if ("lookup_failed".equals(str)) {
                    expectField("lookup_failed", jsonParser);
                    bf.a aVar = bf.a.f18275a;
                    beVar = be.a(bf.a.a(jsonParser));
                } else if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    bl.a aVar2 = bl.a.f18290a;
                    beVar = be.a(bl.a.a(jsonParser));
                } else if ("properties_error".equals(str)) {
                    expectField("properties_error", jsonParser);
                    c.a aVar3 = c.a.f18034a;
                    beVar = be.a(c.a.a(jsonParser));
                } else {
                    beVar = "too_many_shared_folder_targets".equals(str) ? be.f18264a : "too_many_write_operations".equals(str) ? be.f18265b : be.f18266c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return beVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            be beVar = (be) obj;
            int i = AnonymousClass1.f18268a[beVar.f18267d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("lookup_failed", jsonGenerator);
                jsonGenerator.writeFieldName("lookup_failed");
                bf.a.f18275a.serialize(beVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                bl.a.f18290a.serialize(beVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                c.a.f18034a.serialize(beVar.g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("too_many_shared_folder_targets");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_write_operations");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/be$b.class */
    public enum b {
        LOOKUP_FAILED,
        PATH,
        PROPERTIES_ERROR,
        TOO_MANY_SHARED_FOLDER_TARGETS,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    static {
        new be();
        new be();
        new be();
    }

    private be() {
    }

    public static be a(c cVar) {
        if (cVar != null) {
            new be();
            b bVar = b.PROPERTIES_ERROR;
            be beVar = new be();
            beVar.f18267d = bVar;
            beVar.g = cVar;
            return beVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static be a(b bVar) {
        be beVar = new be();
        beVar.f18267d = bVar;
        return beVar;
    }

    public static be a(bf bfVar) {
        if (bfVar != null) {
            new be();
            b bVar = b.LOOKUP_FAILED;
            be beVar = new be();
            beVar.f18267d = bVar;
            beVar.e = bfVar;
            return beVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static be a(bl blVar) {
        if (blVar != null) {
            new be();
            b bVar = b.PATH;
            be beVar = new be();
            beVar.f18267d = bVar;
            beVar.f = blVar;
            return beVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof be)) {
            return false;
        }
        be beVar = (be) obj;
        if (this.f18267d != beVar.f18267d) {
            return false;
        }
        switch (AnonymousClass1.f18268a[this.f18267d.ordinal()]) {
            case 1:
                bf bfVar = this.e;
                bf bfVar2 = beVar.e;
                return bfVar == bfVar2 || bfVar.equals(bfVar2);
            case 2:
                bl blVar = this.f;
                bl blVar2 = beVar.f;
                return blVar == blVar2 || blVar.equals(blVar2);
            case 3:
                c cVar = this.g;
                c cVar2 = beVar.g;
                return cVar == cVar2 || cVar.equals(cVar2);
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18267d, this.e, this.f, this.g});
    }

    public final String toString() {
        return a.f18269a.serialize((a) this, false);
    }
}

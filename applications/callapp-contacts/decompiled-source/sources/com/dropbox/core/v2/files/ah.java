package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ag;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah.class */
public final class ah {

    /* renamed from: a  reason: collision with root package name */
    public static final ah f18152a = a(b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: b  reason: collision with root package name */
    public static final ah f18153b = a(b.TOO_MANY_FILES);

    /* renamed from: c  reason: collision with root package name */
    public static final ah f18154c = a(b.NO_WRITE_PERMISSION);

    /* renamed from: d  reason: collision with root package name */
    public static final ah f18155d = a(b.CANNOT_BE_LOCKED);
    public static final ah e = a(b.FILE_NOT_SHARED);
    public static final ah f = a(b.INTERNAL_ERROR);
    public static final ah g = a(b.OTHER);
    b h;
    private ai i;
    private ag j;

    /* renamed from: com.dropbox.core.v2.files.ah$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18156a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18156a = iArr;
            try {
                iArr[b.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18156a[b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18156a[b.TOO_MANY_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18156a[b.NO_WRITE_PERMISSION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18156a[b.CANNOT_BE_LOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18156a[b.FILE_NOT_SHARED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18156a[b.LOCK_CONFLICT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18156a[b.INTERNAL_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18156a[b.OTHER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah$a.class */
    static final class a extends f<ah> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18157a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            ah ahVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("path_lookup".equals(str)) {
                    expectField("path_lookup", jsonParser);
                    ai.a aVar = ai.a.f18163a;
                    ahVar = ah.a(ai.a.a(jsonParser));
                } else if ("too_many_write_operations".equals(str)) {
                    ahVar = ah.f18152a;
                } else if ("too_many_files".equals(str)) {
                    ahVar = ah.f18153b;
                } else if ("no_write_permission".equals(str)) {
                    ahVar = ah.f18154c;
                } else if ("cannot_be_locked".equals(str)) {
                    ahVar = ah.f18155d;
                } else if ("file_not_shared".equals(str)) {
                    ahVar = ah.e;
                } else if ("lock_conflict".equals(str)) {
                    ag.a aVar2 = ag.a.f18151a;
                    ahVar = ah.a(ag.a.a(jsonParser, true));
                } else {
                    ahVar = "internal_error".equals(str) ? ah.f : ah.g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ahVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ah ahVar = (ah) obj;
            switch (AnonymousClass1.f18156a[ahVar.h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("path_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("path_lookup");
                    ai.a.f18163a.serialize(ahVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                case 3:
                    jsonGenerator.writeString("too_many_files");
                    return;
                case 4:
                    jsonGenerator.writeString("no_write_permission");
                    return;
                case 5:
                    jsonGenerator.writeString("cannot_be_locked");
                    return;
                case 6:
                    jsonGenerator.writeString("file_not_shared");
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("lock_conflict", jsonGenerator);
                    ag.a aVar = ag.a.f18151a;
                    ag.a.a(ahVar.j, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("internal_error");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah$b.class */
    public enum b {
        PATH_LOOKUP,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        NO_WRITE_PERMISSION,
        CANNOT_BE_LOCKED,
        FILE_NOT_SHARED,
        LOCK_CONFLICT,
        INTERNAL_ERROR,
        OTHER
    }

    static {
        new ah();
        new ah();
        new ah();
        new ah();
        new ah();
        new ah();
        new ah();
    }

    private ah() {
    }

    public static ah a(ag agVar) {
        if (agVar != null) {
            new ah();
            b bVar = b.LOCK_CONFLICT;
            ah ahVar = new ah();
            ahVar.h = bVar;
            ahVar.j = agVar;
            return ahVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static ah a(b bVar) {
        ah ahVar = new ah();
        ahVar.h = bVar;
        return ahVar;
    }

    public static ah a(ai aiVar) {
        if (aiVar != null) {
            new ah();
            b bVar = b.PATH_LOOKUP;
            ah ahVar = new ah();
            ahVar.h = bVar;
            ahVar.i = aiVar;
            return ahVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ah)) {
            return false;
        }
        ah ahVar = (ah) obj;
        if (this.h != ahVar.h) {
            return false;
        }
        switch (AnonymousClass1.f18156a[this.h.ordinal()]) {
            case 1:
                ai aiVar = this.i;
                ai aiVar2 = ahVar.i;
                return aiVar == aiVar2 || aiVar.equals(aiVar2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            case 7:
                ag agVar = this.j;
                ag agVar2 = ahVar.j;
                return agVar == agVar2 || agVar.equals(agVar2);
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.h, this.i, this.j});
    }

    public final String toString() {
        return a.f18157a.serialize((a) this, false);
    }
}

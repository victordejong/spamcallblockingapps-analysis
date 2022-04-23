package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.dropbox.core.v2.files.am;
import com.dropbox.core.v2.files.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap.class */
public final class ap {

    /* renamed from: a  reason: collision with root package name */
    public static final ap f18183a = a(b.CANT_COPY_SHARED_FOLDER);

    /* renamed from: b  reason: collision with root package name */
    public static final ap f18184b = a(b.CANT_NEST_SHARED_FOLDER);

    /* renamed from: c  reason: collision with root package name */
    public static final ap f18185c = a(b.CANT_MOVE_FOLDER_INTO_ITSELF);

    /* renamed from: d  reason: collision with root package name */
    public static final ap f18186d = a(b.TOO_MANY_FILES);
    public static final ap e = a(b.DUPLICATED_OR_NESTED_PATHS);
    public static final ap f = a(b.CANT_TRANSFER_OWNERSHIP);
    public static final ap g = a(b.INSUFFICIENT_QUOTA);
    public static final ap h = a(b.INTERNAL_ERROR);
    public static final ap i = a(b.CANT_MOVE_SHARED_FOLDER);
    public static final ap j = a(b.OTHER);
    b k;
    private ai l;
    private bl m;
    private bl n;
    private am o;

    /* renamed from: com.dropbox.core.v2.files.ap$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18187a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ad -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b5 -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b9 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c5 -> B:49:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c9 -> B:45:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cd -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d1 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d5 -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d9 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dd -> B:69:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18187a = iArr;
            try {
                iArr[b.FROM_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18187a[b.FROM_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18187a[b.TO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18187a[b.CANT_COPY_SHARED_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18187a[b.CANT_NEST_SHARED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18187a[b.CANT_MOVE_FOLDER_INTO_ITSELF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18187a[b.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18187a[b.DUPLICATED_OR_NESTED_PATHS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18187a[b.CANT_TRANSFER_OWNERSHIP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f18187a[b.INSUFFICIENT_QUOTA.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f18187a[b.INTERNAL_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f18187a[b.CANT_MOVE_SHARED_FOLDER.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f18187a[b.CANT_MOVE_INTO_VAULT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f18187a[b.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap$a.class */
    static final class a extends f<ap> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18188a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ap apVar;
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
                if ("from_lookup".equals(str)) {
                    expectField("from_lookup", jsonParser);
                    ai.a aVar = ai.a.f18163a;
                    apVar = ap.a(ai.a.a(jsonParser));
                } else if ("from_write".equals(str)) {
                    expectField("from_write", jsonParser);
                    bl.a aVar2 = bl.a.f18290a;
                    apVar = ap.a(bl.a.a(jsonParser));
                } else if ("to".equals(str)) {
                    expectField("to", jsonParser);
                    bl.a aVar3 = bl.a.f18290a;
                    apVar = ap.b(bl.a.a(jsonParser));
                } else if ("cant_copy_shared_folder".equals(str)) {
                    apVar = ap.f18183a;
                } else if ("cant_nest_shared_folder".equals(str)) {
                    apVar = ap.f18184b;
                } else if ("cant_move_folder_into_itself".equals(str)) {
                    apVar = ap.f18185c;
                } else if ("too_many_files".equals(str)) {
                    apVar = ap.f18186d;
                } else if ("duplicated_or_nested_paths".equals(str)) {
                    apVar = ap.e;
                } else if ("cant_transfer_ownership".equals(str)) {
                    apVar = ap.f;
                } else if ("insufficient_quota".equals(str)) {
                    apVar = ap.g;
                } else if ("internal_error".equals(str)) {
                    apVar = ap.h;
                } else if ("cant_move_shared_folder".equals(str)) {
                    apVar = ap.i;
                } else if ("cant_move_into_vault".equals(str)) {
                    expectField("cant_move_into_vault", jsonParser);
                    am.a aVar4 = am.a.f18175a;
                    apVar = ap.a(am.a.a(jsonParser));
                } else {
                    apVar = ap.j;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return apVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ap apVar = (ap) obj;
            switch (AnonymousClass1.f18187a[apVar.k.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("from_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("from_lookup");
                    ai.a.f18163a.serialize(apVar.l, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("from_write", jsonGenerator);
                    jsonGenerator.writeFieldName("from_write");
                    bl.a.f18290a.serialize(apVar.m, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("to", jsonGenerator);
                    jsonGenerator.writeFieldName("to");
                    bl.a.f18290a.serialize(apVar.n, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("cant_copy_shared_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("cant_nest_shared_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("cant_move_folder_into_itself");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_files");
                    return;
                case 8:
                    jsonGenerator.writeString("duplicated_or_nested_paths");
                    return;
                case 9:
                    jsonGenerator.writeString("cant_transfer_ownership");
                    return;
                case 10:
                    jsonGenerator.writeString("insufficient_quota");
                    return;
                case 11:
                    jsonGenerator.writeString("internal_error");
                    return;
                case 12:
                    jsonGenerator.writeString("cant_move_shared_folder");
                    return;
                case 13:
                    jsonGenerator.writeStartObject();
                    writeTag("cant_move_into_vault", jsonGenerator);
                    jsonGenerator.writeFieldName("cant_move_into_vault");
                    am.a aVar = am.a.f18175a;
                    am.a.a(apVar.o, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap$b.class */
    public enum b {
        FROM_LOOKUP,
        FROM_WRITE,
        TO,
        CANT_COPY_SHARED_FOLDER,
        CANT_NEST_SHARED_FOLDER,
        CANT_MOVE_FOLDER_INTO_ITSELF,
        TOO_MANY_FILES,
        DUPLICATED_OR_NESTED_PATHS,
        CANT_TRANSFER_OWNERSHIP,
        INSUFFICIENT_QUOTA,
        INTERNAL_ERROR,
        CANT_MOVE_SHARED_FOLDER,
        CANT_MOVE_INTO_VAULT,
        OTHER
    }

    static {
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
        new ap();
    }

    private ap() {
    }

    public static ap a(ai aiVar) {
        if (aiVar != null) {
            new ap();
            b bVar = b.FROM_LOOKUP;
            ap apVar = new ap();
            apVar.k = bVar;
            apVar.l = aiVar;
            return apVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ap a(am amVar) {
        if (amVar != null) {
            new ap();
            b bVar = b.CANT_MOVE_INTO_VAULT;
            ap apVar = new ap();
            apVar.k = bVar;
            apVar.o = amVar;
            return apVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static ap a(b bVar) {
        ap apVar = new ap();
        apVar.k = bVar;
        return apVar;
    }

    public static ap a(bl blVar) {
        if (blVar != null) {
            new ap();
            b bVar = b.FROM_WRITE;
            ap apVar = new ap();
            apVar.k = bVar;
            apVar.m = blVar;
            return apVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ap b(bl blVar) {
        if (blVar != null) {
            new ap();
            b bVar = b.TO;
            ap apVar = new ap();
            apVar.k = bVar;
            apVar.n = blVar;
            return apVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ap)) {
            return false;
        }
        ap apVar = (ap) obj;
        if (this.k != apVar.k) {
            return false;
        }
        switch (AnonymousClass1.f18187a[this.k.ordinal()]) {
            case 1:
                ai aiVar = this.l;
                ai aiVar2 = apVar.l;
                return aiVar == aiVar2 || aiVar.equals(aiVar2);
            case 2:
                bl blVar = this.m;
                bl blVar2 = apVar.m;
                return blVar == blVar2 || blVar.equals(blVar2);
            case 3:
                bl blVar3 = this.n;
                bl blVar4 = apVar.n;
                return blVar3 == blVar4 || blVar3.equals(blVar4);
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return true;
            case 13:
                am amVar = this.o;
                am amVar2 = apVar.o;
                return amVar == amVar2 || amVar.equals(amVar2);
            case 14:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.k, this.l, this.m, this.n, this.o});
    }

    public final String toString() {
        return a.f18188a.serialize((a) this, false);
    }
}

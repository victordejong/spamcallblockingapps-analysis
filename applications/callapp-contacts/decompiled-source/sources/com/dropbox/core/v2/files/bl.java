package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.bk;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl.class */
public final class bl {

    /* renamed from: a  reason: collision with root package name */
    public static final bl f18285a = a(b.NO_WRITE_PERMISSION);

    /* renamed from: b  reason: collision with root package name */
    public static final bl f18286b = a(b.INSUFFICIENT_SPACE);

    /* renamed from: c  reason: collision with root package name */
    public static final bl f18287c = a(b.DISALLOWED_NAME);

    /* renamed from: d  reason: collision with root package name */
    public static final bl f18288d = a(b.TEAM_FOLDER);
    public static final bl e = a(b.TOO_MANY_WRITE_OPERATIONS);
    public static final bl f = a(b.OTHER);
    b g;
    private String h;
    private bk i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bl$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18289a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18289a = iArr;
            try {
                iArr[b.MALFORMED_PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18289a[b.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18289a[b.NO_WRITE_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18289a[b.INSUFFICIENT_SPACE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18289a[b.DISALLOWED_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18289a[b.TEAM_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18289a[b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18289a[b.OTHER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl$a.class */
    static final class a extends f<bl> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18290a = new a();

        a() {
        }

        public static bl a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bl blVar;
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
                if ("malformed_path".equals(str)) {
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("malformed_path", jsonParser);
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    }
                    blVar = str2 == null ? bl.a() : bl.a(str2);
                } else if ("conflict".equals(str)) {
                    expectField("conflict", jsonParser);
                    bk.a aVar = bk.a.f18284a;
                    blVar = bl.a(bk.a.a(jsonParser));
                } else {
                    blVar = "no_write_permission".equals(str) ? bl.f18285a : "insufficient_space".equals(str) ? bl.f18286b : "disallowed_name".equals(str) ? bl.f18287c : "team_folder".equals(str) ? bl.f18288d : "too_many_write_operations".equals(str) ? bl.e : bl.f;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return blVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(bl blVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18289a[blVar.g.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("malformed_path", jsonGenerator);
                    jsonGenerator.writeFieldName("malformed_path");
                    d.a(d.h.f17717a).serialize((c) blVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("conflict", jsonGenerator);
                    jsonGenerator.writeFieldName("conflict");
                    bk.a aVar = bk.a.f18284a;
                    bk.a.a(blVar.i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("no_write_permission");
                    return;
                case 4:
                    jsonGenerator.writeString("insufficient_space");
                    return;
                case 5:
                    jsonGenerator.writeString("disallowed_name");
                    return;
                case 6:
                    jsonGenerator.writeString("team_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bl$b.class */
    public enum b {
        MALFORMED_PATH,
        CONFLICT,
        NO_WRITE_PERMISSION,
        INSUFFICIENT_SPACE,
        DISALLOWED_NAME,
        TEAM_FOLDER,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    static {
        new bl();
        new bl();
        new bl();
        new bl();
        new bl();
        new bl();
    }

    private bl() {
    }

    public static bl a() {
        return a((String) null);
    }

    public static bl a(bk bkVar) {
        if (bkVar != null) {
            new bl();
            b bVar = b.CONFLICT;
            bl blVar = new bl();
            blVar.g = bVar;
            blVar.i = bkVar;
            return blVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static bl a(b bVar) {
        bl blVar = new bl();
        blVar.g = bVar;
        return blVar;
    }

    public static bl a(String str) {
        new bl();
        b bVar = b.MALFORMED_PATH;
        bl blVar = new bl();
        blVar.g = bVar;
        blVar.h = str;
        return blVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bl)) {
            return false;
        }
        bl blVar = (bl) obj;
        if (this.g != blVar.g) {
            return false;
        }
        switch (AnonymousClass1.f18289a[this.g.ordinal()]) {
            case 1:
                String str = this.h;
                String str2 = blVar.h;
                if (str != str2) {
                    return str != null && str.equals(str2);
                }
                return true;
            case 2:
                bk bkVar = this.i;
                bk bkVar2 = blVar.i;
                return bkVar == bkVar2 || bkVar.equals(bkVar2);
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.g, this.h, this.i});
    }

    public final String toString() {
        return a.f18290a.serialize((a) this, false);
    }
}

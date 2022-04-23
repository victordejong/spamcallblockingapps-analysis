package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs.class */
public final class bs {

    /* renamed from: a  reason: collision with root package name */
    public static final bs f18621a = a(b.TEAM_FOLDER);

    /* renamed from: b  reason: collision with root package name */
    public static final bs f18622b = a(b.NO_PERMISSION);

    /* renamed from: c  reason: collision with root package name */
    public static final bs f18623c = a(b.TOO_MANY_FILES);

    /* renamed from: d  reason: collision with root package name */
    public static final bs f18624d = a(b.OTHER);
    b e;
    private bc f;

    /* renamed from: com.dropbox.core.v2.sharing.bs$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18625a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18625a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18625a[b.TEAM_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18625a[b.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18625a[b.TOO_MANY_FILES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18625a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs$a.class */
    static final class a extends f<bs> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18626a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bs bsVar;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bc.a aVar = bc.a.f18570a;
                    bsVar = bs.a(bc.a.a(jsonParser));
                } else {
                    bsVar = "team_folder".equals(str) ? bs.f18621a : "no_permission".equals(str) ? bs.f18622b : "too_many_files".equals(str) ? bs.f18623c : bs.f18624d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bsVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bs bsVar = (bs) obj;
            int i = AnonymousClass1.f18625a[bsVar.e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bc.a aVar = bc.a.f18570a;
                bc.a.a(bsVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("team_folder");
            } else if (i == 3) {
                jsonGenerator.writeString("no_permission");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs$b.class */
    public enum b {
        ACCESS_ERROR,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new bs();
        new bs();
        new bs();
        new bs();
    }

    private bs() {
    }

    public static bs a(bc bcVar) {
        if (bcVar != null) {
            new bs();
            b bVar = b.ACCESS_ERROR;
            bs bsVar = new bs();
            bsVar.e = bVar;
            bsVar.f = bcVar;
            return bsVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static bs a(b bVar) {
        bs bsVar = new bs();
        bsVar.e = bVar;
        return bsVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bs)) {
            return false;
        }
        bs bsVar = (bs) obj;
        if (this.e != bsVar.e) {
            return false;
        }
        int i = AnonymousClass1.f18625a[this.e.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4 || i == 5;
        }
        bc bcVar = this.f;
        bc bcVar2 = bsVar.f;
        return bcVar == bcVar2 || bcVar.equals(bcVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f});
    }

    public final String toString() {
        return a.f18626a.serialize((a) this, false);
    }
}

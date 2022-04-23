package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.dropbox.core.v2.sharing.w;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an.class */
public final class an {

    /* renamed from: a  reason: collision with root package name */
    public static final an f18498a = a(b.INSIDE_SHARED_FOLDER);

    /* renamed from: b  reason: collision with root package name */
    public static final an f18499b = a(b.ALREADY_MOUNTED);

    /* renamed from: c  reason: collision with root package name */
    public static final an f18500c = a(b.NO_PERMISSION);

    /* renamed from: d  reason: collision with root package name */
    public static final an f18501d = a(b.NOT_MOUNTABLE);
    public static final an e = a(b.OTHER);
    b f;
    private bc g;
    private w h;

    /* renamed from: com.dropbox.core.v2.sharing.an$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18502a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18502a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18502a[b.INSIDE_SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18502a[b.INSUFFICIENT_QUOTA.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18502a[b.ALREADY_MOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18502a[b.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18502a[b.NOT_MOUNTABLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18502a[b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an$a.class */
    static final class a extends f<an> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18503a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            an anVar;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bc.a aVar = bc.a.f18570a;
                    anVar = an.a(bc.a.a(jsonParser));
                } else if ("inside_shared_folder".equals(str)) {
                    anVar = an.f18498a;
                } else if ("insufficient_quota".equals(str)) {
                    w.a aVar2 = w.a.f18722a;
                    anVar = an.a(w.a.a(jsonParser, true));
                } else {
                    anVar = "already_mounted".equals(str) ? an.f18499b : "no_permission".equals(str) ? an.f18500c : "not_mountable".equals(str) ? an.f18501d : an.e;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return anVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            an anVar = (an) obj;
            switch (AnonymousClass1.f18502a[anVar.f.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    bc.a aVar = bc.a.f18570a;
                    bc.a.a(anVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("inside_shared_folder");
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("insufficient_quota", jsonGenerator);
                    w.a aVar2 = w.a.f18722a;
                    w.a.a(anVar.h, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("already_mounted");
                    return;
                case 5:
                    jsonGenerator.writeString("no_permission");
                    return;
                case 6:
                    jsonGenerator.writeString("not_mountable");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/an$b.class */
    public enum b {
        ACCESS_ERROR,
        INSIDE_SHARED_FOLDER,
        INSUFFICIENT_QUOTA,
        ALREADY_MOUNTED,
        NO_PERMISSION,
        NOT_MOUNTABLE,
        OTHER
    }

    static {
        new an();
        new an();
        new an();
        new an();
        new an();
    }

    private an() {
    }

    private static an a(b bVar) {
        an anVar = new an();
        anVar.f = bVar;
        return anVar;
    }

    public static an a(bc bcVar) {
        if (bcVar != null) {
            new an();
            b bVar = b.ACCESS_ERROR;
            an anVar = new an();
            anVar.f = bVar;
            anVar.g = bcVar;
            return anVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static an a(w wVar) {
        if (wVar != null) {
            new an();
            b bVar = b.INSUFFICIENT_QUOTA;
            an anVar = new an();
            anVar.f = bVar;
            anVar.h = wVar;
            return anVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof an)) {
            return false;
        }
        an anVar = (an) obj;
        if (this.f != anVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18502a[this.f.ordinal()]) {
            case 1:
                bc bcVar = this.g;
                bc bcVar2 = anVar.g;
                return bcVar == bcVar2 || bcVar.equals(bcVar2);
            case 2:
                return true;
            case 3:
                w wVar = this.h;
                w wVar2 = anVar.h;
                return wVar == wVar2 || wVar.equals(wVar2);
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f, this.g, this.h});
    }

    public final String toString() {
        return a.f18503a.serialize((a) this, false);
    }
}

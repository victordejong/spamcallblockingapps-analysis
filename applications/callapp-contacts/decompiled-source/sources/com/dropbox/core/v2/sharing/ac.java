package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bm;
import com.dropbox.core.v2.sharing.bn;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    public static final ac f18450a = a(b.INVALID_CURSOR);

    /* renamed from: b  reason: collision with root package name */
    public static final ac f18451b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18452c;

    /* renamed from: d  reason: collision with root package name */
    private bn f18453d;
    private bm e;

    /* renamed from: com.dropbox.core.v2.sharing.ac$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18454a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18454a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18454a[b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18454a[b.INVALID_CURSOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18454a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac$a.class */
    static final class a extends f<ac> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18455a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ac acVar;
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
                if ("user_error".equals(str)) {
                    expectField("user_error", jsonParser);
                    bn.a aVar = bn.a.f18598a;
                    acVar = ac.a(bn.a.a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar2 = bm.a.f18596a;
                    acVar = ac.a(bm.a.a(jsonParser));
                } else {
                    acVar = "invalid_cursor".equals(str) ? ac.f18450a : ac.f18451b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return acVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ac acVar = (ac) obj;
            int i = AnonymousClass1.f18454a[acVar.f18452c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(acVar.f18453d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar2 = bm.a.f18596a;
                bm.a.a(acVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ac$b.class */
    public enum b {
        USER_ERROR,
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    static {
        new ac();
        new ac();
    }

    private ac() {
    }

    private static ac a(b bVar) {
        ac acVar = new ac();
        acVar.f18452c = bVar;
        return acVar;
    }

    public static ac a(bm bmVar) {
        if (bmVar != null) {
            new ac();
            b bVar = b.ACCESS_ERROR;
            ac acVar = new ac();
            acVar.f18452c = bVar;
            acVar.e = bmVar;
            return acVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ac a(bn bnVar) {
        if (bnVar != null) {
            new ac();
            b bVar = b.USER_ERROR;
            ac acVar = new ac();
            acVar.f18452c = bVar;
            acVar.f18453d = bnVar;
            return acVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ac)) {
            return false;
        }
        ac acVar = (ac) obj;
        if (this.f18452c != acVar.f18452c) {
            return false;
        }
        int i = AnonymousClass1.f18454a[this.f18452c.ordinal()];
        if (i == 1) {
            bn bnVar = this.f18453d;
            bn bnVar2 = acVar.f18453d;
            return bnVar == bnVar2 || bnVar.equals(bnVar2);
        } else if (i != 2) {
            return i == 3 || i == 4;
        } else {
            bm bmVar = this.e;
            bm bmVar2 = acVar.e;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18452c, this.f18453d, this.e});
    }

    public final String toString() {
        return a.f18455a.serialize((a) this, false);
    }
}

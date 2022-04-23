package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bm;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq.class */
public final class aq {

    /* renamed from: a  reason: collision with root package name */
    public static final aq f18515a = a(b.GROUP_ACCESS);

    /* renamed from: b  reason: collision with root package name */
    public static final aq f18516b = a(b.NO_PERMISSION);

    /* renamed from: c  reason: collision with root package name */
    public static final aq f18517c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18518d;
    private bm e;

    /* renamed from: com.dropbox.core.v2.sharing.aq$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18519a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18519a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18519a[b.GROUP_ACCESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18519a[b.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18519a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq$a.class */
    static final class a extends f<aq> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18520a = new a();

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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar = bm.a.f18596a;
                    aqVar = aq.a(bm.a.a(jsonParser));
                } else {
                    aqVar = "group_access".equals(str) ? aq.f18515a : "no_permission".equals(str) ? aq.f18516b : aq.f18517c;
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
            int i = AnonymousClass1.f18519a[aqVar.f18518d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar = bm.a.f18596a;
                bm.a.a(aqVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("group_access");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aq$b.class */
    public enum b {
        ACCESS_ERROR,
        GROUP_ACCESS,
        NO_PERMISSION,
        OTHER
    }

    static {
        new aq();
        new aq();
        new aq();
    }

    private aq() {
    }

    private static aq a(b bVar) {
        aq aqVar = new aq();
        aqVar.f18518d = bVar;
        return aqVar;
    }

    public static aq a(bm bmVar) {
        if (bmVar != null) {
            new aq();
            b bVar = b.ACCESS_ERROR;
            aq aqVar = new aq();
            aqVar.f18518d = bVar;
            aqVar.e = bmVar;
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
        if (this.f18518d != aqVar.f18518d) {
            return false;
        }
        int i = AnonymousClass1.f18519a[this.f18518d.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        bm bmVar = this.e;
        bm bmVar2 = aqVar.e;
        return bmVar == bmVar2 || bmVar.equals(bmVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18518d, this.e});
    }

    public final String toString() {
        return a.f18520a.serialize((a) this, false);
    }
}

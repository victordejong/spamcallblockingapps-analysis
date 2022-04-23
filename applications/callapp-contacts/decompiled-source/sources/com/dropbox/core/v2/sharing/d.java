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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f18643a = a(b.RATE_LIMIT);

    /* renamed from: b  reason: collision with root package name */
    public static final d f18644b = a(b.INVALID_COMMENT);

    /* renamed from: c  reason: collision with root package name */
    public static final d f18645c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18646d;
    private bn e;
    private bm f;

    /* renamed from: com.dropbox.core.v2.sharing.d$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18647a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18647a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18647a[b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18647a[b.RATE_LIMIT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18647a[b.INVALID_COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18647a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d$a.class */
    static final class a extends f<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18648a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            d dVar;
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
                    dVar = d.a(bn.a.a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar2 = bm.a.f18596a;
                    dVar = d.a(bm.a.a(jsonParser));
                } else {
                    dVar = "rate_limit".equals(str) ? d.f18643a : "invalid_comment".equals(str) ? d.f18644b : d.f18645c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return dVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            d dVar = (d) obj;
            int i = AnonymousClass1.f18647a[dVar.f18646d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(dVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar2 = bm.a.f18596a;
                bm.a.a(dVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeString("rate_limit");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_comment");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/d$b.class */
    public enum b {
        USER_ERROR,
        ACCESS_ERROR,
        RATE_LIMIT,
        INVALID_COMMENT,
        OTHER
    }

    static {
        new d();
        new d();
        new d();
    }

    private d() {
    }

    public static d a(bm bmVar) {
        if (bmVar != null) {
            new d();
            b bVar = b.ACCESS_ERROR;
            d dVar = new d();
            dVar.f18646d = bVar;
            dVar.f = bmVar;
            return dVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static d a(bn bnVar) {
        if (bnVar != null) {
            new d();
            b bVar = b.USER_ERROR;
            d dVar = new d();
            dVar.f18646d = bVar;
            dVar.e = bnVar;
            return dVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static d a(b bVar) {
        d dVar = new d();
        dVar.f18646d = bVar;
        return dVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f18646d != dVar.f18646d) {
            return false;
        }
        int i = AnonymousClass1.f18647a[this.f18646d.ordinal()];
        if (i == 1) {
            bn bnVar = this.e;
            bn bnVar2 = dVar.e;
            return bnVar == bnVar2 || bnVar.equals(bnVar2);
        } else if (i != 2) {
            return i == 3 || i == 4 || i == 5;
        } else {
            bm bmVar = this.f;
            bm bmVar2 = dVar.f;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18646d, this.e, this.f});
    }

    public final String toString() {
        return a.f18648a.serialize((a) this, false);
    }
}

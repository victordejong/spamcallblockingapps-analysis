package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.dropbox.core.v2.sharing.bd;
import com.dropbox.core.v2.sharing.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt.class */
public final class bt {

    /* renamed from: a  reason: collision with root package name */
    public static final bt f18627a = a(b.INSUFFICIENT_PLAN);

    /* renamed from: b  reason: collision with root package name */
    public static final bt f18628b = a(b.NO_PERMISSION);

    /* renamed from: c  reason: collision with root package name */
    public static final bt f18629c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18630d;
    private bc e;
    private bd f;
    private e g;

    /* renamed from: com.dropbox.core.v2.sharing.bt$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18631a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18631a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18631a[b.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18631a[b.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18631a[b.INSUFFICIENT_PLAN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18631a[b.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18631a[b.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt$a.class */
    static final class a extends f<bt> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18632a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bt btVar;
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
                    btVar = bt.a(bc.a.a(jsonParser));
                } else if ("member_error".equals(str)) {
                    expectField("member_error", jsonParser);
                    bd.a aVar2 = bd.a.f18576a;
                    btVar = bt.a(bd.a.a(jsonParser));
                } else if ("no_explicit_access".equals(str)) {
                    expectField("no_explicit_access", jsonParser);
                    e.a aVar3 = e.a.f18654a;
                    btVar = bt.a(e.a.a(jsonParser));
                } else {
                    btVar = "insufficient_plan".equals(str) ? bt.f18627a : "no_permission".equals(str) ? bt.f18628b : bt.f18629c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return btVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bt btVar = (bt) obj;
            int i = AnonymousClass1.f18631a[btVar.f18630d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bc.a aVar = bc.a.f18570a;
                bc.a.a(btVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("member_error", jsonGenerator);
                jsonGenerator.writeFieldName("member_error");
                bd.a.f18576a.serialize(btVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                jsonGenerator.writeFieldName("no_explicit_access");
                e.a.f18654a.serialize(btVar.g, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("insufficient_plan");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bt$b.class */
    public enum b {
        ACCESS_ERROR,
        MEMBER_ERROR,
        NO_EXPLICIT_ACCESS,
        INSUFFICIENT_PLAN,
        NO_PERMISSION,
        OTHER
    }

    static {
        new bt();
        new bt();
        new bt();
    }

    private bt() {
    }

    public static bt a(bc bcVar) {
        if (bcVar != null) {
            new bt();
            b bVar = b.ACCESS_ERROR;
            bt btVar = new bt();
            btVar.f18630d = bVar;
            btVar.e = bcVar;
            return btVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static bt a(bd bdVar) {
        if (bdVar != null) {
            new bt();
            b bVar = b.MEMBER_ERROR;
            bt btVar = new bt();
            btVar.f18630d = bVar;
            btVar.f = bdVar;
            return btVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static bt a(b bVar) {
        bt btVar = new bt();
        btVar.f18630d = bVar;
        return btVar;
    }

    public static bt a(e eVar) {
        if (eVar != null) {
            new bt();
            b bVar = b.NO_EXPLICIT_ACCESS;
            bt btVar = new bt();
            btVar.f18630d = bVar;
            btVar.g = eVar;
            return btVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bt)) {
            return false;
        }
        bt btVar = (bt) obj;
        if (this.f18630d != btVar.f18630d) {
            return false;
        }
        switch (AnonymousClass1.f18631a[this.f18630d.ordinal()]) {
            case 1:
                bc bcVar = this.e;
                bc bcVar2 = btVar.e;
                return bcVar == bcVar2 || bcVar.equals(bcVar2);
            case 2:
                bd bdVar = this.f;
                bd bdVar2 = btVar.f;
                return bdVar == bdVar2 || bdVar.equals(bdVar2);
            case 3:
                e eVar = this.g;
                e eVar2 = btVar.g;
                return eVar == eVar2 || eVar.equals(eVar2);
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18630d, this.e, this.f, this.g});
    }

    public final String toString() {
        return a.f18632a.serialize((a) this, false);
    }
}

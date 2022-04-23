package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.ai;
import com.dropbox.core.v2.sharing.bm;
import com.dropbox.core.v2.sharing.bn;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as.class */
public final class as {

    /* renamed from: a  reason: collision with root package name */
    public static final as f18527a;

    /* renamed from: b  reason: collision with root package name */
    b f18528b;

    /* renamed from: c  reason: collision with root package name */
    private bn f18529c;

    /* renamed from: d  reason: collision with root package name */
    private bm f18530d;
    private ai e;

    /* renamed from: com.dropbox.core.v2.sharing.as$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18531a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18531a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18531a[b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18531a[b.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18531a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as$a.class */
    static final class a extends f<as> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18532a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            as asVar;
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
                if ("user_error".equals(str)) {
                    expectField("user_error", jsonParser);
                    bn.a aVar = bn.a.f18598a;
                    asVar = as.a(bn.a.a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar2 = bm.a.f18596a;
                    asVar = as.a(bm.a.a(jsonParser));
                } else if ("no_explicit_access".equals(str)) {
                    ai.a aVar3 = ai.a.f18483a;
                    asVar = as.a(ai.a.a(jsonParser, true));
                } else {
                    asVar = as.f18527a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return asVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            as asVar = (as) obj;
            int i = AnonymousClass1.f18531a[asVar.f18528b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(asVar.f18529c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar2 = bm.a.f18596a;
                bm.a.a(asVar.f18530d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                ai.a aVar3 = ai.a.f18483a;
                ai.a.a(asVar.e, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/as$b.class */
    public enum b {
        USER_ERROR,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new as();
        b bVar = b.OTHER;
        as asVar = new as();
        asVar.f18528b = bVar;
        f18527a = asVar;
    }

    private as() {
    }

    public static as a(ai aiVar) {
        if (aiVar != null) {
            new as();
            b bVar = b.NO_EXPLICIT_ACCESS;
            as asVar = new as();
            asVar.f18528b = bVar;
            asVar.e = aiVar;
            return asVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static as a(bm bmVar) {
        if (bmVar != null) {
            new as();
            b bVar = b.ACCESS_ERROR;
            as asVar = new as();
            asVar.f18528b = bVar;
            asVar.f18530d = bmVar;
            return asVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static as a(bn bnVar) {
        if (bnVar != null) {
            new as();
            b bVar = b.USER_ERROR;
            as asVar = new as();
            asVar.f18528b = bVar;
            asVar.f18529c = bnVar;
            return asVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof as)) {
            return false;
        }
        as asVar = (as) obj;
        if (this.f18528b != asVar.f18528b) {
            return false;
        }
        int i = AnonymousClass1.f18531a[this.f18528b.ordinal()];
        if (i == 1) {
            bn bnVar = this.f18529c;
            bn bnVar2 = asVar.f18529c;
            return bnVar == bnVar2 || bnVar.equals(bnVar2);
        } else if (i == 2) {
            bm bmVar = this.f18530d;
            bm bmVar2 = asVar.f18530d;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        } else if (i != 3) {
            return i == 4;
        } else {
            ai aiVar = this.e;
            ai aiVar2 = asVar.e;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18528b, this.f18529c, this.f18530d, this.e});
    }

    public final String toString() {
        return a.f18532a.serialize((a) this, false);
    }
}

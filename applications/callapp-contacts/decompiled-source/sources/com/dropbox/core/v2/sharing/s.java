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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public static final s f18705a;

    /* renamed from: b  reason: collision with root package name */
    b f18706b;

    /* renamed from: c  reason: collision with root package name */
    private bn f18707c;

    /* renamed from: d  reason: collision with root package name */
    private bm f18708d;

    /* renamed from: com.dropbox.core.v2.sharing.s$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18709a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18709a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18709a[b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18709a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s$a.class */
    static final class a extends f<s> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18710a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            s sVar;
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
                    sVar = s.a(bn.a.a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar2 = bm.a.f18596a;
                    sVar = s.a(bm.a.a(jsonParser));
                } else {
                    sVar = s.f18705a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return sVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            s sVar = (s) obj;
            int i = AnonymousClass1.f18709a[sVar.f18706b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(sVar.f18707c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar2 = bm.a.f18596a;
                bm.a.a(sVar.f18708d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/s$b.class */
    public enum b {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    static {
        new s();
        b bVar = b.OTHER;
        s sVar = new s();
        sVar.f18706b = bVar;
        f18705a = sVar;
    }

    private s() {
    }

    public static s a(bm bmVar) {
        if (bmVar != null) {
            new s();
            b bVar = b.ACCESS_ERROR;
            s sVar = new s();
            sVar.f18706b = bVar;
            sVar.f18708d = bmVar;
            return sVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static s a(bn bnVar) {
        if (bnVar != null) {
            new s();
            b bVar = b.USER_ERROR;
            s sVar = new s();
            sVar.f18706b = bVar;
            sVar.f18707c = bnVar;
            return sVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f18706b != sVar.f18706b) {
            return false;
        }
        int i = AnonymousClass1.f18709a[this.f18706b.ordinal()];
        if (i == 1) {
            bn bnVar = this.f18707c;
            bn bnVar2 = sVar.f18707c;
            return bnVar == bnVar2 || bnVar.equals(bnVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            bm bmVar = this.f18708d;
            bm bmVar2 = sVar.f18708d;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18706b, this.f18707c, this.f18708d});
    }

    public final String toString() {
        return a.f18710a.serialize((a) this, false);
    }
}

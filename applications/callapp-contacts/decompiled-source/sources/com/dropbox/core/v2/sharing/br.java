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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br.class */
public final class br {

    /* renamed from: a  reason: collision with root package name */
    public static final br f18615a;

    /* renamed from: b  reason: collision with root package name */
    b f18616b;

    /* renamed from: c  reason: collision with root package name */
    private bn f18617c;

    /* renamed from: d  reason: collision with root package name */
    private bm f18618d;

    /* renamed from: com.dropbox.core.v2.sharing.br$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18619a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18619a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18619a[b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18619a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br$a.class */
    static final class a extends f<br> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18620a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            br brVar;
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
                    brVar = br.a(bn.a.a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar2 = bm.a.f18596a;
                    brVar = br.a(bm.a.a(jsonParser));
                } else {
                    brVar = br.f18615a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return brVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            br brVar = (br) obj;
            int i = AnonymousClass1.f18619a[brVar.f18616b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(brVar.f18617c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar2 = bm.a.f18596a;
                bm.a.a(brVar.f18618d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/br$b.class */
    public enum b {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    static {
        new br();
        b bVar = b.OTHER;
        br brVar = new br();
        brVar.f18616b = bVar;
        f18615a = brVar;
    }

    private br() {
    }

    public static br a(bm bmVar) {
        if (bmVar != null) {
            new br();
            b bVar = b.ACCESS_ERROR;
            br brVar = new br();
            brVar.f18616b = bVar;
            brVar.f18618d = bmVar;
            return brVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static br a(bn bnVar) {
        if (bnVar != null) {
            new br();
            b bVar = b.USER_ERROR;
            br brVar = new br();
            brVar.f18616b = bVar;
            brVar.f18617c = bnVar;
            return brVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof br)) {
            return false;
        }
        br brVar = (br) obj;
        if (this.f18616b != brVar.f18616b) {
            return false;
        }
        int i = AnonymousClass1.f18619a[this.f18616b.ordinal()];
        if (i == 1) {
            bn bnVar = this.f18617c;
            bn bnVar2 = brVar.f18617c;
            return bnVar == bnVar2 || bnVar.equals(bnVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            bm bmVar = this.f18618d;
            bm bmVar2 = brVar.f18618d;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18616b, this.f18617c, this.f18618d});
    }

    public final String toString() {
        return a.f18620a.serialize((a) this, false);
    }
}

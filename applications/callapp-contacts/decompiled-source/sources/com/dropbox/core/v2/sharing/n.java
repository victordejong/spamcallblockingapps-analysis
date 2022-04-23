package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.ai;
import com.dropbox.core.v2.sharing.bm;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f18687a = a(b.INVALID_MEMBER);

    /* renamed from: b  reason: collision with root package name */
    public static final n f18688b = a(b.NO_PERMISSION);

    /* renamed from: c  reason: collision with root package name */
    public static final n f18689c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18690d;
    private bm e;
    private ai f;

    /* renamed from: com.dropbox.core.v2.sharing.n$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18691a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18691a = iArr;
            try {
                iArr[b.INVALID_MEMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18691a[b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18691a[b.ACCESS_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18691a[b.NO_EXPLICIT_ACCESS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18691a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n$a.class */
    static final class a extends f<n> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18692a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            n nVar;
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
                if ("invalid_member".equals(str)) {
                    nVar = n.f18687a;
                } else if ("no_permission".equals(str)) {
                    nVar = n.f18688b;
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar = bm.a.f18596a;
                    nVar = n.a(bm.a.a(jsonParser));
                } else if ("no_explicit_access".equals(str)) {
                    ai.a aVar2 = ai.a.f18483a;
                    nVar = n.a(ai.a.a(jsonParser, true));
                } else {
                    nVar = n.f18689c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return nVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            n nVar = (n) obj;
            int i = AnonymousClass1.f18691a[nVar.f18690d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_member");
            } else if (i == 2) {
                jsonGenerator.writeString("no_permission");
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar = bm.a.f18596a;
                bm.a.a(nVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                ai.a aVar2 = ai.a.f18483a;
                ai.a.a(nVar.f, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/n$b.class */
    public enum b {
        INVALID_MEMBER,
        NO_PERMISSION,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new n();
        new n();
        new n();
    }

    private n() {
    }

    public static n a(ai aiVar) {
        if (aiVar != null) {
            new n();
            b bVar = b.NO_EXPLICIT_ACCESS;
            n nVar = new n();
            nVar.f18690d = bVar;
            nVar.f = aiVar;
            return nVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static n a(bm bmVar) {
        if (bmVar != null) {
            new n();
            b bVar = b.ACCESS_ERROR;
            n nVar = new n();
            nVar.f18690d = bVar;
            nVar.e = bmVar;
            return nVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static n a(b bVar) {
        n nVar = new n();
        nVar.f18690d = bVar;
        return nVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f18690d != nVar.f18690d) {
            return false;
        }
        int i = AnonymousClass1.f18691a[this.f18690d.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i == 3) {
            bm bmVar = this.e;
            bm bmVar2 = nVar.e;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        } else if (i != 4) {
            return i == 5;
        } else {
            ai aiVar = this.f;
            ai aiVar2 = nVar.f;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18690d, this.e, this.f});
    }

    public final String toString() {
        return a.f18692a.serialize((a) this, false);
    }
}

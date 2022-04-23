package com.dropbox.core.v2.auth;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.auth.d;
import com.dropbox.core.v2.auth.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f17922a;

    /* renamed from: b  reason: collision with root package name */
    b f17923b;

    /* renamed from: c  reason: collision with root package name */
    private d f17924c;

    /* renamed from: d  reason: collision with root package name */
    private e f17925d;

    /* renamed from: com.dropbox.core.v2.auth.a$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17926a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f17926a = iArr;
            try {
                iArr[b.INVALID_ACCOUNT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17926a[b.PAPER_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17926a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a$a.class */
    public static final class C0361a extends f<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0361a f17927a = new C0361a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            a aVar;
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
                if ("invalid_account_type".equals(str)) {
                    expectField("invalid_account_type", jsonParser);
                    d.a aVar2 = d.a.f17936a;
                    aVar = a.a(d.a.a(jsonParser));
                } else if ("paper_access_denied".equals(str)) {
                    expectField("paper_access_denied", jsonParser);
                    e.a aVar3 = e.a.f17938a;
                    aVar = a.a(e.a.a(jsonParser));
                } else {
                    aVar = a.f17922a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a aVar = (a) obj;
            int i = AnonymousClass1.f17926a[aVar.f17923b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("invalid_account_type", jsonGenerator);
                jsonGenerator.writeFieldName("invalid_account_type");
                d.a aVar2 = d.a.f17936a;
                d.a.a(aVar.f17924c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("paper_access_denied", jsonGenerator);
                jsonGenerator.writeFieldName("paper_access_denied");
                e.a aVar3 = e.a.f17938a;
                e.a.a(aVar.f17925d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/a$b.class */
    public enum b {
        INVALID_ACCOUNT_TYPE,
        PAPER_ACCESS_DENIED,
        OTHER
    }

    static {
        new a();
        b bVar = b.OTHER;
        a aVar = new a();
        aVar.f17923b = bVar;
        f17922a = aVar;
    }

    private a() {
    }

    public static a a(d dVar) {
        if (dVar != null) {
            new a();
            b bVar = b.INVALID_ACCOUNT_TYPE;
            a aVar = new a();
            aVar.f17923b = bVar;
            aVar.f17924c = dVar;
            return aVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static a a(e eVar) {
        if (eVar != null) {
            new a();
            b bVar = b.PAPER_ACCESS_DENIED;
            a aVar = new a();
            aVar.f17923b = bVar;
            aVar.f17925d = eVar;
            return aVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f17923b != aVar.f17923b) {
            return false;
        }
        int i = AnonymousClass1.f17926a[this.f17923b.ordinal()];
        if (i == 1) {
            d dVar = this.f17924c;
            d dVar2 = aVar.f17924c;
            return dVar == dVar2 || dVar.equals(dVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            e eVar = this.f17925d;
            e eVar2 = aVar.f17925d;
            return eVar == eVar2 || eVar.equals(eVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17923b, this.f17924c, this.f17925d});
    }

    public final String toString() {
        return C0361a.f17927a.serialize((C0361a) this, false);
    }
}

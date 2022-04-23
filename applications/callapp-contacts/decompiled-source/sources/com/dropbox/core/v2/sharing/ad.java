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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    public static final ad f18456a;

    /* renamed from: b  reason: collision with root package name */
    b f18457b;

    /* renamed from: c  reason: collision with root package name */
    private bn f18458c;

    /* renamed from: d  reason: collision with root package name */
    private bm f18459d;

    /* renamed from: com.dropbox.core.v2.sharing.ad$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18460a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18460a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18460a[b.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18460a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad$a.class */
    static final class a extends f<ad> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18461a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ad adVar;
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
                    adVar = ad.a(bn.a.a(jsonParser));
                } else if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bm.a aVar2 = bm.a.f18596a;
                    adVar = ad.a(bm.a.a(jsonParser));
                } else {
                    adVar = ad.f18456a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return adVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ad adVar = (ad) obj;
            int i = AnonymousClass1.f18460a[adVar.f18457b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(adVar.f18458c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bm.a aVar2 = bm.a.f18596a;
                bm.a.a(adVar.f18459d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ad$b.class */
    public enum b {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    static {
        new ad();
        b bVar = b.OTHER;
        ad adVar = new ad();
        adVar.f18457b = bVar;
        f18456a = adVar;
    }

    private ad() {
    }

    public static ad a(bm bmVar) {
        if (bmVar != null) {
            new ad();
            b bVar = b.ACCESS_ERROR;
            ad adVar = new ad();
            adVar.f18457b = bVar;
            adVar.f18459d = bmVar;
            return adVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ad a(bn bnVar) {
        if (bnVar != null) {
            new ad();
            b bVar = b.USER_ERROR;
            ad adVar = new ad();
            adVar.f18457b = bVar;
            adVar.f18458c = bnVar;
            return adVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ad)) {
            return false;
        }
        ad adVar = (ad) obj;
        if (this.f18457b != adVar.f18457b) {
            return false;
        }
        int i = AnonymousClass1.f18460a[this.f18457b.ordinal()];
        if (i == 1) {
            bn bnVar = this.f18458c;
            bn bnVar2 = adVar.f18458c;
            return bnVar == bnVar2 || bnVar.equals(bnVar2);
        } else if (i != 2) {
            return i == 3;
        } else {
            bm bmVar = this.f18459d;
            bm bmVar2 = adVar.f18459d;
            return bmVar == bmVar2 || bmVar.equals(bmVar2);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18457b, this.f18458c, this.f18459d});
    }

    public final String toString() {
        return a.f18461a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.team;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.team.aw;
import com.dropbox.core.v2.team.ba;
import com.dropbox.core.v2.team.bf;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ay.class */
public final class ay {

    /* renamed from: a  reason: collision with root package name */
    public static final ay f18802a;

    /* renamed from: b  reason: collision with root package name */
    b f18803b;

    /* renamed from: c  reason: collision with root package name */
    private aw f18804c;

    /* renamed from: d  reason: collision with root package name */
    private ba f18805d;
    private bf e;

    /* renamed from: com.dropbox.core.v2.team.ay$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ay$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18806a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18806a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18806a[b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18806a[b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18806a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ay$a.class */
    static final class a extends f<ay> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18807a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ay ayVar;
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
                    aw.a aVar = aw.a.f18795a;
                    ayVar = ay.a(aw.a.a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    ba.a aVar2 = ba.a.f18815a;
                    ayVar = ay.a(ba.a.a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    bf.a aVar3 = bf.a.f18831a;
                    ayVar = ay.a(bf.a.a(jsonParser));
                } else if ("other".equals(str)) {
                    ayVar = ay.f18802a;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ayVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ay ayVar = (ay) obj;
            int i = AnonymousClass1.f18806a[ayVar.f18803b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                aw.a aVar = aw.a.f18795a;
                aw.a.a(ayVar.f18804c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                ba.a aVar2 = ba.a.f18815a;
                ba.a.a(ayVar.f18805d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                bf.a aVar3 = bf.a.f18831a;
                bf.a.a(ayVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("other");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + ayVar.f18803b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ay$b.class */
    public enum b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    static {
        new ay();
        b bVar = b.OTHER;
        ay ayVar = new ay();
        ayVar.f18803b = bVar;
        f18802a = ayVar;
    }

    private ay() {
    }

    public static ay a(aw awVar) {
        if (awVar != null) {
            new ay();
            b bVar = b.ACCESS_ERROR;
            ay ayVar = new ay();
            ayVar.f18803b = bVar;
            ayVar.f18804c = awVar;
            return ayVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ay a(ba baVar) {
        if (baVar != null) {
            new ay();
            b bVar = b.STATUS_ERROR;
            ay ayVar = new ay();
            ayVar.f18803b = bVar;
            ayVar.f18805d = baVar;
            return ayVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ay a(bf bfVar) {
        if (bfVar != null) {
            new ay();
            b bVar = b.TEAM_SHARED_DROPBOX_ERROR;
            ay ayVar = new ay();
            ayVar.f18803b = bVar;
            ayVar.e = bfVar;
            return ayVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ay)) {
            return false;
        }
        ay ayVar = (ay) obj;
        if (this.f18803b != ayVar.f18803b) {
            return false;
        }
        int i = AnonymousClass1.f18806a[this.f18803b.ordinal()];
        if (i == 1) {
            aw awVar = this.f18804c;
            aw awVar2 = ayVar.f18804c;
            return awVar == awVar2 || awVar.equals(awVar2);
        } else if (i == 2) {
            ba baVar = this.f18805d;
            ba baVar2 = ayVar.f18805d;
            return baVar == baVar2 || baVar.equals(baVar2);
        } else if (i != 3) {
            return i == 4;
        } else {
            bf bfVar = this.e;
            bf bfVar2 = ayVar.e;
            return bfVar == bfVar2 || bfVar.equals(bfVar2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18803b, this.f18804c, this.f18805d, this.e});
    }

    public final String toString() {
        return a.f18807a.serialize((a) this, false);
    }
}

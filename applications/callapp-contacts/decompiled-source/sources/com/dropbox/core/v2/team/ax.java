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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ax.class */
public final class ax {

    /* renamed from: a  reason: collision with root package name */
    public static final ax f18796a;

    /* renamed from: b  reason: collision with root package name */
    b f18797b;

    /* renamed from: c  reason: collision with root package name */
    private aw f18798c;

    /* renamed from: d  reason: collision with root package name */
    private ba f18799d;
    private bf e;

    /* renamed from: com.dropbox.core.v2.team.ax$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ax$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18800a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18800a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18800a[b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18800a[b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18800a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ax$a.class */
    static final class a extends f<ax> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18801a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ax axVar;
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
                    axVar = ax.a(aw.a.a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    ba.a aVar2 = ba.a.f18815a;
                    axVar = ax.a(ba.a.a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    bf.a aVar3 = bf.a.f18831a;
                    axVar = ax.a(bf.a.a(jsonParser));
                } else if ("other".equals(str)) {
                    axVar = ax.f18796a;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return axVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ax axVar = (ax) obj;
            int i = AnonymousClass1.f18800a[axVar.f18797b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                aw.a aVar = aw.a.f18795a;
                aw.a.a(axVar.f18798c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                ba.a aVar2 = ba.a.f18815a;
                ba.a.a(axVar.f18799d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                bf.a aVar3 = bf.a.f18831a;
                bf.a.a(axVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("other");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + axVar.f18797b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ax$b.class */
    public enum b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER
    }

    static {
        new ax();
        b bVar = b.OTHER;
        ax axVar = new ax();
        axVar.f18797b = bVar;
        f18796a = axVar;
    }

    private ax() {
    }

    public static ax a(aw awVar) {
        if (awVar != null) {
            new ax();
            b bVar = b.ACCESS_ERROR;
            ax axVar = new ax();
            axVar.f18797b = bVar;
            axVar.f18798c = awVar;
            return axVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ax a(ba baVar) {
        if (baVar != null) {
            new ax();
            b bVar = b.STATUS_ERROR;
            ax axVar = new ax();
            axVar.f18797b = bVar;
            axVar.f18799d = baVar;
            return axVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ax a(bf bfVar) {
        if (bfVar != null) {
            new ax();
            b bVar = b.TEAM_SHARED_DROPBOX_ERROR;
            ax axVar = new ax();
            axVar.f18797b = bVar;
            axVar.e = bfVar;
            return axVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ax)) {
            return false;
        }
        ax axVar = (ax) obj;
        if (this.f18797b != axVar.f18797b) {
            return false;
        }
        int i = AnonymousClass1.f18800a[this.f18797b.ordinal()];
        if (i == 1) {
            aw awVar = this.f18798c;
            aw awVar2 = axVar.f18798c;
            return awVar == awVar2 || awVar.equals(awVar2);
        } else if (i == 2) {
            ba baVar = this.f18799d;
            ba baVar2 = axVar.f18799d;
            return baVar == baVar2 || baVar.equals(baVar2);
        } else if (i != 3) {
            return i == 4;
        } else {
            bf bfVar = this.e;
            bf bfVar2 = axVar.e;
            return bfVar == bfVar2 || bfVar.equals(bfVar2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18797b, this.f18798c, this.f18799d, this.e});
    }

    public final String toString() {
        return a.f18801a.serialize((a) this, false);
    }
}

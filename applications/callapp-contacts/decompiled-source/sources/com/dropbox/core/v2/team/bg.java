package com.dropbox.core.v2.team;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ay;
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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg.class */
public final class bg {

    /* renamed from: a  reason: collision with root package name */
    public static final bg f18832a;

    /* renamed from: b  reason: collision with root package name */
    b f18833b;

    /* renamed from: c  reason: collision with root package name */
    private aw f18834c;

    /* renamed from: d  reason: collision with root package name */
    private ba f18835d;
    private bf e;
    private ay f;

    /* renamed from: com.dropbox.core.v2.team.bg$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18836a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18836a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18836a[b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18836a[b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18836a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18836a[b.SYNC_SETTINGS_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg$a.class */
    static final class a extends f<bg> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18837a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bg bgVar;
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
                    bgVar = bg.a(aw.a.a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    ba.a aVar2 = ba.a.f18815a;
                    bgVar = bg.a(ba.a.a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    bf.a aVar3 = bf.a.f18831a;
                    bgVar = bg.a(bf.a.a(jsonParser));
                } else if ("other".equals(str)) {
                    bgVar = bg.f18832a;
                } else if ("sync_settings_error".equals(str)) {
                    expectField("sync_settings_error", jsonParser);
                    ay.a aVar4 = ay.a.f18228a;
                    bgVar = bg.a(ay.a.a(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bgVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bg bgVar = (bg) obj;
            int i = AnonymousClass1.f18836a[bgVar.f18833b.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                aw.a aVar = aw.a.f18795a;
                aw.a.a(bgVar.f18834c, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                ba.a aVar2 = ba.a.f18815a;
                ba.a.a(bgVar.f18835d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                bf.a aVar3 = bf.a.f18831a;
                bf.a.a(bgVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeString("other");
            } else if (i == 5) {
                jsonGenerator.writeStartObject();
                writeTag("sync_settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("sync_settings_error");
                ay.a.f18228a.serialize(bgVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + bgVar.f18833b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/bg$b.class */
    public enum b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        SYNC_SETTINGS_ERROR
    }

    static {
        new bg();
        b bVar = b.OTHER;
        bg bgVar = new bg();
        bgVar.f18833b = bVar;
        f18832a = bgVar;
    }

    private bg() {
    }

    public static bg a(ay ayVar) {
        if (ayVar != null) {
            new bg();
            b bVar = b.SYNC_SETTINGS_ERROR;
            bg bgVar = new bg();
            bgVar.f18833b = bVar;
            bgVar.f = ayVar;
            return bgVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static bg a(aw awVar) {
        if (awVar != null) {
            new bg();
            b bVar = b.ACCESS_ERROR;
            bg bgVar = new bg();
            bgVar.f18833b = bVar;
            bgVar.f18834c = awVar;
            return bgVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static bg a(ba baVar) {
        if (baVar != null) {
            new bg();
            b bVar = b.STATUS_ERROR;
            bg bgVar = new bg();
            bgVar.f18833b = bVar;
            bgVar.f18835d = baVar;
            return bgVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static bg a(bf bfVar) {
        if (bfVar != null) {
            new bg();
            b bVar = b.TEAM_SHARED_DROPBOX_ERROR;
            bg bgVar = new bg();
            bgVar.f18833b = bVar;
            bgVar.e = bfVar;
            return bgVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bg)) {
            return false;
        }
        bg bgVar = (bg) obj;
        if (this.f18833b != bgVar.f18833b) {
            return false;
        }
        int i = AnonymousClass1.f18836a[this.f18833b.ordinal()];
        if (i == 1) {
            aw awVar = this.f18834c;
            aw awVar2 = bgVar.f18834c;
            return awVar == awVar2 || awVar.equals(awVar2);
        } else if (i == 2) {
            ba baVar = this.f18835d;
            ba baVar2 = bgVar.f18835d;
            return baVar == baVar2 || baVar.equals(baVar2);
        } else if (i == 3) {
            bf bfVar = this.e;
            bf bfVar2 = bgVar.e;
            return bfVar == bfVar2 || bfVar.equals(bfVar2);
        } else if (i == 4) {
            return true;
        } else {
            if (i != 5) {
                return false;
            }
            ay ayVar = this.f;
            ay ayVar2 = bgVar.f;
            return ayVar == ayVar2 || ayVar.equals(ayVar2);
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18833b, this.f18834c, this.f18835d, this.e, this.f});
    }

    public final String toString() {
        return a.f18837a.serialize((a) this, false);
    }
}

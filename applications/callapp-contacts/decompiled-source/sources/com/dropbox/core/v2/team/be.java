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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be.class */
public final class be {

    /* renamed from: a  reason: collision with root package name */
    public static final be f18824a = a(b.OTHER);

    /* renamed from: b  reason: collision with root package name */
    public static final be f18825b = a(b.INVALID_FOLDER_NAME);

    /* renamed from: c  reason: collision with root package name */
    public static final be f18826c = a(b.FOLDER_NAME_ALREADY_USED);

    /* renamed from: d  reason: collision with root package name */
    public static final be f18827d = a(b.FOLDER_NAME_RESERVED);
    b e;
    private aw f;
    private ba g;
    private bf h;

    /* renamed from: com.dropbox.core.v2.team.be$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18828a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18828a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18828a[b.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18828a[b.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18828a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18828a[b.INVALID_FOLDER_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18828a[b.FOLDER_NAME_ALREADY_USED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18828a[b.FOLDER_NAME_RESERVED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be$a.class */
    static final class a extends f<be> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18829a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            be beVar;
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
                    beVar = be.a(aw.a.a(jsonParser));
                } else if ("status_error".equals(str)) {
                    expectField("status_error", jsonParser);
                    ba.a aVar2 = ba.a.f18815a;
                    beVar = be.a(ba.a.a(jsonParser));
                } else if ("team_shared_dropbox_error".equals(str)) {
                    expectField("team_shared_dropbox_error", jsonParser);
                    bf.a aVar3 = bf.a.f18831a;
                    beVar = be.a(bf.a.a(jsonParser));
                } else if ("other".equals(str)) {
                    beVar = be.f18824a;
                } else if ("invalid_folder_name".equals(str)) {
                    beVar = be.f18825b;
                } else if ("folder_name_already_used".equals(str)) {
                    beVar = be.f18826c;
                } else if ("folder_name_reserved".equals(str)) {
                    beVar = be.f18827d;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return beVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            be beVar = (be) obj;
            switch (AnonymousClass1.f18828a[beVar.e.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("access_error", jsonGenerator);
                    jsonGenerator.writeFieldName("access_error");
                    aw.a aVar = aw.a.f18795a;
                    aw.a.a(beVar.f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("status_error", jsonGenerator);
                    jsonGenerator.writeFieldName("status_error");
                    ba.a aVar2 = ba.a.f18815a;
                    ba.a.a(beVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("team_shared_dropbox_error", jsonGenerator);
                    jsonGenerator.writeFieldName("team_shared_dropbox_error");
                    bf.a aVar3 = bf.a.f18831a;
                    bf.a.a(beVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("other");
                    return;
                case 5:
                    jsonGenerator.writeString("invalid_folder_name");
                    return;
                case 6:
                    jsonGenerator.writeString("folder_name_already_used");
                    return;
                case 7:
                    jsonGenerator.writeString("folder_name_reserved");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + beVar.e);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/be$b.class */
    public enum b {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED
    }

    static {
        new be();
        new be();
        new be();
        new be();
    }

    private be() {
    }

    public static be a(aw awVar) {
        if (awVar != null) {
            new be();
            b bVar = b.ACCESS_ERROR;
            be beVar = new be();
            beVar.e = bVar;
            beVar.f = awVar;
            return beVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static be a(ba baVar) {
        if (baVar != null) {
            new be();
            b bVar = b.STATUS_ERROR;
            be beVar = new be();
            beVar.e = bVar;
            beVar.g = baVar;
            return beVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static be a(b bVar) {
        be beVar = new be();
        beVar.e = bVar;
        return beVar;
    }

    public static be a(bf bfVar) {
        if (bfVar != null) {
            new be();
            b bVar = b.TEAM_SHARED_DROPBOX_ERROR;
            be beVar = new be();
            beVar.e = bVar;
            beVar.h = bfVar;
            return beVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof be)) {
            return false;
        }
        be beVar = (be) obj;
        if (this.e != beVar.e) {
            return false;
        }
        switch (AnonymousClass1.f18828a[this.e.ordinal()]) {
            case 1:
                aw awVar = this.f;
                aw awVar2 = beVar.f;
                return awVar == awVar2 || awVar.equals(awVar2);
            case 2:
                ba baVar = this.g;
                ba baVar2 = beVar.g;
                return baVar == baVar2 || baVar.equals(baVar2);
            case 3:
                bf bfVar = this.h;
                bf bfVar2 = beVar.h;
                return bfVar == bfVar2 || bfVar.equals(bfVar2);
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.e, this.f, this.g, this.h});
    }

    public final String toString() {
        return a.f18829a.serialize((a) this, false);
    }
}

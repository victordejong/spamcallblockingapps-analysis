package com.dropbox.core.v2.team;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ay;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az.class */
public final class az {

    /* renamed from: a  reason: collision with root package name */
    public static final az f18808a = a(b.INVALID_FOLDER_NAME);

    /* renamed from: b  reason: collision with root package name */
    public static final az f18809b = a(b.FOLDER_NAME_ALREADY_USED);

    /* renamed from: c  reason: collision with root package name */
    public static final az f18810c = a(b.FOLDER_NAME_RESERVED);

    /* renamed from: d  reason: collision with root package name */
    public static final az f18811d = a(b.OTHER);
    b e;
    private ay f;

    /* renamed from: com.dropbox.core.v2.team.az$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18812a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18812a = iArr;
            try {
                iArr[b.INVALID_FOLDER_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18812a[b.FOLDER_NAME_ALREADY_USED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18812a[b.FOLDER_NAME_RESERVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18812a[b.SYNC_SETTINGS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18812a[b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az$a.class */
    static final class a extends f<az> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18813a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            az azVar;
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
                if ("invalid_folder_name".equals(str)) {
                    azVar = az.f18808a;
                } else if ("folder_name_already_used".equals(str)) {
                    azVar = az.f18809b;
                } else if ("folder_name_reserved".equals(str)) {
                    azVar = az.f18810c;
                } else if ("sync_settings_error".equals(str)) {
                    expectField("sync_settings_error", jsonParser);
                    ay.a aVar = ay.a.f18228a;
                    azVar = az.a(ay.a.a(jsonParser));
                } else {
                    azVar = az.f18811d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return azVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            az azVar = (az) obj;
            int i = AnonymousClass1.f18812a[azVar.e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_folder_name");
            } else if (i == 2) {
                jsonGenerator.writeString("folder_name_already_used");
            } else if (i == 3) {
                jsonGenerator.writeString("folder_name_reserved");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("sync_settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("sync_settings_error");
                ay.a.f18228a.serialize(azVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/az$b.class */
    public enum b {
        INVALID_FOLDER_NAME,
        FOLDER_NAME_ALREADY_USED,
        FOLDER_NAME_RESERVED,
        SYNC_SETTINGS_ERROR,
        OTHER
    }

    static {
        new az();
        new az();
        new az();
        new az();
    }

    private az() {
    }

    public static az a(ay ayVar) {
        if (ayVar != null) {
            new az();
            b bVar = b.SYNC_SETTINGS_ERROR;
            az azVar = new az();
            azVar.e = bVar;
            azVar.f = ayVar;
            return azVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static az a(b bVar) {
        az azVar = new az();
        azVar.e = bVar;
        return azVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof az)) {
            return false;
        }
        az azVar = (az) obj;
        if (this.e != azVar.e) {
            return false;
        }
        int i = AnonymousClass1.f18812a[this.e.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return i == 5;
        }
        ay ayVar = this.f;
        ay ayVar2 = azVar.f;
        return ayVar == ayVar2 || ayVar.equals(ayVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f});
    }

    public final String toString() {
        return a.f18813a.serialize((a) this, false);
    }
}

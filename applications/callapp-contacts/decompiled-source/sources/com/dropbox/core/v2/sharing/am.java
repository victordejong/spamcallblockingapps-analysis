package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am.class */
public final class am {

    /* renamed from: a  reason: collision with root package name */
    public static final am f18492a = a(b.SHARED_LINK_NOT_FOUND);

    /* renamed from: b  reason: collision with root package name */
    public static final am f18493b = a(b.SHARED_LINK_ACCESS_DENIED);

    /* renamed from: c  reason: collision with root package name */
    public static final am f18494c = a(b.UNSUPPORTED_LINK_TYPE);

    /* renamed from: d  reason: collision with root package name */
    public static final am f18495d = a(b.OTHER);
    public static final am e = a(b.EMAIL_NOT_VERIFIED);
    b f;
    private bl g;

    /* renamed from: com.dropbox.core.v2.sharing.am$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18496a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18496a = iArr;
            try {
                iArr[b.SHARED_LINK_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18496a[b.SHARED_LINK_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18496a[b.UNSUPPORTED_LINK_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18496a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18496a[b.SETTINGS_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18496a[b.EMAIL_NOT_VERIFIED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am$a.class */
    static final class a extends f<am> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18497a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            am amVar;
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
                if ("shared_link_not_found".equals(str)) {
                    amVar = am.f18492a;
                } else if ("shared_link_access_denied".equals(str)) {
                    amVar = am.f18493b;
                } else if ("unsupported_link_type".equals(str)) {
                    amVar = am.f18494c;
                } else if ("other".equals(str)) {
                    amVar = am.f18495d;
                } else if ("settings_error".equals(str)) {
                    expectField("settings_error", jsonParser);
                    bl.a aVar = bl.a.f18594a;
                    amVar = am.a(bl.a.a(jsonParser));
                } else if ("email_not_verified".equals(str)) {
                    amVar = am.e;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return amVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            am amVar = (am) obj;
            switch (AnonymousClass1.f18496a[amVar.f.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("shared_link_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString("shared_link_access_denied");
                    return;
                case 3:
                    jsonGenerator.writeString("unsupported_link_type");
                    return;
                case 4:
                    jsonGenerator.writeString("other");
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("settings_error", jsonGenerator);
                    jsonGenerator.writeFieldName("settings_error");
                    bl.a aVar = bl.a.f18594a;
                    bl.a.a(amVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeString("email_not_verified");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + amVar.f);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/am$b.class */
    public enum b {
        SHARED_LINK_NOT_FOUND,
        SHARED_LINK_ACCESS_DENIED,
        UNSUPPORTED_LINK_TYPE,
        OTHER,
        SETTINGS_ERROR,
        EMAIL_NOT_VERIFIED
    }

    static {
        new am();
        new am();
        new am();
        new am();
        new am();
    }

    private am() {
    }

    private static am a(b bVar) {
        am amVar = new am();
        amVar.f = bVar;
        return amVar;
    }

    public static am a(bl blVar) {
        if (blVar != null) {
            new am();
            b bVar = b.SETTINGS_ERROR;
            am amVar = new am();
            amVar.f = bVar;
            amVar.g = blVar;
            return amVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof am)) {
            return false;
        }
        am amVar = (am) obj;
        if (this.f != amVar.f) {
            return false;
        }
        switch (AnonymousClass1.f18496a[this.f.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            case 5:
                bl blVar = this.g;
                bl blVar2 = amVar.g;
                return blVar == blVar2 || blVar.equals(blVar2);
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f, this.g});
    }

    public final String toString() {
        return a.f18497a.serialize((a) this, false);
    }
}

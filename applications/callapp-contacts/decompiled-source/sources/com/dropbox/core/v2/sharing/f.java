package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f18655a = a(b.AUTOMATIC_GROUP);

    /* renamed from: b  reason: collision with root package name */
    public static final f f18656b = a(b.GROUP_DELETED);

    /* renamed from: c  reason: collision with root package name */
    public static final f f18657c = a(b.GROUP_NOT_ON_TEAM);

    /* renamed from: d  reason: collision with root package name */
    public static final f f18658d = a(b.OTHER);
    b e;
    private String f;
    private String g;
    private String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.f$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18659a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18659a = iArr;
            try {
                iArr[b.AUTOMATIC_GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18659a[b.INVALID_DROPBOX_ID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18659a[b.INVALID_EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18659a[b.UNVERIFIED_DROPBOX_ID.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18659a[b.GROUP_DELETED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18659a[b.GROUP_NOT_ON_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18659a[b.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f$a.class */
    static final class a extends com.dropbox.core.a.f<f> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18660a = new a();

        a() {
        }

        public static f a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            f fVar;
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
                if ("automatic_group".equals(str)) {
                    fVar = f.f18655a;
                } else if ("invalid_dropbox_id".equals(str)) {
                    expectField("invalid_dropbox_id", jsonParser);
                    fVar = f.a(d.h.f17717a.deserialize(jsonParser));
                } else if ("invalid_email".equals(str)) {
                    expectField("invalid_email", jsonParser);
                    fVar = f.b(d.h.f17717a.deserialize(jsonParser));
                } else if ("unverified_dropbox_id".equals(str)) {
                    expectField("unverified_dropbox_id", jsonParser);
                    fVar = f.c(d.h.f17717a.deserialize(jsonParser));
                } else {
                    fVar = "group_deleted".equals(str) ? f.f18656b : "group_not_on_team".equals(str) ? f.f18657c : f.f18658d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return fVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(f fVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18659a[fVar.e.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("automatic_group");
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("invalid_dropbox_id", jsonGenerator);
                    jsonGenerator.writeFieldName("invalid_dropbox_id");
                    d.h.f17717a.serialize((d.h) fVar.f, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("invalid_email", jsonGenerator);
                    jsonGenerator.writeFieldName("invalid_email");
                    d.h.f17717a.serialize((d.h) fVar.g, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("unverified_dropbox_id", jsonGenerator);
                    jsonGenerator.writeFieldName("unverified_dropbox_id");
                    d.h.f17717a.serialize((d.h) fVar.h, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("group_deleted");
                    return;
                case 6:
                    jsonGenerator.writeString("group_not_on_team");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/f$b.class */
    public enum b {
        AUTOMATIC_GROUP,
        INVALID_DROPBOX_ID,
        INVALID_EMAIL,
        UNVERIFIED_DROPBOX_ID,
        GROUP_DELETED,
        GROUP_NOT_ON_TEAM,
        OTHER
    }

    static {
        new f();
        new f();
        new f();
        new f();
    }

    private f() {
    }

    private static f a(b bVar) {
        f fVar = new f();
        fVar.e = bVar;
        return fVar;
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() > 0) {
            new f();
            b bVar = b.INVALID_DROPBOX_ID;
            f fVar = new f();
            fVar.e = bVar;
            fVar.f = str;
            return fVar;
        } else {
            throw new IllegalArgumentException("String is shorter than 1");
        }
    }

    public static f b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        } else if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            new f();
            b bVar = b.INVALID_EMAIL;
            f fVar = new f();
            fVar.e = bVar;
            fVar.g = str;
            return fVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public static f c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() > 0) {
            new f();
            b bVar = b.UNVERIFIED_DROPBOX_ID;
            f fVar = new f();
            fVar.e = bVar;
            fVar.h = str;
            return fVar;
        } else {
            throw new IllegalArgumentException("String is shorter than 1");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.e != fVar.e) {
            return false;
        }
        switch (AnonymousClass1.f18659a[this.e.ordinal()]) {
            case 1:
                return true;
            case 2:
                String str = this.f;
                String str2 = fVar.f;
                return str == str2 || str.equals(str2);
            case 3:
                String str3 = this.g;
                String str4 = fVar.g;
                return str3 == str4 || str3.equals(str4);
            case 4:
                String str5 = this.h;
                String str6 = fVar.h;
                return str5 == str6 || str5.equals(str6);
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f, this.g, this.h});
    }

    public final String toString() {
        return a.f18660a.serialize((a) this, false);
    }
}

package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.dropbox.core.v2.sharing.bh;
import com.dropbox.core.v2.sharing.bl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final k f18675a = a(b.EMAIL_NOT_VERIFIED);

    /* renamed from: b  reason: collision with root package name */
    public static final k f18676b = a(b.ACCESS_DENIED);

    /* renamed from: c  reason: collision with root package name */
    b f18677c;

    /* renamed from: d  reason: collision with root package name */
    private ai f18678d;
    private bh e;
    private bl f;

    /* renamed from: com.dropbox.core.v2.sharing.k$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18679a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18679a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18679a[b.EMAIL_NOT_VERIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18679a[b.SHARED_LINK_ALREADY_EXISTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18679a[b.SETTINGS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18679a[b.ACCESS_DENIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k$a.class */
    static final class a extends f<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18680a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            k kVar;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    ai.a aVar = ai.a.f18163a;
                    kVar = k.a(ai.a.a(jsonParser));
                } else if ("email_not_verified".equals(str)) {
                    kVar = k.f18675a;
                } else if ("shared_link_already_exists".equals(str)) {
                    bh bhVar = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("shared_link_already_exists", jsonParser);
                        bhVar = (bh) d.a(bh.a.f18589a).deserialize(jsonParser);
                    }
                    kVar = bhVar == null ? k.a() : k.a(bhVar);
                } else if ("settings_error".equals(str)) {
                    expectField("settings_error", jsonParser);
                    bl.a aVar2 = bl.a.f18594a;
                    kVar = k.a(bl.a.a(jsonParser));
                } else if ("access_denied".equals(str)) {
                    kVar = k.f18676b;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return kVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            k kVar = (k) obj;
            int i = AnonymousClass1.f18679a[kVar.f18677c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(kVar.f18678d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("email_not_verified");
            } else if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("shared_link_already_exists", jsonGenerator);
                jsonGenerator.writeFieldName("shared_link_already_exists");
                d.a(bh.a.f18589a).serialize((c) kVar.e, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 4) {
                jsonGenerator.writeStartObject();
                writeTag("settings_error", jsonGenerator);
                jsonGenerator.writeFieldName("settings_error");
                bl.a aVar = bl.a.f18594a;
                bl.a.a(kVar.f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 5) {
                jsonGenerator.writeString("access_denied");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: " + kVar.f18677c);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/k$b.class */
    public enum b {
        PATH,
        EMAIL_NOT_VERIFIED,
        SHARED_LINK_ALREADY_EXISTS,
        SETTINGS_ERROR,
        ACCESS_DENIED
    }

    static {
        new k();
        new k();
    }

    private k() {
    }

    public static k a() {
        return a((bh) null);
    }

    public static k a(ai aiVar) {
        if (aiVar != null) {
            new k();
            b bVar = b.PATH;
            k kVar = new k();
            kVar.f18677c = bVar;
            kVar.f18678d = aiVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static k a(bh bhVar) {
        new k();
        b bVar = b.SHARED_LINK_ALREADY_EXISTS;
        k kVar = new k();
        kVar.f18677c = bVar;
        kVar.e = bhVar;
        return kVar;
    }

    public static k a(bl blVar) {
        if (blVar != null) {
            new k();
            b bVar = b.SETTINGS_ERROR;
            k kVar = new k();
            kVar.f18677c = bVar;
            kVar.f = blVar;
            return kVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static k a(b bVar) {
        k kVar = new k();
        kVar.f18677c = bVar;
        return kVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f18677c != kVar.f18677c) {
            return false;
        }
        int i = AnonymousClass1.f18679a[this.f18677c.ordinal()];
        if (i == 1) {
            ai aiVar = this.f18678d;
            ai aiVar2 = kVar.f18678d;
            return aiVar == aiVar2 || aiVar.equals(aiVar2);
        } else if (i == 2) {
            return true;
        } else {
            if (i == 3) {
                bh bhVar = this.e;
                bh bhVar2 = kVar.e;
                if (bhVar != bhVar2) {
                    return bhVar != null && bhVar.equals(bhVar2);
                }
                return true;
            } else if (i != 4) {
                return i == 5;
            } else {
                bl blVar = this.f;
                bl blVar2 = kVar.f;
                return blVar == blVar2 || blVar.equals(blVar2);
            }
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18677c, this.f18678d, this.e, this.f});
    }

    public final String toString() {
        return a.f18680a.serialize((a) this, false);
    }
}

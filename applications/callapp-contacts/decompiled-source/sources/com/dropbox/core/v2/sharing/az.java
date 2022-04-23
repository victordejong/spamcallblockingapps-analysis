package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.be;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az.class */
public final class az {

    /* renamed from: a  reason: collision with root package name */
    public static final az f18555a = a(b.IS_FILE);

    /* renamed from: b  reason: collision with root package name */
    public static final az f18556b = a(b.INSIDE_SHARED_FOLDER);

    /* renamed from: c  reason: collision with root package name */
    public static final az f18557c = a(b.CONTAINS_SHARED_FOLDER);

    /* renamed from: d  reason: collision with root package name */
    public static final az f18558d = a(b.CONTAINS_APP_FOLDER);
    public static final az e = a(b.CONTAINS_TEAM_FOLDER);
    public static final az f = a(b.IS_APP_FOLDER);
    public static final az g = a(b.INSIDE_APP_FOLDER);
    public static final az h = a(b.IS_PUBLIC_FOLDER);
    public static final az i = a(b.INSIDE_PUBLIC_FOLDER);
    public static final az j = a(b.INVALID_PATH);
    public static final az k = a(b.IS_OSX_PACKAGE);
    public static final az l = a(b.INSIDE_OSX_PACKAGE);
    public static final az m = a(b.IS_VAULT);
    public static final az n = a(b.OTHER);
    b o;
    private be p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.az$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18559a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18559a = iArr;
            try {
                iArr[b.IS_FILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18559a[b.INSIDE_SHARED_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18559a[b.CONTAINS_SHARED_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18559a[b.CONTAINS_APP_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18559a[b.CONTAINS_TEAM_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18559a[b.IS_APP_FOLDER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18559a[b.INSIDE_APP_FOLDER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18559a[b.IS_PUBLIC_FOLDER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18559a[b.INSIDE_PUBLIC_FOLDER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f18559a[b.ALREADY_SHARED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f18559a[b.INVALID_PATH.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f18559a[b.IS_OSX_PACKAGE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f18559a[b.INSIDE_OSX_PACKAGE.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f18559a[b.IS_VAULT.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f18559a[b.OTHER.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az$a.class */
    static final class a extends f<az> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18560a = new a();

        a() {
        }

        public static az a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            az azVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("is_file".equals(str)) {
                    azVar = az.f18555a;
                } else if ("inside_shared_folder".equals(str)) {
                    azVar = az.f18556b;
                } else if ("contains_shared_folder".equals(str)) {
                    azVar = az.f18557c;
                } else if ("contains_app_folder".equals(str)) {
                    azVar = az.f18558d;
                } else if ("contains_team_folder".equals(str)) {
                    azVar = az.e;
                } else if ("is_app_folder".equals(str)) {
                    azVar = az.f;
                } else if ("inside_app_folder".equals(str)) {
                    azVar = az.g;
                } else if ("is_public_folder".equals(str)) {
                    azVar = az.h;
                } else if ("inside_public_folder".equals(str)) {
                    azVar = az.i;
                } else if ("already_shared".equals(str)) {
                    be.a aVar = be.a.f18581a;
                    azVar = az.a(be.a.a(jsonParser, true));
                } else {
                    azVar = "invalid_path".equals(str) ? az.j : "is_osx_package".equals(str) ? az.k : "inside_osx_package".equals(str) ? az.l : "is_vault".equals(str) ? az.m : az.n;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return azVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(az azVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18559a[azVar.o.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("is_file");
                    return;
                case 2:
                    jsonGenerator.writeString("inside_shared_folder");
                    return;
                case 3:
                    jsonGenerator.writeString("contains_shared_folder");
                    return;
                case 4:
                    jsonGenerator.writeString("contains_app_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("contains_team_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("is_app_folder");
                    return;
                case 7:
                    jsonGenerator.writeString("inside_app_folder");
                    return;
                case 8:
                    jsonGenerator.writeString("is_public_folder");
                    return;
                case 9:
                    jsonGenerator.writeString("inside_public_folder");
                    return;
                case 10:
                    jsonGenerator.writeStartObject();
                    writeTag("already_shared", jsonGenerator);
                    be.a aVar = be.a.f18581a;
                    be.a.a(azVar.p, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 11:
                    jsonGenerator.writeString("invalid_path");
                    return;
                case 12:
                    jsonGenerator.writeString("is_osx_package");
                    return;
                case 13:
                    jsonGenerator.writeString("inside_osx_package");
                    return;
                case 14:
                    jsonGenerator.writeString("is_vault");
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

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/az$b.class */
    public enum b {
        IS_FILE,
        INSIDE_SHARED_FOLDER,
        CONTAINS_SHARED_FOLDER,
        CONTAINS_APP_FOLDER,
        CONTAINS_TEAM_FOLDER,
        IS_APP_FOLDER,
        INSIDE_APP_FOLDER,
        IS_PUBLIC_FOLDER,
        INSIDE_PUBLIC_FOLDER,
        ALREADY_SHARED,
        INVALID_PATH,
        IS_OSX_PACKAGE,
        INSIDE_OSX_PACKAGE,
        IS_VAULT,
        OTHER
    }

    static {
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
        new az();
    }

    private az() {
    }

    private static az a(b bVar) {
        az azVar = new az();
        azVar.o = bVar;
        return azVar;
    }

    public static az a(be beVar) {
        if (beVar != null) {
            new az();
            b bVar = b.ALREADY_SHARED;
            az azVar = new az();
            azVar.o = bVar;
            azVar.p = beVar;
            return azVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof az)) {
            return false;
        }
        az azVar = (az) obj;
        if (this.o != azVar.o) {
            return false;
        }
        switch (AnonymousClass1.f18559a[this.o.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            case 10:
                be beVar = this.p;
                be beVar2 = azVar.p;
                return beVar == beVar2 || beVar.equals(beVar2);
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.o, this.p});
    }

    public final String toString() {
        return a.f18560a.serialize((a) this, false);
    }
}

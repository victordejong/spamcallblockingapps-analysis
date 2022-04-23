package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bm.class */
public enum bm {
    NO_PERMISSION,
    INVALID_FILE,
    IS_FOLDER,
    INSIDE_PUBLIC_FOLDER,
    INSIDE_OSX_PACKAGE,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bm$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bm$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18595a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[bm.values().length];
            f18595a = iArr;
            try {
                iArr[bm.NO_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18595a[bm.INVALID_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18595a[bm.IS_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18595a[bm.INSIDE_PUBLIC_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18595a[bm.INSIDE_OSX_PACKAGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bm$a.class */
    static final class a extends f<bm> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18596a = new a();

        a() {
        }

        public static bm a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
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
                bm bmVar = "no_permission".equals(str) ? bm.NO_PERMISSION : "invalid_file".equals(str) ? bm.INVALID_FILE : "is_folder".equals(str) ? bm.IS_FOLDER : "inside_public_folder".equals(str) ? bm.INSIDE_PUBLIC_FOLDER : "inside_osx_package".equals(str) ? bm.INSIDE_OSX_PACKAGE : bm.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bmVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(bm bmVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18595a[bmVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("no_permission");
            } else if (i == 2) {
                jsonGenerator.writeString("invalid_file");
            } else if (i == 3) {
                jsonGenerator.writeString("is_folder");
            } else if (i == 4) {
                jsonGenerator.writeString("inside_public_folder");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("inside_osx_package");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((bm) obj, jsonGenerator);
        }
    }
}

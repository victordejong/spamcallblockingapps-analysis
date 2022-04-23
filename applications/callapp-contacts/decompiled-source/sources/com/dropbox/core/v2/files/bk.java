package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bk.class */
public enum bk {
    FILE,
    FOLDER,
    FILE_ANCESTOR,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bk$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bk$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18283a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[bk.values().length];
            f18283a = iArr;
            try {
                iArr[bk.FILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18283a[bk.FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18283a[bk.FILE_ANCESTOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bk$a.class */
    public static final class a extends f<bk> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18284a = new a();

        a() {
        }

        public static bk a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                bk bkVar = "file".equals(str) ? bk.FILE : "folder".equals(str) ? bk.FOLDER : "file_ancestor".equals(str) ? bk.FILE_ANCESTOR : bk.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bkVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(bk bkVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18283a[bkVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("file");
            } else if (i == 2) {
                jsonGenerator.writeString("folder");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("file_ancestor");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((bk) obj, jsonGenerator);
        }
    }
}

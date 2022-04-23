package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bn.class */
public enum bn {
    EMAIL_UNVERIFIED,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bn$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bn$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18597a;

        static {
            int[] iArr = new int[bn.values().length];
            f18597a = iArr;
            try {
                iArr[bn.EMAIL_UNVERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bn$a.class */
    static final class a extends f<bn> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18598a = new a();

        a() {
        }

        public static bn a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                bn bnVar = "email_unverified".equals(str) ? bn.EMAIL_UNVERIFIED : bn.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bnVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(bn bnVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (AnonymousClass1.f18597a[bnVar.ordinal()] != 1) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("email_unverified");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((bn) obj, jsonGenerator);
        }
    }
}

package com.dropbox.core.v2.teamlog;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/TfaConfiguration.class */
public enum TfaConfiguration {
    DISABLED,
    ENABLED,
    SMS,
    AUTHENTICATOR,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.teamlog.TfaConfiguration$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/TfaConfiguration$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$dropbox$core$v2$teamlog$TfaConfiguration;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[TfaConfiguration.values().length];
            $SwitchMap$com$dropbox$core$v2$teamlog$TfaConfiguration = iArr;
            try {
                iArr[TfaConfiguration.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$TfaConfiguration[TfaConfiguration.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$TfaConfiguration[TfaConfiguration.SMS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$dropbox$core$v2$teamlog$TfaConfiguration[TfaConfiguration.AUTHENTICATOR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/TfaConfiguration$Serializer.class */
    static class Serializer extends f<TfaConfiguration> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.a.c
        public TfaConfiguration deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
                TfaConfiguration tfaConfiguration = "disabled".equals(str) ? TfaConfiguration.DISABLED : "enabled".equals(str) ? TfaConfiguration.ENABLED : MRAIDNativeFeature.SMS.equals(str) ? TfaConfiguration.SMS : "authenticator".equals(str) ? TfaConfiguration.AUTHENTICATOR : TfaConfiguration.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return tfaConfiguration;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public void serialize(TfaConfiguration tfaConfiguration, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.$SwitchMap$com$dropbox$core$v2$teamlog$TfaConfiguration[tfaConfiguration.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i == 2) {
                jsonGenerator.writeString("enabled");
            } else if (i == 3) {
                jsonGenerator.writeString(MRAIDNativeFeature.SMS);
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("authenticator");
            }
        }
    }
}

package com.facebook.stetho.inspector.protocol.module;

import android.annotation.SuppressLint;
import com.facebook.stetho.inspector.console.ConsolePeerManager;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.json.annotation.JsonProperty;
import com.facebook.stetho.json.annotation.JsonValue;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.service.googleplay.IABConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Console.class */
public class Console implements ChromeDevtoolsDomain {

    @SuppressLint({"UsingDefaultJsonDeserializer", "EmptyJsonPropertyUse"})
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Console$CallFrame.class */
    public static class CallFrame {
        @JsonProperty(required = true)
        public int columnNumber;
        @JsonProperty(required = true)
        public String functionName;
        @JsonProperty(required = true)
        public int lineNumber;
        @JsonProperty(required = true)
        public String url;

        public CallFrame() {
        }

        public CallFrame(String str, String str2, int i, int i2) {
            this.functionName = str;
            this.url = str2;
            this.lineNumber = i;
            this.columnNumber = i2;
        }
    }

    @SuppressLint({"UsingDefaultJsonDeserializer", "EmptyJsonPropertyUse"})
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Console$ConsoleMessage.class */
    public static class ConsoleMessage {
        @JsonProperty(required = true)
        public MessageLevel level;
        @JsonProperty(required = true)
        public MessageSource source;
        @JsonProperty(required = true)
        public String text;
    }

    @SuppressLint({"UsingDefaultJsonDeserializer", "EmptyJsonPropertyUse"})
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Console$MessageAddedRequest.class */
    public static class MessageAddedRequest {
        @JsonProperty(required = true)
        public ConsoleMessage message;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Console$MessageLevel.class */
    public enum MessageLevel {
        LOG(LogItemFields.LOG),
        WARNING("warning"),
        ERROR(IABConstants.EXTRA_ERROR),
        DEBUG("debug");
        
        private final String mProtocolValue;

        MessageLevel(String str) {
            this.mProtocolValue = str;
        }

        @JsonValue
        public String getProtocolValue() {
            return this.mProtocolValue;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Console$MessageSource.class */
    public enum MessageSource {
        XML("xml"),
        JAVASCRIPT("javascript"),
        NETWORK("network"),
        CONSOLE_API("console-api"),
        STORAGE("storage"),
        APPCACHE("appcache"),
        RENDERING("rendering"),
        CSS("css"),
        SECURITY("security"),
        OTHER("other");
        
        private final String mProtocolValue;

        MessageSource(String str) {
            this.mProtocolValue = str;
        }

        @JsonValue
        public String getProtocolValue() {
            return this.mProtocolValue;
        }
    }

    @ChromeDevtoolsMethod
    public void disable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        ConsolePeerManager.getOrCreateInstance().removePeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public void enable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        ConsolePeerManager.getOrCreateInstance().addPeer(jsonRpcPeer);
    }
}

package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.runtime.SendRequest;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_SendRequest.class */
final class AutoValue_SendRequest extends SendRequest {
    private final Encoding encoding;
    private final Event<?> event;
    private final Transformer<?, byte[]> transformer;
    private final TransportContext transportContext;
    private final String transportName;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_SendRequest$Builder.class */
    public static final class Builder extends SendRequest.Builder {
        private Encoding encoding;
        private Event<?> event;
        private Transformer<?, byte[]> transformer;
        private TransportContext transportContext;
        private String transportName;

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest build() {
            String str = "";
            if (this.transportContext == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.transportName == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.event == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.transformer == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.encoding == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new AutoValue_SendRequest(this.transportContext, this.transportName, this.event, this.transformer, this.encoding);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setEncoding(Encoding encoding) {
            Objects.requireNonNull(encoding, "Null encoding");
            this.encoding = encoding;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setEvent(Event<?> event) {
            Objects.requireNonNull(event, "Null event");
            this.event = event;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransformer(Transformer<?, byte[]> transformer) {
            Objects.requireNonNull(transformer, "Null transformer");
            this.transformer = transformer;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransportContext(TransportContext transportContext) {
            Objects.requireNonNull(transportContext, "Null transportContext");
            this.transportContext = transportContext;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransportName(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.transportName = str;
            return this;
        }
    }

    private AutoValue_SendRequest(TransportContext transportContext, String str, Event<?> event, Transformer<?, byte[]> transformer, Encoding encoding) {
        this.transportContext = transportContext;
        this.transportName = str;
        this.event = event;
        this.transformer = transformer;
        this.encoding = encoding;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SendRequest)) {
            return false;
        }
        SendRequest sendRequest = (SendRequest) obj;
        if (!this.transportContext.equals(sendRequest.getTransportContext()) || !this.transportName.equals(sendRequest.getTransportName()) || !this.event.equals(sendRequest.getEvent()) || !this.transformer.equals(sendRequest.getTransformer()) || !this.encoding.equals(sendRequest.getEncoding())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public Encoding getEncoding() {
        return this.encoding;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.SendRequest
    public Event<?> getEvent() {
        return this.event;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.SendRequest
    public Transformer<?, byte[]> getTransformer() {
        return this.transformer;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public TransportContext getTransportContext() {
        return this.transportContext;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    public String getTransportName() {
        return this.transportName;
    }

    public int hashCode() {
        return ((((((((this.transportContext.hashCode() ^ 1000003) * 1000003) ^ this.transportName.hashCode()) * 1000003) ^ this.event.hashCode()) * 1000003) ^ this.transformer.hashCode()) * 1000003) ^ this.encoding.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.transportContext + ", transportName=" + this.transportName + ", event=" + this.event + ", transformer=" + this.transformer + ", encoding=" + this.encoding + "}";
    }
}

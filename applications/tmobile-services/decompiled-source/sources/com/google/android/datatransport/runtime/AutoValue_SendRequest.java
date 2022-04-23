package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.runtime.SendRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_SendRequest.class */
final class AutoValue_SendRequest extends SendRequest {

    /* renamed from: a */
    private final TransportContext f6608a;

    /* renamed from: b */
    private final String f6609b;

    /* renamed from: c */
    private final Event<?> f6610c;

    /* renamed from: d */
    private final Transformer<?, byte[]> f6611d;

    /* renamed from: e */
    private final Encoding f6612e;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_SendRequest$Builder.class */
    static final class Builder extends SendRequest.Builder {

        /* renamed from: a */
        private TransportContext f6613a;

        /* renamed from: b */
        private String f6614b;

        /* renamed from: c */
        private Event<?> f6615c;

        /* renamed from: d */
        private Transformer<?, byte[]> f6616d;

        /* renamed from: e */
        private Encoding f6617e;

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: a */
        public SendRequest mo15433a() {
            String str = "";
            if (this.f6613a == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.f6614b == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.f6615c == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.f6616d == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.f6617e == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new AutoValue_SendRequest(this.f6613a, this.f6614b, this.f6615c, this.f6616d, this.f6617e);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: b */
        SendRequest.Builder mo15432b(Encoding encoding) {
            if (encoding != null) {
                this.f6617e = encoding;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: c */
        SendRequest.Builder mo15431c(Event<?> event) {
            if (event != null) {
                this.f6615c = event;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: d */
        SendRequest.Builder mo15430d(Transformer<?, byte[]> transformer) {
            if (transformer != null) {
                this.f6616d = transformer;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: e */
        public SendRequest.Builder mo15429e(TransportContext transportContext) {
            if (transportContext != null) {
                this.f6613a = transportContext;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: f */
        public SendRequest.Builder mo15428f(String str) {
            if (str != null) {
                this.f6614b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }
    }

    private AutoValue_SendRequest(TransportContext transportContext, String str, Event<?> event, Transformer<?, byte[]> transformer, Encoding encoding) {
        this.f6608a = transportContext;
        this.f6609b = str;
        this.f6610c = event;
        this.f6611d = transformer;
        this.f6612e = encoding;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: b */
    public Encoding mo15439b() {
        return this.f6612e;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: c */
    Event<?> mo15438c() {
        return this.f6610c;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: e */
    Transformer<?, byte[]> mo15436e() {
        return this.f6611d;
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
        if (!this.f6608a.equals(sendRequest.mo15435f()) || !this.f6609b.equals(sendRequest.mo15434g()) || !this.f6610c.equals(sendRequest.mo15438c()) || !this.f6611d.equals(sendRequest.mo15436e()) || !this.f6612e.equals(sendRequest.mo15439b())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: f */
    public TransportContext mo15435f() {
        return this.f6608a;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: g */
    public String mo15434g() {
        return this.f6609b;
    }

    public int hashCode() {
        return ((((((((this.f6608a.hashCode() ^ 1000003) * 1000003) ^ this.f6609b.hashCode()) * 1000003) ^ this.f6610c.hashCode()) * 1000003) ^ this.f6611d.hashCode()) * 1000003) ^ this.f6612e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f6608a + ", transportName=" + this.f6609b + ", event=" + this.f6610c + ", transformer=" + this.f6611d + ", encoding=" + this.f6612e + "}";
    }
}

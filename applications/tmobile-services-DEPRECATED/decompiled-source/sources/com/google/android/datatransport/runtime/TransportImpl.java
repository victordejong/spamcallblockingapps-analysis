package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.SendRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportImpl.class */
final class TransportImpl<T> implements Transport<T> {

    /* renamed from: a */
    private final TransportContext f6645a;

    /* renamed from: b */
    private final String f6646b;

    /* renamed from: c */
    private final Encoding f6647c;

    /* renamed from: d */
    private final Transformer<T, byte[]> f6648d;

    /* renamed from: e */
    private final TransportInternal f6649e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransportImpl(TransportContext transportContext, String str, Encoding encoding, Transformer<T, byte[]> transformer, TransportInternal transportInternal) {
        this.f6645a = transportContext;
        this.f6646b = str;
        this.f6647c = encoding;
        this.f6648d = transformer;
        this.f6649e = transportInternal;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m15418a(Exception exc) {
    }

    @Override // com.google.android.datatransport.Transport
    public void schedule(Event<T> event, TransportScheduleCallback transportScheduleCallback) {
        TransportInternal transportInternal = this.f6649e;
        SendRequest.Builder a = SendRequest.m15440a();
        a.mo15429e(this.f6645a);
        a.mo15431c(event);
        a.mo15428f(this.f6646b);
        a.mo15430d(this.f6648d);
        a.mo15432b(this.f6647c);
        transportInternal.mo15416a(a.mo15433a(), transportScheduleCallback);
    }

    @Override // com.google.android.datatransport.Transport
    public void send(Event<T> event) {
        schedule(event, TransportImpl$$Lambda$1.m15417a());
    }
}

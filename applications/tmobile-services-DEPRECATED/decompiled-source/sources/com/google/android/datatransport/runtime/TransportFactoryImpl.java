package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/TransportFactoryImpl.class */
public final class TransportFactoryImpl implements TransportFactory {

    /* renamed from: a */
    private final Set<Encoding> f6642a;

    /* renamed from: b */
    private final TransportContext f6643b;

    /* renamed from: c */
    private final TransportInternal f6644c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransportFactoryImpl(Set<Encoding> set, TransportContext transportContext, TransportInternal transportInternal) {
        this.f6642a = set;
        this.f6643b = transportContext;
        this.f6644c = transportInternal;
    }

    @Override // com.google.android.datatransport.TransportFactory
    public <T> Transport<T> getTransport(String str, Class<T> cls, Encoding encoding, Transformer<T, byte[]> transformer) {
        if (this.f6642a.contains(encoding)) {
            return new TransportImpl(this.f6643b, str, encoding, transformer, this.f6644c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", encoding, this.f6642a));
    }
}

package com.criteo.publisher.logging;

import com.criteo.publisher.p246f.AbstractC8310p;
import java.util.List;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.logging.l */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/l.class */
public interface AbstractC8413l extends AbstractC8310p<RemoteLogRecords> {

    /* renamed from: com.criteo.publisher.logging.l$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/l$a.class */
    public static final class C8414a implements AbstractC8413l {

        /* renamed from: a */
        private final AbstractC8310p<RemoteLogRecords> f30153a;

        public C8414a(AbstractC8310p<RemoteLogRecords> delegate) {
            C18524p.m3841c(delegate, "delegate");
            this.f30153a = delegate;
        }

        @Override // com.criteo.publisher.p246f.AbstractC8310p
        /* renamed from: a */
        public final int mo25722a() {
            return this.f30153a.mo25722a();
        }

        @Override // com.criteo.publisher.p246f.AbstractC8310p
        /* renamed from: a */
        public final List<RemoteLogRecords> mo25721a(int i) {
            return this.f30153a.mo25721a(i);
        }

        @Override // com.criteo.publisher.p246f.AbstractC8310p
        /* renamed from: a */
        public final /* synthetic */ boolean mo25720a(RemoteLogRecords remoteLogRecords) {
            RemoteLogRecords element = remoteLogRecords;
            C18524p.m3841c(element, "element");
            return this.f30153a.mo25720a((AbstractC8310p<RemoteLogRecords>) element);
        }
    }
}

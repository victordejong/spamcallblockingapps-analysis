package com.criteo.publisher.logging;

import com.criteo.publisher.f.p;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/l.class */
public interface l extends p<RemoteLogRecords> {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/l$a.class */
    public static final class a implements l {

        /* renamed from: a  reason: collision with root package name */
        private final p<RemoteLogRecords> f17473a;

        public a(p<RemoteLogRecords> delegate) {
            kotlin.jvm.internal.p.c(delegate, "delegate");
            this.f17473a = delegate;
        }

        @Override // com.criteo.publisher.f.p
        public final int a() {
            return this.f17473a.a();
        }

        @Override // com.criteo.publisher.f.p
        public final List<RemoteLogRecords> a(int i) {
            return this.f17473a.a(i);
        }

        @Override // com.criteo.publisher.f.p
        public final /* synthetic */ boolean a(RemoteLogRecords remoteLogRecords) {
            RemoteLogRecords element = remoteLogRecords;
            kotlin.jvm.internal.p.c(element, "element");
            return this.f17473a.a((p<RemoteLogRecords>) element);
        }
    }
}

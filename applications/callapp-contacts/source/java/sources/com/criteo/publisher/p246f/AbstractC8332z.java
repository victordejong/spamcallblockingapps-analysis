package com.criteo.publisher.p246f;

import java.util.List;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.f.z */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/z.class */
public interface AbstractC8332z extends AbstractC8310p<AbstractC8320s> {

    /* renamed from: com.criteo.publisher.f.z$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/z$a.class */
    public static final class C8333a implements AbstractC8332z {

        /* renamed from: a */
        private final AbstractC8310p<AbstractC8320s> f29972a;

        public C8333a(AbstractC8310p<AbstractC8320s> delegate) {
            C18524p.m3841c(delegate, "delegate");
            this.f29972a = delegate;
        }

        @Override // com.criteo.publisher.p246f.AbstractC8310p
        /* renamed from: a */
        public final int mo25722a() {
            return this.f29972a.mo25722a();
        }

        @Override // com.criteo.publisher.p246f.AbstractC8310p
        /* renamed from: a */
        public final List<AbstractC8320s> mo25721a(int i) {
            return this.f29972a.mo25721a(i);
        }

        @Override // com.criteo.publisher.p246f.AbstractC8310p
        /* renamed from: a */
        public final /* synthetic */ boolean mo25720a(AbstractC8320s abstractC8320s) {
            AbstractC8320s element = abstractC8320s;
            C18524p.m3841c(element, "element");
            return this.f29972a.mo25720a((AbstractC8310p<AbstractC8320s>) element);
        }
    }
}

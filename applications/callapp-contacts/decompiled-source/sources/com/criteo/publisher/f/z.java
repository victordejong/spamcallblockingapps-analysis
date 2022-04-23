package com.criteo.publisher.f;

import java.util.List;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/z.class */
public interface z extends p<s> {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/z$a.class */
    public static final class a implements z {

        /* renamed from: a  reason: collision with root package name */
        private final p<s> f17328a;

        public a(p<s> delegate) {
            p.c(delegate, "delegate");
            this.f17328a = delegate;
        }

        @Override // com.criteo.publisher.f.p
        public final int a() {
            return this.f17328a.a();
        }

        @Override // com.criteo.publisher.f.p
        public final List<s> a(int i) {
            return this.f17328a.a(i);
        }

        @Override // com.criteo.publisher.f.p
        public final /* synthetic */ boolean a(s sVar) {
            s element = sVar;
            p.c(element, "element");
            return this.f17328a.a((p<s>) element);
        }
    }
}

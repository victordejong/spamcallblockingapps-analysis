package com.criteo.publisher;

import com.criteo.publisher.p243c.C8262d;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: com.criteo.publisher.x */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/x.class */
public class C8532x {

    /* renamed from: a */
    public final long f30394a;

    /* renamed from: b */
    public final Lazy f30395b = C18399h.m3897a(new C8534b());

    /* renamed from: c */
    public final AbstractC8336h f30396c;

    /* renamed from: d */
    private final C8262d f30397d;

    /* renamed from: com.criteo.publisher.x$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/x$a.class */
    public static final class C8533a {
        private C8533a() {
        }

        public /* synthetic */ C8533a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.x$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/x$b.class */
    public static final class C8534b extends AbstractC18526r implements Function0<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8534b() {
            super(0);
            C8532x.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ String invoke() {
            return C8532x.this.f30397d.m25957a();
        }
    }

    static {
        new C8533a(null);
    }

    public C8532x(AbstractC8336h clock, C8262d uniqueIdGenerator) {
        C18524p.m3841c(clock, "clock");
        C18524p.m3841c(uniqueIdGenerator, "uniqueIdGenerator");
        this.f30396c = clock;
        this.f30397d = uniqueIdGenerator;
        this.f30394a = clock.mo25381a();
    }
}

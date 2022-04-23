package com.criteo.publisher;

import com.criteo.publisher.c.d;
import kotlin.Lazy;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/x.class */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public final long f17664a;

    /* renamed from: b  reason: collision with root package name */
    public final Lazy f17665b = h.a(new b());

    /* renamed from: c  reason: collision with root package name */
    public final h f17666c;

    /* renamed from: d  reason: collision with root package name */
    private final d f17667d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/x$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/x$b.class */
    static final class b extends r implements Function0<String> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ String invoke() {
            return x.this.f17667d.a();
        }
    }

    static {
        new a(null);
    }

    public x(h clock, d uniqueIdGenerator) {
        p.c(clock, "clock");
        p.c(uniqueIdGenerator, "uniqueIdGenerator");
        this.f17666c = clock;
        this.f17667d = uniqueIdGenerator;
        this.f17664a = clock.a();
    }
}

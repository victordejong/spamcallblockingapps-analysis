package nl.dionsegijn.konfetti.p574a;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.Iterator;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p530f.C18361c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\f\u001a\u00020��2\u0006\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0017"}, m4298d2 = {"Lnl/dionsegijn/konfetti/emitters/StreamEmitter;", "Lnl/dionsegijn/konfetti/emitters/Emitter;", "()V", "amountPerMs", "", "createParticleMs", "elapsedTime", "emittingTime", "", "maxParticles", "", "particlesCreated", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "particlesPerSecond", "createConfetti", "", "deltaTime", "createParticle", "isFinished", "", "isTimeElapsed", "reachedMaxParticles", "Companion", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: nl.dionsegijn.konfetti.a.c */
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/c.class */
public final class C20705c extends AbstractC20701a {

    /* renamed from: d */
    private int f67134d = -1;

    /* renamed from: e */
    private int f67135e;

    /* renamed from: f */
    private long f67136f;

    /* renamed from: g */
    private float f67137g;

    /* renamed from: h */
    private float f67138h;

    /* renamed from: i */
    private float f67139i;

    /* renamed from: c */
    public static final C20706a f67133c = new C20706a(null);

    /* renamed from: b */
    public static final long f67132b = -2;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lnl/dionsegijn/konfetti/emitters/StreamEmitter$Companion;", "", "()V", "INDEFINITE", "", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: nl.dionsegijn.konfetti.a.c$a */
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/c$a.class */
    public static final class C20706a {
        private C20706a() {
        }

        public /* synthetic */ C20706a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ C20705c m621a(C20705c c20705c, int i, long j) {
        c20705c.f67134d = -1;
        c20705c.f67136f = j;
        c20705c.f67138h = 0.02f;
        return c20705c;
    }

    @Override // nl.dionsegijn.konfetti.p574a.AbstractC20701a
    /* renamed from: a */
    public final void mo622a(float f) {
        float f2 = this.f67139i + f;
        this.f67139i = f2;
        float f3 = this.f67138h;
        if (f2 >= f3) {
            long j = this.f67136f;
            if (!((j == 0 || j == f67132b || this.f67137g < ((float) j)) ? false : true)) {
                Iterator<Integer> it2 = new C18361c(1, (int) (f2 / f3)).iterator();
                while (it2.hasNext()) {
                    ((AbstractC18245ag) it2).mo4059a();
                    int i = this.f67135e;
                    int i2 = this.f67134d;
                    if (!(1 <= i2 && i >= i2)) {
                        this.f67135e = i + 1;
                        Function0<C20128v> function0 = this.f67118a;
                        if (function0 != null) {
                            function0.invoke();
                        }
                    }
                }
                this.f67139i %= this.f67138h;
            }
        }
        this.f67137g += f * 1000.0f;
    }

    @Override // nl.dionsegijn.konfetti.p574a.AbstractC20701a
    /* renamed from: a */
    public final boolean mo623a() {
        long j = this.f67136f;
        return j > 0 ? this.f67137g >= ((float) j) : j != f67132b && this.f67135e >= this.f67134d;
    }
}

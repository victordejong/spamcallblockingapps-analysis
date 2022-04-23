package nl.dionsegijn.konfetti.a;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.a.ag;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\f\u001a\u00020��2\u0006\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0017"}, d2 = {"Lnl/dionsegijn/konfetti/emitters/StreamEmitter;", "Lnl/dionsegijn/konfetti/emitters/Emitter;", "()V", "amountPerMs", "", "createParticleMs", "elapsedTime", "emittingTime", "", "maxParticles", "", "particlesCreated", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "particlesPerSecond", "createConfetti", "", "deltaTime", "createParticle", "isFinished", "", "isTimeElapsed", "reachedMaxParticles", "Companion", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/c.class */
public final class c extends nl.dionsegijn.konfetti.a.a {

    /* renamed from: d  reason: collision with root package name */
    private int f39107d = -1;
    private int e;
    private long f;
    private float g;
    private float h;
    private float i;

    /* renamed from: c  reason: collision with root package name */
    public static final a f39106c = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public static final long f39105b = -2;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lnl/dionsegijn/konfetti/emitters/StreamEmitter$Companion;", "", "()V", "INDEFINITE", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/c$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ c a(c cVar, int i, long j) {
        cVar.f39107d = -1;
        cVar.f = j;
        cVar.h = 0.02f;
        return cVar;
    }

    @Override // nl.dionsegijn.konfetti.a.a
    public final void a(float f) {
        float f2 = this.i + f;
        this.i = f2;
        float f3 = this.h;
        if (f2 >= f3) {
            long j = this.f;
            if (!((j == 0 || j == f39105b || this.g < ((float) j)) ? false : true)) {
                Iterator<Integer> it2 = new kotlin.f.c(1, (int) (f2 / f3)).iterator();
                while (it2.hasNext()) {
                    ((ag) it2).a();
                    int i = this.e;
                    int i2 = this.f39107d;
                    if (!(1 <= i2 && i >= i2)) {
                        this.e = i + 1;
                        Function0<v> function0 = this.f39099a;
                        if (function0 != null) {
                            function0.invoke();
                        }
                    }
                }
                this.i %= this.h;
            }
        }
        this.g += f * 1000.0f;
    }

    @Override // nl.dionsegijn.konfetti.a.a
    public final boolean a() {
        long j = this.f;
        return j > 0 ? this.g >= ((float) j) : j != f39105b && this.e >= this.f39107d;
    }
}

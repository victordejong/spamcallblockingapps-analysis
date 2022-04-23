package nl.dionsegijn.konfetti;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import nl.dionsegijn.konfetti.c.a;
import nl.dionsegijn.konfetti.models.ConfettiConfig;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.models.Vector;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b \u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010 \u001a\u00020��2\n\u0010\u0005\u001a\u00020\u0006\"\u00020\u001fJ\u0014\u0010 \u001a\u00020��2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001f0!J\u001f\u0010\"\u001a\u00020��2\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00170\u0016\"\u00020\u0017¢\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020��2\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0\u0016\"\u00020\u001a¢\u0006\u0002\u0010&J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001fJ\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020(2\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u00020��2\u0006\u00101\u001a\u00020+J\u000e\u00102\u001a\u00020��2\u0006\u00103\u001a\u00020/J\u000e\u00104\u001a\u00020��2\u0006\u00105\u001a\u000206J\u0016\u00104\u001a\u00020��2\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u000206J\u000e\u00109\u001a\u00020��2\u0006\u0010:\u001a\u00020+J\u000e\u0010;\u001a\u00020��2\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020��2\u0006\u0010?\u001a\u00020=J\u0016\u0010@\u001a\u00020��2\u0006\u0010A\u001a\u00020=2\u0006\u0010<\u001a\u00020=J3\u0010@\u001a\u00020��2\u0006\u0010B\u001a\u00020=2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010=2\u0006\u0010D\u001a\u00020=2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010=¢\u0006\u0002\u0010FJ\u000e\u0010G\u001a\u00020��2\u0006\u00101\u001a\u00020+J\u000e\u0010H\u001a\u00020��2\u0006\u0010I\u001a\u00020=J\u000e\u0010J\u001a\u00020��2\u0006\u0010K\u001a\u00020=J\u000e\u0010L\u001a\u00020��2\u0006\u0010M\u001a\u00020=J\u0016\u0010L\u001a\u00020��2\u0006\u0010N\u001a\u00020=2\u0006\u0010O\u001a\u00020=J\u000e\u0010P\u001a\u00020��2\u0006\u0010Q\u001a\u00020+J\u000e\u0010R\u001a\u00020��2\u0006\u0010S\u001a\u00020/J\b\u0010T\u001a\u00020(H\u0002J\u0010\u0010U\u001a\u00020(2\u0006\u0010,\u001a\u00020-H\u0002J\u0006\u0010V\u001a\u00020(J\u0018\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020\u001fH\u0007J\u0018\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020/H\u0007J\u0016\u0010[\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020/J\u0016\u0010\\\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020\u001fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0016X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n��¨\u0006]"}, d2 = {"Lnl/dionsegijn/konfetti/ParticleSystem;", "", "konfettiView", "Lnl/dionsegijn/konfetti/KonfettiView;", "(Lnl/dionsegijn/konfetti/KonfettiView;)V", "colors", "", "confettiConfig", "Lnl/dionsegijn/konfetti/models/ConfettiConfig;", "gravity", "Lnl/dionsegijn/konfetti/models/Vector;", "location", "Lnl/dionsegijn/konfetti/modules/LocationModule;", "random", "Ljava/util/Random;", "renderSystem", "Lnl/dionsegijn/konfetti/emitters/RenderSystem;", "getRenderSystem$konfetti_release", "()Lnl/dionsegijn/konfetti/emitters/RenderSystem;", "setRenderSystem$konfetti_release", "(Lnl/dionsegijn/konfetti/emitters/RenderSystem;)V", "shapes", "", "Lnl/dionsegijn/konfetti/models/Shape;", "[Lnl/dionsegijn/konfetti/models/Shape;", "sizes", "Lnl/dionsegijn/konfetti/models/Size;", "[Lnl/dionsegijn/konfetti/models/Size;", "velocity", "Lnl/dionsegijn/konfetti/modules/VelocityModule;", "activeParticles", "", "addColors", "", "addShapes", "([Lnl/dionsegijn/konfetti/models/Shape;)Lnl/dionsegijn/konfetti/ParticleSystem;", "addSizes", "possibleSizes", "([Lnl/dionsegijn/konfetti/models/Size;)Lnl/dionsegijn/konfetti/ParticleSystem;", "burst", "", "amount", "doneEmitting", "", "emitter", "Lnl/dionsegijn/konfetti/emitters/Emitter;", "getDelay", "", "setAccelerationEnabled", "enabled", "setDelay", "delay", "setDirection", "degrees", "", "minDegrees", "maxDegrees", "setFadeOutEnabled", "fade", "setGravity", "y", "", "setMaxAcceleration", "maxAcceleration", "setPosition", "x", "minX", "maxX", "minY", "maxY", "(FLjava/lang/Float;FLjava/lang/Float;)Lnl/dionsegijn/konfetti/ParticleSystem;", "setRotationEnabled", "setRotationSpeedMultiplier", "multiplier", "setRotationSpeedVariance", "variance", "setSpeed", "speed", "minSpeed", "maxSpeed", "setSpeedDensityIndependent", "independent", "setTimeToLive", "timeInMs", EventConstants.START, "startRenderSystem", "stop", "stream", "particlesPerSecond", "maxParticles", "emittingTime", "streamFor", "streamMaxParticles", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public a f39108a;

    /* renamed from: b  reason: collision with root package name */
    public nl.dionsegijn.konfetti.c.b f39109b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f39110c = {-65536};

    /* renamed from: d  reason: collision with root package name */
    public Size[] f39111d = {new Size(16, BitmapDescriptorFactory.HUE_RED, 2, null)};
    public Shape[] e = {Shape.Square.INSTANCE};
    public ConfettiConfig f = new ConfettiConfig(false, 0, false, false, 0, false, 63, null);
    public Vector g = new Vector(BitmapDescriptorFactory.HUE_RED, 0.01f);
    public nl.dionsegijn.konfetti.a.b h;
    public final KonfettiView i;
    private final Random j;

    public b(KonfettiView konfettiView) {
        p.d(konfettiView, "konfettiView");
        this.i = konfettiView;
        Random random = new Random();
        this.j = random;
        this.f39108a = new a(random);
        this.f39109b = new nl.dionsegijn.konfetti.c.b(random);
    }

    public final nl.dionsegijn.konfetti.a.b a() {
        nl.dionsegijn.konfetti.a.b bVar = this.h;
        if (bVar == null) {
            p.a("renderSystem");
        }
        return bVar;
    }

    public final b a(Size... possibleSizes) {
        p.d(possibleSizes, "possibleSizes");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i <= 0; i++) {
            Size size = possibleSizes[0];
            if (size instanceof Size) {
                arrayList.add(size);
            }
        }
        Object[] array = arrayList.toArray(new Size[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f39111d = (Size[]) array;
        return this;
    }
}

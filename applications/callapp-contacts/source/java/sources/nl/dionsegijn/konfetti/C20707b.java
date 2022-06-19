package nl.dionsegijn.konfetti;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import nl.dionsegijn.konfetti.models.ConfettiConfig;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.models.Vector;
import nl.dionsegijn.konfetti.p574a.C20702b;
import nl.dionsegijn.konfetti.p576c.C20709a;
import nl.dionsegijn.konfetti.p576c.C20710b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b \u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010 \u001a\u00020��2\n\u0010\u0005\u001a\u00020\u0006\"\u00020\u001fJ\u0014\u0010 \u001a\u00020��2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001f0!J\u001f\u0010\"\u001a\u00020��2\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00170\u0016\"\u00020\u0017¢\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020��2\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0\u0016\"\u00020\u001a¢\u0006\u0002\u0010&J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001fJ\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020(2\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u00020��2\u0006\u00101\u001a\u00020+J\u000e\u00102\u001a\u00020��2\u0006\u00103\u001a\u00020/J\u000e\u00104\u001a\u00020��2\u0006\u00105\u001a\u000206J\u0016\u00104\u001a\u00020��2\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u000206J\u000e\u00109\u001a\u00020��2\u0006\u0010:\u001a\u00020+J\u000e\u0010;\u001a\u00020��2\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020��2\u0006\u0010?\u001a\u00020=J\u0016\u0010@\u001a\u00020��2\u0006\u0010A\u001a\u00020=2\u0006\u0010<\u001a\u00020=J3\u0010@\u001a\u00020��2\u0006\u0010B\u001a\u00020=2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010=2\u0006\u0010D\u001a\u00020=2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010=¢\u0006\u0002\u0010FJ\u000e\u0010G\u001a\u00020��2\u0006\u00101\u001a\u00020+J\u000e\u0010H\u001a\u00020��2\u0006\u0010I\u001a\u00020=J\u000e\u0010J\u001a\u00020��2\u0006\u0010K\u001a\u00020=J\u000e\u0010L\u001a\u00020��2\u0006\u0010M\u001a\u00020=J\u0016\u0010L\u001a\u00020��2\u0006\u0010N\u001a\u00020=2\u0006\u0010O\u001a\u00020=J\u000e\u0010P\u001a\u00020��2\u0006\u0010Q\u001a\u00020+J\u000e\u0010R\u001a\u00020��2\u0006\u0010S\u001a\u00020/J\b\u0010T\u001a\u00020(H\u0002J\u0010\u0010U\u001a\u00020(2\u0006\u0010,\u001a\u00020-H\u0002J\u0006\u0010V\u001a\u00020(J\u0018\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020\u001fH\u0007J\u0018\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020/H\u0007J\u0016\u0010[\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020/J\u0016\u0010\\\u001a\u00020(2\u0006\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020\u001fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0016X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n��¨\u0006]"}, m4298d2 = {"Lnl/dionsegijn/konfetti/ParticleSystem;", "", "konfettiView", "Lnl/dionsegijn/konfetti/KonfettiView;", "(Lnl/dionsegijn/konfetti/KonfettiView;)V", "colors", "", "confettiConfig", "Lnl/dionsegijn/konfetti/models/ConfettiConfig;", "gravity", "Lnl/dionsegijn/konfetti/models/Vector;", "location", "Lnl/dionsegijn/konfetti/modules/LocationModule;", "random", "Ljava/util/Random;", "renderSystem", "Lnl/dionsegijn/konfetti/emitters/RenderSystem;", "getRenderSystem$konfetti_release", "()Lnl/dionsegijn/konfetti/emitters/RenderSystem;", "setRenderSystem$konfetti_release", "(Lnl/dionsegijn/konfetti/emitters/RenderSystem;)V", "shapes", "", "Lnl/dionsegijn/konfetti/models/Shape;", "[Lnl/dionsegijn/konfetti/models/Shape;", "sizes", "Lnl/dionsegijn/konfetti/models/Size;", "[Lnl/dionsegijn/konfetti/models/Size;", "velocity", "Lnl/dionsegijn/konfetti/modules/VelocityModule;", "activeParticles", "", "addColors", "", "addShapes", "([Lnl/dionsegijn/konfetti/models/Shape;)Lnl/dionsegijn/konfetti/ParticleSystem;", "addSizes", "possibleSizes", "([Lnl/dionsegijn/konfetti/models/Size;)Lnl/dionsegijn/konfetti/ParticleSystem;", "burst", "", "amount", "doneEmitting", "", "emitter", "Lnl/dionsegijn/konfetti/emitters/Emitter;", "getDelay", "", "setAccelerationEnabled", "enabled", "setDelay", "delay", "setDirection", "degrees", "", "minDegrees", "maxDegrees", "setFadeOutEnabled", "fade", "setGravity", "y", "", "setMaxAcceleration", "maxAcceleration", "setPosition", "x", "minX", "maxX", "minY", "maxY", "(FLjava/lang/Float;FLjava/lang/Float;)Lnl/dionsegijn/konfetti/ParticleSystem;", "setRotationEnabled", "setRotationSpeedMultiplier", "multiplier", "setRotationSpeedVariance", "variance", "setSpeed", "speed", "minSpeed", "maxSpeed", "setSpeedDensityIndependent", "independent", "setTimeToLive", "timeInMs", EventConstants.START, "startRenderSystem", "stop", "stream", "particlesPerSecond", "maxParticles", "emittingTime", "streamFor", "streamMaxParticles", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: nl.dionsegijn.konfetti.b */
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/b.class */
public final class C20707b {

    /* renamed from: a */
    public C20709a f67140a;

    /* renamed from: b */
    public C20710b f67141b;

    /* renamed from: c */
    public int[] f67142c = {-65536};

    /* renamed from: d */
    public Size[] f67143d = {new Size(16, BitmapDescriptorFactory.HUE_RED, 2, null)};

    /* renamed from: e */
    public Shape[] f67144e = {Shape.Square.INSTANCE};

    /* renamed from: f */
    public ConfettiConfig f67145f = new ConfettiConfig(false, 0, false, false, 0, false, 63, null);

    /* renamed from: g */
    public Vector f67146g = new Vector(BitmapDescriptorFactory.HUE_RED, 0.01f);

    /* renamed from: h */
    public C20702b f67147h;

    /* renamed from: i */
    public final KonfettiView f67148i;

    /* renamed from: j */
    private final Random f67149j;

    public C20707b(KonfettiView konfettiView) {
        C18524p.m3840d(konfettiView, "konfettiView");
        this.f67148i = konfettiView;
        Random random = new Random();
        this.f67149j = random;
        this.f67140a = new C20709a(random);
        this.f67141b = new C20710b(random);
    }

    /* renamed from: a */
    public final C20702b m620a() {
        C20702b c20702b = this.f67147h;
        if (c20702b == null) {
            C18524p.m3848a("renderSystem");
        }
        return c20702b;
    }

    /* renamed from: a */
    public final C20707b m619a(Size... possibleSizes) {
        C18524p.m3840d(possibleSizes, "possibleSizes");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i <= 0; i++) {
            Size size = possibleSizes[0];
            if (size instanceof Size) {
                arrayList.add(size);
            }
        }
        Object[] array = arrayList.toArray(new Size[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f67143d = (Size[]) array;
        return this;
    }
}

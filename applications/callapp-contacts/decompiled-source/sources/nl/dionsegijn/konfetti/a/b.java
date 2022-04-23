package nl.dionsegijn.konfetti.a;

import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import nl.dionsegijn.konfetti.models.ConfettiConfig;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.models.Vector;
@Metadata(bv = {1, 0, 3}, d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\u0018��2\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\b\u0010%\u001a\u00020&H\u0002J\u0006\u0010'\u001a\u00020(J\b\u0010)\u001a\u00020\fH\u0002J\u0006\u0010*\u001a\u00020\u0019J\u0016\u0010+\u001a\u00020&2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010#R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u00060"}, d2 = {"Lnl/dionsegijn/konfetti/emitters/RenderSystem;", "", "location", "Lnl/dionsegijn/konfetti/modules/LocationModule;", "velocity", "Lnl/dionsegijn/konfetti/modules/VelocityModule;", "gravity", "Lnl/dionsegijn/konfetti/models/Vector;", "sizes", "", "Lnl/dionsegijn/konfetti/models/Size;", "shapes", "Lnl/dionsegijn/konfetti/models/Shape;", "colors", "", "config", "Lnl/dionsegijn/konfetti/models/ConfettiConfig;", "emitter", "Lnl/dionsegijn/konfetti/emitters/Emitter;", "createdAt", "", "(Lnl/dionsegijn/konfetti/modules/LocationModule;Lnl/dionsegijn/konfetti/modules/VelocityModule;Lnl/dionsegijn/konfetti/models/Vector;[Lnl/dionsegijn/konfetti/models/Size;[Lnl/dionsegijn/konfetti/models/Shape;[ILnl/dionsegijn/konfetti/models/ConfettiConfig;Lnl/dionsegijn/konfetti/emitters/Emitter;J)V", "getCreatedAt", "()J", "enabled", "", "getEnabled", "()Z", "setEnabled", "(Z)V", "particles", "", "Lnl/dionsegijn/konfetti/Confetti;", "random", "Ljava/util/Random;", "[Lnl/dionsegijn/konfetti/models/Shape;", "[Lnl/dionsegijn/konfetti/models/Size;", "addConfetti", "", "getActiveParticles", "", "getRandomShape", "isDoneEmitting", "render", "canvas", "Landroid/graphics/Canvas;", "deltaTime", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f39100a;

    /* renamed from: b  reason: collision with root package name */
    public final List<nl.dionsegijn.konfetti.a> f39101b;

    /* renamed from: c  reason: collision with root package name */
    public final Vector f39102c;

    /* renamed from: d  reason: collision with root package name */
    public final nl.dionsegijn.konfetti.a.a f39103d;
    public final long e;
    private final Random f;
    private final nl.dionsegijn.konfetti.c.a g;
    private final nl.dionsegijn.konfetti.c.b h;
    private final Size[] i;
    private final Shape[] j;
    private final int[] k;
    private final ConfettiConfig l;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: nl.dionsegijn.konfetti.a.b$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/b$1.class */
    static final /* synthetic */ class AnonymousClass1 extends n implements Function0<v> {
        AnonymousClass1(b bVar) {
            super(0, bVar, b.class, "addConfetti", "addConfetti()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ v invoke() {
            b.a((b) this.receiver);
            return v.f38654a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lnl/dionsegijn/konfetti/Confetti;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/b$a.class */
    public static final class a extends r implements Function1<nl.dionsegijn.konfetti.a, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f39104a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(nl.dionsegijn.konfetti.a aVar) {
            nl.dionsegijn.konfetti.a it2 = aVar;
            p.d(it2, "it");
            return Boolean.valueOf(it2.i <= 0);
        }
    }

    public b(nl.dionsegijn.konfetti.c.a location, nl.dionsegijn.konfetti.c.b velocity, Vector gravity, Size[] sizes, Shape[] shapes, int[] colors, ConfettiConfig config, nl.dionsegijn.konfetti.a.a emitter, long j) {
        p.d(location, "location");
        p.d(velocity, "velocity");
        p.d(gravity, "gravity");
        p.d(sizes, "sizes");
        p.d(shapes, "shapes");
        p.d(colors, "colors");
        p.d(config, "config");
        p.d(emitter, "emitter");
        this.g = location;
        this.h = velocity;
        this.f39102c = gravity;
        this.i = sizes;
        this.j = shapes;
        this.k = colors;
        this.l = config;
        this.f39103d = emitter;
        this.e = j;
        this.f39100a = true;
        this.f = new Random();
        this.f39101b = new ArrayList();
        emitter.f39099a = new AnonymousClass1(this);
    }

    public /* synthetic */ b(nl.dionsegijn.konfetti.c.a aVar, nl.dionsegijn.konfetti.c.b bVar, Vector vector, Size[] sizeArr, Shape[] shapeArr, int[] iArr, ConfettiConfig confettiConfig, nl.dionsegijn.konfetti.a.a aVar2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, bVar, vector, sizeArr, shapeArr, iArr, confettiConfig, aVar2, (i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? System.currentTimeMillis() : j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ee, code lost:
        if (r0 == null) goto L_0x00f1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void a(nl.dionsegijn.konfetti.a.b r20) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nl.dionsegijn.konfetti.a.b.a(nl.dionsegijn.konfetti.a.b):void");
    }
}

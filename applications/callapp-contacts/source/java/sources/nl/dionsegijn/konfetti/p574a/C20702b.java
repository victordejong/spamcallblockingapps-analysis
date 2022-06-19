package nl.dionsegijn.konfetti.p574a;

import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18522n;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import nl.dionsegijn.konfetti.C20700a;
import nl.dionsegijn.konfetti.models.ConfettiConfig;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.models.Vector;
import nl.dionsegijn.konfetti.p576c.C20709a;
import nl.dionsegijn.konfetti.p576c.C20710b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\u0018��2\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\b\u0010%\u001a\u00020&H\u0002J\u0006\u0010'\u001a\u00020(J\b\u0010)\u001a\u00020\fH\u0002J\u0006\u0010*\u001a\u00020\u0019J\u0016\u0010+\u001a\u00020&2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010#R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u00060"}, m4298d2 = {"Lnl/dionsegijn/konfetti/emitters/RenderSystem;", "", "location", "Lnl/dionsegijn/konfetti/modules/LocationModule;", "velocity", "Lnl/dionsegijn/konfetti/modules/VelocityModule;", "gravity", "Lnl/dionsegijn/konfetti/models/Vector;", "sizes", "", "Lnl/dionsegijn/konfetti/models/Size;", "shapes", "Lnl/dionsegijn/konfetti/models/Shape;", "colors", "", "config", "Lnl/dionsegijn/konfetti/models/ConfettiConfig;", "emitter", "Lnl/dionsegijn/konfetti/emitters/Emitter;", "createdAt", "", "(Lnl/dionsegijn/konfetti/modules/LocationModule;Lnl/dionsegijn/konfetti/modules/VelocityModule;Lnl/dionsegijn/konfetti/models/Vector;[Lnl/dionsegijn/konfetti/models/Size;[Lnl/dionsegijn/konfetti/models/Shape;[ILnl/dionsegijn/konfetti/models/ConfettiConfig;Lnl/dionsegijn/konfetti/emitters/Emitter;J)V", "getCreatedAt", "()J", "enabled", "", "getEnabled", "()Z", "setEnabled", "(Z)V", "particles", "", "Lnl/dionsegijn/konfetti/Confetti;", "random", "Ljava/util/Random;", "[Lnl/dionsegijn/konfetti/models/Shape;", "[Lnl/dionsegijn/konfetti/models/Size;", "addConfetti", "", "getActiveParticles", "", "getRandomShape", "isDoneEmitting", "render", "canvas", "Landroid/graphics/Canvas;", "deltaTime", "", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: nl.dionsegijn.konfetti.a.b */
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/b.class */
public final class C20702b {

    /* renamed from: a */
    public boolean f67119a;

    /* renamed from: b */
    public final List<C20700a> f67120b;

    /* renamed from: c */
    public final Vector f67121c;

    /* renamed from: d */
    public final AbstractC20701a f67122d;

    /* renamed from: e */
    public final long f67123e;

    /* renamed from: f */
    private final Random f67124f;

    /* renamed from: g */
    private final C20709a f67125g;

    /* renamed from: h */
    private final C20710b f67126h;

    /* renamed from: i */
    private final Size[] f67127i;

    /* renamed from: j */
    private final Shape[] f67128j;

    /* renamed from: k */
    private final int[] f67129k;

    /* renamed from: l */
    private final ConfettiConfig f67130l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: nl.dionsegijn.konfetti.a.b$1 */
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/b$1.class */
    public static final /* synthetic */ class C207031 extends C18522n implements Function0<C20128v> {
        C207031(C20702b c20702b) {
            super(0, c20702b, C20702b.class, "addConfetti", "addConfetti()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C20128v invoke() {
            C20702b.m624a((C20702b) this.receiver);
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "Lnl/dionsegijn/konfetti/Confetti;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: nl.dionsegijn.konfetti.a.b$a */
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a/b$a.class */
    public static final class C20704a extends AbstractC18526r implements Function1<C20700a, Boolean> {

        /* renamed from: a */
        public static final C20704a f67131a = new C20704a();

        C20704a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(C20700a c20700a) {
            C20700a it2 = c20700a;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(it2.f67104i <= 0);
        }
    }

    public C20702b(C20709a location, C20710b velocity, Vector gravity, Size[] sizes, Shape[] shapes, int[] colors, ConfettiConfig config, AbstractC20701a emitter, long j) {
        C18524p.m3840d(location, "location");
        C18524p.m3840d(velocity, "velocity");
        C18524p.m3840d(gravity, "gravity");
        C18524p.m3840d(sizes, "sizes");
        C18524p.m3840d(shapes, "shapes");
        C18524p.m3840d(colors, "colors");
        C18524p.m3840d(config, "config");
        C18524p.m3840d(emitter, "emitter");
        this.f67125g = location;
        this.f67126h = velocity;
        this.f67121c = gravity;
        this.f67127i = sizes;
        this.f67128j = shapes;
        this.f67129k = colors;
        this.f67130l = config;
        this.f67122d = emitter;
        this.f67123e = j;
        this.f67119a = true;
        this.f67124f = new Random();
        this.f67120b = new ArrayList();
        emitter.f67118a = new C207031(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    public /* synthetic */ C20702b(C20709a c20709a, C20710b c20710b, Vector vector, Size[] sizeArr, Shape[] shapeArr, int[] iArr, ConfettiConfig confettiConfig, AbstractC20701a abstractC20701a, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c20709a, c20710b, vector, sizeArr, shapeArr, iArr, confettiConfig, abstractC20701a, (i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? System.currentTimeMillis() : j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ee, code lost:
        if (r0 == null) goto L18;
     */
    /* JADX WARN: Type inference failed for: r0v62, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m624a(nl.dionsegijn.konfetti.p574a.C20702b r20) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nl.dionsegijn.konfetti.p574a.C20702b.m624a(nl.dionsegijn.konfetti.a.b):void");
    }
}

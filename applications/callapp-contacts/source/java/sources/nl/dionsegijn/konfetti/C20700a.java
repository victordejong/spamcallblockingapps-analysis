package nl.dionsegijn.konfetti;

import android.content.res.Resources;
import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.BidMachineFetcher;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p528e.AbstractC18354c;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.models.Vector;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r\u0012\b\b\u0002\u0010\u0011\u001a\u00020\r\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\r¢\u0006\u0002\u0010\u0016J\u000e\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u0003J\u0010\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>H\u0002J\b\u00102\u001a\u00020\u0013H\u0002J\u0006\u0010?\u001a\u00020\rJ\u0016\u0010@\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010A\u001a\u00020\u0013J\u0010\u0010B\u001a\u00020:2\u0006\u0010A\u001a\u00020\u0013H\u0002J\u0010\u0010C\u001a\u00020:2\u0006\u0010A\u001a\u00020\u0013H\u0002R\u0011\u0010\u0011\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0018R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n��\u001a\u0004\b'\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0010\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b+\u0010\u0018R\u000e\u0010,\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0014\u001a\u00020\u0013¢\u0006\b\n��\u001a\u0004\b.\u0010(R\u000e\u0010/\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b0\u00101R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b2\u00103R\u0011\u0010\u0015\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b4\u0010\u0018R\u000e\u00105\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u0010#\"\u0004\b7\u0010%R\u000e\u00108\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��¨\u0006D"}, m4298d2 = {"Lnl/dionsegijn/konfetti/Confetti;", "", "location", "Lnl/dionsegijn/konfetti/models/Vector;", "color", "", "size", "Lnl/dionsegijn/konfetti/models/Size;", "shape", "Lnl/dionsegijn/konfetti/models/Shape;", "lifespan", "", "fadeOut", "", "acceleration", "velocity", "rotate", "accelerate", "maxAcceleration", "", "rotationSpeedMultiplier", "speedDensityIndependent", "(Lnl/dionsegijn/konfetti/models/Vector;ILnl/dionsegijn/konfetti/models/Size;Lnl/dionsegijn/konfetti/models/Shape;JZLnl/dionsegijn/konfetti/models/Vector;Lnl/dionsegijn/konfetti/models/Vector;ZZFFZ)V", "getAccelerate", "()Z", "alpha", "getColor", "()I", "density", "getFadeOut", "getLifespan", "()J", "setLifespan", "(J)V", "getLocation", "()Lnl/dionsegijn/konfetti/models/Vector;", "setLocation", "(Lnl/dionsegijn/konfetti/models/Vector;)V", "mass", "getMaxAcceleration", "()F", "paint", "Landroid/graphics/Paint;", "getRotate", "rotation", "rotationSpeed", "getRotationSpeedMultiplier", "rotationWidth", "getShape", "()Lnl/dionsegijn/konfetti/models/Shape;", "getSize", "()Lnl/dionsegijn/konfetti/models/Size;", "getSpeedDensityIndependent", "speedF", "getVelocity", "setVelocity", "width", "applyForce", "", "force", BidMachineFetcher.AD_TYPE_DISPLAY, "canvas", "Landroid/graphics/Canvas;", "isDead", "render", "deltaTime", "update", "updateAlpha", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: nl.dionsegijn.konfetti.a */
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a.class */
public final class C20700a {

    /* renamed from: a */
    final float f67096a;

    /* renamed from: b */
    final float f67097b;

    /* renamed from: c */
    float f67098c;

    /* renamed from: d */
    final Paint f67099d;

    /* renamed from: e */
    float f67100e;

    /* renamed from: f */
    float f67101f;

    /* renamed from: g */
    float f67102g;

    /* renamed from: h */
    float f67103h;

    /* renamed from: i */
    public int f67104i;

    /* renamed from: j */
    Vector f67105j;

    /* renamed from: k */
    final int f67106k;

    /* renamed from: l */
    final Shape f67107l;

    /* renamed from: m */
    long f67108m;

    /* renamed from: n */
    final boolean f67109n;

    /* renamed from: o */
    Vector f67110o;

    /* renamed from: p */
    Vector f67111p;

    /* renamed from: q */
    final boolean f67112q;

    /* renamed from: r */
    final float f67113r;

    /* renamed from: s */
    final boolean f67114s;

    /* renamed from: t */
    private final Size f67115t;

    /* renamed from: u */
    private final boolean f67116u;

    /* renamed from: v */
    private final float f67117v;

    public C20700a(Vector location, int i, Size size, Shape shape, long j, boolean z, Vector acceleration, Vector velocity, boolean z2, boolean z3, float f, float f2, boolean z4) {
        C18524p.m3840d(location, "location");
        C18524p.m3840d(size, "size");
        C18524p.m3840d(shape, "shape");
        C18524p.m3840d(acceleration, "acceleration");
        C18524p.m3840d(velocity, "velocity");
        this.f67105j = location;
        this.f67106k = i;
        this.f67115t = size;
        this.f67107l = shape;
        this.f67108m = j;
        this.f67109n = z;
        this.f67110o = acceleration;
        this.f67111p = velocity;
        this.f67116u = z2;
        this.f67112q = z3;
        this.f67113r = f;
        this.f67117v = f2;
        this.f67114s = z4;
        Resources system = Resources.getSystem();
        C18524p.m3843b(system, "Resources.getSystem()");
        float f3 = system.getDisplayMetrics().density;
        this.f67096a = f3;
        this.f67097b = size.getMass();
        this.f67098c = size.getSizeInPx$konfetti_release();
        Paint paint = new Paint();
        this.f67099d = paint;
        this.f67102g = this.f67098c;
        this.f67103h = 60.0f;
        this.f67104i = 255;
        float f4 = f3 * 0.29f;
        if (z2) {
            AbstractC18354c.C18355a c18355a = AbstractC18354c.f63450a;
            this.f67100e = ((3.0f * f4 * AbstractC18354c.f63451b.mo4061c()) + f4) * f2;
        }
        paint.setColor(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    public /* synthetic */ C20700a(Vector vector, int i, Size size, Shape shape, long j, boolean z, Vector vector2, Vector vector3, boolean z2, boolean z3, float f, float f2, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(vector, i, size, shape, (i2 & 16) != 0 ? -1 : j, (i2 & 32) != 0 ? true : z, (i2 & 64) != 0 ? new Vector(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED) : vector2, (i2 & 128) != 0 ? new Vector(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 3, null) : vector3, (i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? true : z2, (i2 & 512) != 0 ? true : z3, (i2 & 1024) != 0 ? -1.0f : f, (i2 & 2048) != 0 ? 1.0f : f2, (i2 & 4096) != 0 ? true : z4);
    }
}

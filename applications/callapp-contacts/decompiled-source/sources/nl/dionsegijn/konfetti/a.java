package nl.dionsegijn.konfetti;

import android.content.res.Resources;
import android.graphics.Paint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.BidMachineFetcher;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.e.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import nl.dionsegijn.konfetti.models.Shape;
import nl.dionsegijn.konfetti.models.Size;
import nl.dionsegijn.konfetti.models.Vector;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r\u0012\b\b\u0002\u0010\u0011\u001a\u00020\r\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\r¢\u0006\u0002\u0010\u0016J\u000e\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u0003J\u0010\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>H\u0002J\b\u00102\u001a\u00020\u0013H\u0002J\u0006\u0010?\u001a\u00020\rJ\u0016\u0010@\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010A\u001a\u00020\u0013J\u0010\u0010B\u001a\u00020:2\u0006\u0010A\u001a\u00020\u0013H\u0002J\u0010\u0010C\u001a\u00020:2\u0006\u0010A\u001a\u00020\u0013H\u0002R\u0011\u0010\u0011\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0018R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n��\u001a\u0004\b'\u0010(R\u000e\u0010)\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0010\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b+\u0010\u0018R\u000e\u0010,\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0014\u001a\u00020\u0013¢\u0006\b\n��\u001a\u0004\b.\u0010(R\u000e\u0010/\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b0\u00101R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b2\u00103R\u0011\u0010\u0015\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b4\u0010\u0018R\u000e\u00105\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u0010#\"\u0004\b7\u0010%R\u000e\u00108\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��¨\u0006D"}, d2 = {"Lnl/dionsegijn/konfetti/Confetti;", "", "location", "Lnl/dionsegijn/konfetti/models/Vector;", "color", "", "size", "Lnl/dionsegijn/konfetti/models/Size;", "shape", "Lnl/dionsegijn/konfetti/models/Shape;", "lifespan", "", "fadeOut", "", "acceleration", "velocity", "rotate", "accelerate", "maxAcceleration", "", "rotationSpeedMultiplier", "speedDensityIndependent", "(Lnl/dionsegijn/konfetti/models/Vector;ILnl/dionsegijn/konfetti/models/Size;Lnl/dionsegijn/konfetti/models/Shape;JZLnl/dionsegijn/konfetti/models/Vector;Lnl/dionsegijn/konfetti/models/Vector;ZZFFZ)V", "getAccelerate", "()Z", "alpha", "getColor", "()I", "density", "getFadeOut", "getLifespan", "()J", "setLifespan", "(J)V", "getLocation", "()Lnl/dionsegijn/konfetti/models/Vector;", "setLocation", "(Lnl/dionsegijn/konfetti/models/Vector;)V", "mass", "getMaxAcceleration", "()F", "paint", "Landroid/graphics/Paint;", "getRotate", "rotation", "rotationSpeed", "getRotationSpeedMultiplier", "rotationWidth", "getShape", "()Lnl/dionsegijn/konfetti/models/Shape;", "getSize", "()Lnl/dionsegijn/konfetti/models/Size;", "getSpeedDensityIndependent", "speedF", "getVelocity", "setVelocity", "width", "applyForce", "", "force", BidMachineFetcher.AD_TYPE_DISPLAY, "canvas", "Landroid/graphics/Canvas;", "isDead", "render", "deltaTime", "update", "updateAlpha", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final float f39095a;

    /* renamed from: b  reason: collision with root package name */
    final float f39096b;

    /* renamed from: c  reason: collision with root package name */
    float f39097c;

    /* renamed from: d  reason: collision with root package name */
    final Paint f39098d;
    float e;
    float f;
    float g;
    float h;
    public int i;
    Vector j;
    final int k;
    final Shape l;
    long m;
    final boolean n;
    Vector o;
    Vector p;
    final boolean q;
    final float r;
    final boolean s;
    private final Size t;
    private final boolean u;
    private final float v;

    public a(Vector location, int i, Size size, Shape shape, long j, boolean z, Vector acceleration, Vector velocity, boolean z2, boolean z3, float f, float f2, boolean z4) {
        p.d(location, "location");
        p.d(size, "size");
        p.d(shape, "shape");
        p.d(acceleration, "acceleration");
        p.d(velocity, "velocity");
        this.j = location;
        this.k = i;
        this.t = size;
        this.l = shape;
        this.m = j;
        this.n = z;
        this.o = acceleration;
        this.p = velocity;
        this.u = z2;
        this.q = z3;
        this.r = f;
        this.v = f2;
        this.s = z4;
        Resources system = Resources.getSystem();
        p.b(system, "Resources.getSystem()");
        float f3 = system.getDisplayMetrics().density;
        this.f39095a = f3;
        this.f39096b = size.getMass();
        this.f39097c = size.getSizeInPx$konfetti_release();
        Paint paint = new Paint();
        this.f39098d = paint;
        this.g = this.f39097c;
        this.h = 60.0f;
        this.i = 255;
        float f4 = f3 * 0.29f;
        if (z2) {
            c.a aVar = c.f36657a;
            this.e = ((3.0f * f4 * c.f36658b.c()) + f4) * f2;
        }
        paint.setColor(i);
    }

    public /* synthetic */ a(Vector vector, int i, Size size, Shape shape, long j, boolean z, Vector vector2, Vector vector3, boolean z2, boolean z3, float f, float f2, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(vector, i, size, shape, (i2 & 16) != 0 ? -1L : j, (i2 & 32) != 0 ? true : z, (i2 & 64) != 0 ? new Vector(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED) : vector2, (i2 & 128) != 0 ? new Vector(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 3, null) : vector3, (i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? true : z2, (i2 & 512) != 0 ? true : z3, (i2 & 1024) != 0 ? -1.0f : f, (i2 & 2048) != 0 ? 1.0f : f2, (i2 & 4096) != 0 ? true : z4);
    }
}

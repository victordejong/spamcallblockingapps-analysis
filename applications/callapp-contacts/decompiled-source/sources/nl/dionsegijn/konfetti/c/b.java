package nl.dionsegijn.konfetti.c;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u001b\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010'\u001a\u00020\u000fJ\u0006\u0010(\u001a\u00020\u0006J\u0006\u0010)\u001a\u00020\u0006J\u0006\u0010*\u001a\u00020+R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R*\u0010\u0016\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\b\"\u0004\b#\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010$\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\b\"\u0004\b&\u0010\n¨\u0006,"}, d2 = {"Lnl/dionsegijn/konfetti/modules/VelocityModule;", "", "random", "Ljava/util/Random;", "(Ljava/util/Random;)V", "baseRotationMultiplier", "", "getBaseRotationMultiplier", "()F", "setBaseRotationMultiplier", "(F)V", "maxAcceleration", "getMaxAcceleration", "setMaxAcceleration", "maxAngle", "", "getMaxAngle", "()Ljava/lang/Double;", "setMaxAngle", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "value", "maxSpeed", "getMaxSpeed", "()Ljava/lang/Float;", "setMaxSpeed", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "minAngle", "getMinAngle", "()D", "setMinAngle", "(D)V", "minSpeed", "getMinSpeed", "setMinSpeed", "rotationVariance", "getRotationVariance", "setRotationVariance", "getRadian", "getRotationSpeedMultiplier", "getSpeed", "getVelocity", "Lnl/dionsegijn/konfetti/models/Vector;", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public double f39116a;

    /* renamed from: b  reason: collision with root package name */
    public Double f39117b;

    /* renamed from: c  reason: collision with root package name */
    public float f39118c;

    /* renamed from: d  reason: collision with root package name */
    public Float f39119d;
    public float e = -1.0f;
    public float f = 1.0f;
    public float g = 0.2f;
    public final Random h;

    public b(Random random) {
        p.d(random, "random");
        this.h = random;
    }
}

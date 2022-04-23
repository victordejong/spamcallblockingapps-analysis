package nl.dionsegijn.konfetti.c;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001d\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0012J\u001d\u0010\u0013\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0012J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0006R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u0012\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u000b\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\r¨\u0006\u0016"}, d2 = {"Lnl/dionsegijn/konfetti/modules/LocationModule;", "", "random", "Ljava/util/Random;", "(Ljava/util/Random;)V", "maxX", "", "Ljava/lang/Float;", "maxY", "minX", "minY", "x", "getX", "()F", "y", "getY", "betweenX", "", "(FLjava/lang/Float;)V", "betweenY", "setX", "setY", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public float f39112a;

    /* renamed from: b  reason: collision with root package name */
    public Float f39113b;

    /* renamed from: c  reason: collision with root package name */
    public float f39114c;

    /* renamed from: d  reason: collision with root package name */
    public Float f39115d;
    public final Random e;

    public a(Random random) {
        p.d(random, "random");
        this.e = random;
    }
}

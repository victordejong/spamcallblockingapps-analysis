.class public final Lnl/dionsegijn/konfetti/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\'\u001a\u00020\u000fJ\u0006\u0010(\u001a\u00020\u0006J\u0006\u0010)\u001a\u00020\u0006J\u0006\u0010*\u001a\u00020+R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R*\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0008\"\u0004\u0008#\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0008\"\u0004\u0008&\u0010\n\u00a8\u0006,"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/modules/VelocityModule;",
        "",
        "random",
        "Ljava/util/Random;",
        "(Ljava/util/Random;)V",
        "baseRotationMultiplier",
        "",
        "getBaseRotationMultiplier",
        "()F",
        "setBaseRotationMultiplier",
        "(F)V",
        "maxAcceleration",
        "getMaxAcceleration",
        "setMaxAcceleration",
        "maxAngle",
        "",
        "getMaxAngle",
        "()Ljava/lang/Double;",
        "setMaxAngle",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "value",
        "maxSpeed",
        "getMaxSpeed",
        "()Ljava/lang/Float;",
        "setMaxSpeed",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "minAngle",
        "getMinAngle",
        "()D",
        "setMinAngle",
        "(D)V",
        "minSpeed",
        "getMinSpeed",
        "setMinSpeed",
        "rotationVariance",
        "getRotationVariance",
        "setRotationVariance",
        "getRadian",
        "getRotationSpeedMultiplier",
        "getSpeed",
        "getVelocity",
        "Lnl/dionsegijn/konfetti/models/Vector;",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public a:D

.field public b:Ljava/lang/Double;

.field public c:F

.field public d:Ljava/lang/Float;

.field public e:F

.field public f:F

.field public g:F

.field public final h:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 1

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/c/b;->h:Ljava/util/Random;

    const/high16 p1, -0x40800000    # -1.0f

    .line 44
    iput p1, p0, Lnl/dionsegijn/konfetti/c/b;->e:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    iput p1, p0, Lnl/dionsegijn/konfetti/c/b;->f:F

    const p1, 0x3e4ccccd    # 0.2f

    .line 54
    iput p1, p0, Lnl/dionsegijn/konfetti/c/b;->g:F

    return-void
.end method

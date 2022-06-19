.class public Lscala/math/Numeric$Ops;
.super Ljava/lang/Object;
.source "Numeric.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Numeric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ops"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/math/Numeric;

.field private final lhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/math/Numeric;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Numeric<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 214
    iput-object p2, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/math/Numeric$Ops;->$outer:Lscala/math/Numeric;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Numeric;->minus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $times(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Numeric;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abs()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->abs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;
    .locals 1

    .line 214
    iget-object v0, p0, Lscala/math/Numeric$Ops;->$outer:Lscala/math/Numeric;

    return-object v0
.end method

.method public signum()I
    .locals 2

    .line 220
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->signum(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toDouble()D
    .locals 2

    .line 224
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat()F
    .locals 2

    .line 223
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->toFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public toInt()I
    .locals 2

    .line 221
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toLong()J
    .locals 2

    .line 222
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->toLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public unary_$minus()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lscala/math/Numeric$Ops;->scala$math$Numeric$Ops$$$outer()Lscala/math/Numeric;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Numeric$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/math/Numeric;->negate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

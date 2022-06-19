.class public Lscala/math/Integral$IntegralOps;
.super Lscala/math/Numeric$Ops;
.source "Integral.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Integral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntegralOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/math/Numeric<",
        "TT;>.Ops;"
    }
.end annotation


# instance fields
.field private final lhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/math/Integral;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Integral<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 23
    iput-object p2, p0, Lscala/math/Integral$IntegralOps;->lhs:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lscala/math/Numeric$Ops;-><init>(Lscala/math/Numeric;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public $div(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lscala/math/Integral$IntegralOps;->scala$math$Integral$IntegralOps$$$outer()Lscala/math/Integral;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Integral$IntegralOps;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Integral;->quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$percent(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/Tuple2<",
            "TT;TT;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/math/Integral$IntegralOps;->scala$math$Integral$IntegralOps$$$outer()Lscala/math/Integral;

    move-result-object v1

    iget-object v2, p0, Lscala/math/Integral$IntegralOps;->lhs:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lscala/math/Integral;->quot(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/math/Integral$IntegralOps;->scala$math$Integral$IntegralOps$$$outer()Lscala/math/Integral;

    move-result-object v2

    iget-object v3, p0, Lscala/math/Integral$IntegralOps;->lhs:Ljava/lang/Object;

    invoke-interface {v2, v3, p1}, Lscala/math/Integral;->rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public $percent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lscala/math/Integral$IntegralOps;->scala$math$Integral$IntegralOps$$$outer()Lscala/math/Integral;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Integral$IntegralOps;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Integral;->rem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$math$Integral$IntegralOps$$$outer()Lscala/math/Integral;
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/math/Integral$IntegralOps;->$outer:Lscala/math/Numeric;

    check-cast v0, Lscala/math/Integral;

    return-object v0
.end method

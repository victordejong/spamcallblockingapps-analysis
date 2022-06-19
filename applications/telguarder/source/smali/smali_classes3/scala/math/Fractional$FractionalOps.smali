.class public Lscala/math/Fractional$FractionalOps;
.super Lscala/math/Numeric$Ops;
.source "Fractional.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Fractional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FractionalOps"
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
.method public constructor <init>(Lscala/math/Fractional;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Fractional<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 20
    iput-object p2, p0, Lscala/math/Fractional$FractionalOps;->lhs:Ljava/lang/Object;

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

    .line 21
    invoke-virtual {p0}, Lscala/math/Fractional$FractionalOps;->scala$math$Fractional$FractionalOps$$$outer()Lscala/math/Fractional;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Fractional$FractionalOps;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Fractional;->div(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$math$Fractional$FractionalOps$$$outer()Lscala/math/Fractional;
    .locals 1

    .line 20
    iget-object v0, p0, Lscala/math/Fractional$FractionalOps;->$outer:Lscala/math/Numeric;

    check-cast v0, Lscala/math/Fractional;

    return-object v0
.end method

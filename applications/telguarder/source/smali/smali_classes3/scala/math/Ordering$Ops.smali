.class public Lscala/math/Ordering$Ops;
.super Ljava/lang/Object;
.source "Ordering.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ops"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/math/Ordering;

.field private final lhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/math/Ordering;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Ordering<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 126
    iput-object p2, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/math/Ordering$Ops;->$outer:Lscala/math/Ordering;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $greater(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->gt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lscala/math/Ordering$Ops;->scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;

    move-result-object v0

    iget-object v1, p0, Lscala/math/Ordering$Ops;->lhs:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$math$Ordering$Ops$$$outer()Lscala/math/Ordering;
    .locals 1

    .line 126
    iget-object v0, p0, Lscala/math/Ordering$Ops;->$outer:Lscala/math/Ordering;

    return-object v0
.end method

.class public final Lscala/math/Ordered$$anon$1;
.super Ljava/lang/Object;
.source "Ordered.scala"

# interfaces
.implements Lscala/math/Ordered;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Ordered$;->orderingToOrdered(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/math/Ordered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Ordered<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ord$1:Lscala/math/Ordering;

.field private final x$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/math/Ordering;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lscala/math/Ordered$$anon$1;->x$1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/math/Ordered$$anon$1;->ord$1:Lscala/math/Ordering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    return-void
.end method


# virtual methods
.method public $greater(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lscala/math/Ordered$$anon$1;->ord$1:Lscala/math/Ordering;

    iget-object v1, p0, Lscala/math/Ordered$$anon$1;->x$1:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

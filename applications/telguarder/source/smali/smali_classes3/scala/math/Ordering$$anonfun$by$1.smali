.class public final Lscala/math/Ordering$$anonfun$by$1;
.super Lscala/runtime/AbstractFunction2;
.source "Ordering.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Ordering$;->by(Lscala/Function1;Lscala/math/Ordering;)Lscala/math/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TT;TT;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$1:Lscala/Function1;

.field private final ord$3:Lscala/math/Ordering;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/math/Ordering;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lscala/math/Ordering$$anonfun$by$1;->f$1:Lscala/Function1;

    iput-object p2, p0, Lscala/math/Ordering$$anonfun$by$1;->ord$3:Lscala/math/Ordering;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2}, Lscala/math/Ordering$$anonfun$by$1;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lscala/math/Ordering$$anonfun$by$1;->ord$3:Lscala/math/Ordering;

    iget-object v1, p0, Lscala/math/Ordering$$anonfun$by$1;->f$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lscala/math/Ordering$$anonfun$by$1;->f$1:Lscala/Function1;

    invoke-interface {v1, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.class public final Lscala/math/Equiv$$anonfun$by$1;
.super Lscala/runtime/AbstractFunction2;
.source "Equiv.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Equiv$;->by(Lscala/Function1;Lscala/math/Equiv;)Lscala/math/Equiv;
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
.field private final evidence$1$1:Lscala/math/Equiv;

.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/math/Equiv;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lscala/math/Equiv$$anonfun$by$1;->f$1:Lscala/Function1;

    iput-object p2, p0, Lscala/math/Equiv$$anonfun$by$1;->evidence$1$1:Lscala/math/Equiv;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lscala/math/Equiv$$anonfun$by$1;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 59
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v0, p0, Lscala/math/Equiv$$anonfun$by$1;->evidence$1$1:Lscala/math/Equiv;

    check-cast v0, Lscala/math/Equiv;

    iget-object v1, p0, Lscala/math/Equiv$$anonfun$by$1;->f$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lscala/math/Equiv$$anonfun$by$1;->f$1:Lscala/Function1;

    invoke-interface {v1, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lscala/math/Equiv;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.class public final Lscala/runtime/Tuple3Zipped$$anonfun$forall$extension$1;
.super Lscala/runtime/AbstractFunction3;
.source "Tuple3Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple3Zipped;->forall(Lscala/Function3;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction3<",
        "TEl1;TEl2;TEl3;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$5:Lscala/Function3;


# direct methods
.method public constructor <init>(Lscala/Function3;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$forall$extension$1;->f$5:Lscala/Function3;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction3;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lscala/runtime/Tuple3Zipped$$anonfun$forall$extension$1;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;TEl2;TEl3;)Z"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$forall$extension$1;->f$5:Lscala/Function3;

    invoke-interface {v0, p1, p2, p3}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.class public final Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TB;",
        "Lscala/collection/mutable/Builder<",
        "TB;TM;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final r$2:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12;Lscala/collection/mutable/Builder;)V
    .locals 0

    .line 575
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13;->r$2:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 575
    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Lscala/collection/mutable/Builder<",
            "TB;TM;>;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13;->r$2:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

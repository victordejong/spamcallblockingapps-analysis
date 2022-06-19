.class public final Lscala/collection/parallel/FutureTasks$$anonfun$2;
.super Lscala/runtime/AbstractFunction0;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/FutureTasks;->execute(Lscala/collection/parallel/Task;)Lscala/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final future$1:Lscala/concurrent/Future;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks;Lscala/concurrent/Future;)V
    .locals 0

    .line 515
    iput-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$2;->future$1:Lscala/concurrent/Future;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 516
    sget-object v0, Lscala/concurrent/Await$;->MODULE$:Lscala/concurrent/Await$;

    iget-object v1, p0, Lscala/collection/parallel/FutureTasks$$anonfun$2;->future$1:Lscala/concurrent/Future;

    sget-object v2, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v2}, Lscala/concurrent/duration/Duration$;->Inf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/Await$;->result(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

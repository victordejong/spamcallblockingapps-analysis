.class public final Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;
.super Lscala/runtime/AbstractFunction0;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$Future$;->apply(Lscala/Function0;)Lscala/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final result$1:Lscala/concurrent/SyncVar;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$Future$;Lscala/concurrent/SyncVar;)V
    .locals 0

    .line 38
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;->result$1:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;->result$1:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/Either;

    .line 39
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 38
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

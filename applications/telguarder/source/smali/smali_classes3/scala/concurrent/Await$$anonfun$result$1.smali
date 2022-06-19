.class public final Lscala/concurrent/Await$$anonfun$result$1;
.super Lscala/runtime/AbstractFunction0;
.source "package.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Await$;->result(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)Ljava/lang/Object;
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
.field private final atMost$1:Lscala/concurrent/duration/Duration;

.field private final awaitable$1:Lscala/concurrent/Awaitable;


# direct methods
.method public constructor <init>(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lscala/concurrent/Await$$anonfun$result$1;->awaitable$1:Lscala/concurrent/Awaitable;

    iput-object p2, p0, Lscala/concurrent/Await$$anonfun$result$1;->atMost$1:Lscala/concurrent/duration/Duration;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lscala/concurrent/Await$$anonfun$result$1;->awaitable$1:Lscala/concurrent/Awaitable;

    iget-object v1, p0, Lscala/concurrent/Await$$anonfun$result$1;->atMost$1:Lscala/concurrent/duration/Duration;

    sget-object v2, Lscala/concurrent/AwaitPermission$;->MODULE$:Lscala/concurrent/AwaitPermission$;

    invoke-interface {v0, v1, v2}, Lscala/concurrent/Awaitable;->result(Lscala/concurrent/duration/Duration;Lscala/concurrent/CanAwait;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

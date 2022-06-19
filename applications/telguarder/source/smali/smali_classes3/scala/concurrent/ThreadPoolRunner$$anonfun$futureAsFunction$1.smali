.class public final Lscala/concurrent/ThreadPoolRunner$$anonfun$futureAsFunction$1;
.super Lscala/runtime/AbstractFunction0;
.source "ThreadPoolRunner.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/ThreadPoolRunner;->futureAsFunction(Ljava/util/concurrent/Future;)Lscala/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TS;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final x$1:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lscala/concurrent/ThreadPoolRunner;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 34
    iput-object p2, p0, Lscala/concurrent/ThreadPoolRunner$$anonfun$futureAsFunction$1;->x$1:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lscala/concurrent/ThreadPoolRunner$$anonfun$futureAsFunction$1;->x$1:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

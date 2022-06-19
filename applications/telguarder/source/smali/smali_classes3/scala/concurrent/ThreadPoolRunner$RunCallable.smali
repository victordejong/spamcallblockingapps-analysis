.class public Lscala/concurrent/ThreadPoolRunner$RunCallable;
.super Ljava/lang/Object;
.source "ThreadPoolRunner.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/ThreadPoolRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/concurrent/ThreadPoolRunner;

.field private final fun:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/concurrent/ThreadPoolRunner;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/ThreadPoolRunner;",
            "Lscala/Function0<",
            "TS;>;)V"
        }
    .end annotation

    .line 25
    iput-object p2, p0, Lscala/concurrent/ThreadPoolRunner$RunCallable;->fun:Lscala/Function0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/ThreadPoolRunner$RunCallable;->$outer:Lscala/concurrent/ThreadPoolRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lscala/concurrent/ThreadPoolRunner$RunCallable;->fun:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/concurrent/ThreadPoolRunner$RunCallable;->fun:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    return-void
.end method

.method public synthetic scala$concurrent$ThreadPoolRunner$RunCallable$$$outer()Lscala/concurrent/ThreadPoolRunner;
    .locals 1

    .line 25
    iget-object v0, p0, Lscala/concurrent/ThreadPoolRunner$RunCallable;->$outer:Lscala/concurrent/ThreadPoolRunner;

    return-object v0
.end method

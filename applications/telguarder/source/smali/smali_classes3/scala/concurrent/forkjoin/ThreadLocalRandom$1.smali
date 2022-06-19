.class final Lscala/concurrent/forkjoin/ThreadLocalRandom$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lscala/concurrent/forkjoin/ThreadLocalRandom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ThreadLocalRandom$1;->initialValue()Lscala/concurrent/forkjoin/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lscala/concurrent/forkjoin/ThreadLocalRandom;
    .locals 1

    .line 65
    new-instance v0, Lscala/concurrent/forkjoin/ThreadLocalRandom;

    invoke-direct {v0}, Lscala/concurrent/forkjoin/ThreadLocalRandom;-><init>()V

    return-object v0
.end method

.class final Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Submitter"
.end annotation


# instance fields
.field seed:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    return-void
.end method

.class public Ld2/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/d1;


# direct methods
.method public constructor <init>(Ld2/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b1;->a:Ld2/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld2/b1;->a:Ld2/d1;

    .line 2
    iget-object v0, p1, Ld2/d1;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Ld2/d1;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Ld2/d1;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

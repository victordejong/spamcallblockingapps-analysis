.class public final Lpj0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lpj0;->b(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lrj0;->d()Lrj0$a;

    move-result-object v0

    sget-object v1, Lrj0$a;->b:Lrj0$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Luj0;->b:Luj0;

    invoke-static {v0}, Lpj0;->k(Luj0;)V

    :cond_0
    return-void
.end method

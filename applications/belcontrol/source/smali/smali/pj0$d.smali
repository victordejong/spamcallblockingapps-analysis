.class public final Lpj0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpj0;->h(Llj0;Lnj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llj0;

.field public final synthetic b:Lnj0;


# direct methods
.method public constructor <init>(Llj0;Lnj0;)V
    .locals 0

    iput-object p1, p0, Lpj0$d;->a:Llj0;

    iput-object p2, p0, Lpj0$d;->b:Lnj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lpj0;->c()Loj0;

    move-result-object v0

    iget-object v1, p0, Lpj0$d;->a:Llj0;

    iget-object v2, p0, Lpj0$d;->b:Lnj0;

    invoke-virtual {v0, v1, v2}, Loj0;->a(Llj0;Lnj0;)V

    invoke-static {}, Lrj0;->d()Lrj0$a;

    move-result-object v0

    sget-object v1, Lrj0$a;->b:Lrj0$a;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lpj0;->c()Loj0;

    move-result-object v0

    invoke-virtual {v0}, Loj0;->d()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    sget-object v0, Luj0;->f:Luj0;

    invoke-static {v0}, Lpj0;->k(Luj0;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lpj0;->a()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lpj0;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {}, Lpj0;->e()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v0}, Lpj0;->b(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

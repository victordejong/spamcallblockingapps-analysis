.class public Lz91$d;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lq71$e;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lq71$e;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lz91$d;->a:Lq71$e;

    iput p3, p0, Lz91$d;->b:I

    return-void
.end method

.method public static synthetic a(Lz91$d;)Lq71$e;
    .locals 0

    iget-object p0, p0, Lz91$d;->a:Lq71$e;

    return-object p0
.end method

.method public static synthetic b(Lz91$d;)I
    .locals 0

    iget p0, p0, Lz91$d;->b:I

    return p0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lz91;->c()Lz91;

    move-result-object p1

    invoke-static {p1}, Lz91;->d(Lz91;)[Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iget v0, p0, Lz91$d;->b:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    invoke-static {}, Lz91;->e()Lz91;

    move-result-object p1

    invoke-static {p1}, Lz91;->d(Lz91;)[Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iget v0, p0, Lz91$d;->b:I

    invoke-static {}, Lz91;->e()Lz91;

    move-result-object v1

    invoke-static {v1}, Lz91;->g(Lz91;)[Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget v2, p0, Lz91$d;->b:I

    aget-object v1, v1, v2

    new-instance v2, Lz91$d$a;

    invoke-direct {v2, p0}, Lz91$d$a;-><init>(Lz91$d;)V

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz91$d;->onChange(Z)V

    return-void
.end method

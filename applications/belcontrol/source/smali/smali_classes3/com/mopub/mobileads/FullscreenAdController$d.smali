.class public Lcom/mopub/mobileads/FullscreenAdController$d;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/FullscreenAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:Lcom/mopub/mobileads/FullscreenAdController;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/FullscreenAdController$d;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    iget v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->f:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->c:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->f:I

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/FullscreenAdController;->c(Lcom/mopub/mobileads/FullscreenAdController;I)V

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {v0}, Lcom/mopub/mobileads/FullscreenAdController;->d(Lcom/mopub/mobileads/FullscreenAdController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController;->i()V

    :cond_0
    return-void
.end method

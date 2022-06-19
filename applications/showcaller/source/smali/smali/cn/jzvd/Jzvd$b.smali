.class public Lcn/jzvd/Jzvd$b;
.super Ljava/util/TimerTask;
.source "Jzvd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jzvd/Jzvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcn/jzvd/Jzvd;


# direct methods
.method public constructor <init>(Lcn/jzvd/Jzvd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/jzvd/Jzvd$b;->d:Lcn/jzvd/Jzvd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd$b;->d:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->getCurrentPositionWhenPlaying()J

    move-result-wide v3

    .line 2
    iget-object v0, p0, Lcn/jzvd/Jzvd$b;->d:Lcn/jzvd/Jzvd;

    invoke-virtual {v0}, Lcn/jzvd/Jzvd;->getDuration()J

    move-result-wide v5

    const-wide/16 v0, 0x64

    mul-long v0, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v5

    .line 3
    :goto_0
    div-long/2addr v0, v7

    long-to-int v2, v0

    .line 4
    iget-object v1, p0, Lcn/jzvd/Jzvd$b;->d:Lcn/jzvd/Jzvd;

    invoke-virtual/range {v1 .. v6}, Lcn/jzvd/Jzvd;->C(IJJ)V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/jzvd/Jzvd$b;->a()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/jzvd/Jzvd$b;->d:Lcn/jzvd/Jzvd;

    iget v1, v0, Lcn/jzvd/Jzvd;->o:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 2
    :cond_0
    new-instance v1, Lcn/jzvd/n;

    invoke-direct {v1, p0}, Lcn/jzvd/n;-><init>(Lcn/jzvd/Jzvd$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

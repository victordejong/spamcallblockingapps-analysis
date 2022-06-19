.class public final Lcom/flurry/sdk/jx$1;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jx;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jx$1;->a:Lcom/flurry/sdk/jx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/jx$1;->a:Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jx$1;->a:Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/jx;->a(Lcom/flurry/sdk/jx;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/jx;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/jx$1;->a:Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/jx;->b(Lcom/flurry/sdk/jx;)V

    :cond_0
    return-void
.end method

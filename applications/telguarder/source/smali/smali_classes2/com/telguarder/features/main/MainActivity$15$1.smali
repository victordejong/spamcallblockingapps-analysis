.class Lcom/telguarder/features/main/MainActivity$15$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity$15;->onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/main/MainActivity$15;

.field final synthetic val$cached:Z

.field final synthetic val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity$15;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$15$1;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iput-object p2, p0, Lcom/telguarder/features/main/MainActivity$15$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-boolean p3, p0, Lcom/telguarder/features/main/MainActivity$15$1;->val$cached:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$15$1;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v2, v2, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v2}, Lcom/telguarder/features/main/MainActivity;->access$1800(Lcom/telguarder/features/main/MainActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 724
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/telguarder/features/main/MainActivity$15$1$1;

    invoke-direct {v5, p0}, Lcom/telguarder/features/main/MainActivity$15$1$1;-><init>(Lcom/telguarder/features/main/MainActivity$15$1;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15$1;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$15$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iget-boolean v2, p0, Lcom/telguarder/features/main/MainActivity$15$1;->val$cached:Z

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/main/MainActivity$15;->access$1900(Lcom/telguarder/features/main/MainActivity$15;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    :goto_0
    return-void
.end method

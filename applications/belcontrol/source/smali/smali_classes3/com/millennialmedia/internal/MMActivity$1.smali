.class public final Lcom/millennialmedia/internal/MMActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMActivity$ActivityState;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$1;->val$activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$1;->val$activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$1;->val$activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onLaunchFailed()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

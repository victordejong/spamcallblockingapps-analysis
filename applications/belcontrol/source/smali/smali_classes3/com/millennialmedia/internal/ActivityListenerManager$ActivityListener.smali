.class public Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity created"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity destroyed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity paused"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity resumed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity started"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity stopped"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

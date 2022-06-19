.class public Lcom/millennialmedia/internal/AdContainer;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/AdContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/AdContainer;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/millennialmedia/internal/AdContainer;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/AdContainer;->TAG:Ljava/lang/String;

    const-string v1, "AdContainer not listening for activity lifecycle events, skipping activity lifecycle dispatcher registration"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityHashForView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/AdContainer;->TAG:Ljava/lang/String;

    const-string v1, "Unable to register activity lifecycle listener for AdContainer, no valid activity hash"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/internal/AdContainer;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/millennialmedia/internal/AdContainer;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityHashForView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/AdContainer;->TAG:Ljava/lang/String;

    const-string v1, "Unable to unregister activity lifecycle listener for AdContainer, no valid activity hash"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/AdContainer;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    return-void
.end method

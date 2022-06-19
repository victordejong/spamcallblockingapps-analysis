.class public Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;
.super Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-direct {p0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->PAUSED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iput-object v0, p1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->access$100(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iput-object v0, p1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->access$100(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    return-void
.end method

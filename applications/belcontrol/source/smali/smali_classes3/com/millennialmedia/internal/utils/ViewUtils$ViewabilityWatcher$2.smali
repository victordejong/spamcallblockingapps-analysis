.class public Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V
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

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-boolean v1, v1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->access$200(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->access$300(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;Z)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;->this$0:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->access$100(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    :cond_2
    :goto_0
    return-void
.end method

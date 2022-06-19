.class Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;


# direct methods
.method constructor <init>(Lcom/verizon/ads/support/utils/ViewabilityWatcher;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-object v0, v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 222
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-boolean v1, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-static {v1, v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 228
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 230
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    .line 232
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-static {v1, v0, v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

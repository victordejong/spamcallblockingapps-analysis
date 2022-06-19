.class Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V
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

    .line 174
    iput-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-object v0, v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 179
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-boolean v1, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 188
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 190
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-static {v1, v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-static {v1, v0, v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;Z)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;->a:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 1454
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

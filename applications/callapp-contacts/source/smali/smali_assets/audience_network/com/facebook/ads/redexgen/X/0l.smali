.class public final Lcom/facebook/ads/redexgen/X/0l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserReturnListener"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/0m;)V
    .locals 1

    .line 2166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0l;->A01:Ljava/lang/ref/WeakReference;

    .line 2168
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0l;->A00:Lcom/facebook/ads/redexgen/X/0m;

    .line 2169
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 2170
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 2171
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 2172
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0l;->A00:Lcom/facebook/ads/redexgen/X/0m;

    if-nez v0, :cond_0

    .line 2174
    return-void

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0l;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2176
    .local p0, "trackedActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 2177
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2178
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0l;->A00:Lcom/facebook/ads/redexgen/X/0m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0m;->A06()V

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0l;->A00:Lcom/facebook/ads/redexgen/X/0m;

    .line 2180
    :cond_2
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 2181
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 2182
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 2183
    return-void
.end method

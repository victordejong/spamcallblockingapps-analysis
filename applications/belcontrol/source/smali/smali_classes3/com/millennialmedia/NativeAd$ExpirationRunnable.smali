.class public Lcom/millennialmedia/NativeAd$ExpirationRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpirationRunnable"
.end annotation


# instance fields
.field public nativeAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field public requestStateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/AdPlacement$RequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->nativeAdRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->requestStateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->nativeAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/NativeAd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAd instance has been destroyed, aborting expiration state change"

    :goto_0
    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$502(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->requestStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No valid RequestStateComponents is available, unable to trigger expired state change"

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$600(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.class Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;
.super Lcom/verizon/ads/ActivityStateManager$ActivityObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/verizon/ads/support/utils/ViewabilityWatcher;


# direct methods
.method constructor <init>(Lcom/verizon/ads/support/utils/ViewabilityWatcher;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;->b:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-direct {p0}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;->b:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    sget-object v0, Lcom/verizon/ads/ActivityStateManager$ActivityState;->PAUSED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    iput-object v0, p1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->d:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 116
    iget-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;->b:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 2454
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;->b:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    sget-object v0, Lcom/verizon/ads/ActivityStateManager$ActivityState;->RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    iput-object v0, p1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->d:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    .line 108
    iget-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;->b:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 1454
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

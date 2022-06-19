.class public Lcom/millennialmedia/NativeAd$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/NativeAd;

.field public final synthetic val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

.field public final synthetic val$componentName:Lcom/millennialmedia/NativeAd$ComponentName;

.field public final synthetic val$index:I

.field public final synthetic val$reporter:Lcom/millennialmedia/internal/AdPlacementReporter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/NativeAd$ComponentName;I)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$5;->val$reporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    iput-object p3, p0, Lcom/millennialmedia/NativeAd$5;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iput-object p4, p0, Lcom/millennialmedia/NativeAd$5;->val$componentName:Lcom/millennialmedia/NativeAd$ComponentName;

    iput p5, p0, Lcom/millennialmedia/NativeAd$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ad clicked"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$5;->val$reporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$5;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/NativeAd;->access$2500(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {p1}, Lcom/millennialmedia/NativeAd;->access$2100(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {p1}, Lcom/millennialmedia/NativeAd;->access$2100(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->onAdClicked(Lcom/millennialmedia/NativeAd;)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {p1}, Lcom/millennialmedia/NativeAd;->access$2600(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/NativeAd$NativeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/NativeAd$5$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$5$1;-><init>(Lcom/millennialmedia/NativeAd$5;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/NativeAd$5;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$5;->val$componentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    const-string v1, "click"

    invoke-static {p1, v1, v0}, Lcom/millennialmedia/NativeAd;->access$2700(Lcom/millennialmedia/NativeAd;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

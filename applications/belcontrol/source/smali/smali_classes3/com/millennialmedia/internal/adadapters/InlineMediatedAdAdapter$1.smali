.class public Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityHashForView(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$202(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;I)I

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)I

    move-result p1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$300(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$200(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)I

    move-result p1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$300(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    return-void
.end method

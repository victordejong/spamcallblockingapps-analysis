.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$5;
.super Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->internalExpandToFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;Lcom/millennialmedia/internal/MMActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1900(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1, v1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "expand"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v1

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;)V

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1900(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v3, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "collapse"

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V

    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onPause(Lcom/millennialmedia/internal/MMActivity;)V

    return-void
.end method

.method public onResume(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onResume(Lcom/millennialmedia/internal/MMActivity;)V

    return-void
.end method

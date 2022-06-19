.class public Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    return-void
.end method

.method public attachSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displaySucceeded()V

    return-void
.end method

.method public initFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    return-void
.end method

.method public initSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initSucceeded()V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onClicked()V

    return-void
.end method

.method public onCollapsed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onCollapsed()V

    return-void
.end method

.method public onExpanded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onExpanded()V

    return-void
.end method

.method public onResize(II)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onResize(II)V

    return-void
.end method

.method public onResized(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onResized(IIZ)V

    return-void
.end method

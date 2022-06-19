.class public Lcom/millennialmedia/internal/SizableStateManager$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$2;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/SizableStateManager$2;

.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$2;II)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$2;

    iput p2, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->val$width:I

    iput p3, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$2;

    iget-object v1, v0, Lcom/millennialmedia/internal/SizableStateManager$2;->val$deferredState:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$2;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->val$width:I

    iget v2, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->val$height:I

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onResized(II)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$2;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onExpanded()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$2;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->val$width:I

    iget v2, p0, Lcom/millennialmedia/internal/SizableStateManager$2$1;->val$height:I

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onUnresized(II)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/millennialmedia/internal/SizableStateManager$2;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsed()V

    :cond_3
    :goto_0
    return-void
.end method

.class public Lcom/millennialmedia/internal/SizableStateManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager;->notifyStateWhenReady(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/SizableStateManager;

.field public final synthetic val$deferredState:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$2;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    iput-object p2, p0, Lcom/millennialmedia/internal/SizableStateManager$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/millennialmedia/internal/SizableStateManager$2;->val$deferredState:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance p1, Lcom/millennialmedia/internal/SizableStateManager$2$1;

    invoke-direct {p1, p0, p4, p5}, Lcom/millennialmedia/internal/SizableStateManager$2$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager$2;II)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.class public Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->attachCloseControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->close()V

    return-void
.end method

.class public Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->attachCloseControl(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer$1;->this$1:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->close()V

    return-void
.end method

.class public Lcom/millennialmedia/internal/SizableStateManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager;->restoreDefaultState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/SizableStateManager;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsed()V

    return-void
.end method

.class Lcom/a/a/a/a/c/l$3;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/a/c/l;


# direct methods
.method constructor <init>(Lcom/a/a/a/a/c/l;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/a/a/a/a/c/l$3;->a:Lcom/a/a/a/a/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/a/a/a/a/c/l$3;->a:Lcom/a/a/a/a/c/l;

    iget-object v0, v0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/a/a/a/a/c/l$3;->a:Lcom/a/a/a/a/c/l;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->f()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/c/l;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

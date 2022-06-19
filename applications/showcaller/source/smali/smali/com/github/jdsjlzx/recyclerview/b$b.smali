.class Lcom/github/jdsjlzx/recyclerview/b$b;
.super Ljava/lang/Object;
.source "LuRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/recyclerview/b;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/recyclerview/widget/RecyclerView$b0;

.field final synthetic e:I

.field final synthetic f:Lcom/github/jdsjlzx/recyclerview/b;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/recyclerview/b;Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/b$b;->f:Lcom/github/jdsjlzx/recyclerview/b;

    iput-object p2, p0, Lcom/github/jdsjlzx/recyclerview/b$b;->d:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput p3, p0, Lcom/github/jdsjlzx/recyclerview/b$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/b$b;->f:Lcom/github/jdsjlzx/recyclerview/b;

    invoke-static {p1}, Lcom/github/jdsjlzx/recyclerview/b;->B(Lcom/github/jdsjlzx/recyclerview/b;)Lc/b/a/g/d;

    move-result-object p1

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/b$b;->d:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->b:Landroid/view/View;

    iget v1, p0, Lcom/github/jdsjlzx/recyclerview/b$b;->e:I

    invoke-interface {p1, v0, v1}, Lc/b/a/g/d;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

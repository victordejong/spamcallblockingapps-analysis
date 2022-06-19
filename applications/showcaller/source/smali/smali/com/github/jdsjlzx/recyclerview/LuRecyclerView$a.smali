.class Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$a;
.super Ljava/lang/Object;
.source "LuRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->setOnNetWorkErrorListener(Lc/b/a/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lc/b/a/g/f;

.field final synthetic e:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;Lc/b/a/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$a;->e:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    iput-object p2, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$a;->d:Lc/b/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$a;->e:Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;

    invoke-static {p1}, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;->C1(Lcom/github/jdsjlzx/recyclerview/LuRecyclerView;)Lc/b/a/g/a;

    move-result-object p1

    invoke-interface {p1}, Lc/b/a/g/a;->c()V

    .line 2
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LuRecyclerView$a;->d:Lc/b/a/g/f;

    invoke-interface {p1}, Lc/b/a/g/f;->a()V

    return-void
.end method

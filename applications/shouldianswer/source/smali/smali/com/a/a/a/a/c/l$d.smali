.class Lcom/a/a/a/a/c/l$d;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/a/a/a/a/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/c/l;)V
    .locals 1

    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2110
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/l$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/c/l;

    if-nez v0, :cond_1

    return-void

    .line 2120
    :cond_1
    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->f()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2126
    :cond_2
    invoke-static {v0, p0}, Landroidx/core/g/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2128
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2132
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2136
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 2146
    iget-object v0, p0, Lcom/a/a/a/a/c/l$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/c/l;

    if-nez v0, :cond_0

    return-void

    .line 2152
    :cond_0
    iget-boolean v1, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    if-nez v1, :cond_1

    return-void

    .line 2157
    :cond_1
    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->e()V

    .line 2160
    invoke-virtual {v0}, Lcom/a/a/a/a/c/l;->f()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2162
    iget-boolean v1, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    if-eqz v1, :cond_2

    .line 2163
    invoke-static {v0, p0}, Landroidx/core/g/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2165
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l$d;->b:Z

    :goto_0
    return-void
.end method

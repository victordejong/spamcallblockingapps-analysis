.class public Lcom/a/a/a/a/b/a/b$a;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"

# interfaces
.implements Landroidx/core/g/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/a/a/a/a/b/a/b;

.field private b:Lcom/a/a/a/a/b/a/e;

.field private c:Landroidx/recyclerview/widget/RecyclerView$w;

.field private d:Landroidx/core/g/y;


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/b/a/b;Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/a/a/a/a/b/a/b$a;->a:Lcom/a/a/a/a/b/a/b;

    .line 215
    iput-object p2, p0, Lcom/a/a/a/a/b/a/b$a;->b:Lcom/a/a/a/a/b/a/e;

    .line 216
    iput-object p3, p0, Lcom/a/a/a/a/b/a/b$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 217
    iput-object p4, p0, Lcom/a/a/a/a/b/a/b$a;->d:Landroidx/core/g/y;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 223
    iget-object p1, p0, Lcom/a/a/a/a/b/a/b$a;->a:Lcom/a/a/a/a/b/a/b;

    iget-object v0, p0, Lcom/a/a/a/a/b/a/b$a;->b:Lcom/a/a/a/a/b/a/e;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/b$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a/b/a/b;->d(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .line 229
    iget-object p1, p0, Lcom/a/a/a/a/b/a/b$a;->a:Lcom/a/a/a/a/b/a/b;

    .line 230
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b$a;->b:Lcom/a/a/a/a/b/a/e;

    .line 231
    iget-object v1, p0, Lcom/a/a/a/a/b/a/b$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 233
    iget-object v2, p0, Lcom/a/a/a/a/b/a/b$a;->d:Landroidx/core/g/y;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/g/y;->a(Landroidx/core/g/z;)Landroidx/core/g/y;

    .line 234
    iput-object v3, p0, Lcom/a/a/a/a/b/a/b$a;->a:Lcom/a/a/a/a/b/a/b;

    .line 235
    iput-object v3, p0, Lcom/a/a/a/a/b/a/b$a;->b:Lcom/a/a/a/a/b/a/e;

    .line 236
    iput-object v3, p0, Lcom/a/a/a/a/b/a/b$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 237
    iput-object v3, p0, Lcom/a/a/a/a/b/a/b$a;->d:Landroidx/core/g/y;

    .line 239
    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a/b/a/b;->c(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 240
    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a/b/a/b;->e(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/a/a/a/a/b/a/e;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 242
    iget-object v0, p1, Lcom/a/a/a/a/b/a/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p1}, Lcom/a/a/a/a/b/a/b;->g()V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 249
    iget-object p1, p0, Lcom/a/a/a/a/b/a/b$a;->a:Lcom/a/a/a/a/b/a/b;

    iget-object v0, p0, Lcom/a/a/a/a/b/a/b$a;->b:Lcom/a/a/a/a/b/a/e;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/b$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a/b/a/b;->a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

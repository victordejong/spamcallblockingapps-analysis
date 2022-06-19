.class Lcom/a/a/a/a/c/a$1;
.super Ljava/lang/Object;
.source "BaseDraggableItemDecorator.java"

# interfaces
.implements Landroidx/core/g/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/a/c/a;->a(Landroid/view/View;FFFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/a/a/a/a/c/a;


# direct methods
.method constructor <init>(Lcom/a/a/a/a/c/a;F)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/a/a/a/a/c/a$1;->b:Lcom/a/a/a/a/c/a;

    iput p2, p0, Lcom/a/a/a/a/c/a$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 88
    invoke-static {p1}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->a(Landroidx/core/g/z;)Landroidx/core/g/y;

    .line 90
    iget v0, p0, Lcom/a/a/a/a/c/a$1;->a:F

    invoke-static {p1, v0}, Lcom/a/a/a/a/c/a;->a(Landroid/view/View;F)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

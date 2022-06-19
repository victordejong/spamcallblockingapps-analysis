.class public Lcom/unknownphone/callblocker/a/a/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/custom/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/a/a/a/a;",
            ">;",
            "Lcom/unknownphone/callblocker/custom/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a/a/b;->a:Lcom/unknownphone/callblocker/custom/f;

    .line 26
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/b;->b:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/unknownphone/callblocker/a/a/a/b$a;

    const v2, 0x7f0c0094

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/a/b;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {v1, v0, v2}, Lcom/unknownphone/callblocker/a/a/a/b$a;-><init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;)V

    return-object v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 33
    check-cast p1, Lcom/unknownphone/callblocker/a/a/a/b$a;

    .line 35
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/a;

    .line 37
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/bumptech/glide/f/e;->a()Lcom/bumptech/glide/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/h;

    move-result-object v1

    iget-object v2, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 45
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;

    move-result-object v1

    iget-object v2, p1, Lcom/unknownphone/callblocker/a/a/a/b$a;->a:Landroid/view/View;

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f/a/i;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.class public Lcom/unknownphone/callblocker/e/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/e/b$a;,
        Lcom/unknownphone/callblocker/e/b$b;
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

.field private b:Lcom/unknownphone/callblocker/custom/f;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;",
            "Lcom/unknownphone/callblocker/custom/f;",
            "Lcom/unknownphone/callblocker/custom/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/unknownphone/callblocker/e/b;->a:Lcom/unknownphone/callblocker/custom/f;

    .line 34
    iput-object p3, p0, Lcom/unknownphone/callblocker/e/b;->b:Lcom/unknownphone/callblocker/custom/f;

    .line 35
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/b;->c:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/b;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b3

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x377

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 86
    const/16 v0, 0x377

    if-ne p2, v0, :cond_0

    .line 87
    new-instance v0, Lcom/unknownphone/callblocker/e/b$a;

    const v2, 0x7f0c008f

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/b;->a:Lcom/unknownphone/callblocker/custom/f;

    iget-object v3, p0, Lcom/unknownphone/callblocker/e/b;->b:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/e/b$a;-><init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;Lcom/unknownphone/callblocker/custom/f;)V

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/e/b$b;

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/e/b$b;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi",
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const v10, 0x7f060019

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 42
    instance-of v0, p1, Lcom/unknownphone/callblocker/e/b$b;

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/unknownphone/callblocker/e/b$a;

    .line 46
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/b;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unknownphone/callblocker/e/a;

    .line 48
    iget-object v2, v0, Lcom/unknownphone/callblocker/e/b$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->b()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v5}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, v0, Lcom/unknownphone/callblocker/e/b$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v0, Lcom/unknownphone/callblocker/e/b$a;->s:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10020a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, v0, Lcom/unknownphone/callblocker/e/b$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 59
    :goto_1
    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->c()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 60
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->u:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 61
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800f8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 62
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f08012e

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 64
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, v0, Lcom/unknownphone/callblocker/e/b$a;->a:Landroid/view/View;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    .line 64
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 56
    :cond_2
    iget-object v2, v0, Lcom/unknownphone/callblocker/e/b$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600cc

    invoke-static {v3, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->c()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 67
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->u:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 68
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800b2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 69
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 72
    :cond_4
    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->c()S

    move-result v2

    if-ne v2, v9, :cond_0

    .line 73
    iget-object v2, v0, Lcom/unknownphone/callblocker/e/b$a;->u:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/e/a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->u:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 75
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 76
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 77
    iget-object v1, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, v0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method

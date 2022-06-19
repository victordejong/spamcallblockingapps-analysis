.class public Lcom/unknownphone/callblocker/a/a/b/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "RecentCallsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/a/b/a$a;,
        Lcom/unknownphone/callblocker/a/a/b/a$b;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/unknownphone/callblocker/custom/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/unknownphone/callblocker/a/a/b/a;->a:Lcom/unknownphone/callblocker/custom/f;

    .line 30
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a/b/a;->b:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/b/a;->c:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/a;->c:Ljava/util/List;

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

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    const/16 v0, 0x377

    if-ne p2, v0, :cond_0

    .line 62
    new-instance v0, Lcom/unknownphone/callblocker/a/a/b/a$a;

    const v2, 0x7f0c0096

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/b/a;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {v0, v1, v2}, Lcom/unknownphone/callblocker/a/a/b/a$a;-><init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;)V

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/a/a/b/a$b;

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/a/a/b/a$b;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 38
    instance-of v0, p1, Lcom/unknownphone/callblocker/a/a/b/a$b;

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 40
    :cond_0
    check-cast p1, Lcom/unknownphone/callblocker/a/a/b/a$a;

    .line 42
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 44
    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/b/a;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    iget-object v3, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v3, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_1

    const v0, 0x7f0800b4

    :goto_1
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 51
    iget-object v3, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v2, :cond_2

    const v0, 0x7f0600cc

    :goto_2
    invoke-static {v4, v0}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 53
    iget-object v3, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v6, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 54
    iget-object v0, p1, Lcom/unknownphone/callblocker/a/a/b/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {v0, v6, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 48
    :cond_1
    const v0, 0x7f0800b3

    goto :goto_1

    .line 51
    :cond_2
    const v0, 0x7f06007a

    goto :goto_2

    .line 53
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    .line 54
    :cond_4
    const/4 v1, 0x0

    goto :goto_4
.end method

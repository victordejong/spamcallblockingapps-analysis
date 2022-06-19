.class public Lcom/unknownphone/callblocker/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "BlockedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/a$a;,
        Lcom/unknownphone/callblocker/a/a$b;
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
            "Lcom/unknownphone/callblocker/a/c;",
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
            "Lcom/unknownphone/callblocker/a/c;",
            ">;",
            "Lcom/unknownphone/callblocker/custom/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a;->a:Lcom/unknownphone/callblocker/custom/f;

    .line 26
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a;->b:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a;->b:Ljava/util/List;

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

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 76
    const/16 v0, 0x377

    if-ne p2, v0, :cond_0

    .line 77
    new-instance v0, Lcom/unknownphone/callblocker/a/a$a;

    const v2, 0x7f0c008e

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {v0, v1, v2}, Lcom/unknownphone/callblocker/a/a$a;-><init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/a/a$b;

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/a/a$b;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 33
    instance-of v0, p1, Lcom/unknownphone/callblocker/a/a$b;

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 35
    :cond_0
    check-cast p1, Lcom/unknownphone/callblocker/a/a$a;

    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/c;

    .line 39
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->b()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 43
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Lcom/unknownphone/callblocker/a/a$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10004c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p1, Lcom/unknownphone/callblocker/a/a$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 51
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/unknownphone/callblocker/a/a$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 58
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Lcom/unknownphone/callblocker/a/a$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 64
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, Lcom/unknownphone/callblocker/a/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/unknownphone/callblocker/a/a$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

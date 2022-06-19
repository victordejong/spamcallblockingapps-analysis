.class public Lcom/unknownphone/callblocker/e/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field q:Landroidx/appcompat/widget/AppCompatTextView;

.field r:Landroidx/appcompat/widget/AppCompatTextView;

.field s:Landroidx/appcompat/widget/AppCompatTextView;

.field t:Landroidx/appcompat/widget/AppCompatButton;

.field u:Landroidx/appcompat/widget/AppCompatTextView;

.field v:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    .line 121
    const v0, 0x7f0901d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    const v0, 0x7f090134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    const v0, 0x7f0900a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->t:Landroidx/appcompat/widget/AppCompatButton;

    .line 125
    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->v:Landroidx/appcompat/widget/AppCompatImageView;

    .line 128
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/b$a;->t:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/unknownphone/callblocker/e/b$a$1;

    invoke-direct {v1, p0, p2}, Lcom/unknownphone/callblocker/e/b$a$1;-><init>(Lcom/unknownphone/callblocker/e/b$a;Lcom/unknownphone/callblocker/custom/f;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f09009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/e/b$a$2;

    invoke-direct {v1, p0, p3}, Lcom/unknownphone/callblocker/e/b$a$2;-><init>(Lcom/unknownphone/callblocker/e/b$a;Lcom/unknownphone/callblocker/custom/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

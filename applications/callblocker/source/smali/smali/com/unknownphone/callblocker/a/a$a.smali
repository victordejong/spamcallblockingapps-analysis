.class public Lcom/unknownphone/callblocker/a/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "BlockedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field q:Landroidx/appcompat/widget/AppCompatTextView;

.field r:Landroidx/appcompat/widget/AppCompatTextView;

.field s:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    .line 108
    const v0, 0x7f090134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    const v0, 0x7f0900ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a$a;->s:Landroidx/appcompat/widget/AppCompatImageView;

    .line 110
    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    new-instance v0, Lcom/unknownphone/callblocker/a/a$a$1;

    invoke-direct {v0, p0, p2}, Lcom/unknownphone/callblocker/a/a$a$1;-><init>(Lcom/unknownphone/callblocker/a/a$a;Lcom/unknownphone/callblocker/custom/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

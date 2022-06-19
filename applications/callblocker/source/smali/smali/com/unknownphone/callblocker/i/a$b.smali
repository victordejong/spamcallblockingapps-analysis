.class public Lcom/unknownphone/callblocker/i/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field q:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;ZLcom/unknownphone/callblocker/custom/f;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    .line 79
    const v0, 0x7f0901c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/i/a$b;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a$b;->q:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100201

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    .line 82
    invoke-static {p2}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 80
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f0900b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/unknownphone/callblocker/i/a$b$1;

    invoke-direct {v0, p0, p4}, Lcom/unknownphone/callblocker/i/a$b$1;-><init>(Lcom/unknownphone/callblocker/i/a$b;Lcom/unknownphone/callblocker/custom/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.class public final Lcom/explorestack/iab/utils/e;
.super Lcom/explorestack/iab/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/i<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/i;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 0

    if-eqz p2, :cond_0

    .line 1153
    iget-object p1, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string p2, "text"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defTextCountDownStyle:Lcom/explorestack/iab/utils/h;

    return-object p1

    .line 25
    :cond_0
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defCountDownStyle:Lcom/explorestack/iab/utils/h;

    return-object p1
.end method

.method public final a(II)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/explorestack/iab/utils/e;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/explorestack/iab/vast/view/TextCountdownView;

    if-eqz v0, :cond_1

    .line 39
    iget-object p1, p0, Lcom/explorestack/iab/utils/e;->a:Landroid/view/View;

    check-cast p1, Lcom/explorestack/iab/vast/view/TextCountdownView;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 41
    invoke-virtual {p1, p2}, Lcom/explorestack/iab/vast/view/TextCountdownView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1, p2}, Lcom/explorestack/iab/vast/view/TextCountdownView;->setRemaining(I)V

    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/utils/e;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/explorestack/iab/utils/e;->a:Landroid/view/View;

    check-cast v0, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    int-to-float p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(FI)V

    :cond_2
    return-void
.end method

.method final b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;
    .locals 1

    .line 2153
    iget-object p2, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v0, "text"

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    new-instance p2, Lcom/explorestack/iab/vast/view/TextCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/TextCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 34
    :cond_0
    new-instance p2, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

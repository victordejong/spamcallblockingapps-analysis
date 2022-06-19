.class public final Lcom/explorestack/iab/utils/l;
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

    .line 23
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/i;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 1

    if-eqz p2, :cond_3

    .line 5153
    iget-object p1, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v0, "text"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6153
    iget-object p1, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v0, "text-reverse"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7153
    :cond_0
    iget-object p1, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v0, "circular"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8153
    iget-object p1, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string p2, "circular-reverse"

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    :cond_1
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defCountDownProgressStyle:Lcom/explorestack/iab/utils/h;

    return-object p1

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defTextProgressStyle:Lcom/explorestack/iab/utils/h;

    return-object p1

    .line 52
    :cond_3
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defLinearProgressStyle:Lcom/explorestack/iab/utils/h;

    return-object p1
.end method

.method public final a(FII)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->b:Lcom/explorestack/iab/utils/h;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->b:Lcom/explorestack/iab/utils/h;

    .line 9153
    iget-object v0, v0, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/explorestack/iab/utils/l;->b:Lcom/explorestack/iab/utils/h;

    .line 10153
    iget-object v0, v0, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v3, "reverse"

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    instance-of v3, v3, Lcom/explorestack/iab/vast/view/TextCountdownView;

    if-eqz v3, :cond_4

    .line 63
    iget-object p1, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    check-cast p1, Lcom/explorestack/iab/vast/view/TextCountdownView;

    if-nez p3, :cond_2

    const-string p2, ""

    .line 65
    invoke-virtual {p1, p2}, Lcom/explorestack/iab/vast/view/TextCountdownView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    sub-int p2, p3, p2

    .line 67
    :cond_3
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/explorestack/iab/vast/view/TextCountdownView;->setRemaining(I)V

    return-void

    .line 69
    :cond_4
    iget-object v3, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    instance-of v3, v3, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_7

    .line 70
    iget-object v3, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    check-cast v3, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    sub-int/2addr p3, p2

    .line 73
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 72
    :cond_5
    invoke-virtual {v3, p1, v1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(FI)V

    return-void

    :cond_6
    sub-float/2addr v4, p1

    .line 75
    invoke-virtual {v3, v4, p2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->a(FI)V

    return-void

    .line 77
    :cond_7
    iget-object p2, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    instance-of p2, p2, Lcom/explorestack/iab/vast/view/LinearCountdownView;

    if-eqz p2, :cond_9

    .line 78
    iget-object p2, p0, Lcom/explorestack/iab/utils/l;->a:Landroid/view/View;

    check-cast p2, Lcom/explorestack/iab/vast/view/LinearCountdownView;

    if-eqz v0, :cond_8

    sub-float p1, v4, p1

    .line 11065
    :cond_8
    iput p1, p2, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:F

    .line 11066
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->postInvalidate()V

    :cond_9
    return-void
.end method

.method final b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;
    .locals 2

    .line 1153
    iget-object v0, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v1, "text"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2153
    iget-object v0, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v1, "text-reverse"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3153
    :cond_0
    iget-object v0, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v1, "circular"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4153
    iget-object p2, p2, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v0, "circular-reverse"

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Lcom/explorestack/iab/vast/view/LinearCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/LinearCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 34
    :cond_2
    :goto_0
    new-instance p2, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 31
    :cond_3
    :goto_1
    new-instance p2, Lcom/explorestack/iab/vast/view/TextCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/TextCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

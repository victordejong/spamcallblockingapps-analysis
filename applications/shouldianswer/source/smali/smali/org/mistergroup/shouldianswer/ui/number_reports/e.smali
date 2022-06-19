.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/e;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ItemReviewHolder.kt"


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/a/bg;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/bg;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/bg;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a:Lorg/mistergroup/shouldianswer/a/bg;

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/ui/number_reports/a;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a:Lorg/mistergroup/shouldianswer/a/bg;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/a/bg;->d()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.root.context"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a:Lorg/mistergroup/shouldianswer/a/bg;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/bg;->c:Landroid/widget/ImageView;

    const-string v3, "binding.imgRating"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 18
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 19
    sget-object v1, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->b()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->e()Ljava/lang/String;

    move-result-object v2

    .line 21
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    if-nez v3, :cond_7

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    if-eqz v3, :cond_7

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v5

    :goto_2
    if-nez v3, :cond_7

    const-string v2, ""

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    .line 26
    :cond_7
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    goto :goto_3

    :cond_8
    move v3, v5

    :goto_3
    if-nez v3, :cond_b

    .line 27
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v0, v1

    .line 28
    :cond_b
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a:Lorg/mistergroup/shouldianswer/a/bg;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/bg;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvTitle"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a:Lorg/mistergroup/shouldianswer/a/bg;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bg;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvComment"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/e;->a:Lorg/mistergroup/shouldianswer/a/bg;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bg;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvNick"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_c
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

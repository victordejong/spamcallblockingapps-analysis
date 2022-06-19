.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;
.super Lkotlin/c/b/a/k;
.source "InCallActivity.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/e/b/m$c;

.field final synthetic d:Lorg/mistergroup/shouldianswer/utils/t;

.field final synthetic e:Z

.field final synthetic f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/e/b/m$c;Lorg/mistergroup/shouldianswer/utils/t;ZLkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->c:Lkotlin/e/b/m$c;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iput-boolean p4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->e:Z

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->c:Lkotlin/e/b/m$c;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iget-boolean v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->e:Z

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;-><init>(Ljava/lang/String;Lkotlin/e/b/m$c;Lorg/mistergroup/shouldianswer/utils/t;ZLkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 328
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->a:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->g:Lkotlinx/coroutines/ad;

    .line 329
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->U:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvTitle"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->b:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->R:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvSubtitle"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->c:Lkotlin/e/b/m$c;

    iget-object v0, v0, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->P:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvRating1"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->e()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvRating2"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->O:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvFeaturedInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/t;->d()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->O:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->d()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->z:Landroid/widget/LinearLayout;

    const-string v0, "binding.llLocalReviews"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->v:Landroid/widget/LinearLayout;

    const-string v0, "binding.llCommunityReviews"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->F:Landroid/widget/LinearLayout;

    const-string v0, "binding.llUnknownNumberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->x:Landroid/widget/LinearLayout;

    const-string v0, "binding.llExpandPanel"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->e:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->h:Landroid/widget/Button;

    const-string v0, "binding.butMoreInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->f:Landroid/widget/Button;

    const-string v0, "binding.butLoadReviews"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->G:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.loadReviewsError"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->H:Landroid/widget/ProgressBar;

    const-string v0, "binding.progressBar1"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 343
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->M:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvDbSensitivityInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 344
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->s:Landroid/widget/ImageView;

    const-string v2, "binding.imgMainRatingInTitle"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/t;->i()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 345
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->f:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->r:Landroid/widget/ImageView;

    const-string v2, "binding.imgMainRatingInSubtitle"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/t;->i()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 346
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

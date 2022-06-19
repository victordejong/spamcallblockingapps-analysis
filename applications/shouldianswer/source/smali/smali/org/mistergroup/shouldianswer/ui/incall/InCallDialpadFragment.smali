.class public final Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;
.super Landroidx/fragment/app/Fragment;
.source "InCallDialpadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;

.field private b:Ljava/lang/String;

.field private c:Lorg/mistergroup/shouldianswer/a/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)Lorg/mistergroup/shouldianswer/a/ak;
    .locals 1

    .line 24
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(C)V
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->b:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ak;->r:Landroid/widget/TextView;

    const-string v1, "binding.tvDialpadNumber"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->b:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-interface {v0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;->a(C)V

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;C)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a(C)V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 47
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    const-string v2, "binding.llDialer"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    const-wide/16 v3, 0x12c

    if-nez p1, :cond_4

    .line 49
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez v5, :cond_1

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    invoke-static {v5, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 50
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 53
    :cond_4
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 56
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$d;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;)V
    .locals 1

    const-string v0, "inCallDialpadFragmentCallback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 127
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "InCallDialpadFragment.onCreate"

    invoke-static {v1, v2, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 129
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, v1, v0, p1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "binding"

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1100e6

    goto :goto_0

    :cond_0
    const v0, 0x7f1100e5

    .line 69
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 70
    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d003d

    const/4 v1, 0x0

    .line 71
    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ak;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    .line 73
    :try_start_0
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c;

    invoke-direct {p1, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)V

    .line 90
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_1

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->c:Landroid/widget/ImageButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$b;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_2

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->g:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_3

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->g:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial1"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_4

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->h:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_5

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->h:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial2"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_6

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->i:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_7

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->i:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial3"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "3"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_8

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->j:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_9

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->j:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial4"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "4"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_a

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->k:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_b

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->k:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial5"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "5"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_c

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->l:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_d

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->l:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial6"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "6"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_e

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->m:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_f

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->m:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial7"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "7"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_10

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->n:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_11

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->n:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial8"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "8"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_12

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->o:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_13

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->o:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial9"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "9"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_14

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->f:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_15

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->f:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDial0"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_16

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->q:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_17

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_17
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->q:Landroid/widget/LinearLayout;

    const-string v0, "binding.tvDialStar"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p2, :cond_18

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ak;->p:Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p1, :cond_19

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_19
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ak;->p:Landroid/widget/LinearLayout;

    const-string p2, "binding.tvDialHash"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "#"

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p1, :cond_1a

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ak;->r:Landroid/widget/TextView;

    const-string p2, "binding.tvDialpadNumber"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 117
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 120
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p1, :cond_1b

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1b
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    const-string p2, "binding.llDialer"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->c:Lorg/mistergroup/shouldianswer/a/ak;

    if-nez p1, :cond_1c

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ak;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 135
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

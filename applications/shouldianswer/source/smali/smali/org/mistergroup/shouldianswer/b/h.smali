.class public final Lorg/mistergroup/shouldianswer/b/h;
.super Ljava/lang/Object;
.source "RingingAlertPopup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/b/h$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/b/h$a;

.field private static k:Lorg/mistergroup/shouldianswer/b/h;

.field private static l:Z


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/utils/t;

.field private c:Landroid/view/View;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Lorg/mistergroup/shouldianswer/a/e;

.field private f:Ljava/util/Timer;

.field private g:Landroid/view/WindowManager;

.field private h:Z

.field private final i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/b/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/b/h$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    return-void
.end method

.method public constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;)V
    .locals 1

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/h;->j:Landroid/content/Context;

    .line 48
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h;->j:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h;->g:Landroid/view/WindowManager;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/b/h;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/b/h;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/b/h;->h:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/b/h;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/b/h;->h:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->d()V

    return-void
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 37
    sget-boolean v0, Lorg/mistergroup/shouldianswer/b/h;->l:Z

    return v0
.end method

.method public static final synthetic c()Lorg/mistergroup/shouldianswer/b/h;
    .locals 1

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/b/h;->k:Lorg/mistergroup/shouldianswer/b/h;

    return-object v0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->e()V

    return-void
.end method

.method private final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 95
    :try_start_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->f:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 96
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "RingingAlertPopup.close cancel timer"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->f:Ljava/util/Timer;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 98
    move-object v2, v1

    check-cast v2, Ljava/util/Timer;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->f:Ljava/util/Timer;

    .line 100
    :cond_1
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 101
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "RingingAlertPopup.close remove view"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/y;->g()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 103
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    .line 105
    :cond_2
    sget-object v2, Lorg/mistergroup/shouldianswer/b/h;->k:Lorg/mistergroup/shouldianswer/b/h;

    move-object v3, p0

    check-cast v3, Lorg/mistergroup/shouldianswer/b/h;

    if-ne v2, v3, :cond_3

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/b/h;

    sput-object v2, Lorg/mistergroup/shouldianswer/b/h;->k:Lorg/mistergroup/shouldianswer/b/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 107
    :try_start_1
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->g()V

    return-void
.end method

.method private final e()V
    .locals 5

    .line 115
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "Alert.moreReviews"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->d()V

    .line 121
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/search?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&src=sian&countryOperator="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->h()V

    return-void
.end method

.method private final f()V
    .locals 2

    .line 135
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "Alert.close"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->d()V

    return-void
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->f()V

    return-void
.end method

.method private final g()V
    .locals 8

    .line 140
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->b:Lorg/mistergroup/shouldianswer/utils/t;

    if-eqz v0, :cond_e

    .line 141
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    const-string v2, "binding"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->d:Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "binding.butLoadReviews"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->l:Landroid/widget/LinearLayout;

    const-string v4, "binding.llLocalReviews"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->j()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->j:Landroid/widget/LinearLayout;

    const-string v4, "binding.llCommunityReviews"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->k()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_5

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    const-string v6, "binding.butLoadReviewsUp"

    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->n:Landroid/widget/LinearLayout;

    const-string v6, "binding.llPositiveNegativeCounts"

    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_7

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->f:Landroid/widget/Button;

    const-string v6, "binding.butMoreInfo"

    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->m()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v5

    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->r:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    invoke-virtual {v1, v5}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setScrollDisabled(Z)V

    .line 148
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->k()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->l()Z

    move-result v1

    if-nez v1, :cond_e

    .line 149
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v1, :cond_a

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/e;->j:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v3, :cond_b

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/e;->f:Landroid/widget/Button;

    invoke-static {v3, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v4, :cond_c

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/e;->q:Landroid/widget/ProgressBar;

    const-string v5, "binding.progressBar1"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v5, :cond_d

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v2, v5, Lorg/mistergroup/shouldianswer/a/e;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.loadReviewsError"

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;)V

    :cond_e
    return-void
.end method

.method public static final synthetic g(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->i()V

    return-void
.end method

.method public static final synthetic h(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 37
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/b/h;->d:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_0

    const-string v0, "layoutParams"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final h()V
    .locals 5

    .line 155
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    const-string v1, "binding"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->d:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "binding.butLoadReviews"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->l:Landroid/widget/LinearLayout;

    const-string v3, "binding.llLocalReviews"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->j:Landroid/widget/LinearLayout;

    const-string v4, "binding.llCommunityReviews"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    const-string v4, "binding.butLoadReviewsUp"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.loadReviewsError"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->f:Landroid/widget/Button;

    const-string v4, "binding.butMoreInfo"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->n:Landroid/widget/LinearLayout;

    const-string v3, "binding.llPositiveNegativeCounts"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->r:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setScrollDisabled(Z)V

    return-void
.end method

.method public static final synthetic i(Lorg/mistergroup/shouldianswer/b/h;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    return-object p0
.end method

.method private final i()V
    .locals 4

    .line 206
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/e;->m:Landroid/widget/LinearLayout;

    const-string v1, "binding.llMovable"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/x;->a()F

    move-result v1

    .line 208
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    if-eqz v2, :cond_1

    new-instance v3, Lorg/mistergroup/shouldianswer/b/h$g;

    invoke-direct {v3, p0, v1, v0}, Lorg/mistergroup/shouldianswer/b/h$g;-><init>(Lorg/mistergroup/shouldianswer/b/h;FLandroid/widget/LinearLayout;)V

    check-cast v3, Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public static final synthetic j(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/utils/t;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/b/h;->b:Lorg/mistergroup/shouldianswer/utils/t;

    return-object p0
.end method

.method private final j()V
    .locals 8

    const/4 v0, 0x0

    .line 269
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/b/h$i;

    invoke-direct {v1, p0, v0}, Lorg/mistergroup/shouldianswer/b/h$i;-><init>(Lorg/mistergroup/shouldianswer/b/h;Lkotlin/c/c;)V

    move-object v5, v1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 335
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    invoke-static {v2, v1, v0, v3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic k(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/a/e;
    .locals 1

    .line 37
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic l(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    sput-object p0, Lorg/mistergroup/shouldianswer/b/h;->k:Lorg/mistergroup/shouldianswer/b/h;

    return-void
.end method

.method public static final synthetic m(Lorg/mistergroup/shouldianswer/b/h;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/h;->j()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/WindowManager;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->g:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h;->j:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/mistergroup/shouldianswer/utils/t;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V

    .line 54
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->b:Lorg/mistergroup/shouldianswer/utils/t;

    .line 55
    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/a/e;)V
    .locals 8

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h;->b:Lorg/mistergroup/shouldianswer/utils/t;

    if-eqz v0, :cond_6

    .line 167
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h;->e:Lorg/mistergroup/shouldianswer/a/e;

    .line 168
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/e;->d()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->c:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->f:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/b/h$b;

    invoke-direct {v3, p0, p1}, Lorg/mistergroup/shouldianswer/b/h$b;-><init>(Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->d:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v3, Lorg/mistergroup/shouldianswer/b/h$c;

    invoke-direct {v3, p0, p1}, Lorg/mistergroup/shouldianswer/b/h$c;-><init>(Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v3, Lorg/mistergroup/shouldianswer/b/h$d;

    invoke-direct {v3, p0, p1}, Lorg/mistergroup/shouldianswer/b/h$d;-><init>(Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v3, Lorg/mistergroup/shouldianswer/b/h$e;

    invoke-direct {v3, p0, p1}, Lorg/mistergroup/shouldianswer/b/h$e;-><init>(Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvTitle"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->b()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvSubtitle"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->c()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lorg/mistergroup/shouldianswer/a/e;->g:Landroid/widget/ImageView;

    const-string v4, "binding.imgRating"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->i()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 178
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v3, p1, Lorg/mistergroup/shouldianswer/a/e;->h:Landroid/widget/ImageView;

    const-string v4, "binding.imgRating1"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v2, v1, v3, v4}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 179
    iget-object v2, p1, Lorg/mistergroup/shouldianswer/a/e;->u:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvRating1"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->e()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v3, p1, Lorg/mistergroup/shouldianswer/a/e;->i:Landroid/widget/ImageView;

    const-string v4, "binding.imgRating2"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v2, v1, v3, v4}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 181
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvRating2"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->f()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->t:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvFeaturedInfo"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/16 v5, 0x8

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 184
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->t:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->d()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->l:Landroid/widget/LinearLayout;

    const-string v2, "binding.llLocalReviews"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->j:Landroid/widget/LinearLayout;

    const-string v2, "binding.llCommunityReviews"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->f:Landroid/widget/Button;

    const-string v2, "binding.butMoreInfo"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.loadReviewsError"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 189
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->q:Landroid/widget/ProgressBar;

    const-string v2, "binding.progressBar1"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->s:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvDbSensitivityInfo"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 191
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->o:Landroid/widget/LinearLayout;

    const-string v2, "binding.llUnknownNumberInfo"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->k:Landroid/widget/LinearLayout;

    const-string v2, "binding.llExpandPanel"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->d:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "binding.butLoadReviews"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 194
    iget-object v1, p1, Lorg/mistergroup/shouldianswer/a/e;->e:Landroidx/appcompat/widget/AppCompatButton;

    const-string v2, "binding.butLoadReviewsUp"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 195
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/b/h$f;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, p0, p1}, Lorg/mistergroup/shouldianswer/b/h$f;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    move-object v5, v1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    :cond_6
    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 9

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->d()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/Timer;

    const-string v2, "mtzAlertTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/h;->f:Ljava/util/Timer;

    .line 61
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 62
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RingingAlertPopup.show Timer - initial callState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/b/h;->h:Z

    .line 64
    new-instance v1, Lkotlin/e/b/m$b;

    invoke-direct {v1}, Lkotlin/e/b/m$b;-><init>()V

    const/16 v2, 0x1f4

    iput v2, v1, Lkotlin/e/b/m$b;->a:I

    .line 65
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h;->f:Ljava/util/Timer;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    new-instance v2, Lorg/mistergroup/shouldianswer/b/h$h;

    invoke-direct {v2, p0, v0, p1, v1}, Lorg/mistergroup/shouldianswer/b/h$h;-><init>(Lorg/mistergroup/shouldianswer/b/h;Landroid/telephony/TelephonyManager;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/e/b/m$b;)V

    move-object v4, v2

    check-cast v4, Ljava/util/TimerTask;

    const-wide/16 v5, 0x1f4

    const-wide/16 v7, 0xc8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

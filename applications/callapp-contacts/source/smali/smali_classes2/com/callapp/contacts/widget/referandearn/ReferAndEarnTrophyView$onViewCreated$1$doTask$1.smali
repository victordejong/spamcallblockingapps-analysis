.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "binding.trophyViewProgress"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 86
    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v4, v4, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->g:Landroid/widget/ProgressBar;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v4, v4, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->e:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const-string v5, "binding.referAndEarnProgress"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setVisibility(I)V

    .line 88
    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v4, v4, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    const-string v5, "binding.referAndEarnProgressLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v4, v4, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    const-string v5, "binding.referAndEarnProg\u2026ssLayout.viewTreeObserver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;

    invoke-direct {v5, v0, p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;-><init>(Ljava/util/List;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;)V

    check-cast v5, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 116
    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v4, v4, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->e:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 117
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v6

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v7

    goto :goto_0

    :cond_1
    int-to-float v5, v6

    invoke-virtual {v4, v5}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    const v5, 0x7f060111

    .line 118
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    .line 119
    new-instance v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;

    invoke-direct {v5, v4, v0, p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;-><init>(Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Ljava/util/List;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;)V

    check-cast v5, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;

    invoke-virtual {v4, v5}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setOnProgressChangedListener(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;)V

    if-nez v4, :cond_4

    goto :goto_1

    .line 117
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 148
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->g:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->c:Landroid/widget/LinearLayout;

    const-string v1, "binding.pointsTextContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->b:Landroid/widget/TextView;

    const v1, 0x7f1205ad

    .line 152
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 153
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->a:Landroid/widget/TextView;

    const v1, 0x7f060051

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    new-instance v1, Landroidx/lifecycle/ab;

    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v2, v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    check-cast v2, Landroidx/lifecycle/ad;

    invoke-direct {v1, v2}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object v1

    const-string v2, "ViewModelProvider(this@R\u2026arnViewModel::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;)V

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->c(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getReferAndEarnBox()Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;->a(Lio/objectbox/a;)Lio/objectbox/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v1, v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getViewLifecycleOwner()Landroidx/lifecycle/p;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v2, v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    check-cast v2, Landroidx/lifecycle/u;

    invoke-virtual {v0, v1, v2}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    return-void
.end method

.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->run()V
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
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "progress",
        "",
        "<anonymous parameter 2>",
        "",
        "<anonymous parameter 3>",
        "onProgressChanged",
        "com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$1$2$2",
        "com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;


# direct methods
.method constructor <init>(Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Ljava/util/List;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->a:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->isDetached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v5

    .line 2132
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 121
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    .line 2132
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    move-object v1, v2

    .line 121
    :goto_1
    check-cast v1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    if-eqz v1, :cond_7

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    const v0, 0x7f0a0700

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    const v0, 0x7f0a06fb

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5
    const v0, 0x7f0a06fd

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 129
    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->setChecked(Z)V

    .line 131
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0804ce

    goto :goto_2

    :cond_6
    const v0, 0x7f080367

    .line 137
    :goto_2
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getImage()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$2;->a:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    invoke-virtual {v4}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p1, v1, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 2485
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    .line 3376
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 137
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_7
    return-void
.end method

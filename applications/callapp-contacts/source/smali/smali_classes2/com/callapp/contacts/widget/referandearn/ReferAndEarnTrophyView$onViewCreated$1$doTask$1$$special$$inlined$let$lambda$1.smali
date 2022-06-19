.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$1$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 12

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    const-string v1, "binding.referAndEarnProgressLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    .line 94
    new-instance v11, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;

    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-virtual {v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v5, "requireContext()"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-virtual {v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getTrophyViewType()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->setData(Lcom/callapp/common/model/json/JSONReferAndEarnRewards;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)V

    .line 96
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const-string v7, "CallAppApplication.get()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07035f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v7

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v8}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v8

    if-ge v7, v8, :cond_0

    move v7, v8

    goto :goto_1

    :cond_1
    int-to-float v6, v7

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    div-float/2addr v5, v6

    .line 98
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    iget-object v6, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->a:Ljava/util/List;

    invoke-static {v6}, Lkotlin/a/n;->a(Ljava/util/List;)I

    move-result v6

    if-ne v3, v6, :cond_2

    const/16 v5, 0x15

    .line 103
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    const/16 v5, 0x14

    .line 106
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_3
    float-to-int v5, v5

    .line 108
    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    :goto_2
    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1$$special$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    iget-object v5, v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-static {v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    check-cast v11, Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 97
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_5
    return-void
.end method

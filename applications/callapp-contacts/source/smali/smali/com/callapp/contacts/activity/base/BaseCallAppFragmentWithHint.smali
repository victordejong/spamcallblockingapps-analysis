.class public abstract Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected final c()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public filterReq(Ljava/lang/CharSequence;Z)V
    .locals 0

    return-void
.end method

.method protected abstract getHintBuilder()Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;
.end method

.method protected abstract getHintType()Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
.end method

.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d01b6

    return v0
.end method

.method protected final n_()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->getHintBuilder()Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->getHintType()Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    move-result-object v0

    const v1, 0x7f0a0497

    .line 1037
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1038
    sget-object v2, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->CALLAPP_PLUS:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    new-instance p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusTopHint;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->b:Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    goto :goto_0

    .line 1042
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->b:Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    .line 1044
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->b:Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController;->getRootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->a:Landroid/view/View;

    .line 1045
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->hideLoadingProgress()V

    return-void
.end method

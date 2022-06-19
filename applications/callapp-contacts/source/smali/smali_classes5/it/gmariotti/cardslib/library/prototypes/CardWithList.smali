.class public abstract Lit/gmariotti/cardslib/library/prototypes/CardWithList;
.super Lit/gmariotti/cardslib/library/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;,
        Lit/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject;,
        Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener;,
        Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;,
        Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;
    }
.end annotation


# instance fields
.field private couldUseNativeInnerLayout:Z

.field protected emptyViewId:I

.field protected emptyViewViewStubLayoutId:I

.field protected listViewId:I

.field protected mCardHeader:Lit/gmariotti/cardslib/library/a/i;

.field protected mChildLayoutId:I

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mEmptyView:Landroid/view/View;

.field protected mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

.field private mListShown:Z

.field protected mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

.field private mProgressView:Landroid/view/View;

.field private observerRegistered:Z

.field protected progressBarId:I

.field protected progressBarViewStubLayoutId:I

.field protected useEmptyView:Z

.field protected useProgressBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 150
    sget v0, Lit/gmariotti/cardslib/library/a$e;->inner_base_main_cardwithlist:I

    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 160
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/b;-><init>(Landroid/content/Context;I)V

    .line 80
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_inner_base_empty_cardwithlist:I

    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->emptyViewId:I

    .line 85
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_withlist_empty:I

    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->emptyViewViewStubLayoutId:I

    .line 90
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_inner_base_progressbar_cardwithlist:I

    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->progressBarId:I

    .line 96
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_withlist_progress:I

    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->progressBarViewStubLayoutId:I

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useProgressBar:Z

    .line 116
    sget v1, Lit/gmariotti/cardslib/library/a$c;->card_inner_base_main_cardwithlist:I

    iput v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->listViewId:I

    .line 121
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->observerRegistered:Z

    .line 123
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->couldUseNativeInnerLayout:Z

    .line 126
    new-instance v0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$1;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$1;-><init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mDataObserver:Landroid/database/DataSetObserver;

    .line 162
    sget v0, Lit/gmariotti/cardslib/library/a$e;->inner_base_main_cardwithlist:I

    if-ne p2, v0, :cond_0

    .line 163
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->couldUseNativeInnerLayout:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->internalSetupChildren()V

    return-void
.end method

.method static synthetic access$100(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->observerRegistered:Z

    return p0
.end method

.method static synthetic access$102(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->observerRegistered:Z

    return p1
.end method

.method private internalSetupChildren()V
    .locals 2

    .line 324
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->removeAllViews()V

    .line 328
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->updateEmptyStatus(Z)V

    .line 330
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    if-nez v0, :cond_2

    return-void

    .line 333
    :cond_2
    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {v1, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setAdapter(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;)V

    :cond_3
    return-void
.end method

.method private internalSetupEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 345
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getEmptyViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 348
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_0

    .line 349
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getEmptyViewViewStubLayoutId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 350
    :cond_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->setEmptyView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private internalSetupProgressBar(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 363
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useProgressBar:Z

    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getProgressBarId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    const/4 p2, 0x1

    .line 365
    iput-boolean p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListShown:Z

    if-eqz p1, :cond_1

    .line 367
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_0

    .line 368
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getProgressBarViewStubLayoutId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 369
    :cond_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->setProgressView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private isUseEmptyView()Z
    .locals 1

    .line 949
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 950
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUseProgressBar()Z
    .locals 1

    .line 964
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 965
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useProgressBar:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateEmptyStatus(Z)V
    .locals 2

    .line 652
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->isUseEmptyView()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 654
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setVisibility(I)V

    return-void

    .line 660
    :cond_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {p1, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setVisibility(I)V

    return-void

    .line 663
    :cond_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 664
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    invoke-virtual {p1, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract getChildLayoutId()I
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 642
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyViewId()I
    .locals 1

    .line 915
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->emptyViewId:I

    return v0
.end method

.method public getEmptyViewViewStubLayoutId()I
    .locals 1

    .line 995
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->emptyViewViewStubLayoutId:I

    return v0
.end method

.method public getLinearListAdapter()Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;
    .locals 1

    .line 897
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    return-object v0
.end method

.method protected getListViewId()I
    .locals 1

    .line 286
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->listViewId:I

    return v0
.end method

.method public getOnSwipeListener()Lit/gmariotti/cardslib/library/a/b$g;
    .locals 1

    .line 503
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mOnSwipeListener:Lit/gmariotti/cardslib/library/a/b$g;

    return-object v0
.end method

.method public getProgressBarId()I
    .locals 1

    .line 932
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->progressBarId:I

    return v0
.end method

.method public getProgressBarViewStubLayoutId()I
    .locals 1

    .line 1014
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->progressBarViewStubLayoutId:I

    return v0
.end method

.method public getProgressView()Landroid/view/View;
    .locals 1

    .line 683
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->initCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mCardHeader:Lit/gmariotti/cardslib/library/a/i;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->addCardHeader(Lit/gmariotti/cardslib/library/a/i;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->initCard()V

    .line 185
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->initChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_1
    new-instance v1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    invoke-super {p0}, Lit/gmariotti/cardslib/library/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;-><init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    .line 191
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getChildLayoutId()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mChildLayoutId:I

    return-void
.end method

.method protected abstract initCard()V
.end method

.method protected abstract initCardHeader()Lit/gmariotti/cardslib/library/a/i;
.end method

.method protected abstract initChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;",
            ">;"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 625
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 627
    :goto_0
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    .line 629
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getLinearListAdapter()Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 630
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 631
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->updateEmptyStatus(Z)V

    return-void
.end method

.method public setEmptyViewId(I)V
    .locals 0

    .line 924
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->emptyViewId:I

    return-void
.end method

.method public setEmptyViewViewStubLayoutId(I)V
    .locals 0

    .line 1004
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->emptyViewViewStubLayoutId:I

    return-void
.end method

.method public setLinearListAdapter(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    return-void
.end method

.method public setListViewId(I)V
    .locals 0

    .line 985
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->listViewId:I

    return-void
.end method

.method public setOnSwipeListener(Lit/gmariotti/cardslib/library/a/b$g;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mIsSwipeable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mIsSwipeable:Z

    .line 517
    :goto_0
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mOnSwipeListener:Lit/gmariotti/cardslib/library/a/b$g;

    return-void
.end method

.method public setProgressBarId(I)V
    .locals 0

    .line 940
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->progressBarId:I

    return-void
.end method

.method public setProgressBarViewStubLayoutId(I)V
    .locals 0

    .line 1023
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->progressBarViewStubLayoutId:I

    return-void
.end method

.method public setProgressView(Landroid/view/View;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 691
    :goto_0
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useProgressBar:Z

    return-void
.end method

.method public setUseEmptyView(Z)V
    .locals 0

    .line 960
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    return-void
.end method

.method public setUseProgressBar(Z)V
    .locals 0

    .line 975
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useProgressBar:Z

    return-void
.end method

.method public abstract setupChildView(ILit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setupInnerLayout()V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->couldUseNativeInnerLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    sget v0, Lit/gmariotti/cardslib/library/a$e;->native_inner_base_main_cardwithlist:I

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mInnerLayout:I

    :cond_0
    return-void
.end method

.method public setupInnerViewElements(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 305
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getListViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    iput-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->internalSetupProgressBar(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->internalSetupChildren()V

    .line 312
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    :cond_0
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->internalSetupEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public unregisterDataSetObserver()V
    .locals 2

    .line 378
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mLinearListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public updateProgressBar(ZZ)V
    .locals 3

    .line 701
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->isUseProgressBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 702
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 705
    :cond_0
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListShown:Z

    const/4 v0, 0x0

    const v1, 0x10a0001

    const/high16 v2, 0x10a0000

    if-eqz p1, :cond_4

    if-eqz p2, :cond_1

    .line 709
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    .line 710
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 709
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 711
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    .line 712
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 711
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 713
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 714
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 718
    :cond_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 720
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getLinearListAdapter()Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 722
    :cond_3
    invoke-direct {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->updateEmptyStatus(Z)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 727
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    .line 728
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 727
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 729
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    .line 730
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 729
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 731
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 733
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 732
    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 736
    :cond_5
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mProgressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setVisibility(I)V

    .line 738
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->useEmptyView:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 739
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

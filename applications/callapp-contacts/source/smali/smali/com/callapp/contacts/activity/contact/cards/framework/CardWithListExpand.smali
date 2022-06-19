.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;
.super Lit/gmariotti/cardslib/library/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewHolder:",
        "Ljava/lang/Object;",
        "FooterViewHolder:",
        "Ljava/lang/Object;",
        "T::",
        "Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;",
        ">",
        "Lit/gmariotti/cardslib/library/a/e;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand<",
            "TViewHolder;TFooterViewHolder;TT;>.",
            "ListExpandViewHolder;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand<",
            "TViewHolder;TFooterViewHolder;TT;>.My",
            "LinearListAdapter;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d015e

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/e;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a:Z

    const p2, 0x7f0a01e7

    .line 47
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->f:I

    const p2, 0x7f0d0067

    .line 52
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->g:I

    const p2, 0x7f0a01e9

    .line 57
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->h:I

    const p2, 0x7f0d0068

    .line 63
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->i:I

    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->j:Z

    .line 73
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->k:Z

    .line 83
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->m:Z

    .line 85
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->n:Z

    .line 90
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->p:Landroid/database/DataSetObserver;

    const/4 p1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    return-object p0
.end method

.method private a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand<",
            "TViewHolder;TFooterViewHolder;TT;>.",
            "ListExpandViewHolder;",
            ")V"
        }
    .end annotation

    .line 228
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;Z)V

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    if-nez v0, :cond_2

    return-void

    .line 236
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->o:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setDividerColor(I)V

    .line 237
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setAdapter(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;Z)V
    .locals 2

    .line 465
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->isUseEmptyView()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 467
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->d:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 468
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setVisibility(I)V

    return-void

    .line 473
    :cond_0
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setVisibility(I)V

    return-void

    .line 476
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->d:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 477
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :cond_2
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->o:I

    return p0
.end method

.method private getEmptyViewId()I
    .locals 1

    .line 564
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->f:I

    return v0
.end method

.method private getEmptyViewViewStubLayoutId()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->g:I

    return v0
.end method

.method private getListView()Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;
    .locals 1

    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    if-eqz v0, :cond_0

    .line 693
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 695
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getProgressBarId()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->h:I

    return v0
.end method

.method private getProgressBarViewStubLayoutId()I
    .locals 1

    .line 665
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->i:I

    return v0
.end method

.method private isUseEmptyView()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 599
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->j:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 438
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->d:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 440
    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->j:Z

    .line 442
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getLinearListAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 443
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 444
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getListView()Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;Z)V

    return-void
.end method

.method private setProgressView(Landroid/view/View;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 504
    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->k:Z

    return-void
.end method

.method private setViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand<",
            "TViewHolder;TFooterViewHolder;TT;>.",
            "ListExpandViewHolder;",
            ")V"
        }
    .end annotation

    .line 700
    monitor-enter p0

    .line 701
    :try_start_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    .line 702
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TFooterViewHolder;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    .line 190
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 191
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a:Z

    .line 1172
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a()Ljava/util/List;

    move-result-object v0

    .line 1176
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    invoke-super {p0}, Lit/gmariotti/cardslib/library/a/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    .line 1182
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getChildLayoutId()I

    .line 195
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;Landroid/view/View;)V

    .line 198
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    :cond_1
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->setViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V

    .line 203
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1287
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->k:Z

    if-eqz p2, :cond_3

    .line 1288
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getProgressBarId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->e:Landroid/view/View;

    .line 1289
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->l:Z

    if-eqz p2, :cond_3

    .line 1291
    instance-of v2, p2, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 1292
    check-cast p2, Landroid/view/ViewStub;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getProgressBarViewStubLayoutId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1293
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->e:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->setProgressView(Landroid/view/View;)V

    .line 207
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    if-eqz p2, :cond_4

    .line 208
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)V

    .line 209
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->p:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 213
    :cond_4
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->b(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;->c(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder;)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_9

    .line 2243
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 2245
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->getCount()I

    const/4 v2, 0x0

    .line 2249
    invoke-static {p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 2250
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 2254
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    invoke-static {v3, v2, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->a(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 2258
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    if-eqz v0, :cond_9

    .line 2262
    iget p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->o:I

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2263
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    const/16 p2, 0x8

    .line 2267
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2275
    :cond_9
    :goto_1
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->j:Z

    if-eqz p2, :cond_b

    .line 2276
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getEmptyViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->d:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 2278
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_a

    .line 2279
    check-cast p1, Landroid/view/ViewStub;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getEmptyViewViewStubLayoutId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 2280
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->d:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->setEmptyView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFooterViewHolder;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewHolder;TT;)V"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TViewHolder;"
        }
    .end annotation
.end method

.method public abstract getChildLayoutId()I
.end method

.method public abstract getFooterLayoutId()I
.end method

.method public getLinearListAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand<",
            "TViewHolder;TFooterViewHolder;TT;>.My",
            "LinearListAdapter;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->c:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    return-object v0
.end method

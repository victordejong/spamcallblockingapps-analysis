.class public abstract Lcom/callapp/contacts/activity/base/BaseListFragment;
.super Landroidx/fragment/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/x;",
        "Lcom/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final i:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/base/BaseContactListDataProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/callapp/contacts/activity/base/ScrollStateTracker;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View;

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/x;-><init>()V

    .line 36
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->j:Lcom/callapp/contacts/activity/base/ScrollStateTracker;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->l:Z

    .line 41
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->o:Z

    .line 43
    iput v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->q:I

    .line 62
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->r:Z

    .line 52
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a()Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->i:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    if-eqz v0, :cond_0

    .line 1027
    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, v0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Ljava/util/List;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1029
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 308
    iput p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->q:I

    .line 309
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseListFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/base/BaseListFragment$5;-><init>(Lcom/callapp/contacts/activity/base/BaseListFragment;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/TextView;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 286
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0601ec

    .line 287
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 288
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 290
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 291
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseListFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/base/BaseListFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->q:I

    return p0
.end method


# virtual methods
.method protected abstract a()Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/base/BaseContactListDataProvider<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getListAdapter()Lcom/callapp/contacts/activity/base/BaseArrayAdapter;

    move-result-object v1

    if-nez p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->l:Z

    if-eqz p2, :cond_2

    .line 211
    new-instance p2, Lcom/callapp/contacts/activity/base/BaseListFragment$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/base/BaseListFragment$4;-><init>(Lcom/callapp/contacts/activity/base/BaseListFragment;)V

    invoke-virtual {v0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 201
    :cond_1
    :goto_0
    new-instance p2, Lcom/callapp/contacts/activity/base/BaseListFragment$3;

    invoke-direct {p2, p0, v0, p1}, Lcom/callapp/contacts/activity/base/BaseListFragment$3;-><init>(Lcom/callapp/contacts/activity/base/BaseListFragment;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    const/4 p2, 0x0

    .line 223
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->l:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(I)V

    :cond_3
    return-void
.end method

.method protected final a(Landroid/app/Activity;)Z
    .locals 0

    .line 231
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->isFragmentAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getEmptyListLoaded()Landroid/view/View;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->k:Landroid/view/View;

    return-object v0
.end method

.method protected getEmptyListViewLoading()Landroid/view/View;
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a06f7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEmptyListViewParams()Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/base/BaseListFragment<",
            "TT;>.Empty",
            "ListViewParam;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getLayoutResourceId()I
.end method

.method public bridge synthetic getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getListAdapter()Lcom/callapp/contacts/activity/base/BaseArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Lcom/callapp/contacts/activity/base/BaseArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/base/BaseArrayAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/x;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;

    return-object v0
.end method

.method protected isFragmentAttached()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->n:Z

    return v0
.end method

.method public isLayoutReady()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->m:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/x;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f060026

    .line 105
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    const v0, 0x7f0600a8

    .line 106
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->j:Lcom/callapp/contacts/activity/base/ScrollStateTracker;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/ScrollStateTracker;->setListView(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/x;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->n:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    .line 77
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->m:Z

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getLayoutResourceId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a037d

    .line 1253
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const v0, 0x7f0a0387

    .line 1255
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a038a

    .line 1256
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0389

    .line 1257
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1259
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getEmptyListViewParams()Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1262
    invoke-static {v3}, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->a(Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/callapp/contacts/util/ThemeUtils;->b(Landroid/content/Context;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1276
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const v6, 0x7f06008a

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v4, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 1277
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    .line 1279
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1263
    :goto_0
    invoke-static {v3}, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->b(Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;)I

    move-result p3

    invoke-static {v1, p3}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Landroid/widget/TextView;I)V

    .line 1264
    invoke-static {v3}, Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;->c(Lcom/callapp/contacts/activity/base/BaseListFragment$EmptyListViewParam;)I

    move-result p3

    invoke-static {v2, p3}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Landroid/widget/TextView;I)V

    .line 79
    :cond_1
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->k:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->i:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    if-eqz v0, :cond_0

    .line 2033
    monitor-enter v0

    .line 2034
    :try_start_0
    iget-object v1, v0, Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2035
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 140
    :cond_0
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/x;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->m:Z

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->p:Landroid/view/View;

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/x;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->n:Z

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/x;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/x;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->i:Lcom/callapp/contacts/activity/base/BaseContactListDataProvider;

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseListFragment$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseListFragment$2;-><init>(Lcom/callapp/contacts/activity/base/BaseListFragment;)V

    .line 181
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseListFragment$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->o:Z

    if-eqz v0, :cond_2

    .line 2115
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->r:Z

    if-eqz v0, :cond_1

    .line 2118
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/base/BaseListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/base/BaseListFragment$1;-><init>(Lcom/callapp/contacts/activity/base/BaseListFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    const-string v0, "scrollToTop"

    .line 2120
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->o:Z

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/x;->onStart()V

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->isUserPressedHomeButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->o:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/x;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->m:Z

    .line 95
    iget p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment;->q:I

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(I)V

    return-void
.end method

.method protected setListEmptyView(Landroid/view/View;)V
    .locals 3

    .line 348
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    const/16 v2, 0x8

    .line 354
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

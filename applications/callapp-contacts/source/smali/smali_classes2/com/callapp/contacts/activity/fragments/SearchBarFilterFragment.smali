.class public abstract Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroid/widget/TextView;

.field private final d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field private e:Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;

.field private f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

.field private g:Ljava/lang/String;

.field private h:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

.field private i:Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getInvalidateDataListener()Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->i:Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->i:Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)",
            "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/CharSequence;Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f1206fb

    if-eqz v1, :cond_3

    if-eqz p3, :cond_1

    .line 214
    new-instance p1, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/callapp/contacts/activity/base/HeaderSectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    new-instance p1, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getAllHeaderText()I

    move-result p3

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/callapp/contacts/activity/base/HeaderSectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 219
    iget-object p3, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 220
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 225
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 227
    iget-object v3, v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    .line 230
    :cond_5
    iget-object v3, v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->displayName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 232
    :goto_3
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 234
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 235
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    .line 236
    iget-object v4, v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 238
    :cond_6
    invoke-static {v4, v3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 240
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v4, v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    .line 241
    iget-object v4, v1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->textHighlights:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_7
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    if-eqz p3, :cond_8

    .line 248
    new-instance p2, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/callapp/contacts/activity/base/HeaderSectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 250
    :cond_8
    new-instance p2, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getAllHeaderText()I

    move-result p3

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/callapp/contacts/activity/base/HeaderSectionData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    :goto_4
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->g:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract getAllHeaderText()I
.end method

.method public getCurrentFilter()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getEmptySearchResultText()I
.end method

.method protected abstract getEmptyViewBoldTitle()I
.end method

.method protected abstract getEmptyViewImage()I
.end method

.method protected abstract getEmptyViewTitle()I
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->h:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;-><init>(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->h:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->h:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    return-object v0
.end method

.method protected abstract getInvalidateDataListener()Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;

    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->e:Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;

    .line 88
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;->a(Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void

    .line 90
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement SearchBarFilterEvents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0110

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 3

    .line 98
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->e:Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/interfaces/SearchBarFilterEvents;->b(Lcom/callapp/contacts/activity/interfaces/SearchBarFilter;)V

    .line 103
    :cond_0
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->f:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a07b0

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a:Landroid/view/View;

    const p2, 0x7f0a073e

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 75
    iget-object p2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->d:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const p2, 0x7f0a037f

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->c:Landroid/widget/TextView;

    const p2, 0x7f0601ec

    .line 77
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getEmptyViewTitle()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1109
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getEmptyViewBoldTitle()I

    move-result p2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1111
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getEmptyViewTitle()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1112
    new-instance p2, Landroid/text/style/TypefaceSpan;

    const-string v1, "sans-serif-medium"

    invoke-direct {p2, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v0, p2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1113
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v0, p2, p1, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1114
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const p2, 0x7f0601cc

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v4, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1116
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a:Landroid/view/View;

    const p2, 0x7f0a0384

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a:Landroid/view/View;

    const p2, 0x7f0a0382

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1118
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getEmptyViewImage()I

    move-result p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

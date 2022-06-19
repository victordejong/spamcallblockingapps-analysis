.class public abstract Lcom/telguarder/helpers/ui/BOAdapter;
.super Landroid/widget/BaseAdapter;
.source "BOAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;,
        Lcom/telguarder/helpers/ui/BOAdapter$StickyGroupHeaderDisplayer;,
        Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;,
        Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;,
        Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mCheckeableViewId:Ljava/lang/Integer;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutResId:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mSelectedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mSelectionMode:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

.field private mUsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    .line 29
    sget-object v0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->NONE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    iput-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectionMode:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    if-eqz p3, :cond_0

    .line 36
    iput-object p3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItems:Ljava/util/List;

    .line 37
    iput p4, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItemLayoutResId:I

    .line 38
    iput-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "layout_inflater"

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The list of items should not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/ui/BOAdapter;)Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectionMode:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/ui/BOAdapter;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/ui/BOAdapter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->superNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/helpers/ui/BOAdapter;)Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    return-object p0
.end method

.method private superNotifyDataSetChanged()V
    .locals 0

    .line 141
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderDisplayer()Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer<",
            "TE;>;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;I)V"
        }
    .end annotation
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    return-object p2

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItemLayoutResId:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mUsed:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    if-nez p2, :cond_3

    .line 71
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItemLayoutResId:I

    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_3
    iget-object p3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    .line 75
    new-instance p1, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;

    invoke-direct {p1}, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    if-nez p2, :cond_5

    .line 80
    new-instance p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;

    invoke-direct {p2}, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;-><init>()V

    .line 81
    iget-object p3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b002f

    invoke-virtual {p3, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 82
    iget-object v3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    invoke-interface {v5}, Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;->getHeaderLayoutId()I

    move-result v5

    invoke-virtual {v3, v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->header:Landroid/view/View;

    const v3, 0x7f080084

    .line 83
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->header:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mItemLayoutResId:I

    invoke-virtual {v3, v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 85
    invoke-virtual {p0, v3, v2, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V

    .line 86
    iput-object v3, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->item:Landroid/view/View;

    const v3, 0x7f080083

    .line 87
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->item:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;

    .line 92
    iget-object v3, p3, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->item:Landroid/view/View;

    invoke-virtual {p0, v3, v2, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    invoke-interface {v3, v2, p1}, Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;->isHeaderDisplayed(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 95
    iget-object v3, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->header:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    iget-object p2, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->header:Landroid/view/View;

    invoke-interface {v3, p2, v2, p1}, Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;->getHeaderDisplayed(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 98
    :cond_6
    iget-object p1, p2, Lcom/telguarder/helpers/ui/BOAdapter$HeaderViewHolder;->header:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move-object p2, p3

    .line 102
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mCheckeableViewId:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 105
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object p3, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    move-object v4, p1

    .line 108
    :cond_8
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectionMode:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    sget-object p3, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->NONE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    if-eq p1, p3, :cond_9

    .line 109
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mCheckeableViewId:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 110
    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 111
    new-instance p1, Lcom/telguarder/helpers/ui/BOAdapter$1;

    invoke-direct {p1, p0, v2}, Lcom/telguarder/helpers/ui/BOAdapter$1;-><init>(Lcom/telguarder/helpers/ui/BOAdapter;Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 129
    :cond_9
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mCheckeableViewId:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 130
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_a
    :goto_3
    return-object p2
.end method

.method public isSelected(I)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 259
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    .line 262
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectAll()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public selectNone()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 161
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v0, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setGroupHeaderDisplayer(Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer<",
            "TE;>;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mHeaderDisplayer:Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    .line 245
    iget-boolean p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mUsed:Z

    if-eqz p1, :cond_0

    .line 246
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    return-void
.end method

.method public setSelected(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 185
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_0
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/BOAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    if-eqz p1, :cond_1

    .line 191
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 198
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 202
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    if-eqz p1, :cond_1

    .line 204
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setSelected(Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 211
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 215
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 216
    iget-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mOnSelectionChangedListener:Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;

    if-eqz p1, :cond_1

    .line 217
    iget-object p2, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/BOAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setSelectionIndicator(Ljava/lang/Integer;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mCheckeableViewId:Ljava/lang/Integer;

    .line 232
    iget-boolean p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mUsed:Z

    if-eqz p1, :cond_0

    .line 233
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setSelectionMode(Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mSelectionMode:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    .line 224
    iget-boolean p1, p0, Lcom/telguarder/helpers/ui/BOAdapter;->mUsed:Z

    if-eqz p1, :cond_0

    .line 225
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.class public Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private mBaseAdapter:Landroid/widget/BaseAdapter;

.field private mCardSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lit/gmariotti/cardslib/library/prototypes/CardSection;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSectionResourceId:I

.field private mValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILit/gmariotti/cardslib/library/a/c;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mValid:Z

    .line 49
    sget v0, Lit/gmariotti/cardslib/library/a$e;->base_section_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mSectionResourceId:I

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    const-string v0, "layout_inflater"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p3, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 89
    iput p2, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mSectionResourceId:I

    .line 91
    new-instance p1, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;

    invoke-direct {p1, p0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$1;-><init>(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;)V

    invoke-virtual {p3, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lit/gmariotti/cardslib/library/a/c;)V
    .locals 1

    .line 77
    sget v0, Lit/gmariotti/cardslib/library/a$e;->base_section_layout:I

    invoke-direct {p0, p1, v0, p2}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;-><init>(Landroid/content/Context;ILit/gmariotti/cardslib/library/a/c;)V

    return-void
.end method

.method static synthetic access$002(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mValid:Z

    return p1
.end method

.method static synthetic access$100(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;)Landroid/widget/BaseAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method


# virtual methods
.method public addCardSection(Lit/gmariotti/cardslib/library/prototypes/CardSection;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 295
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 296
    new-array v1, v1, [Lit/gmariotti/cardslib/library/prototypes/CardSection;

    const/4 v2, 0x0

    .line 299
    :goto_0
    iget-object v3, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 300
    iget-object v3, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    aput-object p1, v1, v0

    .line 304
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->setCardSections([Lit/gmariotti/cardslib/library/prototypes/CardSection;)V

    :cond_1
    return-void
.end method

.method public addCardSections([Lit/gmariotti/cardslib/library/prototypes/CardSection;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 315
    array-length v0, p1

    if-lez v0, :cond_2

    .line 317
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 320
    array-length v1, p1

    add-int/2addr v1, v0

    new-array v1, v1, [Lit/gmariotti/cardslib/library/prototypes/CardSection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 321
    :goto_0
    iget-object v4, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 322
    iget-object v4, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    :cond_0
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    add-int v3, v2, v0

    .line 327
    aget-object v4, p1, v2

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    :cond_1
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->setCardSections([Lit/gmariotti/cardslib/library/prototypes/CardSection;)V

    :cond_2
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardSections()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lit/gmariotti/cardslib/library/prototypes/CardSection;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 190
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 195
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    .line 196
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 197
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 202
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    .line 203
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 204
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->getViewTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 211
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method protected getSectionView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 279
    sget p3, Lit/gmariotti/cardslib/library/a$c;->card_section_simple_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 281
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/prototypes/CardSection;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 244
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->internalSectionView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method protected internalSectionView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 262
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mSectionResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->getSectionView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 217
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 219
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isSectionHeaderPosition(I)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public positionToSectionedPosition(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    iget v2, v2, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    if-gt v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v1

    return p1
.end method

.method public sectionedPositionToPosition(I)I
    .locals 3

    .line 164
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 169
    :goto_0
    iget-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    iget v2, v2, Lit/gmariotti/cardslib/library/prototypes/CardSection;->sectionedPosition:I

    if-gt v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, v1

    return p1
.end method

.method public setCardSections([Lit/gmariotti/cardslib/library/prototypes/CardSection;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 118
    new-instance v0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$2;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$2;-><init>(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 129
    iget v4, v3, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    add-int/2addr v4, v2

    iput v4, v3, Lit/gmariotti/cardslib/library/prototypes/CardSection;->sectionedPosition:I

    .line 130
    iget-object v4, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->mCardSections:Landroid/util/SparseArray;

    iget v5, v3, Lit/gmariotti/cardslib/library/prototypes/CardSection;->sectionedPosition:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->notifyDataSetChanged()V

    return-void
.end method

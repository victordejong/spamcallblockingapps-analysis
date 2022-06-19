.class public final Lit/gmariotti/cardslib/library/a/f;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseExpandableListAdapter;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lit/gmariotti/cardslib/library/a/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Landroid/view/LayoutInflater;

.field protected c:Landroid/content/Context;

.field protected d:I

.field protected e:I

.field protected f:Lit/gmariotti/cardslib/library/view/CardExpandableListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lit/gmariotti/cardslib/library/a/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 51
    sget v0, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/a/f;->d:I

    .line 56
    sget v0, Lit/gmariotti/cardslib/library/a$e;->base_list_expandable_children_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/a/f;->e:I

    .line 68
    iput-object p2, p0, Lit/gmariotti/cardslib/library/a/f;->a:Landroid/util/SparseArray;

    const-string p2, "layout_inflater"

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/f;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private b(I)Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    .line 85
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    return-object p1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 208
    iput p1, p0, Lit/gmariotti/cardslib/library/a/f;->d:I

    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/view/CardExpandableListView;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/f;->f:Lit/gmariotti/cardslib/library/view/CardExpandableListView;

    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/a;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/a/a;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 153
    invoke-virtual {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/f;->getChild(II)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 155
    instance-of p5, p3, Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 156
    move-object p5, p3

    check-cast p5, Ljava/lang/String;

    if-nez p4, :cond_0

    .line 160
    iget-object p4, p0, Lit/gmariotti/cardslib/library/a/f;->b:Landroid/view/LayoutInflater;

    iget v0, p0, Lit/gmariotti/cardslib/library/a/f;->e:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 162
    :cond_0
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_children_simple_title:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/f;->isChildSelectable(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1174
    new-instance p1, Lit/gmariotti/cardslib/library/a/f$1;

    invoke-direct {p1, p0, p3}, Lit/gmariotti/cardslib/library/a/f$1;-><init>(Lit/gmariotti/cardslib/library/a/f;Ljava/lang/Object;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 1

    .line 79
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/a;

    iget-object p1, p1, Lit/gmariotti/cardslib/library/a/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/f;->b(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    return-object p1
.end method

.method public final getGroupCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/f;->b(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/f;->b(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 118
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/f;->b(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget p2, p0, Lit/gmariotti/cardslib/library/a/f;->d:I

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 126
    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/f;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p3, p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 132
    :goto_0
    sget p4, Lit/gmariotti/cardslib/library/a$c;->list_cardId:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lit/gmariotti/cardslib/library/view/a/a;

    if-eqz p4, :cond_1

    .line 135
    invoke-interface {p4}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v1

    invoke-static {v1, p1}, Lit/gmariotti/cardslib/library/a/b;->equalsInnerLayout(Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v1

    invoke-interface {p4, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setForceReplaceInnerLayout(Z)V

    .line 138
    invoke-interface {p4, p2}, Lit/gmariotti/cardslib/library/view/a/a;->setRecycle(Z)V

    .line 140
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/b;->setSwipeable(Z)V

    .line 142
    invoke-interface {p4, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    :cond_1
    return-object p3
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

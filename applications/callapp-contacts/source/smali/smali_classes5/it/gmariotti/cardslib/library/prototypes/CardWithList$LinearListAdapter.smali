.class public Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/prototypes/CardWithList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LinearListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;",
        ">;"
    }
.end annotation


# instance fields
.field mCallback:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mOnTouchListener:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

.field final synthetic this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;",
            ">;)V"
        }
    .end annotation

    .line 768
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    const/4 p1, 0x0

    .line 769
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 848
    new-instance p1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$2;

    invoke-direct {p1, p0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$2;-><init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;)V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mCallback:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

    const-string p1, "layout_inflater"

    .line 771
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getChildId(I)Ljava/lang/String;
    .locals 0

    .line 837
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    .line 838
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getObjectId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 778
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;

    if-nez p2, :cond_0

    .line 782
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-virtual {v1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->getChildLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 786
    :cond_0
    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-virtual {v1, p1, v0, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->setupChildView(ILit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 789
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->getOnItemClickListener()Lit/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 790
    new-instance v1, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;

    invoke-direct {v1, p0, v0, p3, p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter$1;-><init>(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Landroid/view/View;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    :cond_1
    invoke-virtual {p0, v0, p3}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->setupItemSwipeAnimation(Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Landroid/view/View;)V

    return-object p3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 870
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-static {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->access$100(Lit/gmariotti/cardslib/library/prototypes/CardWithList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 873
    :cond_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->access$102(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Z)Z

    return-void
.end method

.method protected setupItemSwipeAnimation(Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;Landroid/view/View;)V
    .locals 2

    .line 819
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$ListObject;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mOnTouchListener:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

    if-nez p1, :cond_0

    .line 821
    new-instance p1, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    iget-object v0, v0, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->mListView:Lit/gmariotti/cardslib/library/prototypes/LinearListView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mCallback:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;

    invoke-direct {p1, v0, v1}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;-><init>(Lit/gmariotti/cardslib/library/prototypes/LinearListView;Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$DismissCallbacks;)V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mOnTouchListener:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

    .line 823
    :cond_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->mOnTouchListener:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 879
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-static {p1, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->access$102(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Z)Z

    return-void

    .line 882
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 883
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->this$0:Lit/gmariotti/cardslib/library/prototypes/CardWithList;

    invoke-static {p1, v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList;->access$102(Lit/gmariotti/cardslib/library/prototypes/CardWithList;Z)Z

    return-void
.end method

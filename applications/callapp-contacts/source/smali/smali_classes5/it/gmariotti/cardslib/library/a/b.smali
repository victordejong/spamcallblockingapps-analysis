.class public Lit/gmariotti/cardslib/library/a/b;
.super Lit/gmariotti/cardslib/library/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/a/b$c;,
        Lit/gmariotti/cardslib/library/a/b$b;,
        Lit/gmariotti/cardslib/library/a/b$e;,
        Lit/gmariotti/cardslib/library/a/b$d;,
        Lit/gmariotti/cardslib/library/a/b$f;,
        Lit/gmariotti/cardslib/library/a/b$a;,
        Lit/gmariotti/cardslib/library/a/b$h;,
        Lit/gmariotti/cardslib/library/a/b$i;,
        Lit/gmariotti/cardslib/library/a/b$g;
    }
.end annotation


# static fields
.field public static final CLICK_LISTENER_ACTIONAREA1_VIEW:I = 0x9

.field public static final CLICK_LISTENER_ALL_VIEW:I = 0x0

.field public static final CLICK_LISTENER_CONTENT_VIEW:I = 0xa

.field public static final CLICK_LISTENER_HEADER_VIEW:I = 0x2

.field public static final CLICK_LISTENER_THUMBNAIL_VIEW:I = 0x1

.field public static DEFAULT_COLOR:I = 0x0

.field protected static TAG:Ljava/lang/String; = "Card"


# instance fields
.field private couldUseNativeInnerLayout:Z

.field private mBackgroundColorResourceId:I

.field private mBackgroundResource:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResourceId:I

.field protected mCardElevation:Ljava/lang/Float;

.field protected mCardExpand:Lit/gmariotti/cardslib/library/a/e;

.field protected mCardHeader:Lit/gmariotti/cardslib/library/a/i;

.field protected mCardThumbnail:Lit/gmariotti/cardslib/library/a/j;

.field private mCheckable:Z

.field protected mIsClickable:Z

.field protected mIsExpanded:Z

.field protected mIsLongClickable:Z

.field protected mIsSwipeable:Z

.field protected mMultiChoiceEnabled:Z

.field protected mMultipleOnClickListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lit/gmariotti/cardslib/library/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnClickListener:Lit/gmariotti/cardslib/library/a/b$a;

.field protected mOnCollapseAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$b;

.field protected mOnCollapseAnimatorStartListener:Lit/gmariotti/cardslib/library/a/b$c;

.field protected mOnExpandAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$d;

.field protected mOnExpandAnimatorStartListener:Lit/gmariotti/cardslib/library/a/b$e;

.field protected mOnLongClickListener:Lit/gmariotti/cardslib/library/a/b$f;

.field protected mOnSwipeListener:Lit/gmariotti/cardslib/library/a/b$g;

.field protected mOnUndoHideSwipeListListener:Lit/gmariotti/cardslib/library/a/b$h;

.field protected mOnUndoSwipeListListener:Lit/gmariotti/cardslib/library/a/b$i;

.field protected mShadow:Z

.field protected viewToClickToExpand:Lit/gmariotti/cardslib/library/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 239
    sget v0, Lit/gmariotti/cardslib/library/a$e;->inner_base_main:I

    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/a/b;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 249
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    .line 73
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsLongClickable:Z

    .line 78
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsSwipeable:Z

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mShadow:Z

    .line 105
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsExpanded:Z

    .line 190
    iput p1, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundResourceId:I

    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundResource:Landroid/graphics/drawable/Drawable;

    .line 204
    iput p1, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundColorResourceId:I

    .line 209
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCheckable:Z

    .line 214
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mMultiChoiceEnabled:Z

    .line 219
    iput-object v1, p0, Lit/gmariotti/cardslib/library/a/b;->viewToClickToExpand:Lit/gmariotti/cardslib/library/a/k;

    .line 227
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->couldUseNativeInnerLayout:Z

    .line 250
    iput-object v1, p0, Lit/gmariotti/cardslib/library/a/b;->mParentCard:Lit/gmariotti/cardslib/library/a/b;

    .line 251
    iput p2, p0, Lit/gmariotti/cardslib/library/a/b;->mInnerLayout:I

    .line 253
    sget p1, Lit/gmariotti/cardslib/library/a$e;->inner_base_main:I

    if-ne p2, p1, :cond_0

    .line 254
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->couldUseNativeInnerLayout:Z

    :cond_0
    return-void
.end method

.method public static equalsInnerLayout(Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/a/b;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 963
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getInnerLayout()I

    move-result v1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getInnerLayout()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    return v3

    .line 966
    :cond_1
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 967
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v1

    if-nez v1, :cond_2

    return v3

    .line 970
    :cond_2
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lit/gmariotti/cardslib/library/a/i;->getInnerLayout()I

    move-result v1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/i;->getInnerLayout()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 973
    :cond_3
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v1

    if-eqz v1, :cond_4

    return v3

    .line 978
    :cond_4
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 979
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v1

    if-nez v1, :cond_5

    return v3

    .line 982
    :cond_5
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lit/gmariotti/cardslib/library/a/j;->getInnerLayout()I

    move-result v1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/j;->getInnerLayout()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 985
    :cond_6
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v1

    if-eqz v1, :cond_7

    return v3

    .line 990
    :cond_7
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 991
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object v1

    if-nez v1, :cond_8

    return v3

    .line 994
    :cond_8
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/e;->getInnerLayout()I

    move-result p0

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/e;->getInnerLayout()I

    move-result p1

    if-eq p0, p1, :cond_a

    return v3

    .line 997
    :cond_9
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    :goto_0
    return v0
.end method


# virtual methods
.method public addCardExpand(Lit/gmariotti/cardslib/library/a/e;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mCardExpand:Lit/gmariotti/cardslib/library/a/e;

    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/e;->setParentCard(Lit/gmariotti/cardslib/library/a/b;)V

    :cond_0
    return-void
.end method

.method public addCardHeader(Lit/gmariotti/cardslib/library/a/i;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mCardHeader:Lit/gmariotti/cardslib/library/a/i;

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/i;->setParentCard(Lit/gmariotti/cardslib/library/a/b;)V

    :cond_0
    return-void
.end method

.method public addCardThumbnail(Lit/gmariotti/cardslib/library/a/j;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mCardThumbnail:Lit/gmariotti/cardslib/library/a/j;

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/j;->setParentCard(Lit/gmariotti/cardslib/library/a/b;)V

    :cond_0
    return-void
.end method

.method public addPartialOnClickListener(ILit/gmariotti/cardslib/library/a/b$a;)V
    .locals 2

    if-gez p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 889
    sget-object v0, Lit/gmariotti/cardslib/library/a/b;->TAG:Ljava/lang/String;

    const-string v1, "area value not valid in addPartialOnClickListner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getMultipleOnClickListener()Ljava/util/HashMap;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 893
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 894
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    return-void

    .line 896
    :cond_1
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/a/b;->removePartialOnClickListener(I)V

    return-void
.end method

.method public changeBackgroundResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public changeBackgroundResourceId(I)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->a(I)V

    :cond_0
    return-void
.end method

.method public doCollapse()V
    .locals 1

    .line 740
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->i()V

    return-void
.end method

.method public doExpand()V
    .locals 1

    .line 736
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->h()V

    return-void
.end method

.method public doToogleExpand()V
    .locals 1

    .line 744
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->g()V

    return-void
.end method

.method public getBackgroundColorResourceId()I
    .locals 1

    .line 1136
    iget v0, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundColorResourceId:I

    return v0
.end method

.method public getBackgroundResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1035
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundResource:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundResourceId()I
    .locals 1

    .line 1026
    iget v0, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundResourceId:I

    return v0
.end method

.method public getCardElevation()Ljava/lang/Float;
    .locals 1

    .line 777
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardElevation:Ljava/lang/Float;

    return-object v0
.end method

.method public getCardExpand()Lit/gmariotti/cardslib/library/a/e;
    .locals 1

    .line 399
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardExpand:Lit/gmariotti/cardslib/library/a/e;

    return-object v0
.end method

.method public getCardHeader()Lit/gmariotti/cardslib/library/a/i;
    .locals 1

    .line 375
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardHeader:Lit/gmariotti/cardslib/library/a/i;

    return-object v0
.end method

.method public getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;
    .locals 1

    .line 350
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardThumbnail:Lit/gmariotti/cardslib/library/a/j;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 800
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->setupInnerLayout()V

    .line 282
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/a/a;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    :cond_0
    iget v0, p0, Lit/gmariotti/cardslib/library/a/b;->mInnerLayout:I

    if-ltz v0, :cond_1

    .line 293
    invoke-virtual {p0, p2, p1}, Lit/gmariotti/cardslib/library/a/b;->setupInnerViewElements(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public getMultipleOnClickListener()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lit/gmariotti/cardslib/library/a/b$a;",
            ">;"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mMultipleOnClickListener:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 929
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mMultipleOnClickListener:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;
    .locals 1

    .line 534
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnClickListener:Lit/gmariotti/cardslib/library/a/b$a;

    return-object v0
.end method

.method public getOnCollapseAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$b;
    .locals 1

    .line 688
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnCollapseAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$b;

    return-object v0
.end method

.method public getOnCollapseAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$c;
    .locals 1

    .line 722
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnCollapseAnimatorStartListener:Lit/gmariotti/cardslib/library/a/b$c;

    return-object v0
.end method

.method public getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;
    .locals 1

    .line 616
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnExpandAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$d;

    return-object v0
.end method

.method public getOnExpandAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$e;
    .locals 1

    .line 650
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnExpandAnimatorStartListener:Lit/gmariotti/cardslib/library/a/b$e;

    return-object v0
.end method

.method public getOnLongClickListener()Lit/gmariotti/cardslib/library/a/b$f;
    .locals 1

    .line 573
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnLongClickListener:Lit/gmariotti/cardslib/library/a/b$f;

    return-object v0
.end method

.method public getOnSwipeListener()Lit/gmariotti/cardslib/library/a/b$g;
    .locals 1

    .line 437
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnSwipeListener:Lit/gmariotti/cardslib/library/a/b$g;

    return-object v0
.end method

.method public getOnUndoHideSwipeListListener()Lit/gmariotti/cardslib/library/a/b$h;
    .locals 1

    .line 505
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnUndoHideSwipeListListener:Lit/gmariotti/cardslib/library/a/b$h;

    return-object v0
.end method

.method public getOnUndoSwipeListListener()Lit/gmariotti/cardslib/library/a/b$i;
    .locals 1

    .line 487
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnUndoSwipeListListener:Lit/gmariotti/cardslib/library/a/b$i;

    return-object v0
.end method

.method public getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;
    .locals 1

    .line 1101
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->viewToClickToExpand:Lit/gmariotti/cardslib/library/a/k;

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 753
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1075
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCheckable:Z

    return v0
.end method

.method public isClickable()Z
    .locals 2

    .line 814
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnClickListener:Lit/gmariotti/cardslib/library/a/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mMultipleOnClickListener:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    :cond_0
    sget-object v0, Lit/gmariotti/cardslib/library/a/b;->TAG:Ljava/lang/String;

    const-string v1, "Clickable set to true without onClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 820
    :cond_1
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsExpanded:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    .line 857
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnLongClickListener:Lit/gmariotti/cardslib/library/a/b$f;

    if-nez v0, :cond_1

    .line 858
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsLongClickable:Z

    if-eqz v0, :cond_0

    .line 859
    sget-object v0, Lit/gmariotti/cardslib/library/a/b;->TAG:Ljava/lang/String;

    const-string v1, "LongClickable set to true without onLongClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 862
    :cond_1
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsLongClickable:Z

    return v0
.end method

.method public isMultiChoiceEnabled()Z
    .locals 1

    .line 1092
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mMultiChoiceEnabled:Z

    return v0
.end method

.method protected isNative()Z
    .locals 1

    .line 1118
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->isNative()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShadow()Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mShadow:Z

    return v0
.end method

.method public isSwipeable()Z
    .locals 1

    .line 838
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsSwipeable:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lit/gmariotti/cardslib/library/view/a/a;->a(Lit/gmariotti/cardslib/library/a/b;)V

    return-void
.end method

.method public onCollapseEnd()V
    .locals 1

    .line 677
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnCollapseAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$b;

    if-eqz v0, :cond_0

    .line 678
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/a/b$b;->a()V

    :cond_0
    return-void
.end method

.method public onCollapseStart()V
    .locals 0

    return-void
.end method

.method public onExpandEnd()V
    .locals 1

    .line 605
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/b;->mOnExpandAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$d;

    if-eqz v0, :cond_0

    .line 606
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    :cond_0
    return-void
.end method

.method public onExpandStart()V
    .locals 0

    return-void
.end method

.method public onSwipeCard()V
    .locals 0

    .line 425
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    return-void
.end method

.method public onUndoSwipeListCard()V
    .locals 0

    .line 476
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    return-void
.end method

.method public removePartialOnClickListener(I)V
    .locals 1

    .line 914
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getMultipleOnClickListener()Ljava/util/HashMap;

    move-result-object v0

    .line 915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnClickListener:Lit/gmariotti/cardslib/library/a/b$a;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 918
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    :cond_0
    return-void
.end method

.method public setBackgroundColorResourceId(I)V
    .locals 0

    .line 1128
    iput p1, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundColorResourceId:I

    return-void
.end method

.method public setBackgroundResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundResource:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackgroundResourceId(I)V
    .locals 0

    .line 1017
    iput p1, p0, Lit/gmariotti/cardslib/library/a/b;->mBackgroundResourceId:I

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    .line 768
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mCardElevation:Ljava/lang/Float;

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1084
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mCheckable:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 947
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsExpanded:Z

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0

    .line 871
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsLongClickable:Z

    return-void
.end method

.method public setOnClickListener(Lit/gmariotti/cardslib/library/a/b$a;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsClickable:Z

    .line 548
    :goto_0
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnClickListener:Lit/gmariotti/cardslib/library/a/b$a;

    return-void
.end method

.method public setOnCollapseAnimatorEndListener(Lit/gmariotti/cardslib/library/a/b$b;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnCollapseAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$b;

    return-void
.end method

.method public setOnCollapseAnimatorStartListener(Lit/gmariotti/cardslib/library/a/b$c;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnCollapseAnimatorStartListener:Lit/gmariotti/cardslib/library/a/b$c;

    return-void
.end method

.method public setOnExpandAnimatorEndListener(Lit/gmariotti/cardslib/library/a/b$d;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnExpandAnimatorEndListener:Lit/gmariotti/cardslib/library/a/b$d;

    return-void
.end method

.method public setOnExpandAnimatorStartListener(Lit/gmariotti/cardslib/library/a/b$e;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnExpandAnimatorStartListener:Lit/gmariotti/cardslib/library/a/b$e;

    return-void
.end method

.method public setOnLongClickListener(Lit/gmariotti/cardslib/library/a/b$f;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 584
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsLongClickable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 586
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsLongClickable:Z

    .line 587
    :goto_0
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnLongClickListener:Lit/gmariotti/cardslib/library/a/b$f;

    return-void
.end method

.method public setOnSwipeListener(Lit/gmariotti/cardslib/library/a/b$g;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsSwipeable:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->mIsSwipeable:Z

    .line 451
    :goto_0
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnSwipeListener:Lit/gmariotti/cardslib/library/a/b$g;

    return-void
.end method

.method public setOnUndoHideSwipeListListener(Lit/gmariotti/cardslib/library/a/b$h;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnUndoHideSwipeListListener:Lit/gmariotti/cardslib/library/a/b$h;

    return-void
.end method

.method public setOnUndoSwipeListListener(Lit/gmariotti/cardslib/library/a/b$i;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->mOnUndoSwipeListListener:Lit/gmariotti/cardslib/library/a/b$i;

    return-void
.end method

.method public setShadow(Z)V
    .locals 0

    .line 795
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mShadow:Z

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 847
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/b;->mIsSwipeable:Z

    return-void
.end method

.method public setViewToClickToExpand(Lit/gmariotti/cardslib/library/a/k;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/b;->viewToClickToExpand:Lit/gmariotti/cardslib/library/a/k;

    return-void
.end method

.method protected setupInnerLayout()V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/b;->couldUseNativeInnerLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget v0, Lit/gmariotti/cardslib/library/a$e;->native_inner_base_main:I

    iput v0, p0, Lit/gmariotti/cardslib/library/a/b;->mInnerLayout:I

    :cond_0
    return-void
.end method

.method public setupInnerViewElements(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 313
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_main_inner_simple_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 315
    iget-object p2, p0, Lit/gmariotti/cardslib/library/a/b;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setupSupplementalActions()V
    .locals 0

    return-void
.end method

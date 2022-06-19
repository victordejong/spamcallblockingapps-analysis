.class public abstract Lit/gmariotti/cardslib/library/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mCardView:Lit/gmariotti/cardslib/library/view/a/a;

.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mInnerLayout:I

.field protected mInnerView:Landroid/view/View;

.field protected mParentCard:Lit/gmariotti/cardslib/library/a/b;

.field protected mTitle:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mInnerLayout:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->type:I

    .line 82
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCardView()Lit/gmariotti/cardslib/library/view/a/a;
    .locals 1

    .line 96
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 128
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerLayout()I
    .locals 1

    .line 144
    iget v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mInnerLayout:I

    return v0
.end method

.method public getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 110
    iget v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mInnerLayout:I

    if-ltz v0, :cond_0

    const-string v0, "layout_inflater"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 112
    iget v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mInnerLayout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mInnerView:Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParentCard()Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    .line 185
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mParentCard:Lit/gmariotti/cardslib/library/a/b;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 219
    iget v0, p0, Lit/gmariotti/cardslib/library/a/a/a;->type:I

    return v0
.end method

.method public setCardView(Lit/gmariotti/cardslib/library/view/a/a;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mCardView:Lit/gmariotti/cardslib/library/view/a/a;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mId:Ljava/lang/String;

    return-void
.end method

.method public setInnerLayout(I)V
    .locals 0

    .line 154
    iput p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mInnerLayout:I

    return-void
.end method

.method public setParentCard(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mParentCard:Lit/gmariotti/cardslib/library/a/b;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 229
    iput p1, p0, Lit/gmariotti/cardslib/library/a/a/a;->type:I

    return-void
.end method

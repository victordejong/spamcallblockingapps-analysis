.class public final Landroidx/recyclerview/widget/RecyclerView$p;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroidx/recyclerview/widget/RecyclerView$o;

.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroidx/recyclerview/widget/RecyclerView$v;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5896
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    .line 5898
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    .line 5900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    .line 5902
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    .line 5903
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Ljava/util/List;

    .line 5905
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:I

    .line 5906
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 6327
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 6328
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6329
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 6330
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    .line 6327
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6333
    :cond_1
    if-nez p2, :cond_2

    .line 6345
    :goto_1
    return-void

    .line 6337
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 6338
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6339
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6341
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 6342
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6343
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$x;IIJ)Z
    .locals 6

    .prologue
    .line 6004
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 6005
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v1

    .line 6006
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 6007
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    move-wide v4, p4

    .line 6008
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->b(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6010
    const/4 v0, 0x0

    .line 6019
    :goto_0
    return v0

    .line 6012
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView$x;I)V

    .line 6013
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    .line 6014
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v5

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(IJ)V

    .line 6015
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->e(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6016
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6017
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    .line 6019
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 3

    .prologue
    .line 6299
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6300
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 6301
    invoke-static {v2}, Landroidx/core/h/u;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6303
    const/4 v0, 0x1

    invoke-static {v2, v0}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 6306
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/m;

    if-nez v0, :cond_2

    .line 6318
    :cond_1
    :goto_0
    return-void

    .line 6309
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->c()Landroidx/core/h/a;

    move-result-object v1

    .line 6310
    instance-of v0, v1, Landroidx/recyclerview/widget/m$a;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 6313
    check-cast v0, Landroidx/recyclerview/widget/m$a;

    .line 6314
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/m$a;->c(Landroid/view/View;)V

    .line 6316
    :cond_3
    invoke-static {v2, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    goto :goto_0
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 2

    .prologue
    .line 6321
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6322
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    .line 6324
    :cond_0
    return-void
.end method


# virtual methods
.method a(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 6118
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    return-object v0
.end method

.method a(IZJ)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 11

    .prologue
    const/16 v10, 0x2000

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6142
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 6143
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 6144
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6145
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6150
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6151
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->f(I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v1

    .line 6152
    if-eqz v1, :cond_6

    move v0, v6

    :goto_0
    move v2, v0

    .line 6155
    :goto_1
    if-nez v1, :cond_19

    .line 6156
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;->b(IZ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6157
    if-eqz v0, :cond_4

    .line 6158
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$x;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6160
    if-nez p2, :cond_3

    .line 6163
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 6164
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6165
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6166
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->j()V

    .line 6170
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    :cond_3
    move-object v0, v8

    .line 6178
    :cond_4
    :goto_3
    if-nez v0, :cond_18

    .line 6179
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v3

    .line 6180
    if-ltz v3, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v1

    if-lt v3, v1, :cond_9

    .line 6181
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 6183
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v7

    .line 6152
    goto/16 :goto_0

    .line 6167
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6168
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->l()V

    goto :goto_2

    :cond_8
    move v2, v6

    .line 6174
    goto :goto_3

    .line 6186
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$a;->a(I)I

    move-result v1

    .line 6188
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6189
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(JIZ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6191
    if-eqz v0, :cond_17

    .line 6193
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    move v9, v6

    .line 6197
    :goto_4
    if-nez v0, :cond_b

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView$v;

    if-eqz v2, :cond_b

    .line 6200
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6201
    invoke-virtual {v2, p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$v;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)Landroid/view/View;

    move-result-object v2

    .line 6202
    if-eqz v2, :cond_b

    .line 6203
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6204
    if-nez v0, :cond_a

    .line 6205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6207
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6208
    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6211
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6215
    :cond_b
    if-nez v0, :cond_c

    .line 6220
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->g()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6221
    if-eqz v0, :cond_c

    .line 6222
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->w()V

    .line 6223
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_c

    .line 6224
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6228
    :cond_c
    if-nez v0, :cond_f

    .line 6229
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 6230
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    move-wide v4, p3

    .line 6231
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v1, v8

    .line 6295
    :goto_5
    return-object v1

    .line 6235
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4, v1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6236
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_e

    .line 6238
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    .line 6239
    if-eqz v4, :cond_e

    .line 6240
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$x;->b:Ljava/lang/ref/WeakReference;

    .line 6244
    :cond_e
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 6245
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    sub-long v2, v4, v2

    invoke-virtual {v8, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IJ)V

    :cond_f
    move-object v1, v0

    move v8, v9

    .line 6255
    :goto_6
    if-eqz v8, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 6256
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView$x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6257
    invoke-virtual {v1, v7, v10}, Landroidx/recyclerview/widget/RecyclerView$x;->a(II)V

    .line 6258
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$u;->j:Z

    if-eqz v0, :cond_10

    .line 6260
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$f;->e(Landroidx/recyclerview/widget/RecyclerView$x;)I

    move-result v0

    .line 6261
    or-int/lit16 v0, v0, 0x1000

    .line 6262
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 6263
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->v()Ljava/util/List;

    move-result-object v4

    .line 6262
    invoke-virtual {v2, v3, v1, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$x;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object v0

    .line 6264
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$f$c;)V

    .line 6269
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6271
    iput p1, v1, Landroidx/recyclerview/widget/RecyclerView$x;->g:I

    move v2, v7

    .line 6282
    :goto_7
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6284
    if-nez v0, :cond_13

    .line 6285
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 6286
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6293
    :goto_8
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->c:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6294
    if-eqz v8, :cond_15

    if-eqz v2, :cond_15

    :goto_9
    iput-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    goto/16 :goto_5

    .line 6272
    :cond_11
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->o()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6278
    :cond_12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    .line 6279
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$x;IIJ)Z

    move-result v0

    move v2, v0

    goto :goto_7

    .line 6287
    :cond_13
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 6288
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 6289
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 6291
    :cond_14
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    goto :goto_8

    :cond_15
    move v6, v7

    .line 6294
    goto :goto_9

    :cond_16
    move v2, v7

    goto :goto_7

    :cond_17
    move v9, v2

    goto/16 :goto_4

    :cond_18
    move-object v1, v0

    move v8, v2

    goto/16 :goto_6

    :cond_19
    move-object v0, v1

    goto/16 :goto_3

    :cond_1a
    move-object v1, v8

    move v2, v7

    goto/16 :goto_1
.end method

.method a(JIZ)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 6712
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6713
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 6714
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6715
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->g()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6716
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 6717
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 6718
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6727
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6728
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$x;->a(II)V

    .line 6760
    :cond_0
    :goto_1
    return-object v0

    .line 6733
    :cond_1
    if-nez p4, :cond_2

    .line 6737
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6738
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6739
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    .line 6713
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 6745
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6746
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 6747
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6748
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->g()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->s()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6749
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v3

    if-ne p3, v3, :cond_4

    .line 6750
    if-nez p4, :cond_0

    .line 6751
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6754
    :cond_4
    if-nez p4, :cond_5

    .line 6755
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    move-object v0, v1

    .line 6756
    goto :goto_1

    .line 6746
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 6760
    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 5919
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5920
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()V

    .line 5921
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 5929
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:I

    .line 5930
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->b()V

    .line 5931
    return-void
.end method

.method a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6785
    if-ge p1, p2, :cond_1

    .line 6788
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 6794
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 6795
    :goto_1
    if-ge v4, v6, :cond_4

    .line 6796
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6797
    if-eqz v0, :cond_0

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-le v7, v2, :cond_2

    .line 6795
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 6792
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 6800
    :cond_2
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ne v7, p1, :cond_3

    .line 6801
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->a(IZ)V

    goto :goto_2

    .line 6803
    :cond_3
    invoke-virtual {v0, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->a(IZ)V

    goto :goto_2

    .line 6810
    :cond_4
    return-void
.end method

.method a(IIZ)V
    .locals 4

    .prologue
    .line 6833
    add-int v2, p1, p2

    .line 6834
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6835
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 6836
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6837
    if-eqz v0, :cond_0

    .line 6838
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v3, v2, :cond_1

    .line 6844
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroidx/recyclerview/widget/RecyclerView$x;->a(IZ)V

    .line 6835
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6845
    :cond_1
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v3, p1, :cond_0

    .line 6847
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 6848
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    goto :goto_1

    .line 6852
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6360
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6361
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6362
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6364
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6365
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->j()V

    .line 6369
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6384
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->x()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6385
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6387
    :cond_2
    return-void

    .line 6366
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6367
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->l()V

    goto :goto_0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Z)V
    .locals 1

    .prologue
    .line 6779
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->a()V

    .line 6780
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->g()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Z)V

    .line 6781
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    .prologue
    .line 6859
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    .line 6860
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()V

    .line 6862
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6863
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6864
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->b()V

    .line 6866
    :cond_1
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0

    .prologue
    .line 6855
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 6856
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6524
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6525
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 6526
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/m;

    if-eqz v0, :cond_0

    .line 6527
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->c()Landroidx/core/h/a;

    move-result-object v0

    .line 6529
    instance-of v3, v0, Landroidx/recyclerview/widget/m$a;

    if-eqz v3, :cond_2

    .line 6530
    check-cast v0, Landroidx/recyclerview/widget/m$a;

    .line 6532
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/m$a;->d(Landroid/view/View;)Landroidx/core/h/a;

    move-result-object v0

    .line 6535
    :goto_0
    invoke-static {v2, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 6537
    :cond_0
    if-eqz p2, :cond_1

    .line 6538
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6540
    :cond_1
    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 6541
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->g()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6542
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5965
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5970
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    .line 5986
    :cond_0
    :goto_0
    return v0

    .line 5972
    :cond_1
    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ltz v2, :cond_2

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 5973
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 5974
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5976
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5978
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    iget v3, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$a;->a(I)I

    move-result v2

    .line 5979
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 5980
    goto :goto_0

    .line 5983
    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5984
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->g()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)I
    .locals 3

    .prologue
    .line 6088
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 6089
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 6090
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6092
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6095
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method b(IZ)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6657
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6660
    :goto_0
    if-ge v2, v3, :cond_3

    .line 6661
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6662
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6663
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$u;->g:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6664
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 6707
    :cond_1
    :goto_1
    return-object v0

    .line 6660
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6669
    :cond_3
    if-nez p2, :cond_5

    .line 6670
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->c(I)Landroid/view/View;

    move-result-object v2

    .line 6671
    if-eqz v2, :cond_5

    .line 6674
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6675
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/b;->e(Landroid/view/View;)V

    .line 6676
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)I

    move-result v1

    .line 6677
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 6678
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6679
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6681
    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/b;->e(I)V

    .line 6682
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 6683
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    goto :goto_1

    .line 6690
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6691
    :goto_2
    if-ge v1, v2, :cond_7

    .line 6692
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6695
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 6696
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->s()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6697
    if-nez p2, :cond_1

    .line 6698
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 6691
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6707
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method b()V
    .locals 3

    .prologue
    .line 5934
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$i;->x:I

    .line 5935
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    .line 5938
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5939
    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    if-le v1, v2, :cond_1

    .line 5940
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    .line 5939
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5934
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5942
    :cond_1
    return-void
.end method

.method b(II)V
    .locals 4

    .prologue
    .line 6813
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6814
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6815
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6816
    if-eqz v0, :cond_0

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-lt v3, p1, :cond_0

    .line 6821
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->a(IZ)V

    .line 6814
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6824
    :cond_1
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6550
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6551
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 6552
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    .line 6553
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->l()V

    .line 6554
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6555
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6429
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6430
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6432
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    .line 6433
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    .line 6436
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6439
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6442
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6445
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6448
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->z()Z

    move-result v4

    .line 6450
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6452
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView$x;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 6459
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->x()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6460
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    if-lez v0, :cond_d

    const/16 v0, 0x20e

    .line 6461
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->a(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6466
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6467
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    if-lt v0, v3, :cond_6

    if-lez v0, :cond_6

    .line 6468
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    .line 6469
    add-int/lit8 v0, v0, -0x1

    .line 6473
    :cond_6
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 6475
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/f$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 6477
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 6478
    :goto_2
    if-ltz v3, :cond_7

    .line 6479
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 6480
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/f$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6485
    :cond_7
    add-int/lit8 v0, v3, 0x1

    .line 6487
    :cond_8
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 6490
    :goto_3
    if-nez v0, :cond_c

    .line 6491
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V

    .line 6509
    :goto_4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/r;->g(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6510
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v4, :cond_9

    .line 6511
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 6513
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 6452
    goto :goto_1

    .line 6483
    :cond_b
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    .line 6484
    goto :goto_2

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v1, v2

    move v0, v2

    goto :goto_4
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5951
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Ljava/util/List;

    return-object v0
.end method

.method c(II)V
    .locals 4

    .prologue
    .line 6876
    add-int v2, p1, p2

    .line 6877
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6878
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 6879
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6880
    if-nez v0, :cond_1

    .line 6878
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6884
    :cond_1
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 6885
    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    .line 6886
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 6887
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    goto :goto_1

    .line 6892
    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6567
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 6568
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6569
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$x;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6570
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6573
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6575
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Landroidx/recyclerview/widget/RecyclerView$p;Z)V

    .line 6576
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6584
    :goto_0
    return-void

    .line 6578
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 6579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    .line 6581
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Landroidx/recyclerview/widget/RecyclerView$p;Z)V

    .line 6582
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    .prologue
    .line 6593
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    if-eqz v0, :cond_0

    .line 6594
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6598
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->m:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 6599
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->n:Z

    .line 6600
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->l()V

    .line 6601
    return-void

    .line 6596
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 6390
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6391
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6392
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    .line 6391
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6394
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6395
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_1

    .line 6396
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f$a;->a()V

    .line 6398
    :cond_1
    return-void
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 6415
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6419
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V

    .line 6420
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6421
    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    .prologue
    .line 6765
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    .line 6766
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$q;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6768
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    .line 6769
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6771
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v0, :cond_2

    .line 6772
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/r;->g(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 6775
    :cond_2
    return-void
.end method

.method e()I
    .locals 1

    .prologue
    .line 6604
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method e(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6608
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    return-object v0
.end method

.method f(I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 6621
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 6646
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 6625
    :goto_1
    if-ge v3, v4, :cond_3

    .line 6626
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6627
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 6628
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    goto :goto_0

    .line 6625
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 6633
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6634
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v0

    .line 6635
    if-lez v0, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 6636
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)J

    move-result-wide v6

    .line 6637
    :goto_2
    if-ge v2, v4, :cond_5

    .line 6638
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6639
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->g()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 6640
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    goto :goto_0

    .line 6637
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 6646
    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 6612
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6613
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6614
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6616
    :cond_0
    return-void
.end method

.method g()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 1

    .prologue
    .line 6869
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-nez v0, :cond_0

    .line 6870
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6872
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    return-object v0
.end method

.method h()V
    .locals 4

    .prologue
    .line 6895
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6896
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6897
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6898
    if-eqz v0, :cond_0

    .line 6899
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->b(I)V

    .line 6900
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Ljava/lang/Object;)V

    .line 6896
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6904
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6906
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()V

    .line 6908
    :cond_3
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6911
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6912
    :goto_0
    if-ge v2, v3, :cond_0

    .line 6913
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6914
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    .line 6912
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6916
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6917
    :goto_1
    if-ge v2, v3, :cond_1

    .line 6918
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    .line 6917
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6920
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6921
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6922
    :goto_2
    if-ge v1, v2, :cond_2

    .line 6923
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->a()V

    .line 6922
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6926
    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    .prologue
    .line 6929
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6930
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6931
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 6932
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 6933
    if-eqz v0, :cond_0

    .line 6934
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 6930
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6937
    :cond_1
    return-void
.end method

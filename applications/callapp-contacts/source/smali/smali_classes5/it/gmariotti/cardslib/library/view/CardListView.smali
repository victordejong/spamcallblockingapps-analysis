.class public Lit/gmariotti/cardslib/library/view/CardListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/CardListView$a;
    }
.end annotation


# static fields
.field protected static a:Ljava/lang/String; = "CardListView"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/a/c;

.field protected c:Lit/gmariotti/cardslib/library/a/d;

.field protected d:Lit/gmariotti/cardslib/library/view/listener/e;

.field protected e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 93
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/view/CardListView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    const/4 p1, 0x0

    .line 107
    invoke-direct {p0, p2, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    .line 112
    invoke-direct {p0, p2, p3}, Lit/gmariotti/cardslib/library/view/CardListView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/CardListView;->b(Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setDividerHeight(I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 144
    sget v0, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    .line 146
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 150
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_list_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final a()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .line 245
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->d:Lit/gmariotti/cardslib/library/view/listener/e;

    return-object v0
.end method

.method public final a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 4

    .line 266
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lit/gmariotti/cardslib/library/a/d;->a(Lit/gmariotti/cardslib/library/view/a/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1340
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v2, v1

    const/high16 v1, -0x80000000

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1341
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1342
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1344
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v0, v1}, Lit/gmariotti/cardslib/library/view/CardListView$a;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1345
    new-instance v1, Lit/gmariotti/cardslib/library/view/CardListView$a$2;

    invoke-direct {v1, p0, p2}, Lit/gmariotti/cardslib/library/view/CardListView$a$2;-><init>(Landroid/widget/AbsListView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1361
    new-instance p2, Lit/gmariotti/cardslib/library/view/CardListView$a$3;

    invoke-direct {p2, p1, p0}, Lit/gmariotti/cardslib/library/view/CardListView$a$3;-><init>(Lit/gmariotti/cardslib/library/view/a/a;Landroid/widget/AbsListView;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1375
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 273
    :cond_1
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    if-eqz p2, :cond_2

    .line 274
    invoke-virtual {p2, p1}, Lit/gmariotti/cardslib/library/a/d;->c(Lit/gmariotti/cardslib/library/view/a/a;)V

    :cond_2
    return-void
.end method

.method public final b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Lit/gmariotti/cardslib/library/a/d;->b(Lit/gmariotti/cardslib/library/view/a/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2307
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 2309
    invoke-static {p2, v0, v1}, Lit/gmariotti/cardslib/library/view/CardListView$a;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2310
    new-instance v1, Lit/gmariotti/cardslib/library/view/CardListView$a$1;

    invoke-direct {v1, p2, p1, p0}, Lit/gmariotti/cardslib/library/view/CardListView$a$1;-><init>(Landroid/view/View;Lit/gmariotti/cardslib/library/view/a/a;Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2325
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 289
    :cond_1
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    if-eqz p2, :cond_2

    .line 290
    invoke-virtual {p2, p1}, Lit/gmariotti/cardslib/library/a/d;->d(Lit/gmariotti/cardslib/library/view/a/a;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 66
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 169
    instance-of v0, p1, Lit/gmariotti/cardslib/library/a/c;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lit/gmariotti/cardslib/library/a/c;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setAdapter(Lit/gmariotti/cardslib/library/a/c;)V

    return-void

    .line 171
    :cond_0
    instance-of v0, p1, Lit/gmariotti/cardslib/library/a/d;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lit/gmariotti/cardslib/library/a/d;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setAdapter(Lit/gmariotti/cardslib/library/a/d;)V

    return-void

    .line 174
    :cond_1
    sget-object v0, Lit/gmariotti/cardslib/library/view/CardListView;->a:Ljava/lang/String;

    const-string v1, "You are using a generic adapter. Pay attention: your adapter has to call cardArrayAdapter#getView method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/a/c;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/c;->a(I)V

    .line 190
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/c;->a(Lit/gmariotti/cardslib/library/view/CardListView;)V

    .line 191
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->b:Lit/gmariotti/cardslib/library/a/c;

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/a/d;)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/d;->a(I)V

    .line 205
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/d;->a(Lit/gmariotti/cardslib/library/view/CardListView;)V

    .line 206
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    return-void
.end method

.method public setExternalAdapter(Landroid/widget/ListAdapter;Lit/gmariotti/cardslib/library/a/c;)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->b:Lit/gmariotti/cardslib/library/a/c;

    .line 221
    invoke-virtual {p2, p0}, Lit/gmariotti/cardslib/library/a/c;->a(Lit/gmariotti/cardslib/library/view/CardListView;)V

    .line 222
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->b:Lit/gmariotti/cardslib/library/a/c;

    iget p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/a/c;->a(I)V

    return-void
.end method

.method public setExternalAdapter(Landroid/widget/ListAdapter;Lit/gmariotti/cardslib/library/a/d;)V
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    .line 237
    invoke-virtual {p2, p0}, Lit/gmariotti/cardslib/library/a/d;->a(Lit/gmariotti/cardslib/library/view/CardListView;)V

    .line 238
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->c:Lit/gmariotti/cardslib/library/a/d;

    iget p2, p0, Lit/gmariotti/cardslib/library/view/CardListView;->e:I

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/a/d;->a(I)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 254
    instance-of v0, p1, Lit/gmariotti/cardslib/library/view/listener/e;

    if-eqz v0, :cond_0

    .line 255
    check-cast p1, Lit/gmariotti/cardslib/library/view/listener/e;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardListView;->d:Lit/gmariotti/cardslib/library/view/listener/e;

    :cond_0
    return-void
.end method

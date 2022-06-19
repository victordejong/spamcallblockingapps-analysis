.class public Lit/gmariotti/cardslib/library/view/BaseCardView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String; = "BaseCardView"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/a/b;

.field protected c:I

.field protected d:Landroid/view/View;

.field protected e:Lit/gmariotti/cardslib/library/view/component/CardShadowView;

.field protected f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

.field protected g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

.field protected h:Z

.field protected i:Z

.field protected j:Lit/gmariotti/cardslib/library/view/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, v0, v1}, Lit/gmariotti/cardslib/library/view/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/cardslib/library/view/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget v0, Lit/gmariotti/cardslib/library/a$e;->card_base_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->c:I

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->h:Z

    .line 90
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->i:Z

    .line 1125
    invoke-virtual {p0, p2, p3}, Lit/gmariotti/cardslib/library/view/BaseCardView;->a(Landroid/util/AttributeSet;I)V

    .line 1128
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/BaseCardView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1156
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 1157
    iget p3, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->c:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->d:Landroid/view/View;

    .line 110
    :cond_0
    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/b/f;->a(Landroid/content/Context;)Lit/gmariotti/cardslib/library/view/b/a;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->j:Lit/gmariotti/cardslib/library/view/b/a;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 182
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->b:Lit/gmariotti/cardslib/library/a/b;

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lit/gmariotti/cardslib/library/view/BaseCardView;->a:Ljava/lang/String;

    const-string v1, "No card model found. Please use setCard(card) to set all values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1196
    :cond_0
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->e:Lit/gmariotti/cardslib/library/view/component/CardShadowView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1198
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isShadow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->e:Lit/gmariotti/cardslib/library/view/component/CardShadowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->setVisibility(I)V

    return-void

    .line 1201
    :cond_1
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->e:Lit/gmariotti/cardslib/library/view/component/CardShadowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected a(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 144
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->c:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method protected b()V
    .locals 1

    .line 213
    sget v0, Lit/gmariotti/cardslib/library/a$c;->card_shadow_layout:I

    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/view/BaseCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->e:Lit/gmariotti/cardslib/library/view/component/CardShadowView;

    return-void
.end method

.method public final c()Lit/gmariotti/cardslib/library/view/component/CardHeaderView;
    .locals 1

    .line 249
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->f:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    return-object v0
.end method

.method public final d()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;
    .locals 1

    .line 258
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->g:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->h:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->i:Z

    return v0
.end method

.method public getCard()Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    .line 231
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->b:Lit/gmariotti/cardslib/library/a/b;

    return-object v0
.end method

.method public setCard(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->b:Lit/gmariotti/cardslib/library/a/b;

    return-void
.end method

.method public setForceReplaceInnerLayout(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->i:Z

    return-void
.end method

.method public setRecycle(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/BaseCardView;->h:Z

    return-void
.end method

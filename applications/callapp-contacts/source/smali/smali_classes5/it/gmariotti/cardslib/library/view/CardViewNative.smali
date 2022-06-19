.class public Lit/gmariotti/cardslib/library/view/CardViewNative;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/CardViewNative$c;,
        Lit/gmariotti/cardslib/library/view/CardViewNative$a;,
        Lit/gmariotti/cardslib/library/view/CardViewNative$b;,
        Lit/gmariotti/cardslib/library/view/CardViewNative$d;
    }
.end annotation


# static fields
.field protected static e:Ljava/lang/String; = "CardViewNative"


# instance fields
.field protected f:Lit/gmariotti/cardslib/library/a/b;

.field protected g:I

.field protected h:Landroid/view/View;

.field protected i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

.field protected j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

.field protected k:Z

.field protected l:Z

.field protected m:Lit/gmariotti/cardslib/library/view/b/a;

.field protected n:Lit/gmariotti/cardslib/library/a/i;

.field protected o:Lit/gmariotti/cardslib/library/a/j;

.field protected p:Lit/gmariotti/cardslib/library/a/e;

.field protected q:Landroid/view/View;

.field protected r:Landroid/view/View;

.field protected s:Landroid/view/View;

.field protected t:Landroid/view/View;

.field protected u:Landroid/view/View;

.field protected v:Landroid/animation/Animator;

.field protected w:Lit/gmariotti/cardslib/library/view/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, p1, v0, v1}, Lit/gmariotti/cardslib/library/view/CardViewNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/cardslib/library/view/CardViewNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 232
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    sget v0, Lit/gmariotti/cardslib/library/a$e;->native_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->g:I

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->k:Z

    .line 153
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->l:Z

    .line 2265
    sget v0, Lit/gmariotti/cardslib/library/a$e;->native_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->g:I

    .line 2267
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2271
    :try_start_0
    sget p3, Lit/gmariotti/cardslib/library/a$g;->card_options_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->g:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2273
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2253
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2283
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 2284
    iget p3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->g:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->h:Landroid/view/View;

    .line 2287
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lit/gmariotti/cardslib/library/a$a;->card_background_default_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setRadius(F)V

    .line 235
    :cond_0
    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/b/f;->a(Landroid/content/Context;)Lit/gmariotti/cardslib/library/view/b/a;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->m:Lit/gmariotti/cardslib/library/view/b/a;

    return-void

    :catchall_0
    move-exception p1

    .line 2273
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private b(I)Landroid/view/View;
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-gez p1, :cond_0

    if-le p1, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 706
    :cond_1
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->r:Landroid/view/View;

    goto :goto_0

    .line 709
    :cond_2
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->q:Landroid/view/View;

    goto :goto_0

    .line 700
    :cond_3
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    goto :goto_0

    .line 703
    :cond_4
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    goto :goto_0

    :cond_5
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1082
    sget v0, Lit/gmariotti/cardslib/library/a/b;->DEFAULT_COLOR:I

    if-eq p1, v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1095
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->m:Lit/gmariotti/cardslib/library/view/b/a;

    invoke-interface {v1, v0, p1}, Lit/gmariotti/cardslib/library/view/b/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->k:Z

    .line 340
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->k:Z

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 297
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->drawableHotspotChanged(FF)V

    .line 298
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lit/gmariotti/cardslib/library/view/ForegroundLinearLayout;

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 7

    .line 973
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 974
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    .line 976
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 978
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->a(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    return-void

    .line 980
    :cond_1
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->b(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    :cond_2
    return-void
.end method

.method public getCard()Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    .line 1150
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    return-object v0
.end method

.method public getInternalContentLayout()Landroid/view/View;
    .locals 1

    .line 1224
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->r:Landroid/view/View;

    return-object v0
.end method

.method public getInternalHeaderLayout()Lit/gmariotti/cardslib/library/view/component/CardHeaderView;
    .locals 1

    .line 1159
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    return-object v0
.end method

.method public getInternalMainCardLayout()Landroid/view/View;
    .locals 1

    .line 1269
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->q:Landroid/view/View;

    return-object v0
.end method

.method public getInternalThumbnailLayout()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;
    .locals 1

    .line 1169
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    return-object v0
.end method

.method public getOnExpandListAnimatorListener()Lit/gmariotti/cardslib/library/view/a/a$a;
    .locals 1

    .line 1057
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->w:Lit/gmariotti/cardslib/library/view/a/a$a;

    return-object v0
.end method

.method public final h()V
    .locals 7

    .line 987
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 988
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    .line 990
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 992
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->b(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 7

    .line 999
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1000
    new-instance v6, Lit/gmariotti/cardslib/library/view/CardViewNative$b;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lit/gmariotti/cardslib/library/view/CardViewNative$b;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    .line 1002
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1004
    invoke-static {v6}, Lit/gmariotti/cardslib/library/view/CardViewNative$a;->a(Lit/gmariotti/cardslib/library/view/CardViewNative$b;)V

    :cond_1
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 1241
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_0

    .line 1242
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->isExpanded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForceReplaceInnerLayout()Z
    .locals 1

    .line 1197
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->l:Z

    return v0
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecycle()Z
    .locals 1

    .line 1178
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->k:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1043
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCard(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 13

    .line 316
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->n:Lit/gmariotti/cardslib/library/a/i;

    .line 320
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->o:Lit/gmariotti/cardslib/library/a/j;

    .line 321
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->p:Lit/gmariotti/cardslib/library/a/e;

    .line 325
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isRecycle()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2402
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_main_layout:I

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->q:Landroid/view/View;

    .line 2405
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_header_layout:I

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    .line 2408
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_content_expand_layout:I

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    .line 2411
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_main_content_layout:I

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->r:Landroid/view/View;

    .line 2414
    sget p1, Lit/gmariotti/cardslib/library/a$c;->card_thumbnail_layout:I

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    .line 3361
    :cond_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-nez p1, :cond_2

    .line 3362
    sget-object p1, Lit/gmariotti/cardslib/library/view/CardViewNative;->e:Ljava/lang/String;

    const-string v0, "No card model found. Please use setCard(card) to set all values."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3365
    :cond_2
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/b;->setCardView(Lit/gmariotti/cardslib/library/view/a/a;)V

    .line 3423
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardElevation()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3424
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardElevation()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setCardElevation(F)V

    .line 3433
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->n:Lit/gmariotti/cardslib/library/a/i;

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 3435
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    if-eqz p1, :cond_5

    .line 3436
    invoke-virtual {p1, v2}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setVisibility(I)V

    .line 3439
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isRecycle()Z

    move-result v3

    invoke-virtual {p1, v3}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setRecycle(Z)V

    .line 3440
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result v3

    invoke-virtual {p1, v3}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setForceReplaceInnerLayout(Z)V

    .line 3442
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->n:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1, v3}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(Lit/gmariotti/cardslib/library/a/i;)V

    goto :goto_0

    .line 3447
    :cond_4
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    if-eqz p1, :cond_5

    .line 3448
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->setVisibility(I)V

    .line 3451
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3452
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    invoke-virtual {p1, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(Lit/gmariotti/cardslib/library/a/i;)V

    .line 3463
    :cond_5
    :goto_0
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->r:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 3467
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3469
    :catch_0
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setRecycle(Z)V

    move-object p1, v1

    .line 3474
    :goto_1
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isRecycle()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 3483
    :cond_6
    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v3}, Lit/gmariotti/cardslib/library/a/b;->getInnerLayout()I

    move-result v3

    if-ltz v3, :cond_9

    .line 3484
    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->s:Landroid/view/View;

    invoke-virtual {v3, p1, v4}, Lit/gmariotti/cardslib/library/a/b;->setupInnerViewElements(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_3

    .line 3476
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->r:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->s:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 3477
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3479
    :cond_8
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->r:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v4}, Lit/gmariotti/cardslib/library/a/b;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->s:Landroid/view/View;

    .line 3494
    :cond_9
    :goto_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    if-eqz p1, :cond_b

    .line 3495
    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->o:Lit/gmariotti/cardslib/library/a/j;

    if-eqz v3, :cond_a

    .line 3496
    invoke-virtual {p1, v2}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setVisibility(I)V

    .line 3497
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isRecycle()Z

    move-result v3

    invoke-virtual {p1, v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setRecycle(Z)V

    .line 3498
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result v3

    invoke-virtual {p1, v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setForceReplaceInnerLayout(Z)V

    .line 3499
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->j:Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->o:Lit/gmariotti/cardslib/library/a/j;

    invoke-virtual {p1, v3}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->a(Lit/gmariotti/cardslib/library/a/j;)V

    goto :goto_4

    .line 3501
    :cond_a
    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;->setVisibility(I)V

    .line 3948
    :cond_b
    :goto_4
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->p:Lit/gmariotti/cardslib/library/a/e;

    if-eqz p1, :cond_10

    .line 3952
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isRecycle()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_5

    .line 3961
    :cond_c
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->p:Lit/gmariotti/cardslib/library/a/e;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/e;->getInnerLayout()I

    move-result p1

    if-ltz p1, :cond_f

    .line 3962
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->p:Lit/gmariotti/cardslib/library/a/e;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->u:Landroid/view/View;

    invoke-virtual {p1, v3, v4}, Lit/gmariotti/cardslib/library/a/e;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_6

    .line 3954
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isForceReplaceInnerLayout()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz p1, :cond_e

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->u:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 3955
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3957
    :cond_e
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->p:Lit/gmariotti/cardslib/library/a/e;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v4}, Lit/gmariotti/cardslib/library/a/e;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->u:Landroid/view/View;

    .line 3965
    :cond_f
    :goto_6
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v3, -0x2

    .line 3966
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3967
    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4526
    :cond_10
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-eqz p1, :cond_11

    .line 4527
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->setupSupplementalActions()V

    .line 4571
    :cond_11
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4572
    new-instance p1, Lit/gmariotti/cardslib/library/view/listener/d;

    iget-object v3, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    new-instance v4, Lit/gmariotti/cardslib/library/view/CardViewNative$2;

    invoke-direct {v4, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$2;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;)V

    invoke-direct {p1, p0, v3, v4}, Lit/gmariotti/cardslib/library/view/listener/d;-><init>(Lit/gmariotti/cardslib/library/view/a/a;Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/view/listener/d$a;)V

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_7

    .line 4588
    :cond_12
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_7
    const/4 p1, 0x2

    .line 4666
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->b(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 4668
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_13
    const/4 v3, 0x1

    .line 4670
    invoke-direct {p0, v3}, Lit/gmariotti/cardslib/library/view/CardViewNative;->b(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 4672
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_14
    const/16 v4, 0xa

    .line 4674
    invoke-direct {p0, v4}, Lit/gmariotti/cardslib/library/view/CardViewNative;->b(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 4676
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_15
    const/16 v4, 0x9

    .line 4678
    invoke-direct {p0, v4}, Lit/gmariotti/cardslib/library/view/CardViewNative;->b(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 4680
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 4596
    :cond_16
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4598
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->isMultiChoiceEnabled()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 4599
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->getOnClickListener()Lit/gmariotti/cardslib/library/a/b$a;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 4600
    new-instance v4, Lit/gmariotti/cardslib/library/view/CardViewNative$3;

    invoke-direct {v4, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$3;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;)V

    invoke-virtual {p0, v4}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 4614
    :cond_17
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->getMultipleOnClickListener()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 4615
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    .line 4617
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4618
    invoke-direct {p0, v6}, Lit/gmariotti/cardslib/library/view/CardViewNative;->b(I)Landroid/view/View;

    move-result-object v7

    .line 4619
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lit/gmariotti/cardslib/library/a/b$a;

    if-eqz v7, :cond_18

    .line 4622
    new-instance v9, Lit/gmariotti/cardslib/library/view/CardViewNative$4;

    invoke-direct {v9, p0, v8}, Lit/gmariotti/cardslib/library/view/CardViewNative$4;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Lit/gmariotti/cardslib/library/a/b$a;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v6, :cond_18

    .line 4633
    iget-object v6, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->m:Lit/gmariotti/cardslib/library/view/b/a;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v6, v8}, Lit/gmariotti/cardslib/library/view/b/a;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lit/gmariotti/cardslib/library/view/b/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 4639
    :cond_19
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setClickable(Z)V

    goto :goto_9

    .line 4644
    :cond_1a
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setClickable(Z)V

    .line 4648
    :cond_1b
    :goto_9
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4649
    new-instance v4, Lit/gmariotti/cardslib/library/view/CardViewNative$5;

    invoke-direct {v4, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$5;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;)V

    invoke-virtual {p0, v4}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_a

    .line 4658
    :cond_1c
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/view/CardViewNative;->setLongClickable(Z)V

    .line 5537
    :goto_a
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->n:Lit/gmariotti/cardslib/library/a/i;

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    .line 5538
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 5541
    :cond_1e
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lit/gmariotti/cardslib/library/view/CardViewNative$1;

    invoke-direct {v5, p0}, Lit/gmariotti/cardslib/library/view/CardViewNative$1;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5725
    :cond_1f
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    if-eqz v4, :cond_2b

    .line 5726
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5732
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->n:Lit/gmariotti/cardslib/library/a/i;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 5734
    invoke-static {}, Lit/gmariotti/cardslib/library/a/k;->a()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v4

    iget-object v5, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->i:Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    .line 5735
    invoke-virtual {v5}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Lit/gmariotti/cardslib/library/a/k;->a(Landroid/view/View;)Lit/gmariotti/cardslib/library/a/k;

    move-result-object v4

    .line 5736
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->b()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v4

    const/4 v5, 0x1

    goto :goto_c

    .line 5739
    :cond_20
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 5741
    iget-object v4, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v4

    goto :goto_b

    :cond_21
    move-object v4, v1

    :goto_b
    const/4 v5, 0x0

    :goto_c
    if-eqz v4, :cond_2b

    .line 5746
    new-instance v12, Lit/gmariotti/cardslib/library/view/CardViewNative$c;

    iget-object v8, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    iget-object v9, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->d()Z

    move-result v10

    const/4 v11, 0x0

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lit/gmariotti/cardslib/library/view/CardViewNative$c;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Landroid/view/View;Lit/gmariotti/cardslib/library/a/b;ZLit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    .line 5752
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->c()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_23

    if-nez v5, :cond_28

    .line 5759
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->f()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 5760
    new-instance p1, Lit/gmariotti/cardslib/library/view/CardViewNative$d;

    invoke-direct {p1, p0, v12, v1}, Lit/gmariotti/cardslib/library/view/CardViewNative$d;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Lit/gmariotti/cardslib/library/view/CardViewNative$c;Lit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_e

    .line 5762
    :cond_22
    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e

    .line 5766
    :cond_23
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->e()Lit/gmariotti/cardslib/library/a/k$a;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 5768
    sget-object v7, Lit/gmariotti/cardslib/library/view/CardViewNative$6;->a:[I

    invoke-virtual {v5}, Lit/gmariotti/cardslib/library/a/k$a;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v3, :cond_27

    if-eq v5, p1, :cond_26

    const/4 p1, 0x3

    if-eq v5, p1, :cond_25

    const/4 p1, 0x4

    if-eq v5, p1, :cond_24

    goto :goto_d

    .line 5779
    :cond_24
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getInternalContentLayout()Landroid/view/View;

    move-result-object v6

    goto :goto_d

    .line 5776
    :cond_25
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getInternalThumbnailLayout()Lit/gmariotti/cardslib/library/view/component/CardThumbnailView;

    move-result-object v6

    goto :goto_d

    .line 5773
    :cond_26
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getInternalHeaderLayout()Lit/gmariotti/cardslib/library/view/component/CardHeaderView;

    move-result-object v6

    goto :goto_d

    :cond_27
    move-object v6, p0

    :goto_d
    if-eqz v6, :cond_29

    .line 5783
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->f()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 5784
    new-instance p1, Lit/gmariotti/cardslib/library/view/CardViewNative$d;

    invoke-direct {p1, p0, v12, v1}, Lit/gmariotti/cardslib/library/view/CardViewNative$d;-><init>(Lit/gmariotti/cardslib/library/view/CardViewNative;Lit/gmariotti/cardslib/library/view/CardViewNative$c;Lit/gmariotti/cardslib/library/view/CardViewNative$1;)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_e

    .line 5786
    :cond_28
    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5792
    :cond_29
    :goto_e
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 5794
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_2b

    .line 5796
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->d()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 5797
    invoke-virtual {v6, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_f

    .line 5801
    :cond_2a
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->t:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_2b

    .line 5803
    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/k;->d()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 5804
    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    .line 6512
    :cond_2b
    :goto_f
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-eqz p1, :cond_2e

    .line 6513
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResourceId()I

    move-result p1

    sget v0, Lit/gmariotti/cardslib/library/a/b;->DEFAULT_COLOR:I

    if-eq p1, v0, :cond_2c

    .line 6514
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->a(I)V

    goto :goto_10

    .line 6515
    :cond_2c
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 6516
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardViewNative;->a(Landroid/graphics/drawable/Drawable;)V

    .line 6519
    :cond_2d
    :goto_10
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundColorResourceId()I

    move-result p1

    sget v0, Lit/gmariotti/cardslib/library/a/b;->DEFAULT_COLOR:I

    if-eq p1, v0, :cond_2e

    .line 6520
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getBackgroundColorResourceId()I

    move-result p1

    .line 7108
    sget v0, Lit/gmariotti/cardslib/library/a/b;->DEFAULT_COLOR:I

    if-eq p1, v0, :cond_2e

    .line 7110
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->q:Landroid/view/View;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardViewNative;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2e
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->f:Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0, p1}, Lit/gmariotti/cardslib/library/a/b;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public setForceReplaceInnerLayout(Z)V
    .locals 0

    .line 1207
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->l:Z

    return-void
.end method

.method public setOnExpandListAnimatorListener(Lit/gmariotti/cardslib/library/view/a/a$a;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->w:Lit/gmariotti/cardslib/library/view/a/a$a;

    return-void
.end method

.method public setRecycle(Z)V
    .locals 0

    .line 1188
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/CardViewNative;->k:Z

    return-void
.end method

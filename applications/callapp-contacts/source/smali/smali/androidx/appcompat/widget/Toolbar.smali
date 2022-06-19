.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$a;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/content/res/ColorStateList;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Z

.field private F:Z

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final H:[I

.field private final I:Landroidx/appcompat/widget/ActionMenuView$d;

.field private J:Landroidx/appcompat/widget/ac;

.field private K:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private L:Landroidx/appcompat/view/menu/m$a;

.field private M:Landroidx/appcompat/view/menu/g$a;

.field private N:Z

.field private final O:Ljava/lang/Runnable;

.field a:Landroidx/appcompat/widget/ActionMenuView;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/view/View;

.field d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/CharSequence;

.field j:Ljava/lang/CharSequence;

.field final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroidx/appcompat/widget/Toolbar$b;

.field m:Landroidx/appcompat/widget/Toolbar$a;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/content/Context;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroidx/appcompat/widget/v;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 232
    sget v0, Landroidx/appcompat/a$a;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    .line 181
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->B:I

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 198
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:[I

    .line 202
    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$d;

    .line 221
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/a$j;->Toolbar:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ab;

    move-result-object v0

    .line 241
    sget-object v5, Landroidx/appcompat/a$j;->Toolbar:[I

    .line 3076
    iget-object v7, v0, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    .line 241
    invoke-static/range {v3 .. v8}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 244
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleTextAppearance:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 245
    sget p1, Landroidx/appcompat/a$j;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 246
    sget p1, Landroidx/appcompat/a$j;->Toolbar_android_gravity:I

    iget p2, p0, Landroidx/appcompat/widget/Toolbar;->B:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->c(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->B:I

    .line 247
    sget p1, Landroidx/appcompat/a$j;->Toolbar_buttonGravity:I

    const/16 p2, 0x30

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->c(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->d:I

    .line 250
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleMargin:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    .line 251
    sget p2, Landroidx/appcompat/a$j;->Toolbar_titleMargins:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 253
    sget p2, Landroidx/appcompat/a$j;->Toolbar_titleMargins:I

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    .line 255
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->h:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->g:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->f:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->e:I

    .line 257
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleMarginStart:I

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 259
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->e:I

    .line 262
    :cond_1
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleMarginEnd:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    if-ltz p1, :cond_2

    .line 264
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->f:I

    .line 267
    :cond_2
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleMarginTop:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 269
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->g:I

    .line 272
    :cond_3
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleMarginBottom:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    if-ltz p1, :cond_4

    .line 275
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->h:I

    .line 278
    :cond_4
    sget p1, Landroidx/appcompat/a$j;->Toolbar_maxButtonHeight:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    .line 280
    sget p1, Landroidx/appcompat/a$j;->Toolbar_contentInsetStart:I

    const/high16 p2, -0x80000000

    .line 281
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    .line 283
    sget p3, Landroidx/appcompat/a$j;->Toolbar_contentInsetEnd:I

    .line 284
    invoke-virtual {v0, p3, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p3

    .line 286
    sget v1, Landroidx/appcompat/a$j;->Toolbar_contentInsetLeft:I

    .line 287
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v1

    .line 288
    sget v3, Landroidx/appcompat/a$j;->Toolbar_contentInsetRight:I

    .line 289
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v3

    .line 291
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->t()V

    .line 292
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/v;->b(II)V

    if-ne p1, p2, :cond_5

    if-eq p3, p2, :cond_6

    .line 296
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    invoke-virtual {v1, p1, p3}, Landroidx/appcompat/widget/v;->a(II)V

    .line 299
    :cond_6
    sget p1, Landroidx/appcompat/a$j;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    .line 301
    sget p1, Landroidx/appcompat/a$j;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->A:I

    .line 304
    sget p1, Landroidx/appcompat/a$j;->Toolbar_collapseIcon:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->r:Landroid/graphics/drawable/Drawable;

    .line 305
    sget p1, Landroidx/appcompat/a$j;->Toolbar_collapseContentDescription:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->s:Ljava/lang/CharSequence;

    .line 307
    sget p1, Landroidx/appcompat/a$j;->Toolbar_title:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 309
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    :cond_7
    sget p1, Landroidx/appcompat/a$j;->Toolbar_subtitle:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 314
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 318
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    .line 319
    sget p1, Landroidx/appcompat/a$j;->Toolbar_popupTheme:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 321
    sget p1, Landroidx/appcompat/a$j;->Toolbar_navigationIcon:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 323
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 325
    :cond_9
    sget p1, Landroidx/appcompat/a$j;->Toolbar_navigationContentDescription:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 327
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    :cond_a
    sget p1, Landroidx/appcompat/a$j;->Toolbar_logo:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 332
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_b
    sget p1, Landroidx/appcompat/a$j;->Toolbar_logoDescription:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 337
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 340
    :cond_c
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleTextColor:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 341
    sget p1, Landroidx/appcompat/a$j;->Toolbar_titleTextColor:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 344
    :cond_d
    sget p1, Landroidx/appcompat/a$j;->Toolbar_subtitleTextColor:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 345
    sget p1, Landroidx/appcompat/a$j;->Toolbar_subtitleTextColor:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 348
    :cond_e
    sget p1, Landroidx/appcompat/a$j;->Toolbar_menu:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 349
    sget p1, Landroidx/appcompat/a$j;->Toolbar_menu:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->a(I)V

    .line 3252
    :cond_f
    iget-object p1, v0, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;I)I
    .locals 6

    .line 2090
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2091
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 2092
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2093
    :goto_0
    iget v2, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->b(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    .line 2103
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result p2

    .line 2104
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    .line 2105
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    .line 2107
    div-int/lit8 v4, v4, 0x2

    .line 2108
    iget v5, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v4, v5, :cond_1

    .line 2109
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 2113
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_2

    .line 2114
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    :goto_1
    add-int/2addr p2, v4

    return p2

    .line 2098
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 2095
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1656
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1657
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1658
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1659
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 1661
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 1662
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 1665
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1664
    invoke-static {p2, p6, p3}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1667
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1666
    invoke-static {p4, p3, p5}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 1670
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1671
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 4

    .line 2065
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2066
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2067
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 2068
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2069
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 2070
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int v1, p2, p4

    .line 2071
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2072
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    return p2
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 1

    .line 2205
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2206
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2207
    :cond_0
    instance-of v0, p0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2208
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2209
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2210
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2212
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 3

    .line 1629
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1632
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1631
    invoke-static {p2, v1, p3}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 1635
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/lit8 p3, p3, 0x0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1634
    invoke-static {p4, p3, v0}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 1638
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p4, v0, :cond_1

    if-ltz p5, :cond_1

    if-eqz p4, :cond_0

    .line 1641
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1643
    :cond_0
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1645
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .line 1512
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1515
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1516
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1517
    invoke-static {v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1519
    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    .line 1521
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-eqz p2, :cond_2

    .line 1523
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 1524
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1525
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1527
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2141
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2142
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v3

    .line 2144
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v4

    .line 2143
    invoke-static {p2, v4}, Landroidx/core/view/e;->a(II)I

    move-result p2

    .line 2146
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 2150
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2151
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2152
    iget v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    .line 2153
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->c(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 2154
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-ge v1, v3, :cond_5

    .line 2159
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2160
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2161
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v4, :cond_4

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    .line 2162
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->c(I)I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 2163
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2184
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 2129
    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->B:I

    and-int/lit8 p1, p1, 0x70

    :cond_0
    return p1
.end method

.method private static b(Landroid/view/View;)I
    .locals 1

    .line 2188
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2189
    invoke-static {p0}, Landroidx/core/view/h;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 2190
    invoke-static {p0}, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 5

    .line 2078
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2079
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 2080
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 2081
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 2082
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 2083
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    .line 2084
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 2085
    iget p1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method private c(I)I
    .locals 4

    .line 2170
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    .line 2171
    invoke-static {p1, v0}, Landroidx/core/view/e;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method private static c(Landroid/view/View;)I
    .locals 1

    .line 2194
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2195
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p0

    return v0
.end method

.method private d(Landroid/view/View;)Z
    .locals 1

    .line 2258
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected static h()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2218
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private k()V
    .locals 2

    .line 695
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 1154
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->m()V

    .line 1155
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 7680
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_1

    .line 1157
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 1158
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v1, :cond_0

    .line 1159
    new-instance v1, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    .line 1161
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1162
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 3

    .line 1167
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 1169
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1170
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$d;)V

    .line 1171
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/view/menu/m$a;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/g$a;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 1172
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    .line 1173
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->d:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    .line 1174
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private n()Landroid/view/MenuInflater;
    .locals 2

    .line 1180
    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private o()I
    .locals 2

    .line 1248
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_1

    .line 8047
    iget-boolean v1, v0, Landroidx/appcompat/widget/v;->g:Z

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/appcompat/widget/v;->b:I

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/widget/v;->a:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private p()I
    .locals 2

    .line 1268
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_1

    .line 8051
    iget-boolean v1, v0, Landroidx/appcompat/widget/v;->g:Z

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/appcompat/widget/v;->a:I

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/widget/v;->b:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private q()I
    .locals 3

    .line 1428
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->o()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1430
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->o()I

    move-result v0

    return v0
.end method

.method private r()I
    .locals 3

    .line 1443
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8680
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1448
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->p()I

    move-result v0

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->A:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1449
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->p()I

    move-result v0

    return v0
.end method

.method private s()V
    .locals 4

    .line 1483
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1484
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/a$a;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    .line 1486
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 1487
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->d:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    .line 1488
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    .line 2286
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    if-nez v0, :cond_0

    .line 2287
    new-instance v0, Landroidx/appcompat/widget/v;

    invoke-direct {v0}, Landroidx/appcompat/widget/v;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1193
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->n()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final ak_()Z
    .locals 4

    .line 527
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4708
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public final b()Z
    .locals 4

    .line 542
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5689
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public final c()V
    .locals 1

    .line 725
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    :goto_0
    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 2223
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .line 917
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1009
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Landroid/view/Menu;
    .locals 1

    .line 1128
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->l()V

    .line 1129
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method final g()V
    .locals 4

    .line 1493
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1494
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/a$a;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1496
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1498
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 1499
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->d:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    const/4 v1, 0x2

    .line 1500
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    .line 1501
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$3;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$3;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 145
    invoke-static {}, Landroidx/appcompat/widget/Toolbar;->h()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 12200
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 145
    invoke-static {p1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final i()Landroidx/appcompat/widget/o;
    .locals 2

    .line 2229
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/ac;

    if-nez v0, :cond_0

    .line 2230
    new-instance v0, Landroidx/appcompat/widget/ac;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/ac;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/ac;

    .line 2232
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/ac;

    return-object v0
.end method

.method final j()V
    .locals 2

    .line 2249
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2252
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2254
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1573
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1574
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1610
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    .line 1613
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1614
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 1616
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 1621
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->F:Z

    :cond_3
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1827
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1828
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1829
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v5

    .line 1830
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1831
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1832
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1833
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 1837
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->H:[I

    .line 1838
    aput v3, v11, v2

    aput v3, v11, v3

    .line 1841
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->l(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    .line 1842
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 1844
    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    .line 1846
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    .line 1849
    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    .line 1854
    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    .line 1856
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    .line 1859
    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    .line 1864
    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    .line 1866
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 1869
    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    .line 11462
    :cond_7
    :goto_5
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v15

    if-ne v15, v2, :cond_8

    .line 11463
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->r()I

    move-result v15

    goto :goto_6

    .line 11464
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->q()I

    move-result v15

    .line 11477
    :goto_6
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 11478
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->q()I

    move-result v3

    goto :goto_7

    .line 11479
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->r()I

    move-result v3

    :goto_7
    sub-int v2, v15, v13

    move/from16 p4, v7

    const/4 v7, 0x0

    .line 1876
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v7

    sub-int v2, v10, v14

    sub-int v2, v3, v2

    .line 1877
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x1

    aput v2, v11, v7

    .line 1878
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v10, v3

    .line 1879
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1881
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v1, :cond_a

    .line 1883
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-direct {v0, v7, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_8

    .line 1886
    :cond_a
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-direct {v0, v7, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v2

    .line 1891
    :cond_b
    :goto_8
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v1, :cond_c

    .line 1893
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-direct {v0, v7, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_9

    .line 1896
    :cond_c
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-direct {v0, v7, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v2

    .line 1901
    :cond_d
    :goto_9
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    .line 1902
    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-direct {v0, v10}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v10

    if-eqz v7, :cond_e

    .line 1905
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1906
    iget v14, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v14, v15

    iget v13, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v13

    const/4 v13, 0x0

    add-int/2addr v14, v13

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    if-eqz v10, :cond_f

    .line 1909
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1910
    iget v15, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v15, v4

    iget v4, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v4

    add-int/2addr v14, v15

    goto :goto_b

    :cond_f
    move/from16 v16, v4

    :goto_b
    if-nez v7, :cond_11

    if-eqz v10, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v17, v6

    move/from16 p3, v12

    goto/16 :goto_18

    :cond_11
    :goto_c
    if-eqz v7, :cond_12

    .line 1915
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    goto :goto_d

    :cond_12
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    :goto_d
    if-eqz v10, :cond_13

    .line 1916
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    goto :goto_e

    :cond_13
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    .line 1917
    :goto_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1918
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v7, :cond_14

    .line 1919
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_15

    :cond_14
    if-eqz v10, :cond_16

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    .line 1920
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_16

    :cond_15
    move/from16 v17, v6

    const/4 v15, 0x1

    goto :goto_f

    :cond_16
    move/from16 v17, v6

    const/4 v15, 0x0

    .line 1922
    :goto_f
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->B:I

    and-int/lit8 v6, v6, 0x70

    move/from16 p3, v12

    const/16 v12, 0x30

    if-eq v6, v12, :cond_1a

    const/16 v12, 0x50

    if-eq v6, v12, :cond_19

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v14

    .line 1929
    div-int/lit8 v6, v6, 0x2

    .line 1930
    iget v12, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 p5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->g:I

    add-int/2addr v12, v2

    if-ge v6, v12, :cond_17

    .line 1931
    iget v2, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->g:I

    add-int v6, v2, v4

    goto :goto_10

    :cond_17
    sub-int/2addr v5, v9

    sub-int/2addr v5, v14

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    .line 1935
    iget v2, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->h:I

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_18

    .line 1936
    iget v2, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->h:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_18
    :goto_10
    add-int/2addr v8, v6

    goto :goto_11

    :cond_19
    move/from16 p5, v2

    sub-int/2addr v5, v9

    .line 1943
    iget v2, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->h:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v14

    goto :goto_11

    :cond_1a
    move/from16 p5, v2

    .line 1924
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    iget v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->g:I

    add-int v8, v2, v4

    :goto_11
    if-eqz v1, :cond_1f

    if-eqz v15, :cond_1b

    .line 1948
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->e:I

    goto :goto_12

    :cond_1b
    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x1

    aget v4, v11, v2

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    .line 1949
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v1, v1

    .line 1950
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v7, :cond_1c

    .line 1955
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1956
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    .line 1957
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 1958
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1959
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->f:I

    sub-int/2addr v2, v5

    .line 1960
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v4, v1

    goto :goto_13

    :cond_1c
    move v2, v3

    :goto_13
    if-eqz v10, :cond_1d

    .line 1963
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1964
    iget v4, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v4

    .line 1965
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    .line 1966
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 1967
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1968
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->f:I

    sub-int v4, v3, v4

    .line 1969
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_14

    :cond_1d
    move v4, v3

    :goto_14
    if-eqz v15, :cond_1e

    .line 1972
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v1

    :cond_1e
    move/from16 v2, p5

    goto/16 :goto_18

    :cond_1f
    if-eqz v15, :cond_20

    .line 1975
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->e:I

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x0

    aget v4, v11, v2

    sub-int/2addr v1, v4

    .line 1976
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, p5, v4

    neg-int v1, v1

    .line 1977
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v7, :cond_21

    .line 1982
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1983
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v4

    .line 1984
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 1985
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1986
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->f:I

    add-int/2addr v2, v6

    .line 1987
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_16

    :cond_21
    move v2, v4

    :goto_16
    if-eqz v10, :cond_22

    .line 1990
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1991
    iget v5, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v5

    .line 1992
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 1993
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    .line 1994
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v4, v8, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1995
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->f:I

    add-int/2addr v5, v6

    .line 1996
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_17

    :cond_22
    move v5, v4

    :goto_17
    if-eqz v15, :cond_23

    .line 1999
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_18

    :cond_23
    move v2, v4

    .line 2007
    :goto_18
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 2008
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_24

    .line 2010
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v12, p3

    invoke-direct {v0, v5, v4, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    move/from16 v12, p3

    .line 2014
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 2015
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_25

    .line 2017
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v5, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2023
    :cond_25
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 2024
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 12045
    aget v6, v11, v5

    .line 12046
    aget v2, v11, v2

    .line 12048
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-ge v7, v5, :cond_26

    .line 12050
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 12051
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 12052
    iget v13, v10, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v13, v6

    .line 12053
    iget v6, v10, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    .line 12054
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 12055
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    neg-int v13, v13

    .line 12056
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    neg-int v6, v6

    .line 12057
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 12058
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v10, v9

    add-int/2addr v10, v14

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    move v2, v6

    move v6, v13

    goto :goto_1b

    :cond_26
    const/4 v2, 0x0

    sub-int v1, v16, v17

    sub-int v1, v1, p4

    .line 2025
    div-int/lit8 v1, v1, 0x2

    add-int v6, v17, v1

    .line 2026
    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v6, v1

    add-int/2addr v8, v6

    if-ge v6, v4, :cond_27

    goto :goto_1c

    :cond_27
    if-le v8, v3, :cond_28

    sub-int/2addr v8, v3

    sub-int v4, v6, v8

    goto :goto_1c

    :cond_28
    move v4, v6

    .line 2035
    :goto_1c
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_29

    .line 2037
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v4, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 2041
    :cond_29
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v7, p0

    .line 1697
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->H:[I

    .line 1700
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ah;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1711
    :goto_0
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1712
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->x:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII)V

    .line 1714
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1715
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    .line 1716
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1715
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1717
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    .line 1718
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    .line 1717
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v13, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1721
    :goto_1
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1722
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->x:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII)V

    .line 1724
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1725
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1726
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1727
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1726
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1728
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1729
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 1728
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1732
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->q()I

    move-result v1

    .line 1733
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v14, v2, 0x0

    sub-int/2addr v1, v0

    .line 1734
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v6

    .line 1737
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1738
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v5, v7, Landroidx/appcompat/widget/Toolbar;->x:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII)V

    .line 1740
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1741
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 1742
    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1741
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1743
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 1744
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredState()I

    move-result v1

    .line 1743
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1747
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->r()I

    move-result v1

    .line 1748
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v14, v2

    sub-int/2addr v1, v0

    .line 1749
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v11

    .line 1751
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1752
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v14, v0

    .line 1754
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    .line 1755
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1754
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1756
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/view/View;

    .line 1757
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1756
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1760
    :cond_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1761
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v14, v0

    .line 1763
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    .line 1764
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1763
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1765
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    .line 1766
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1765
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1769
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v11

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_7

    .line 1771
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1772
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1773
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v0, :cond_6

    invoke-direct {v7, v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v8

    .line 1778
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v14, v0

    .line 1780
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static/range {v16 .. v16}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1781
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v12, v0

    move v13, v1

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1786
    :cond_7
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->g:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->h:I

    add-int v11, v0, v1

    .line 1787
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->e:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->f:I

    add-int v15, v0, v1

    .line 1788
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1789
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    add-int v3, v14, v15

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v11

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 1792
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1793
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1794
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    move/from16 v16, v1

    move v6, v13

    move v13, v0

    goto :goto_4

    :cond_8
    move v6, v13

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 1796
    :goto_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1797
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    add-int v3, v14, v15

    add-int v5, v16, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v11, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1801
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    .line 1802
    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 1803
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    .line 1804
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 1803
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_5

    :cond_9
    move v11, v6

    :goto_5
    move/from16 v0, v16

    add-int/2addr v14, v13

    .line 1808
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1812
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    .line 1813
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1816
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    .line 1815
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 1819
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 1818
    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 10678
    iget-boolean v2, v7, Landroidx/appcompat/widget/Toolbar;->N:Z

    if-nez v2, :cond_a

    :goto_6
    const/4 v9, 0x0

    goto :goto_8

    .line 10680
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_c

    .line 10682
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10683
    invoke-direct {v7, v4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_b

    .line 10684
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    if-eqz v9, :cond_d

    goto :goto_9

    :cond_d
    move v10, v0

    .line 1822
    :goto_9
    invoke-virtual {v7, v1, v10}, Landroidx/appcompat/widget/Toolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1545
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 1546
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1550
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 1551
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1553
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    .line 9680
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1554
    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1555
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1557
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1561
    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_3

    .line 10567
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10568
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 493
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 494
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 497
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->t()V

    .line 498
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4074
    :goto_0
    iget-boolean p1, v0, Landroidx/appcompat/widget/v;->g:Z

    if-eq v1, p1, :cond_8

    .line 4077
    iput-boolean v1, v0, Landroidx/appcompat/widget/v;->g:Z

    .line 4078
    iget-boolean p1, v0, Landroidx/appcompat/widget/v;->h:Z

    if-eqz p1, :cond_7

    const/high16 p1, -0x80000000

    if-eqz v1, :cond_4

    .line 4080
    iget v1, v0, Landroidx/appcompat/widget/v;->d:I

    if-eq v1, p1, :cond_2

    iget v1, v0, Landroidx/appcompat/widget/v;->d:I

    goto :goto_1

    :cond_2
    iget v1, v0, Landroidx/appcompat/widget/v;->e:I

    :goto_1
    iput v1, v0, Landroidx/appcompat/widget/v;->a:I

    .line 4081
    iget v1, v0, Landroidx/appcompat/widget/v;->c:I

    if-eq v1, p1, :cond_3

    iget p1, v0, Landroidx/appcompat/widget/v;->c:I

    goto :goto_2

    :cond_3
    iget p1, v0, Landroidx/appcompat/widget/v;->f:I

    :goto_2
    iput p1, v0, Landroidx/appcompat/widget/v;->b:I

    return-void

    .line 4083
    :cond_4
    iget v1, v0, Landroidx/appcompat/widget/v;->c:I

    if-eq v1, p1, :cond_5

    iget v1, v0, Landroidx/appcompat/widget/v;->c:I

    goto :goto_3

    :cond_5
    iget v1, v0, Landroidx/appcompat/widget/v;->e:I

    :goto_3
    iput v1, v0, Landroidx/appcompat/widget/v;->a:I

    .line 4084
    iget v1, v0, Landroidx/appcompat/widget/v;->d:I

    if-eq v1, p1, :cond_6

    iget p1, v0, Landroidx/appcompat/widget/v;->d:I

    goto :goto_4

    :cond_6
    iget p1, v0, Landroidx/appcompat/widget/v;->f:I

    :goto_4
    iput p1, v0, Landroidx/appcompat/widget/v;->b:I

    return-void

    .line 4087
    :cond_7
    iget p1, v0, Landroidx/appcompat/widget/v;->e:I

    iput p1, v0, Landroidx/appcompat/widget/v;->a:I

    .line 4088
    iget p1, v0, Landroidx/appcompat/widget/v;->f:I

    iput p1, v0, Landroidx/appcompat/widget/v;->b:I

    :cond_8
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1533
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1535
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    .line 1536
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1539
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ak_()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1586
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    .line 1589
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1592
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 1597
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->E:Z

    :cond_3
    return v3
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1051
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1065
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->g()V

    .line 1068
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    .line 1096
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->g()V

    .line 1112
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1113
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 1114
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 2268
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->N:Z

    .line 2269
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    .line 1411
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->A:I

    if-eq p1, v0, :cond_1

    .line 1412
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->A:I

    .line 1413
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1414
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    .line 1369
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    if-eq p1, v0, :cond_1

    .line 1370
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    .line 1371
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1372
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1

    .line 1290
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->t()V

    .line 1291
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->b(II)V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1

    .line 1227
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->t()V

    .line 1228
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Landroidx/appcompat/widget/v;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->a(II)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 511
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 632
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->k()V

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 638
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 640
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 641
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 665
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->k()V

    .line 680
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 3

    if-nez p1, :cond_0

    .line 557
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->m()V

    .line 562
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 6680
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 568
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 569
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 572
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v0, :cond_3

    .line 573
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    :cond_3
    const/4 v0, 0x1

    .line 7158
    iput-boolean v0, p2, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    if-eqz p1, :cond_4

    .line 578
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    goto :goto_0

    .line 581
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 582
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$a;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 583
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Z)V

    .line 584
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$a;->a(Z)V

    .line 586
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 587
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 588
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/ActionMenuPresenter;

    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 2278
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/view/menu/m$a;

    .line 2279
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/g$a;

    .line 2280
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2281
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 931
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 945
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->s()V

    .line 948
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 968
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 987
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->s()V

    .line 988
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 991
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 993
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 995
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 996
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1022
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->s()V

    .line 1023
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$b;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroidx/appcompat/widget/Toolbar$b;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1138
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->l()V

    .line 1139
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 363
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    if-eq v0, p1, :cond_1

    .line 364
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    if-nez p1, :cond_0

    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    return-void

    .line 368
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 805
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 816
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 817
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 818
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 819
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    .line 820
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 821
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 822
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    if-eqz v1, :cond_0

    .line 823
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 825
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 826
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 829
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 830
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 832
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 836
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 837
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 858
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 859
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    .line 891
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 900
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->D:Landroid/content/res/ColorStateList;

    .line 901
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 750
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 763
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 764
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 765
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    .line 766
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 767
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 768
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    if-eqz v1, :cond_0

    .line 769
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 771
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 772
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 775
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 776
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 778
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 780
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 782
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 783
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0

    .line 396
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->e:I

    .line 397
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->g:I

    .line 398
    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->f:I

    .line 399
    iput p4, p0, Landroidx/appcompat/widget/Toolbar;->h:I

    .line 401
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .line 487
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->h:I

    .line 488
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .line 465
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->f:I

    .line 467
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .line 421
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->e:I

    .line 423
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .line 443
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->g:I

    .line 445
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 847
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 848
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 870
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 879
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->C:Landroid/content/res/ColorStateList;

    .line 880
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

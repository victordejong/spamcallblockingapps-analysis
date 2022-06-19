.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$a;,
        Landroidx/appcompat/widget/Toolbar$d;,
        Landroidx/appcompat/widget/Toolbar$b;,
        Landroidx/appcompat/widget/Toolbar$c;
    }
.end annotation


# instance fields
.field private A:Landroid/content/res/ColorStateList;

.field private B:Landroid/content/res/ColorStateList;

.field private C:Z

.field private D:Z

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final G:[I

.field private final H:Landroidx/appcompat/widget/ActionMenuView$e;

.field private I:Landroidx/appcompat/widget/aq;

.field private J:Landroidx/appcompat/widget/c;

.field private K:Landroidx/appcompat/widget/Toolbar$a;

.field private L:Landroidx/appcompat/view/menu/m$a;

.field private M:Landroidx/appcompat/view/menu/g$a;

.field private N:Z

.field private final O:Ljava/lang/Runnable;

.field a:Landroid/widget/ImageButton;

.field b:Landroid/view/View;

.field c:I

.field d:Landroidx/appcompat/widget/Toolbar$c;

.field private e:Landroidx/appcompat/widget/ActionMenuView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/content/Context;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroidx/appcompat/widget/ah;

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 232
    sget v0, Landroidx/appcompat/a$a;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    const v0, 0x800013

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->G:[I

    .line 202
    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 221
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/a$j;->Toolbar:[I

    invoke-static {v0, p2, v1, p3, v6}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v1

    .line 242
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleTextAppearance:I

    invoke-virtual {v1, v0, v6}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    .line 243
    sget v0, Landroidx/appcompat/a$j;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v1, v0, v6}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    .line 244
    sget v0, Landroidx/appcompat/a$j;->Toolbar_android_gravity:I

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/ap;->c(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    .line 245
    sget v0, Landroidx/appcompat/a$j;->Toolbar_buttonGravity:I

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/ap;->c(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->c:I

    .line 248
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleMargin:I

    invoke-virtual {v1, v0, v6}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 249
    sget v2, Landroidx/appcompat/a$j;->Toolbar_titleMargins:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    sget v2, Landroidx/appcompat/a$j;->Toolbar_titleMargins:I

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 253
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 255
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleMarginStart:I

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 256
    if-ltz v0, :cond_1

    .line 257
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 260
    :cond_1
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleMarginEnd:I

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 261
    if-ltz v0, :cond_2

    .line 262
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    .line 265
    :cond_2
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleMarginTop:I

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 266
    if-ltz v0, :cond_3

    .line 267
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 270
    :cond_3
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleMarginBottom:I

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 272
    if-ltz v0, :cond_4

    .line 273
    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    .line 276
    :cond_4
    sget v0, Landroidx/appcompat/a$j;->Toolbar_maxButtonHeight:I

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 278
    sget v0, Landroidx/appcompat/a$j;->Toolbar_contentInsetStart:I

    .line 279
    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    .line 281
    sget v2, Landroidx/appcompat/a$j;->Toolbar_contentInsetEnd:I

    .line 282
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v2

    .line 284
    sget v3, Landroidx/appcompat/a$j;->Toolbar_contentInsetLeft:I

    .line 285
    invoke-virtual {v1, v3, v6}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v3

    .line 286
    sget v4, Landroidx/appcompat/a$j;->Toolbar_contentInsetRight:I

    .line 287
    invoke-virtual {v1, v4, v6}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v4

    .line 289
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->s()V

    .line 290
    iget-object v5, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v5, v3, v4}, Landroidx/appcompat/widget/ah;->b(II)V

    .line 292
    if-ne v0, v7, :cond_5

    if-eq v2, v7, :cond_6

    .line 294
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/ah;->a(II)V

    .line 297
    :cond_6
    sget v0, Landroidx/appcompat/a$j;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 299
    sget v0, Landroidx/appcompat/a$j;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v1, v0, v7}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 302
    sget v0, Landroidx/appcompat/a$j;->Toolbar_collapseIcon:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/graphics/drawable/Drawable;

    .line 303
    sget v0, Landroidx/appcompat/a$j;->Toolbar_collapseContentDescription:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/lang/CharSequence;

    .line 305
    sget v0, Landroidx/appcompat/a$j;->Toolbar_title:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 307
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    :cond_7
    sget v0, Landroidx/appcompat/a$j;->Toolbar_subtitle:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 312
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 316
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    .line 317
    sget v0, Landroidx/appcompat/a$j;->Toolbar_popupTheme:I

    invoke-virtual {v1, v0, v6}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 319
    sget v0, Landroidx/appcompat/a$j;->Toolbar_navigationIcon:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_9

    .line 321
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_9
    sget v0, Landroidx/appcompat/a$j;->Toolbar_navigationContentDescription:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 325
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    :cond_a
    sget v0, Landroidx/appcompat/a$j;->Toolbar_logo:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_b

    .line 330
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_b
    sget v0, Landroidx/appcompat/a$j;->Toolbar_logoDescription:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 335
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 338
    :cond_c
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleTextColor:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 339
    sget v0, Landroidx/appcompat/a$j;->Toolbar_titleTextColor:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 342
    :cond_d
    sget v0, Landroidx/appcompat/a$j;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 343
    sget v0, Landroidx/appcompat/a$j;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 346
    :cond_e
    sget v0, Landroidx/appcompat/a$j;->Toolbar_menu:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 347
    sget v0, Landroidx/appcompat/a$j;->Toolbar_menu:I

    invoke-virtual {v1, v0, v6}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->a(I)V

    .line 350
    :cond_f
    invoke-virtual {v1}, Landroidx/appcompat/widget/ap;->a()V

    .line 351
    return-void
.end method

.method private a(Landroid/view/View;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2088
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 2089
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 2090
    if-lez p2, :cond_0

    sub-int v1, v3, p2

    div-int/lit8 v1, v1, 0x2

    .line 2091
    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->b(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2101
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 2102
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 2103
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v6

    .line 2104
    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    .line 2105
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 2106
    iget v7, v0, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    if-ge v1, v7, :cond_1

    .line 2107
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    .line 2115
    :goto_1
    add-int/2addr v0, v4

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 2090
    goto :goto_0

    .line 2093
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 2096
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 2109
    :cond_1
    sub-int v5, v6, v5

    sub-int v3, v5, v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 2111
    iget v5, v0, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    if-ge v3, v5, :cond_2

    .line 2112
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2091
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1654
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aget v2, p6, v5

    sub-int/2addr v1, v2

    .line 1655
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    aget v3, p6, v6

    sub-int/2addr v2, v3

    .line 1656
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1657
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1658
    add-int/2addr v3, v4

    .line 1659
    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v5

    .line 1660
    neg-int v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v6

    .line 1663
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1662
    invoke-static {p2, v1, v2}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1665
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1664
    invoke-static {p4, v2, v0}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1668
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1669
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2063
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 2064
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$b;->leftMargin:I

    aget v2, p3, v3

    sub-int/2addr v1, v2

    .line 2065
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p2

    .line 2066
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v3

    .line 2067
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 2068
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2069
    add-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2070
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 2071
    return v0
.end method

.method private a(Ljava/util/List;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2043
    aget v1, p2, v3

    .line 2044
    const/4 v0, 0x1

    aget v0, p2, v0

    .line 2046
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move v4, v3

    move v5, v0

    move v6, v1

    .line 2047
    :goto_0
    if-ge v2, v7, :cond_0

    .line 2048
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2049
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$b;

    .line 2050
    iget v8, v1, Landroidx/appcompat/widget/Toolbar$b;->leftMargin:I

    sub-int v6, v8, v6

    .line 2051
    iget v1, v1, Landroidx/appcompat/widget/Toolbar$b;->rightMargin:I

    sub-int/2addr v1, v5

    .line 2052
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2053
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2054
    neg-int v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2055
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2056
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    add-int/2addr v0, v9

    add-int v1, v4, v0

    .line 2047
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 2058
    :cond_0
    return v4
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1627
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1630
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

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1629
    invoke-static {p2, v1, v2}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1633
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1632
    invoke-static {p4, v2, v0}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1636
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1637
    if-eq v2, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1638
    if-eqz v2, :cond_0

    .line 1639
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1641
    :cond_0
    invoke-static {p6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1643
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1644
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1512
    if-nez v0, :cond_0

    .line 1513
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    .line 1519
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 1521
    if-eqz p2, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1522
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    :goto_1
    return-void

    .line 1514
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1515
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    goto :goto_0

    .line 1517
    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    goto :goto_0

    .line 1525
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2139
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2140
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 2142
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v3

    .line 2141
    invoke-static {p2, v3}, Landroidx/core/h/c;->a(II)I

    move-result v3

    .line 2144
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2146
    if-eqz v0, :cond_2

    .line 2147
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 2148
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2149
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 2150
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 2151
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2152
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2147
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 2139
    goto :goto_0

    .line 2156
    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2157
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2158
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 2159
    iget v5, v0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    if-nez v5, :cond_3

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 2160
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2161
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2156
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2165
    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 2120
    and-int/lit8 v0, p1, 0x70

    .line 2121
    sparse-switch v0, :sswitch_data_0

    .line 2127
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    and-int/lit8 v0, v0, 0x70

    :sswitch_0
    return v0

    .line 2121
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 2186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2187
    invoke-static {v0}, Landroidx/core/h/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2188
    invoke-static {v0}, Landroidx/core/h/f;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    .line 2187
    return v0
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2076
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 2077
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$b;->rightMargin:I

    aget v2, p3, v4

    sub-int/2addr v1, v2

    .line 2078
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, p2, v2

    .line 2079
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v4

    .line 2080
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 2081
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2082
    sub-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2083
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->leftMargin:I

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 2084
    return v0
.end method

.method private c(I)I
    .locals 2

    .prologue
    .line 2168
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    .line 2169
    invoke-static {p1, v1}, Landroidx/core/h/c;->a(II)I

    move-result v0

    .line 2170
    and-int/lit8 v0, v0, 0x7

    .line 2171
    packed-switch v0, :pswitch_data_0

    .line 2177
    :pswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 2171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 2192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2193
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2260
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    .line 696
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1152
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->o()V

    .line 1153
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 1156
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v1, :cond_0

    .line 1157
    new-instance v1, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    .line 1159
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1160
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 1162
    :cond_1
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1166
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    .line 1167
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1168
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/ActionMenuView$e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V

    .line 1169
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/view/menu/m$a;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/g$a;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 1170
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    .line 1171
    const v1, 0x800005

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->c:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 1172
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 1175
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1481
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/a$a;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 1484
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    .line 1485
    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->c:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 1486
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1566
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1567
    return-void
.end method

.method private r()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1676
    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->N:Z

    if-nez v1, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v0

    .line 1678
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1679
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1680
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1681
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    .line 1682
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1679
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1686
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    if-nez v0, :cond_0

    .line 2289
    new-instance v0, Landroidx/appcompat/widget/ah;

    invoke-direct {v0}, Landroidx/appcompat/widget/ah;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    .line 2291
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$b;
    .locals 2

    .prologue
    .line 2198
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$b;
    .locals 1

    .prologue
    .line 2203
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$b;

    if-eqz v0, :cond_0

    .line 2204
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    check-cast p1, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/widget/Toolbar$b;)V

    .line 2210
    :goto_0
    return-object v0

    .line 2205
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/a$a;

    if-eqz v0, :cond_1

    .line 2206
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    check-cast p1, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/app/a$a;)V

    goto :goto_0

    .line 2207
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2208
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 2210
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1191
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1192
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 1225
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->s()V

    .line 1226
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ah;->a(II)V

    .line 1227
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 845
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    .line 846
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 849
    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 555
    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->o()V

    .line 560
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    .line 561
    if-eq v0, p1, :cond_0

    .line 565
    if-eqz v0, :cond_2

    .line 566
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 567
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 570
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v0, :cond_3

    .line 571
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    .line 574
    :cond_3
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/c;->c(Z)V

    .line 575
    if-eqz p1, :cond_4

    .line 576
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 577
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 584
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 585
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V

    .line 586
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/c;

    goto :goto_0

    .line 579
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/c;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 580
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/Toolbar$a;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 581
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/c;->a(Z)V

    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar$a;->a(Z)V

    goto :goto_1
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .prologue
    .line 2280
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/view/menu/m$a;

    .line 2281
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/g$a;

    .line 2282
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 2285
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 856
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    .line 857
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 860
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2221
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->i()V

    .line 596
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .prologue
    .line 1388
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    :goto_0
    return v0

    .line 1390
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .prologue
    .line 1345
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    :goto_0
    return v0

    .line 1347
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1440
    .line 1441
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_2

    .line 1442
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    .line 1443
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1445
    :goto_0
    if-eqz v0, :cond_1

    .line 1446
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1445
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1443
    goto :goto_0

    .line 1447
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .prologue
    .line 1460
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1461
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1460
    :goto_0
    return v0

    .line 1462
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .prologue
    .line 1475
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1476
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1475
    :goto_0
    return v0

    .line 1477
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1426
    :goto_0
    return v0

    .line 1428
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1126
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->n()V

    .line 1127
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOuterActionMenuPresenter()Landroidx/appcompat/widget/c;
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/c;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1147
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->n()V

    .line 1148
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->z:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    return v0
.end method

.method final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/x;
    .locals 2

    .prologue
    .line 2231
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/aq;

    if-nez v0, :cond_0

    .line 2232
    new-instance v0, Landroidx/appcompat/widget/aq;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/aq;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/aq;

    .line 2234
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/aq;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 725
    :goto_0
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->collapseActionView()Z

    .line 728
    :cond_0
    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    goto :goto_0
.end method

.method i()V
    .locals 4

    .prologue
    .line 1491
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1492
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/a$a;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    .line 1494
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1495
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1496
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()Landroidx/appcompat/widget/Toolbar$b;

    move-result-object v0

    .line 1497
    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->c:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 1498
    const/4 v1, 0x2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 1499
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1500
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$3;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$3;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1507
    :cond_0
    return-void
.end method

.method protected j()Landroidx/appcompat/widget/Toolbar$b;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2216
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(II)V

    return-object v0
.end method

.method k()V
    .locals 4

    .prologue
    .line 2238
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2240
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2241
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2242
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 2243
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v2, v0, :cond_0

    .line 2244
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    .line 2245
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2248
    :cond_1
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 2251
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2253
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2254
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2253
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2256
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2257
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1571
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1572
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1573
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1607
    if-ne v0, v4, :cond_0

    .line 1608
    iput-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    .line 1611
    :cond_0
    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    if-nez v1, :cond_1

    .line 1612
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1613
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 1614
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    .line 1618
    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1619
    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    .line 1622
    :cond_3
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 1825
    invoke-static/range {p0 .. p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    move v4, v2

    .line 1826
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v12

    .line 1827
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v13

    .line 1828
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v7

    .line 1829
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v14

    .line 1830
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v15

    .line 1831
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v16

    .line 1833
    sub-int v3, v12, v14

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->G:[I

    move-object/from16 v17, v0

    .line 1836
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v17, v5

    aput v6, v17, v2

    .line 1839
    invoke-static/range {p0 .. p0}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v2

    .line 1840
    if-ltz v2, :cond_9

    sub-int v5, p5, p3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v2

    .line 1842
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1843
    if-eqz v4, :cond_a

    .line 1844
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1, v5}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    move v6, v7

    .line 1852
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1853
    if-eqz v4, :cond_b

    .line 1854
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v2, v1, v5}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    .line 1862
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1863
    if-eqz v4, :cond_c

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v6, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v6

    .line 1872
    :cond_1
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v3

    .line 1873
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v8

    .line 1874
    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v11, v3, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v17, v9

    .line 1875
    const/4 v9, 0x1

    const/4 v10, 0x0

    sub-int v11, v12, v14

    sub-int/2addr v11, v2

    sub-int v11, v8, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v17, v9

    .line 1876
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1877
    sub-int v6, v12, v14

    sub-int/2addr v6, v8

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1879
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1880
    if-eqz v4, :cond_d

    .line 1881
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v2, v1, v5}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    .line 1889
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1890
    if-eqz v4, :cond_e

    .line 1891
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v2, v1, v5}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    move v6, v2

    move v8, v3

    .line 1899
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v18

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v19

    .line 1901
    const/4 v3, 0x0

    .line 1902
    if-eqz v18, :cond_3

    .line 1903
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1904
    iget v9, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v9

    add-int/2addr v3, v2

    .line 1906
    :cond_3
    if-eqz v19, :cond_21

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1908
    iget v9, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v9

    add-int/2addr v2, v3

    move v11, v2

    .line 1911
    :goto_7
    if-nez v18, :cond_4

    if-eqz v19, :cond_7

    .line 1913
    :cond_4
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    move-object v9, v2

    .line 1914
    :goto_8
    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    move-object v3, v2

    .line 1915
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1916
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$b;

    .line 1917
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 1918
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_11

    :cond_6
    const/4 v9, 0x1

    .line 1920
    :goto_a
    move-object/from16 v0, p0

    iget v10, v0, Landroidx/appcompat/widget/Toolbar;->x:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 1926
    sub-int v10, v13, v15

    sub-int v10, v10, v16

    .line 1927
    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 1928
    iget v0, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-ge v10, v0, :cond_12

    .line 1929
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int/2addr v2, v3

    .line 1938
    :goto_b
    add-int v10, v15, v2

    .line 1945
    :goto_c
    if-eqz v4, :cond_14

    .line 1946
    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    :goto_d
    const/4 v3, 0x1

    aget v3, v17, v3

    sub-int/2addr v2, v3

    .line 1947
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v3, v6, v3

    .line 1948
    const/4 v4, 0x1

    const/4 v6, 0x0

    neg-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v17, v4

    .line 1952
    if-eqz v18, :cond_1f

    .line 1953
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1954
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    .line 1955
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v10

    .line 1956
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v11, v4, v10, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1957
    move-object/from16 v0, p0

    iget v10, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    sub-int/2addr v4, v10

    .line 1958
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    add-int v10, v6, v2

    move v6, v4

    .line 1960
    :goto_e
    if-eqz v19, :cond_1e

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1962
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    add-int/2addr v4, v10

    .line 1963
    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    .line 1964
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v4

    .line 1965
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v13, v10, v4, v3, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1966
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    sub-int v4, v3, v4

    .line 1967
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v11

    move v2, v4

    .line 1969
    :goto_f
    if-eqz v9, :cond_1d

    .line 1970
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_10
    move v6, v2

    .line 2005
    :cond_7
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2007
    const/4 v2, 0x0

    move v4, v2

    move v3, v8

    :goto_12
    if-ge v4, v9, :cond_16

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    .line 2007
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12

    .line 1825
    :cond_8
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0

    .line 1840
    :cond_9
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_1

    .line 1847
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v7, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v6

    move v2, v3

    goto/16 :goto_2

    .line 1857
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v6, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v6

    goto/16 :goto_3

    .line 1867
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v2, v1, v5}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    goto/16 :goto_4

    .line 1884
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v3, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    goto/16 :goto_5

    .line 1894
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v3, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    move v6, v2

    move v8, v3

    goto/16 :goto_6

    .line 1913
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    move-object v9, v2

    goto/16 :goto_8

    .line 1914
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    move-object v3, v2

    goto/16 :goto_9

    .line 1918
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 1922
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v3

    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int v10, v2, v3

    .line 1923
    goto/16 :goto_c

    .line 1931
    :cond_12
    sub-int v13, v13, v16

    sub-int v11, v13, v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v15

    .line 1933
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/appcompat/widget/Toolbar;->t:I

    add-int/2addr v2, v13

    if-ge v11, v2, :cond_20

    .line 1934
    const/4 v2, 0x0

    iget v3, v3, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/appcompat/widget/Toolbar;->t:I

    add-int/2addr v3, v13

    sub-int/2addr v3, v11

    sub-int v3, v10, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_b

    .line 1941
    :sswitch_1
    sub-int v2, v13, v16

    iget v3, v3, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->t:I

    sub-int/2addr v2, v3

    sub-int v10, v2, v11

    goto/16 :goto_c

    .line 1946
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1973
    :cond_14
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    :goto_13
    const/4 v3, 0x0

    aget v3, v17, v3

    sub-int/2addr v2, v3

    .line 1974
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v8, v3

    .line 1975
    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v17, v3

    .line 1979
    if-eqz v18, :cond_1c

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1981
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v8

    .line 1982
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v10

    .line 1983
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1984
    move-object/from16 v0, p0

    iget v10, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int/2addr v3, v10

    .line 1985
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v4

    move v4, v3

    move v10, v2

    .line 1987
    :goto_14
    if-eqz v19, :cond_1b

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$b;

    .line 1989
    iget v3, v2, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    add-int/2addr v3, v10

    .line 1990
    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1991
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 1992
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v13, v8, v3, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1993
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int/2addr v3, v10

    .line 1994
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v11

    move v2, v3

    .line 1996
    :goto_15
    if-eqz v9, :cond_7

    .line 1997
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_11

    .line 1973
    :cond_15
    const/4 v2, 0x0

    goto :goto_13

    .line 2012
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2014
    const/4 v2, 0x0

    move v4, v2

    :goto_16
    if-ge v4, v8, :cond_17

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v6, v1, v5}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v6

    .line 2014
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_16

    .line 2021
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;[I)I

    move-result v4

    .line 2023
    sub-int v2, v12, v7

    sub-int/2addr v2, v14

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    .line 2024
    div-int/lit8 v7, v4, 0x2

    .line 2025
    sub-int/2addr v2, v7

    .line 2026
    add-int/2addr v4, v2

    .line 2027
    if-ge v2, v3, :cond_19

    move v2, v3

    .line 2033
    :cond_18
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2034
    const/4 v3, 0x0

    move v4, v2

    :goto_18
    if-ge v3, v6, :cond_1a

    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v4, v1, v5}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    .line 2034
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_18

    .line 2029
    :cond_19
    if-le v4, v6, :cond_18

    .line 2030
    sub-int v3, v4, v6

    sub-int/2addr v2, v3

    goto :goto_17

    .line 2039
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2040
    return-void

    :cond_1b
    move v2, v8

    goto/16 :goto_15

    :cond_1c
    move v4, v8

    goto/16 :goto_14

    :cond_1d
    move v2, v3

    goto/16 :goto_10

    :cond_1e
    move v2, v3

    goto/16 :goto_f

    :cond_1f
    move v6, v3

    goto/16 :goto_e

    :cond_20
    move v2, v10

    goto/16 :goto_b

    :cond_21
    move v11, v3

    goto/16 :goto_7

    :cond_22
    move v6, v2

    move v8, v3

    goto/16 :goto_6

    :cond_23
    move v2, v3

    move v6, v7

    goto/16 :goto_2

    .line 1920
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1691
    const/4 v3, 0x0

    .line 1692
    const/4 v11, 0x0

    .line 1693
    const/4 v9, 0x0

    .line 1695
    iget-object v10, p0, Landroidx/appcompat/widget/Toolbar;->G:[I

    .line 1698
    invoke-static {p0}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1699
    const/4 v1, 0x1

    .line 1700
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    .line 1708
    :goto_0
    const/4 v0, 0x0

    .line 1709
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1712
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1713
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 1714
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1713
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1715
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 1716
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 1715
    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v9, v1

    move v11, v2

    .line 1719
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1720
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1722
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    .line 1723
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1724
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    .line 1725
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1724
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1726
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    .line 1727
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 1726
    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1730
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    .line 1731
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1732
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v8

    .line 1734
    const/4 v0, 0x0

    .line 1735
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1736
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1738
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1739
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    .line 1740
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1739
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1741
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    .line 1742
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredState()I

    move-result v1

    .line 1741
    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1745
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 1746
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1747
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v7

    .line 1749
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1750
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1752
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    .line 1753
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1752
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1754
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    .line 1755
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1754
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1758
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1759
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1761
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    .line 1762
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1761
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1763
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    .line 1764
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1763
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1767
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v8

    .line 1768
    const/4 v0, 0x0

    move v7, v0

    move v12, v9

    :goto_1
    if-ge v7, v8, :cond_7

    .line 1769
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1770
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 1771
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$b;->b:I

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v12

    move v1, v11

    .line 1768
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v12, v0

    move v11, v1

    goto :goto_1

    .line 1702
    :cond_5
    const/4 v1, 0x0

    .line 1703
    const/4 v0, 0x1

    move v7, v0

    move v8, v1

    goto/16 :goto_0

    .line 1776
    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1778
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1779
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    move v1, v2

    goto :goto_2

    .line 1782
    :cond_7
    const/4 v1, 0x0

    .line 1783
    const/4 v0, 0x0

    .line 1784
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    iget v4, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    add-int v9, v2, v4

    .line 1785
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    iget v4, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int/2addr v2, v4

    .line 1786
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1787
    iget-object v5, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    add-int v7, v3, v2

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 1790
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1791
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1792
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v4

    invoke-static {v12, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1794
    :cond_8
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1795
    iget-object v5, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    add-int v7, v3, v2

    add-int/2addr v9, v0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1799
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 1800
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 1801
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 1802
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    .line 1801
    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1805
    :cond_9
    add-int/2addr v1, v3

    .line 1806
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1810
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1811
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1814
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    .line 1813
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 1817
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v12, 0x10

    .line 1816
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1820
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->r()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1821
    return-void

    :cond_b
    move v0, v12

    move v1, v11

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1543
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_1

    .line 1544
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    check-cast p1, Landroidx/appcompat/widget/Toolbar$d;

    .line 1549
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar$d;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1551
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    .line 1552
    :goto_1
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$d;->a:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1553
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$d;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_2

    .line 1555
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1559
    :cond_2
    iget-boolean v0, p1, Landroidx/appcompat/widget/Toolbar$d;->b:Z

    if-eqz v0, :cond_0

    .line 1560
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->q()V

    goto :goto_0

    .line 1551
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 491
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 492
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 495
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->s()V

    .line 496
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/ah;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ah;->a(Z)V

    .line 497
    return-void

    .line 496
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1531
    new-instance v0, Landroidx/appcompat/widget/Toolbar$d;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroid/os/Parcelable;)V

    .line 1533
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$d;->a:I

    .line 1537
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->b()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$d;->b:Z

    .line 1538
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1583
    if-nez v0, :cond_0

    .line 1584
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    .line 1587
    :cond_0
    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    if-nez v1, :cond_1

    .line 1588
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1589
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1590
    iput-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    .line 1594
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1595
    :cond_2
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    .line 1598
    :cond_3
    return v2
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    .prologue
    .line 1049
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    .line 1050
    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 1066
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1069
    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 1108
    if-eqz p1, :cond_1

    .line 1109
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 1110
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCollapsible(Z)V
    .locals 0

    .prologue
    .line 2270
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->N:Z

    .line 2271
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2272
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    .prologue
    .line 1406
    if-gez p1, :cond_0

    .line 1407
    const/high16 p1, -0x80000000

    .line 1409
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    if-eq p1, v0, :cond_1

    .line 1410
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 1411
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1412
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1415
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    .prologue
    .line 1364
    if-gez p1, :cond_0

    .line 1365
    const/high16 p1, -0x80000000

    .line 1367
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    if-eq p1, v0, :cond_1

    .line 1368
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 1369
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1370
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1373
    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 510
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 629
    if-eqz p1, :cond_2

    .line 630
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->m()V

    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 638
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    :cond_1
    return-void

    .line 634
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 664
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->m()V

    .line 678
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 681
    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 929
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 930
    return-void

    .line 929
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 943
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->p()V

    .line 946
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 949
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 966
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 967
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 984
    if-eqz p1, :cond_2

    .line 985
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->p()V

    .line 986
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 993
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    :cond_1
    return-void

    .line 989
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 991
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 1020
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->p()V

    .line 1021
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/Toolbar$c;

    .line 1204
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1136
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->n()V

    .line 1137
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1138
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    if-eq v0, p1, :cond_0

    .line 362
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 363
    if-nez p1, :cond_1

    .line 364
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 803
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 814
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 815
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 816
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 817
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 818
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 819
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 820
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 823
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 827
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 834
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 835
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    :cond_3
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->z:Ljava/lang/CharSequence;

    .line 838
    return-void

    .line 830
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 832
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .prologue
    .line 889
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 890
    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 898
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;

    .line 899
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 902
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 749
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 761
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 762
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 763
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    .line 764
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 765
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 766
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 769
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 773
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 780
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    :cond_3
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    .line 784
    return-void

    .line 776
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 778
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .prologue
    .line 485
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    .line 486
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 487
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    .line 465
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 466
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .prologue
    .line 419
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 421
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 422
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .prologue
    .line 441
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 443
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 444
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 868
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 869
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 877
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    .line 878
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 881
    :cond_0
    return-void
.end method

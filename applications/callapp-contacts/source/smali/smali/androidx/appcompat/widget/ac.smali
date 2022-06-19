.class public final Landroidx/appcompat/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/o;


# instance fields
.field a:Landroidx/appcompat/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 2

    .line 96
    sget v0, Landroidx/appcompat/a$h;->abc_action_bar_up_description:I

    sget v1, Landroidx/appcompat/a$e;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/ac;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 90
    iput p4, p0, Landroidx/appcompat/widget/ac;->o:I

    .line 92
    iput p4, p0, Landroidx/appcompat/widget/ac;->p:I

    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1738
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->i:Ljava/lang/CharSequence;

    .line 103
    iput-object v0, p0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/CharSequence;

    .line 1794
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->j:Ljava/lang/CharSequence;

    .line 104
    iput-object v0, p0, Landroidx/appcompat/widget/ac;->l:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/ac;->k:Z

    .line 106
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->j:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Landroidx/appcompat/a$j;->ActionBar:[I

    sget v2, Landroidx/appcompat/a$a;->actionBarStyle:I

    invoke-static {p1, v0, v1, v2, p4}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ab;

    move-result-object p1

    .line 109
    sget v0, Landroidx/appcompat/a$j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_c

    .line 111
    sget p2, Landroidx/appcompat/a$j;->ActionBar_title:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ac;->b(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    sget p2, Landroidx/appcompat/a$j;->ActionBar_subtitle:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ab;->c(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2273
    iput-object p2, p0, Landroidx/appcompat/widget/ac;->l:Ljava/lang/CharSequence;

    .line 2274
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 2275
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    sget p2, Landroidx/appcompat/a$j;->ActionBar_logo:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 123
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ac;->d(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_3
    sget p2, Landroidx/appcompat/a$j;->ActionBar_icon:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 128
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ac;->a(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_4
    iget-object p2, p0, Landroidx/appcompat/widget/ac;->j:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/appcompat/widget/ac;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 131
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ac;->b(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_5
    sget p2, Landroidx/appcompat/a$j;->ActionBar_displayOptions:I

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ac;->c(I)V

    .line 135
    sget p2, Landroidx/appcompat/a$j;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p2

    if-eqz p2, :cond_6

    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p2, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ac;->a(Landroid/view/View;)V

    .line 140
    iget p2, p0, Landroidx/appcompat/widget/ac;->e:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ac;->c(I)V

    .line 143
    :cond_6
    sget p2, Landroidx/appcompat/a$j;->ActionBar_height:I

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/ab;->f(II)I

    move-result p2

    if-lez p2, :cond_7

    .line 145
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object p2, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :cond_7
    sget p2, Landroidx/appcompat/a$j;->ActionBar_contentInsetStart:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result p2

    .line 152
    sget v1, Landroidx/appcompat/a$j;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/ab;->d(II)I

    move-result v0

    if-gez p2, :cond_8

    if-ltz v0, :cond_9

    .line 155
    :cond_8
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 156
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    invoke-virtual {v1, p2, v0}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 159
    :cond_9
    sget p2, Landroidx/appcompat/a$j;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p2

    if-eqz p2, :cond_a

    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 164
    :cond_a
    sget p2, Landroidx/appcompat/a$j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p2

    if-eqz p2, :cond_b

    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 170
    :cond_b
    sget p2, Landroidx/appcompat/a$j;->ActionBar_popupTheme:I

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p2

    if-eqz p2, :cond_e

    .line 172
    iget-object p4, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p4, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_1

    :cond_c
    const/16 p2, 0xb

    .line 3208
    iget-object p4, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p4}, Landroidx/appcompat/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_d

    const/16 p2, 0xf

    .line 3210
    iget-object p4, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p4}, Landroidx/appcompat/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/ac;->q:Landroid/graphics/drawable/Drawable;

    .line 175
    :cond_d
    iput p2, p0, Landroidx/appcompat/widget/ac;->e:I

    .line 3252
    :cond_e
    :goto_1
    iget-object p1, p1, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4196
    iget p1, p0, Landroidx/appcompat/widget/ac;->p:I

    if-eq p3, p1, :cond_f

    .line 4199
    iput p3, p0, Landroidx/appcompat/widget/ac;->p:I

    .line 4200
    iget-object p1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->d()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4201
    iget p1, p0, Landroidx/appcompat/widget/ac;->p:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ac;->d(I)V

    .line 180
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->d()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ac;->m:Ljava/lang/CharSequence;

    .line 182
    iget-object p1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Landroidx/appcompat/widget/ac$1;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ac$1;-><init>(Landroidx/appcompat/widget/ac;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 260
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 317
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->i:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->q()V

    return-void
.end method

.method private d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 620
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->m:Ljava/lang/CharSequence;

    .line 621
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->s()V

    return-void
.end method

.method private q()V
    .locals 2

    .line 323
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 611
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 630
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/ac;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final a(IJ)Landroidx/core/view/y;
    .locals 2

    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Landroidx/core/view/v;->m(Landroid/view/View;)Landroidx/core/view/y;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 567
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/view/y;->a(F)Landroidx/core/view/y;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/y;->a(J)Landroidx/core/view/y;

    move-result-object p2

    new-instance p3, Landroidx/appcompat/widget/ac$2;

    invoke-direct {p3, p0, p1}, Landroidx/appcompat/widget/ac$2;-><init>(Landroidx/appcompat/widget/ac;I)V

    .line 569
    invoke-virtual {p2, p3}, Landroidx/core/view/y;->a(Landroidx/core/view/z;)Landroidx/core/view/y;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5222
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ac;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 306
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->h:Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->q()V

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 2

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ac;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 367
    sget v1, Landroidx/appcompat/a$f;->action_menu_presenter:I

    .line 9248
    iput v1, v0, Landroidx/appcompat/view/menu/b;->h:I

    .line 369
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 10154
    iput-object p2, v0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    .line 370
    iget-object p2, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/widget/ac;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .line 540
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 543
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 544
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    .line 237
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->c:Landroid/view/Window$Callback;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 672
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method

.method public final a(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 422
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 426
    iget v0, p0, Landroidx/appcompat/widget/ac;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 428
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    .line 429
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 430
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    const v1, 0x800053

    .line 431
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->a:I

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Landroidx/appcompat/widget/ac;->k:Z

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ac;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 448
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6222
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ac;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 593
    iput-object p1, p0, Landroidx/appcompat/widget/ac;->j:Landroid/graphics/drawable/Drawable;

    .line 594
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->r()V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Landroidx/appcompat/widget/ac;->k:Z

    .line 256
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ac;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 385
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    xor-int/2addr v0, p1

    .line 387
    iput p1, p0, Landroidx/appcompat/widget/ac;->e:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->s()V

    .line 393
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->r()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 397
    invoke-direct {p0}, Landroidx/appcompat/widget/ac;->q()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/ac;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/ac;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 410
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 412
    iget-object p1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    return-void

    .line 414
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 227
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4711
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->m:Landroidx/appcompat/widget/Toolbar$a;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c()V

    return-void
.end method

.method public final d(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11222
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 626
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ac;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4738
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    .line 661
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final f()Z
    .locals 2

    .line 335
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 6517
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 6570
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ak_()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 4

    .line 345
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 7533
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 7714
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 8399
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final i()Z
    .locals 1

    .line 350
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    .line 355
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8551
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 8698
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

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
    return v2
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Landroidx/appcompat/widget/ac;->d:Z

    return-void
.end method

.method public final l()V
    .locals 2

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10595
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 10596
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->c()V

    :cond_0
    return-void
.end method

.method public final m()I
    .locals 1

    .line 380
    iget v0, p0, Landroidx/appcompat/widget/ac;->e:I

    return v0
.end method

.method public final n()I
    .locals 1

    .line 458
    iget v0, p0, Landroidx/appcompat/widget/ac;->o:I

    return v0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    .line 551
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->g:Landroid/view/View;

    return-object v0
.end method

.method public final p()Landroid/view/Menu;
    .locals 1

    .line 677
    iget-object v0, p0, Landroidx/appcompat/widget/ac;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->f()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

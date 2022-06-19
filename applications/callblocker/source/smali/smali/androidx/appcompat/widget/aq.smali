.class public Landroidx/appcompat/widget/aq;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/x;


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

.field private n:Landroidx/appcompat/widget/c;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 96
    sget v0, Landroidx/appcompat/a$h;->abc_action_bar_up_description:I

    sget v1, Landroidx/appcompat/a$e;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/aq;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v1, p0, Landroidx/appcompat/widget/aq;->o:I

    .line 92
    iput v1, p0, Landroidx/appcompat/widget/aq;->p:I

    .line 102
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/aq;->b:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/aq;->l:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/aq;->k:Z

    .line 106
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/aq;->j:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/a$j;->ActionBar:[I

    sget v4, Landroidx/appcompat/a$a;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 109
    sget v2, Landroidx/appcompat/a$j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/aq;->q:Landroid/graphics/drawable/Drawable;

    .line 110
    if-eqz p2, :cond_d

    .line 111
    sget v2, Landroidx/appcompat/a$j;->ActionBar_title:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->b(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    sget v2, Landroidx/appcompat/a$j;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->c(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    sget v2, Landroidx/appcompat/a$j;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->b(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_2
    sget v2, Landroidx/appcompat/a$j;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->a(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/aq;->j:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/widget/aq;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Landroidx/appcompat/widget/aq;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->c(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_4
    sget v2, Landroidx/appcompat/a$j;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->c(I)V

    .line 135
    sget v2, Landroidx/appcompat/a$j;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 137
    if-eqz v2, :cond_5

    .line 138
    iget-object v3, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->a(Landroid/view/View;)V

    .line 140
    iget v2, p0, Landroidx/appcompat/widget/aq;->e:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aq;->c(I)V

    .line 143
    :cond_5
    sget v2, Landroidx/appcompat/a$j;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ap;->f(II)I

    move-result v2

    .line 144
    if-lez v2, :cond_6

    .line 145
    iget-object v3, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 146
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object v2, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :cond_6
    sget v2, Landroidx/appcompat/a$j;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v2

    .line 152
    sget v3, Landroidx/appcompat/a$j;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v3

    .line 154
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 155
    :cond_7
    iget-object v4, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 156
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 155
    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/Toolbar;->a(II)V

    .line 159
    :cond_8
    sget v2, Landroidx/appcompat/a$j;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 160
    if-eqz v2, :cond_9

    .line 161
    iget-object v3, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v4, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 164
    :cond_9
    sget v2, Landroidx/appcompat/a$j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 166
    if-eqz v2, :cond_a

    .line 167
    iget-object v3, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v4, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 170
    :cond_a
    sget v2, Landroidx/appcompat/a$j;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v1

    .line 171
    if-eqz v1, :cond_b

    .line 172
    iget-object v2, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 177
    :cond_b
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 179
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/aq;->e(I)V

    .line 180
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/aq;->m:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Landroidx/appcompat/widget/aq$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/aq$1;-><init>(Landroidx/appcompat/widget/aq;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    :cond_c
    move v0, v1

    .line 105
    goto/16 :goto_0

    .line 175
    :cond_d
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->r()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/aq;->e:I

    goto :goto_1
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->b:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method private r()I
    .locals 2

    .prologue
    .line 206
    const/16 v0, 0xb

    .line 208
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    const/16 v0, 0xf

    .line 210
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/aq;->q:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_0
    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    iget v1, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 324
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/aq;->i:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 612
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/aq;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/aq;->j:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 616
    :goto_1
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private u()V
    .locals 2

    .prologue
    .line 630
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/aq;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public a(IJ)Landroidx/core/h/y;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Landroidx/core/h/u;->m(Landroid/view/View;)Landroidx/core/h/y;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 567
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/core/h/y;->a(F)Landroidx/core/h/y;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p2, p3}, Landroidx/core/h/y;->a(J)Landroidx/core/h/y;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/aq$2;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/aq$2;-><init>(Landroidx/appcompat/widget/aq;I)V

    .line 569
    invoke-virtual {v0, v1}, Landroidx/core/h/y;->a(Landroidx/core/h/z;)Landroidx/core/h/y;

    move-result-object v0

    .line 566
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/aq;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aq;->a(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->h:Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->s()V

    .line 308
    return-void
.end method

.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->n:Landroidx/appcompat/widget/c;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Landroidx/appcompat/widget/c;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/aq;->n:Landroidx/appcompat/widget/c;

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->n:Landroidx/appcompat/widget/c;

    sget v1, Landroidx/appcompat/a$f;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->a(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->n:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 370
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->n:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/c;)V

    .line 371
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 543
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    .line 544
    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 547
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->c:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 673
    return-void
.end method

.method public a(Landroidx/appcompat/widget/ai;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 422
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/aq;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->f:Landroid/view/View;

    .line 426
    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/aq;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 428
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$b;

    .line 429
    iput v3, v0, Landroidx/appcompat/widget/Toolbar$b;->width:I

    .line 430
    iput v3, v0, Landroidx/appcompat/widget/Toolbar$b;->height:I

    .line 431
    const v1, 0x800053

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ai;->setAllowCollapse(Z)V

    .line 434
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Landroidx/appcompat/widget/aq;->k:Z

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/aq;->e(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 449
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/aq;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aq;->b(Landroid/graphics/drawable/Drawable;)V

    .line 313
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->i:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->s()V

    .line 319
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/aq;->k:Z

    .line 256
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/aq;->e(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    .line 386
    xor-int/2addr v0, p1

    .line 387
    iput p1, p0, Landroidx/appcompat/widget/aq;->e:I

    .line 388
    if-eqz v0, :cond_4

    .line 389
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 390
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->u()V

    .line 393
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->t()V

    .line 396
    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 397
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->s()V

    .line 400
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 401
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 402
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/aq;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/aq;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 410
    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 411
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 412
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 418
    :cond_4
    :goto_1
    return-void

    .line 405
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/aq;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->j:Landroid/graphics/drawable/Drawable;

    .line 594
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->t()V

    .line 595
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 273
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->l:Ljava/lang/CharSequence;

    .line 274
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->h()V

    .line 233
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 662
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Landroidx/appcompat/widget/aq;->m:Ljava/lang/CharSequence;

    .line 621
    invoke-direct {p0}, Landroidx/appcompat/widget/aq;->u()V

    .line 622
    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroidx/appcompat/widget/aq;->p:I

    if-ne p1, v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/aq;->p:I

    .line 200
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget v0, p0, Landroidx/appcompat/widget/aq;->p:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aq;->f(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 281
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 626
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aq;->d(Ljava/lang/CharSequence;)V

    .line 627
    return-void

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/aq;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 286
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/aq;->d:Z

    .line 361
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->f()V

    .line 376
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroidx/appcompat/widget/aq;->e:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Landroidx/appcompat/widget/aq;->o:I

    return v0
.end method

.method public q()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroidx/appcompat/widget/aq;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

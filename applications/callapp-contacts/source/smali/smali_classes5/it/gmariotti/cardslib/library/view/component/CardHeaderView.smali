.class public Lit/gmariotti/cardslib/library/view/component/CardHeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/widget/ImageButton;

.field protected g:Landroid/widget/ImageButton;

.field protected h:Landroid/widget/ImageButton;

.field protected i:Lit/gmariotti/cardslib/library/a/i;

.field protected j:Z

.field protected k:Z

.field protected l:Landroid/widget/PopupMenu;

.field protected m:Lit/gmariotti/cardslib/library/view/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    sget v0, Lit/gmariotti/cardslib/library/a$e;->base_header_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a:I

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->j:Z

    .line 137
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->k:Z

    .line 1192
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1196
    :try_start_0
    sget p3, Lit/gmariotti/cardslib/library/a$g;->card_options_card_header_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1180
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1208
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 1209
    iget p3, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->b:Landroid/view/View;

    .line 1212
    sget p2, Lit/gmariotti/cardslib/library/a$c;->card_header_button_expand:I

    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->g:Landroid/widget/ImageButton;

    .line 1213
    sget p2, Lit/gmariotti/cardslib/library/a$c;->card_header_button_overflow:I

    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    .line 1214
    sget p2, Lit/gmariotti/cardslib/library/a$c;->card_header_button_other:I

    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    .line 1217
    sget p2, Lit/gmariotti/cardslib/library/a$c;->card_header_inner_frame:I

    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->d:Landroid/view/ViewGroup;

    .line 1218
    sget p2, Lit/gmariotti/cardslib/library/a$c;->card_header_button_frame:I

    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->e:Landroid/view/ViewGroup;

    .line 162
    :cond_0
    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/b/f;->a(Landroid/content/Context;)Lit/gmariotti/cardslib/library/view/b/a;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->m:Lit/gmariotti/cardslib/library/view/b/a;

    return-void

    :catchall_0
    move-exception p1

    .line 1198
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)Landroid/widget/PopupMenu;
    .locals 0

    .line 65
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->b()Landroid/widget/PopupMenu;

    move-result-object p0

    return-object p0
.end method

.method private a(III)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 371
    :cond_0
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_3

    .line 376
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->g:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 377
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    if-eqz p3, :cond_4

    if-ne p3, v0, :cond_5

    .line 381
    :cond_4
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    .line 382
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private b()Landroid/widget/PopupMenu;
    .locals 4

    .line 447
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 448
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v1}, Lit/gmariotti/cardslib/library/a/i;->f()I

    move-result v1

    sget v2, Lit/gmariotti/cardslib/library/a/i;->i:I

    if-le v1, v2, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/i;->f()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 452
    :cond_0
    new-instance v1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$4;-><init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 463
    new-instance v1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$5;

    invoke-direct {v1, p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$5;-><init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/ImageButton;
    .locals 1

    .line 551
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/i;)V
    .locals 3

    .line 235
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    if-eqz p1, :cond_10

    .line 1262
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->e()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_7

    .line 1263
    invoke-direct {p0, v0, v1, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(III)V

    const/4 p1, 0x0

    .line 1393
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    .line 1395
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 1398
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->f()I

    move-result p1

    sget v2, Lit/gmariotti/cardslib/library/a/i;->i:I

    if-le p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1399
    :goto_0
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/i;->c()Lit/gmariotti/cardslib/library/a/i$d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1402
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->b()Landroid/widget/PopupMenu;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    .line 1405
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->c()Lit/gmariotti/cardslib/library/a/i$d;

    move-result-object p1

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/i;->getParentCard()Lit/gmariotti/cardslib/library/a/b;

    invoke-interface {p1}, Lit/gmariotti/cardslib/library/a/i$d;->a()Z

    move-result p1

    .line 1408
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1414
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    new-instance v0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$3;-><init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1429
    :cond_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->a()Lit/gmariotti/cardslib/library/a/i$a;

    move-result-object p1

    if-nez p1, :cond_5

    .line 1430
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 1436
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1266
    :cond_5
    :goto_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->l:Landroid/widget/PopupMenu;

    if-nez p1, :cond_c

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->a()Lit/gmariotti/cardslib/library/a/i$a;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 2297
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->a()Lit/gmariotti/cardslib/library/a/i$a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2298
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 2301
    new-instance v1, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$1;

    invoke-direct {v1, p0, p1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$1;-><init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;Lit/gmariotti/cardslib/library/a/i$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 2309
    :cond_6
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_c

    .line 2310
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 1272
    :cond_7
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1273
    invoke-direct {p0, v1, v0, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(III)V

    goto :goto_3

    .line 1276
    :cond_8
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_b

    .line 1277
    invoke-direct {p0, v1, v1, v0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(III)V

    .line 1279
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_c

    .line 1280
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->i()I

    move-result p1

    if-lez p1, :cond_9

    .line 1281
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->m:Lit/gmariotti/cardslib/library/view/b/a;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/i;->i()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lit/gmariotti/cardslib/library/view/b/a;->a(Landroid/widget/ImageButton;I)V

    .line 2320
    :cond_9
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->h()Lit/gmariotti/cardslib/library/a/i$b;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2321
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_c

    .line 2322
    new-instance v0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView$2;-><init>(Lit/gmariotti/cardslib/library/view/component/CardHeaderView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 2331
    :cond_a
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_c

    .line 2332
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_3

    .line 1286
    :cond_b
    invoke-direct {p0, v1, v1, v1}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->a(III)V

    .line 2341
    :cond_c
    :goto_3
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->d:Landroid/view/ViewGroup;

    if-eqz p1, :cond_10

    .line 2506
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->j:Z

    if-eqz v0, :cond_e

    .line 2524
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->k:Z

    if-eqz v0, :cond_d

    goto :goto_4

    .line 2354
    :cond_d
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->getInnerLayout()I

    move-result p1

    if-ltz p1, :cond_10

    .line 2355
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/i;->a(Landroid/view/View;)V

    goto :goto_5

    .line 3524
    :cond_e
    :goto_4
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->k:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 2346
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->c:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2347
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2350
    :cond_f
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->i:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Lit/gmariotti/cardslib/library/a/i;->getInnerView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->c:Landroid/view/View;

    :cond_10
    :goto_5
    return-void
.end method

.method public setForceReplaceInnerLayout(Z)V
    .locals 0

    .line 533
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->k:Z

    return-void
.end method

.method public setRecycle(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/view/component/CardHeaderView;->j:Z

    return-void
.end method

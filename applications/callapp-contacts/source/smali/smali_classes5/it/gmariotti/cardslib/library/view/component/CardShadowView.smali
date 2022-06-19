.class public Lit/gmariotti/cardslib/library/view/component/CardShadowView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_shadow_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_shadow_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a:I

    const/4 p1, 0x0

    .line 79
    invoke-direct {p0, p2, p1}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget p1, Lit/gmariotti/cardslib/library/a$e;->base_shadow_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a:I

    .line 84
    invoke-direct {p0, p2, p3}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    iget v1, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->b:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->b(Landroid/util/AttributeSet;I)V

    .line 102
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    invoke-direct {p0}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a()V

    :cond_0
    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_card_shadow_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/component/CardShadowView;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

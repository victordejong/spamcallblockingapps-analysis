.class public Lcom/allinone/callerid/customview/FloatNormalView;
.super Landroid/widget/LinearLayout;
.source "FloatNormalView.java"


# static fields
.field private static d:Landroid/view/WindowManager;

.field private static e:Landroid/widget/ImageView;

.field private static f:Landroid/widget/TextView;

.field private static g:Landroid/widget/TextView;

.field private static h:Landroidx/viewpager/widget/ViewPager;

.field private static i:Landroid/widget/LinearLayout;

.field private static j:Landroid/graphics/Typeface;

.field private static k:Lcom/allinone/callerid/b/p;

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static m:[Landroid/widget/ImageView;

.field private static n:[I


# instance fields
.field private o:Landroid/content/Context;

.field private p:Landroid/view/View;

.field private q:Landroid/view/WindowManager$LayoutParams;

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:Z

.field private w:Lcom/allinone/callerid/util/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c013e
        0x7f0c013f
        0x7f0c0140
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->o:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->p:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->v:Z

    .line 6
    iput-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->o:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/j0;->b()Lcom/allinone/callerid/util/j0;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->w:Lcom/allinone/callerid/util/j0;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09039b

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->p:Landroid/view/View;

    const-string v0, "window"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->d:Landroid/view/WindowManager;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->p:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/allinone/callerid/customview/FloatNormalView;->s(Landroid/view/View;Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/allinone/callerid/customview/FloatNormalView;->r()V

    .line 13
    invoke-direct {p0}, Lcom/allinone/callerid/customview/FloatNormalView;->q()V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b()[Landroid/widget/ImageView;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->m:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/allinone/callerid/customview/FloatNormalView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->u:F

    return p0
.end method

.method static synthetic d(Lcom/allinone/callerid/customview/FloatNormalView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->u:F

    return p1
.end method

.method static synthetic e(Lcom/allinone/callerid/customview/FloatNormalView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/customview/FloatNormalView;->t()V

    return-void
.end method

.method static synthetic f(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->o:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g()Landroid/widget/TextView;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/allinone/callerid/customview/FloatNormalView;)Lcom/allinone/callerid/util/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->w:Lcom/allinone/callerid/util/j0;

    return-object p0
.end method

.method static synthetic i(Lcom/allinone/callerid/customview/FloatNormalView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->v:Z

    return p0
.end method

.method static synthetic j(Lcom/allinone/callerid/customview/FloatNormalView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->v:Z

    return p1
.end method

.method static synthetic k(Lcom/allinone/callerid/customview/FloatNormalView;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->r:F

    return v0
.end method

.method static synthetic l(Lcom/allinone/callerid/customview/FloatNormalView;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic m(Lcom/allinone/callerid/customview/FloatNormalView;F)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->s:F

    return v0
.end method

.method static synthetic n(Lcom/allinone/callerid/customview/FloatNormalView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->t:F

    return p0
.end method

.method static synthetic o(Lcom/allinone/callerid/customview/FloatNormalView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->t:F

    return p1
.end method

.method private p(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget-object v3, Lcom/allinone/callerid/customview/FloatNormalView;->n:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/allinone/callerid/customview/FloatNormalView;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->p:Landroid/view/View;

    new-instance v1, Lcom/allinone/callerid/customview/FloatNormalView$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/customview/FloatNormalView$d;-><init>(Lcom/allinone/callerid/customview/FloatNormalView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 2
    sget-object v1, Lcom/allinone/callerid/customview/FloatNormalView;->d:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x800033

    .line 7
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 8
    iget-object v3, p0, Lcom/allinone/callerid/customview/FloatNormalView;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/allinone/callerid/customview/FloatNormalView;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 13
    sget-object v1, Lcom/allinone/callerid/customview/FloatNormalView;->d:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private s(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f090238

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->e:Landroid/widget/ImageView;

    const v0, 0x7f09079a

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->f:Landroid/widget/TextView;

    const v0, 0x7f090773

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->g:Landroid/widget/TextView;

    const v0, 0x7f0907ea

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->h:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f09039a

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    sput-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->i:Landroid/widget/LinearLayout;

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->j:Landroid/graphics/Typeface;

    .line 7
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    sget-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->g:Landroid/widget/TextView;

    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->j:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c013e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090710

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/allinone/callerid/customview/FloatNormalView;->j:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09073f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->j:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->l:Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->o:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/FloatNormalView;->p(Landroid/content/Context;)V

    .line 14
    new-instance p1, Lcom/allinone/callerid/b/p;

    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->l:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/b/p;-><init>(Ljava/util/List;)V

    sput-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->k:Lcom/allinone/callerid/b/p;

    .line 15
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 16
    sget-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->h:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/allinone/callerid/customview/FloatNormalView$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/customview/FloatNormalView$a;-><init>(Lcom/allinone/callerid/customview/FloatNormalView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    sget-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->h:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/allinone/callerid/customview/FloatNormalView$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/customview/FloatNormalView$b;-><init>(Lcom/allinone/callerid/customview/FloatNormalView;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 18
    sget-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->k:Lcom/allinone/callerid/b/p;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->l()V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->o:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/FloatNormalView;->setBottomIndicator(Landroid/content/Context;)V

    .line 20
    sget-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->e:Landroid/widget/ImageView;

    new-instance v0, Lcom/allinone/callerid/customview/FloatNormalView$c;

    invoke-direct {v0, p0, p2}, Lcom/allinone/callerid/customview/FloatNormalView$c;-><init>(Lcom/allinone/callerid/customview/FloatNormalView;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBottomIndicator(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/ImageView;

    sput-object v0, Lcom/allinone/callerid/customview/FloatNormalView;->m:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/allinone/callerid/customview/FloatNormalView;->m:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    .line 5
    invoke-virtual {v3, v4, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v1, :cond_0

    const v3, 0x7f0801ea

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const v3, 0x7f0801e9

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :goto_1
    sget-object v3, Lcom/allinone/callerid/customview/FloatNormalView;->m:[Landroid/widget/ImageView;

    aput-object v2, v3, v1

    .line 10
    sget-object v3, Lcom/allinone/callerid/customview/FloatNormalView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/allinone/callerid/customview/FloatNormalView;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/FloatNormalView;->q:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->t:F

    iget v2, p0, Lcom/allinone/callerid/customview/FloatNormalView;->r:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    iget v1, p0, Lcom/allinone/callerid/customview/FloatNormalView;->u:F

    iget v2, p0, Lcom/allinone/callerid/customview/FloatNormalView;->s:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3
    sget-object v1, Lcom/allinone/callerid/customview/FloatNormalView;->d:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
